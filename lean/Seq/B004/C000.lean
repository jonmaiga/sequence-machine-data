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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A038534.P10789016678078004537

`A001790(n)²`
-/

namespace A038534.P10789016678078004537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 2

end

end A038534.P10789016678078004537

noncomputable section

/-- A038534: Numerators of coefficients of EllipticK/Pi.

Offset 0, canonical program `A038534.P10789016678078004537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038534 (n : ℕ) : ℤ :=
  A038534.P10789016678078004537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069954.P7006599503982473311

`A001790(2^n)`
-/

namespace A069954.P7006599503982473311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (2 ^ n)

end

end A069954.P7006599503982473311

noncomputable section

/-- A069954: a(n) = binomial(2^(n+1), 2^n)/2 = binomial(2^(n+1) - 1, 2^n) = binomial(2^(n+1) - 1, 2^n-1).

Offset 0, canonical program `A069954.P7006599503982473311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069954 (n : ℕ) : ℤ :=
  A069954.P7006599503982473311.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069955.P4395818524536690601

`A001790(n)*A001803(n)`
-/

namespace A069955.P4395818524536690601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A001803 n

end

end A069955.P4395818524536690601

noncomputable section

/-- A069955: Let W(n) = Product_{k=1..n} (1 - 1/(4*k^2)), the partial Wallis product (lim_{n->oo} W(n) = 2/Pi); then a(n) = numerator(W(n)).

Offset 0, canonical program `A069955.P4395818524536690601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069955 (n : ℕ) : ℤ :=
  A069955.P4395818524536690601.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072339.P14610231955541927541

`A069010(n+1)+A069010(2*(n+1)-1)-1`
-/

namespace A072339.P14610231955541927541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1) + A069010 (2 * (n + 1) - 1) - 1

end

end A072339.P14610231955541927541

noncomputable section

/-- A072339: Any number n can be written (in two ways, one with m even and one with m odd) in the form n = 2^k_1 - 2^k_2 + 2^k_3 - ... + 2^k_m where the signs alternate and k_1 > k_2 > k_3 > ... >k_m >= 0; sequence gives minimal value of m.

Offset 1, canonical program `A072339.P14610231955541927541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072339 (n : ℕ) : ℤ :=
  A072339.P14610231955541927541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014081.P14878370479040452879

`A000120(n)-A069010(n)`
-/

namespace A014081.P14878370479040452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A069010 n

end

end A014081.P14878370479040452879

noncomputable section

/-- A014081: a(n) is the number of occurrences of '11' in the binary expansion of n.

Offset 0, canonical program `A014081.P14878370479040452879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014081 (n : ℕ) : ℤ :=
  A014081.P14878370479040452879.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036914.P6597847502480151

`A005809(n)²*A275047(n)`
-/

namespace A036914.P6597847502480151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 2 * A275047 n

end

end A036914.P6597847502480151

noncomputable section

/-- A036914: a(n) = binomial(2*n,n)*binomial(3*n,2*n)^4.

Offset 0, canonical program `A036914.P6597847502480151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036914 (n : ℕ) : ℤ :=
  A036914.P6597847502480151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055608.P3351527780565654207

`2*a(n-1)-a(n-3)+A002889(n+1)+A002889(n)` with `a(0)=1, a(1)=13, a(2)=92`
-/

namespace A055608.P3351527780565654207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 92] fun n a =>
  2 * a (n - 1) - a (n - 3) + A002889 (n + 1) + A002889 n

end

end A055608.P3351527780565654207

noncomputable section

/-- A055608: Arrays of dumbbells.

Offset 1, canonical program `A055608.P3351527780565654207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055608 (n : ℕ) : ℤ :=
  A055608.P3351527780565654207.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059268.P15217573790077737885

`A018900(n+1)-A140513(n)`
-/

namespace A059268.P15217573790077737885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A140513 n

end

end A059268.P15217573790077737885

noncomputable section

/-- A059268: Concatenate subsequences [2^0, 2^1, ..., 2^n] for n = 0, 1, 2, ...

Offset 0, canonical program `A059268.P15217573790077737885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268 (n : ℕ) : ℤ :=
  A059268.P15217573790077737885.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062731.P15391118010266102110

`A000203(n+1)+A054785(n+1)`
-/

namespace A062731.P15391118010266102110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A054785 (n + 1)

end

end A062731.P15391118010266102110

noncomputable section

/-- A062731: Sum of divisors of 2*n.

Offset 1, canonical program `A062731.P15391118010266102110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062731 (n : ℕ) : ℤ :=
  A062731.P15391118010266102110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064105.P10505817968738943948

`A381841(n+1)-1`
-/

namespace A064105.P10505817968738943948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1) - 1

end

end A064105.P10505817968738943948

noncomputable section

/-- A064105: 2nd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064105.P10505817968738943948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064105 (n : ℕ) : ℤ :=
  A064105.P10505817968738943948.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071674.P17626301056953081499

`A071673(n)%2`
-/

namespace A071674.P17626301056953081499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071673 n) 2

end

end A071674.P17626301056953081499

noncomputable section

/-- A071674: Sequence A071673 reduced modulo 2.

Offset 0, canonical program `A071674.P17626301056953081499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071674 (n : ℕ) : ℤ :=
  A071674.P17626301056953081499.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081320.P2919973011229880739

`A065331(A000045(n+1))`
-/

namespace A081320.P2919973011229880739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000045 (n + 1)).toNat

end

end A081320.P2919973011229880739

noncomputable section

/-- A081320: Largest 3-smooth divisor of n-th Fibonacci number.

Offset 1, canonical program `A081320.P2919973011229880739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081320 (n : ℕ) : ℤ :=
  A081320.P2919973011229880739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082392.P13734256271788639875

`2^A025480(n)`
-/

namespace A082392.P13734256271788639875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025480 n : ℤ)

end

end A082392.P13734256271788639875

noncomputable section

/-- A082392: Expansion of (1/x) * Sum_{k>=0} x^2^k / (1 - 2*x^2^(k+1)).

Offset 0, canonical program `A082392.P13734256271788639875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082392.P13734256271788639875.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084468.P3280344016003290935

`2*A018900(n+1)+1`
-/

namespace A084468.P3280344016003290935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018900 (n + 1) + 1

end

end A084468.P3280344016003290935

noncomputable section

/-- A084468: Odd numbers with exactly 3 ones in binary expansion.

Offset 1, canonical program `A084468.P3280344016003290935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084468 (n : ℕ) : ℤ :=
  A084468.P3280344016003290935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003991.P14084851459366035567

`A002260(n+1)*A004736(n+1)`
-/

namespace A003991.P14084851459366035567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1)

end

end A003991.P14084851459366035567

noncomputable section

/-- A003991: Multiplication table read by antidiagonals: T(i,j) = i*j, i>=1, j>=1.

Offset 1, canonical program `A003991.P14084851459366035567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003991 (n : ℕ) : ℤ :=
  A003991.P14084851459366035567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007814.P13537437864234730737

`A001511(n+1)-1`
-/

namespace A007814.P13537437864234730737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - 1

end

end A007814.P13537437864234730737

noncomputable section

/-- A007814: Exponent of highest power of 2 dividing n, a.k.a. the binary carry sequence, the ruler sequence, or the 2-adic valuation of n.

Offset 1, canonical program `A007814.P13537437864234730737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007814 (n : ℕ) : ℤ :=
  A007814.P13537437864234730737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014370.P2808801534584236967

`a(n-1)+A002260(n+1)` with `a(0)=1`
-/

namespace A014370.P2808801534584236967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A002260 (n + 1)

end

end A014370.P2808801534584236967

noncomputable section

/-- A014370: If n = binomial(b,2) + binomial(c,1), b > c >= 0 then a(n) = binomial(b+1,3) + binomial(c+1,2).

Offset 1, canonical program `A014370.P2808801534584236967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014370 (n : ℕ) : ℤ :=
  A014370.P2808801534584236967.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035263.P6825362395192920526

`A000035(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035263.P6825362395192920526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001511 (n + 1)).toNat

end

end A035263.P6825362395192920526

noncomputable section

/-- A035263: Trajectory of 1 under the morphism 0 -> 11, 1 -> 10; parity of 2-adic valuation of 2n: a(n) = A000035(A001511(n)).

Offset 1, canonical program `A035263.P6825362395192920526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035263 (n : ℕ) : ℤ :=
  A035263.P6825362395192920526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036561.P7490084913005378529

`2^(A004736(n+1)-1)*3^(A002260(n+1)-1)`
-/

namespace A036561.P7490084913005378529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (3 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A036561.P7490084913005378529

noncomputable section

/-- A036561: Nicomachus triangle read by rows, T(n, k) = 2^(n - k)*3^k, for 0 <= k <= n.

Offset 0, canonical program `A036561.P7490084913005378529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036561.P7490084913005378529.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051128.P16009406906113116031

`A004736(n+1)^A002260(n+1)`
-/

namespace A051128.P16009406906113116031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A051128.P16009406906113116031

noncomputable section

/-- A051128: Table T(n,k) = n^k read by upwards antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051128.P16009406906113116031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051128.P16009406906113116031.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051683.P13180732042003025977

`A002024(n+1)!*A002260(n+1)`
-/

namespace A051683.P13180732042003025977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002024 (n + 1)).toNat : ℤ) * A002260 (n + 1)

end

end A051683.P13180732042003025977

noncomputable section

/-- A051683: Triangle read by rows: T(n,k) = n!*k.

Offset 1, canonical program `A051683.P13180732042003025977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051683 (n : ℕ) : ℤ :=
  A051683.P13180732042003025977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064002.P15142336824653210743

`2*A064064(n)-1`
-/

namespace A064002.P15142336824653210743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064064 n - 1

end

end A064002.P15142336824653210743

noncomputable section

/-- A064002: List pairs (i,j) with 1 <= i <= j in colexicographic order: (1,1), (1,2), (2,2), (1,3), (2,3), (3,3), (1,4), ... Let a(1) = 1. Then for n>=2 if the (n-1)-st pair is (i,j) then a(n) = a(i) + a(j) + 1.

Offset 1, canonical program `A064002.P15142336824653210743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064002 (n : ℕ) : ℤ :=
  A064002.P15142336824653210743.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069895.P2591842215190657950

`2*(n+1)*A001511(n+1)`
-/

namespace A069895.P2591842215190657950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A001511 (n + 1))

end

end A069895.P2591842215190657950

noncomputable section

/-- A069895: 2^a(n) divides (2n)^(2n): exponent of 2 in (2n)^(2n).

Offset 1, canonical program `A069895.P2591842215190657950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069895 (n : ℕ) : ℤ :=
  A069895.P2591842215190657950.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069912.P9604506837947316734

`A067552(n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069912.P9604506837947316734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067552 n : ℚ) / 9

end

end A069912.P9604506837947316734

noncomputable section

/-- A069912: a(n) = A067552(n)/9 where A067552(n) = SumOfDigits(n)^2 - SumOfDigits(n^2), with SumOfDigits = A007953.

Offset 0, canonical program `A069912.P9604506837947316734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069912.P9604506837947316734.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071042.P13851763813653764625

`n+A048967(n)`
-/

namespace A071042.P13851763813653764625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A048967 n

end

end A071042.P13851763813653764625

noncomputable section

/-- A071042: Number of 0's in n-th row of triangle in A070886.

Offset 0, canonical program `A071042.P13851763813653764625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071042 (n : ℕ) : ℤ :=
  A071042.P13851763813653764625.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075363.P17414441603583591353

`A002024(n+1)^A002260(n+1)`
-/

namespace A075363.P17414441603583591353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A075363.P17414441603583591353

noncomputable section

/-- A075363: Triangle read by rows, in which n-th row gives n smallest powers of n.

Offset 1, canonical program `A075363.P17414441603583591353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075363 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075363.P17414441603583591353.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077049.P4113379091505047421

`floor(A004736(n+1)/A002260(n+1))-floor((A004736(n+1)-1)/A002260(n+1))`
-/

namespace A077049.P4113379091505047421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋ - ⌊(A004736 (n + 1) - 1 : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A077049.P4113379091505047421

noncomputable section

/-- A077049: Left summatory matrix, T, by antidiagonals upwards.

Offset 1, canonical program `A077049.P4113379091505047421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077049 (n : ℕ) : ℤ :=
  A077049.P4113379091505047421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077049.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077051.P13341639841933775986

`floor(A002260(n+1)/A004736(n+1))-floor((A002260(n+1)-1)/A004736(n+1))`
-/

namespace A077051.P13341639841933775986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋ - ⌊(A002260 (n + 1) - 1 : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A077051.P13341639841933775986

noncomputable section

/-- A077051: Right summatory matrix, T, by antidiagonals.

Offset 1, canonical program `A077051.P13341639841933775986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077051 (n : ℕ) : ℤ :=
  A077051.P13341639841933775986.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081118.P6487108056144640916

`(2^A002260(n+1)-1)*2^A004736(n+1)-1`
-/

namespace A081118.P6487108056144640916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A002260 (n + 1) : ℤ) - 1) * (2 : ℚ) ^ (A004736 (n + 1) : ℤ) - 1

end

end A081118.P6487108056144640916

noncomputable section

/-- A081118: Triangle of first n numbers per row having exactly n 1's in binary representation.

Offset 1, canonical program `A081118.P6487108056144640916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081118.P6487108056144640916.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082490.P13979797646623718017

`2*A007949(n+1)+A000989(n+1)`
-/

namespace A082490.P13979797646623718017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007949 (n + 1) + A000989 (n + 1)

end

end A082490.P13979797646623718017

noncomputable section

/-- A082490: Exponent of highest power of 3 dividing sum(0<=k

Offset 1, canonical program `A082490.P13979797646623718017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082490 (n : ℕ) : ℤ :=
  A082490.P13979797646623718017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085058.P14130226451424256143

`A001511(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085058.P14130226451424256143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 1

end

end A085058.P14130226451424256143

noncomputable section

/-- A085058: a(n) = A001511(n+1) + 1.

Offset 0, canonical program `A085058.P14130226451424256143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085058 (n : ℕ) : ℤ :=
  A085058.P14130226451424256143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003985.P15061473656309770427

`and(A002260(n+1), A004736(n+1))`
-/

namespace A003985.P15061473656309770427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A004736 (n + 1))

end

end A003985.P15061473656309770427

noncomputable section

/-- A003985: Triangle with subscripts (1,1),(2,1),(1,2),(3,1),(2,2),(1,3), etc. in which entry (i,j) is i AND j.

Offset 1, canonical program `A003985.P15061473656309770427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003985 (n : ℕ) : ℤ :=
  A003985.P15061473656309770427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003988.P17998764845825661795

`floor(A004736(n+1)/A002260(n+1))`
-/

namespace A003988.P17998764845825661795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A003988.P17998764845825661795

noncomputable section

/-- A003988: Triangle with subscripts (1,1),(2,1),(1,2),(3,1),(2,2),(1,3), etc. in which entry (i,j) is [ i/j ].

Offset 1, canonical program `A003988.P17998764845825661795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003988 (n : ℕ) : ℤ :=
  A003988.P17998764845825661795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003990.P13527658442906090829

`lcm(A002260(n+1), A004736(n+1))`
-/

namespace A003990.P13527658442906090829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A004736 (n + 1))

end

end A003990.P13527658442906090829

noncomputable section

/-- A003990: Table of lcm(x,y), read along antidiagonals.

Offset 1, canonical program `A003990.P13527658442906090829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003990 (n : ℕ) : ℤ :=
  (A003990.P13527658442906090829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004198.P12357337643379645634

`A003986(n)-A003987(n)`
-/

namespace A004198.P12357337643379645634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A003987 n

end

end A004198.P12357337643379645634

noncomputable section

/-- A004198: Table of x AND y, where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

Offset 0, canonical program `A004198.P12357337643379645634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004198 (n : ℕ) : ℤ :=
  A004198.P12357337643379645634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004199.P14394472422688968774

`floor(A002260(n+1)/A004736(n+1))`
-/

namespace A004199.P14394472422688968774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A004199.P14394472422688968774

noncomputable section

/-- A004199: Table of [ x/y ], where (x,y) = (1,1),(1,2),(2,1),(1,3),(2,2),(3,1),...

Offset 1, canonical program `A004199.P14394472422688968774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004199 (n : ℕ) : ℤ :=
  A004199.P14394472422688968774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005599.P10071438624159496024

`∑[A106400(3*n)]-A106400(3*n)`
-/

namespace A005599.P10071438624159496024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106400 (3 * n)

end

end A005599.P10071438624159496024

noncomputable section

/-- A005599: Running sum of every third term in the {+1,-1}-version of Thue-Morse sequence A010060.

Offset 0, canonical program `A005599.P10071438624159496024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A005599 (n : ℕ) : ℤ :=
  A005599.P10071438624159496024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A005599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005679.P11330707442932993347

`A000032(Δ[A010059(n)]+1)`
-/

namespace A005679.P11330707442932993347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A005679.P11330707442932993347

noncomputable section

/-- A005679: A squarefree (or Thue-Morse) ternary sequence: closed under a->abc, b->ac, c->b.

Offset 1, canonical program `A005679.P11330707442932993347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005679 (n : ℕ) : ℤ :=
  A005679.P11330707442932993347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006631.P814917172893667623

`A006013(n+2)-A000139(n+3)`
-/

namespace A006631.P814917172893667623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 2) - A000139 (n + 3)

end

end A006631.P814917172893667623

noncomputable section

/-- A006631: From generalized Catalan numbers.

Offset 0, canonical program `A006631.P814917172893667623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A006631 (n : ℕ) : ℤ :=
  A006631.P814917172893667623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A006631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007302.P7515534801561219706

`A069010(A184617(n))`
-/

namespace A007302.P7515534801561219706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A184617 n).toNat

end

end A007302.P7515534801561219706

noncomputable section

/-- A007302: Optimal cost function between two processors at distance n.

Offset 0, canonical program `A007302.P7515534801561219706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007302 (n : ℕ) : ℤ :=
  A007302.P7515534801561219706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008416.P15332718079879402736

`A008415(n)+A008415(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008416.P15332718079879402736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008415 n + A008415 (n - 1) + a (n - 1)

end

end A008416.P15332718079879402736

noncomputable section

/-- A008416: Coordination sequence for 8-dimensional cubic lattice.

Offset 0, canonical program `A008416.P15332718079879402736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008416 (n : ℕ) : ℤ :=
  A008416.P15332718079879402736.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008418.P12679540654999658898

`A008415(n)+2*A035602(n)`
-/

namespace A008418.P12679540654999658898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n + 2 * A035602 n

end

end A008418.P12679540654999658898

noncomputable section

/-- A008418: Coordination sequence for 9-dimensional cubic lattice.

Offset 0, canonical program `A008418.P12679540654999658898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008418 (n : ℕ) : ℤ :=
  A008418.P12679540654999658898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008861.P14057265660229562183

`∑[A008860(abs(1-n))]-1`
-/

namespace A008861.P14057265660229562183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A008861.P14057265660229562183

noncomputable section

/-- A008861: a(n) = Sum_{k=0..8} binomial(n,k).

Offset 0, canonical program `A008861.P14057265660229562183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008861 (n : ℕ) : ℤ :=
  A008861.P14057265660229562183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009998.P8900585392985839112

`A004248(comp[∑[n]])`
-/

namespace A009998.P8900585392985839112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A009998.P8900585392985839112

noncomputable section

/-- A009998: Triangle in which j-th entry in i-th row is (j+1)^(i-j).

Offset 0, canonical program `A009998.P8900585392985839112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A009998 (n : ℕ) : ℤ :=
  A009998.P8900585392985839112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A009998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009999.P900677114271416084

`A003992(comp[∑[n-1]])`
-/

namespace A009999.P900677114271416084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A009999.P900677114271416084

noncomputable section

/-- A009999: Triangle in which j-th entry in i-th row is (i+1-j)^j, 0<=j<=i.

Offset 0, canonical program `A009999.P900677114271416084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A009999 (n : ℕ) : ℤ :=
  A009999.P900677114271416084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A009999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015726.P17361478466068332891

`A010052(n*comp[A055236(3*(n+1))])`
-/

namespace A015726.P17361478466068332891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015726.P17361478466068332891

noncomputable section

/-- A015726: Inverse of 1717th cyclotomic polynomial.

Offset 0, canonical program `A015726.P17361478466068332891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A015726 (n : ℕ) : ℤ :=
  A015726.P17361478466068332891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A015726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019299.P4441328656889891956

`or(2*a(n-1), A010059(n))` with `a(0)=1`
-/

namespace A019299.P4441328656889891956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A010059 n)

end

end A019299.P4441328656889891956

noncomputable section

/-- A019299: First n elements of Thue-Morse sequence A010059 read as a binary number.

Offset 0, canonical program `A019299.P4441328656889891956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A019299 (n : ℕ) : ℤ :=
  A019299.P4441328656889891956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A019299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019563.P17268323509037775158

`A008415(2*n)`
-/

namespace A019563.P17268323509037775158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 (2 * n)

end

end A019563.P17268323509037775158

noncomputable section

/-- A019563: Coordination sequence for C_7 lattice.

Offset 0, canonical program `A019563.P17268323509037775158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019563 (n : ℕ) : ℤ :=
  A019563.P17268323509037775158.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020903.P17047861349932723794

`a(A002260(n+2)-1)` with `a(0)=1, a(1)=2`
-/

namespace A020903.P17047861349932723794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A002260 (n + 2) - 1).toNat

end

end A020903.P17047861349932723794

noncomputable section

/-- A020903: Lim f(f(...f(n))) where f is the fractal sequence given by f(n)=A002260(n+1).

Offset 1, canonical program `A020903.P17047861349932723794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020903 (n : ℕ) : ℤ :=
  (A020903.P17047861349932723794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022420.P7849113528763956981

`A374359(n+1)+A022418(n)`
-/

namespace A022420.P7849113528763956981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022418 n

end

end A022420.P7849113528763956981

noncomputable section

/-- A022420: Kim-sums: "Kimberling sums" K_n + K_9.

Offset 0, canonical program `A022420.P7849113528763956981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022420 (n : ℕ) : ℤ :=
  A022420.P7849113528763956981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022421.P11986416629293601571

`2*A022418(n)-A022415(n)`
-/

namespace A022421.P11986416629293601571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022418 n - A022415 n

end

end A022421.P11986416629293601571

noncomputable section

/-- A022421: Kim-sums: "Kimberling sums" K_n + K_10.

Offset 0, canonical program `A022421.P11986416629293601571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022421 (n : ℕ) : ℤ :=
  A022421.P11986416629293601571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023489.P10868598948325569583

`A023488(n)+Δ[A001911(n)]`
-/

namespace A023489.P10868598948325569583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + (f1 (n + 1) - f1 n)

end

end A023489.P10868598948325569583

noncomputable section

/-- A023489: Sum of n-th Lucas number greater than 3 and n-th number that is 1 or is not a Fibonacci number.

Offset 1, canonical program `A023489.P10868598948325569583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023489 (n : ℕ) : ℤ :=
  A023489.P10868598948325569583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023705.P247471515550585891

`record[A263132(val(n+1, 4)²+1)+n]`
-/

namespace A023705.P247471515550585891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263132 (SequenceMachineLib.valuation (n + 1) 4 ^ 2 + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023705.P247471515550585891

noncomputable section

/-- A023705: Numbers with no 0's in base-4 expansion.

Offset 1, canonical program `A023705.P247471515550585891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A023705 (n : ℕ) : ℤ :=
  A023705.P247471515550585891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A023705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024313.P16585731645068603023

`A129361(n)+A024309(n+1)`
-/

namespace A024313.P16585731645068603023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n + A024309 (n + 1)

end

end A024313.P16585731645068603023

noncomputable section

/-- A024313: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3), t = A023531.

Offset 1, canonical program `A024313.P16585731645068603023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024313 (n : ℕ) : ℤ :=
  A024313.P16585731645068603023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024315.P2335891269979573061

`A024309(n+3)-2*A020695(n)`
-/

namespace A024315.P2335891269979573061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 3) - 2 * A020695 n

end

end A024315.P2335891269979573061

noncomputable section

/-- A024315: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = floor(n/2), s = (natural numbers >= 3), t = (Fibonacci numbers).

Offset 1, canonical program `A024315.P2335891269979573061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024315 (n : ℕ) : ℤ :=
  A024315.P2335891269979573061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024502.P11305505446867947360

`floor(A001790(n)/A060818(n))`
-/

namespace A024502.P11305505446867947360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001790 n : ℚ) / (A060818 n : ℚ)⌋

end

end A024502.P11305505446867947360

noncomputable section

/-- A024502: a(n) = floor(C(2n,n)/2^n).

Offset 0, canonical program `A024502.P11305505446867947360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A024502 (n : ℕ) : ℤ :=
  A024502.P11305505446867947360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A024502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024858.P7566223629686683624

`A023864(n+1)+2*A023860(n+1)`
-/

namespace A024858.P7566223629686683624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + 2 * A023860 (n + 1)

end

end A024858.P7566223629686683624

noncomputable section

/-- A024858: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = (Lucas numbers).

Offset 2, canonical program `A024858.P7566223629686683624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024858 (n : ℕ) : ℤ :=
  A024858.P7566223629686683624.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024861.P6522082039831877776

`A023864(n+1)+A023860(n+1)`
-/

namespace A024861.P6522082039831877776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + A023860 (n + 1)

end

end A024861.P6522082039831877776

noncomputable section

/-- A024861: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = (F(2), F(3), F(4), ... ).

Offset 2, canonical program `A024861.P6522082039831877776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024861 (n : ℕ) : ℤ :=
  A024861.P6522082039831877776.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024869.P18052300217753289267

`2*A024306(n+1)-A024305(n+1)`
-/

namespace A024869.P18052300217753289267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024306 (n + 1) - A024305 (n + 1)

end

end A024869.P18052300217753289267

noncomputable section

/-- A024869: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = floor( n/2 ), s = natural numbers >= 2, t = natural numbers >= 3.

Offset 2, canonical program `A024869.P18052300217753289267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024869 (n : ℕ) : ℤ :=
  A024869.P18052300217753289267.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024873.P15411452994750175105

`A024872(n+2)+2*A024309(n+1)`
-/

namespace A024873.P15411452994750175105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024872 (n + 2) + 2 * A024309 (n + 1)

end

end A024873.P15411452994750175105

noncomputable section

/-- A024873: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = (Lucas numbers).

Offset 2, canonical program `A024873.P15411452994750175105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024873 (n : ℕ) : ℤ :=
  A024873.P15411452994750175105.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024874.P7651549887830111041

`A024872(n+2)+A024309(n+1)`
-/

namespace A024874.P7651549887830111041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024872 (n + 2) + A024309 (n + 1)

end

end A024874.P7651549887830111041

noncomputable section

/-- A024874: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = (F(2), F(3), F(4), ...).

Offset 2, canonical program `A024874.P7651549887830111041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024874 (n : ℕ) : ℤ :=
  A024874.P7651549887830111041.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024931.P12137656920575684940

`∑[A008619(n)-A294015(A152271(n))]`
-/

namespace A024931.P12137656920575684940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A294015 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024931.P12137656920575684940

noncomputable section

/-- A024931: a(n) = sum of remainders of n mod 2,4,6,...,2k, where k = [ n/2 ].

Offset 2, canonical program `A024931.P12137656920575684940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024931 (n : ℕ) : ℤ :=
  A024931.P12137656920575684940.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026026.P10474121505985252545

`Δ[A026029(n)]-A099376(n)`
-/

namespace A026026.P10474121505985252545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A026026.P10474121505985252545

noncomputable section

/-- A026026: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2*n-1) = 4. Also a(n) = T(2*n-1,n-1), where T is defined in A026022.

Offset 2, canonical program `A026026.P10474121505985252545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026026 (n : ℕ) : ℤ :=
  A026026.P10474121505985252545.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026030.P8132233946044282258

`Δ[A026029(n+1)-A002057(n)]`
-/

namespace A026030.P8132233946044282258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026030.P8132233946044282258

noncomputable section

/-- A026030: a(n) = T(2n,n-1), where T is defined in A026022.

Offset 1, canonical program `A026030.P8132233946044282258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026030 (n : ℕ) : ℤ :=
  A026030.P8132233946044282258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026085.P12262307412384960621

`Δ[A026069(n+3)]`
-/

namespace A026085.P12262307412384960621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026085.P12262307412384960621

noncomputable section

/-- A026085: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A026082.

Offset 4, canonical program `A026085.P12262307412384960621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026085 (n : ℕ) : ℤ :=
  A026085.P12262307412384960621.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026353.P11254182584666036756

`abs(A001489(n)-A026271(n+1))`
-/

namespace A026353.P11254182584666036756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A026271 (n + 1)|

end

end A026353.P11254182584666036756

noncomputable section

/-- A026353: a(n) = sum of the numbers between the two n's in A026350.

Offset 2, canonical program `A026353.P11254182584666036756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026353 (n : ℕ) : ℤ :=
  A026353.P11254182584666036756.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026492.P4581556902622213959

`A293162(n)+1`
-/

namespace A026492.P4581556902622213959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n + 1

end

end A026492.P4581556902622213959

noncomputable section

/-- A026492: a(n) = t(3n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026492.P4581556902622213959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026492 (n : ℕ) : ℤ :=
  A026492.P4581556902622213959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026498.P969753019979248973

`A293163(n)+1`
-/

namespace A026498.P969753019979248973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293163 n + 1

end

end A026498.P969753019979248973

noncomputable section

/-- A026498: a(n) = t(1+3n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026498.P969753019979248973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026498 (n : ℕ) : ℤ :=
  A026498.P969753019979248973.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026513.P8673088029594760325

`A293164(n)+1`
-/

namespace A026513.P8673088029594760325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293164 n + 1

end

end A026513.P8673088029594760325

noncomputable section

/-- A026513: a(n) = t(2+3n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026513.P8673088029594760325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026513 (n : ℕ) : ℤ :=
  A026513.P8673088029594760325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027259.P7321742831238855292

`A026069(2*(n+2))`
-/

namespace A027259.P7321742831238855292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (2 * (n + 2))

end

end A027259.P7321742831238855292

noncomputable section

/-- A027259: a(n) = Sum_{k=0..2n-2} T(n,k) * T(n,k+2), with T given by A025177.

Offset 2, canonical program `A027259.P7321742831238855292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A027259 (n : ℕ) : ℤ :=
  A027259.P7321742831238855292.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A027259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027788.P17701244794704653651

`∑[A027787(n)+A027774(n)]`
-/

namespace A027788.P17701244794704653651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027787 (n + 12) + A027774 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027788.P17701244794704653651

noncomputable section

/-- A027788: a(n) = 15*(n+1)*binomial(n+2,15)/2.

Offset 13, canonical program `A027788.P17701244794704653651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027788 (n : ℕ) : ℤ :=
  A027788.P17701244794704653651.a (n - 13)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027797.P15100666920347001640

`∑[A027796(n+8)+A027784(n+9)]`
-/

namespace A027797.P15100666920347001640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027796 (n + 8) + A027784 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027797.P15100666920347001640

noncomputable section

/-- A027797: a(n) = 22*(n+1)*binomial(n+3,12).

Offset 9, canonical program `A027797.P15100666920347001640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027797 (n : ℕ) : ℤ :=
  A027797.P15100666920347001640.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027807.P11277944637887315809

`∑[A027806(n+6)+A027795(n+7)]`
-/

namespace A027807.P11277944637887315809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027806 (n + 6) + A027795 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027807.P11277944637887315809

noncomputable section

/-- A027807: a(n) = 165*(n+1)*binomial(n+4,11)/4.

Offset 7, canonical program `A027807.P11277944637887315809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027807 (n : ℕ) : ℤ :=
  A027807.P11277944637887315809.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027932.P9364518516003833136

`∑[A027931(n+4)]`
-/

namespace A027932.P9364518516003833136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027931 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027932.P9364518516003833136

noncomputable section

/-- A027932: T(n, 2n-9), T given by A027926.

Offset 5, canonical program `A027932.P9364518516003833136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027932 (n : ℕ) : ℤ :=
  A027932.P9364518516003833136.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027971.P13614931778188324641

`∑[A027970(n+4)]+2`
-/

namespace A027971.P13614931778188324641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027970 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A027971.P13614931778188324641

noncomputable section

/-- A027971: T(n, 2n-9), T given by A027960.

Offset 5, canonical program `A027971.P13614931778188324641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027971 (n : ℕ) : ℤ :=
  A027971.P13614931778188324641.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029371.P15358491422474167899

`A029238(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029371.P15358491422474167899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029238 n - a (n - 2)

end

end A029371.P15358491422474167899

noncomputable section

/-- A029371: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029371.P15358491422474167899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029371 (n : ℕ) : ℤ :=
  A029371.P15358491422474167899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029375.P12310892285696023417

`A029242(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029375.P12310892285696023417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029242 n - a (n - 2)

end

end A029375.P12310892285696023417

noncomputable section

/-- A029375: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029375.P12310892285696023417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029375 (n : ℕ) : ℤ :=
  A029375.P12310892285696023417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029422.P14037114085577055039

`A029315(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029422.P14037114085577055039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029315 n - a (n - 3)

end

end A029422.P14037114085577055039

noncomputable section

/-- A029422: Expansion of 1/((1-x^6)(1-x^7)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029422.P14037114085577055039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029422 (n : ℕ) : ℤ :=
  A029422.P14037114085577055039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029434.P6149917277553803081

`A029365(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029434.P6149917277553803081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A029365 n - a (n - 4)

end

end A029434.P6149917277553803081

noncomputable section

/-- A029434: Expansion of 1/((1-x^7)(1-x^8)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029434.P6149917277553803081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029434 (n : ℕ) : ℤ :=
  A029434.P6149917277553803081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029882.P12571486424567980157

`∑{d}[n+1, A001285(#-1)]`
-/

namespace A029882.P12571486424567980157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001285 (d - 1)

end

end A029882.P12571486424567980157

noncomputable section

/-- A029882: Inverse Moebius transform of Thue-Morse sequence A001285.

Offset 0, canonical program `A029882.P12571486424567980157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029882 (n : ℕ) : ℤ :=
  A029882.P12571486424567980157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030528.P11879797609187642166

`C(A002260(n+1), A025581(n))`
-/

namespace A030528.P11879797609187642166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A025581 n).toNat

end

end A030528.P11879797609187642166

noncomputable section

/-- A030528: Triangle read by rows: T(n,k) = binomial(k,n-k).

Offset 1, canonical program `A030528.P11879797609187642166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030528 (n : ℕ) : ℤ :=
  (A030528.P11879797609187642166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030983.P3173683942450673075

`Δ[A006013(n)]-A006013(n)`
-/

namespace A030983.P3173683942450673075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006013 n

end

end A030983.P3173683942450673075

noncomputable section

/-- A030983: Number of rooted noncrossing trees with n nodes such that root has degree 1 and the child of the root has degree at least 2.

Offset 3, canonical program `A030983.P3173683942450673075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A030983 (n : ℕ) : ℤ :=
  A030983.P3173683942450673075.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A030983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031464.P2183421695892632133

`eq[A010717(A000523(n+1)), A037861(n)]`
-/

namespace A031464.P2183421695892632133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 (A000523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031464.P2183421695892632133

noncomputable section

/-- A031464: Numbers whose base-4 representation has 3 more 0's than 3's.

Offset 1, canonical program `A031464.P2183421695892632133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 504 terms. -/
def A031464 (n : ℕ) : ℤ :=
  (A031464.P2183421695892632133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 504 terms. -/
def A031464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032794.P15494052535104857542

`A032770(A042968(n+1))`
-/

namespace A032794.P15494052535104857542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032770 (A042968 (n + 1)).toNat

end

end A032794.P15494052535104857542

noncomputable section

/-- A032794: Positive integers of the form n(n+1)(n+2)(n+3)(n+4)/(n+(n+1)+(n+2)+(n+3)+(n+4)) that are a multiple of n.

Offset 1, canonical program `A032794.P15494052535104857542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A032794 (n : ℕ) : ℤ :=
  A032794.P15494052535104857542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A032794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032925.P17103236497457502139

`∑[A115716(n)]`
-/

namespace A032925.P17103236497457502139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P17103236497457502139

noncomputable section

/-- A032925: Numbers whose set of base-4 digits is a subset of {1,2}.

Offset 1, canonical program `A032925.P17103236497457502139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032925 (n : ℕ) : ℤ :=
  A032925.P17103236497457502139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033041.P16799287757763172916

`record[or(n+1, A341691(A341691(n)))]`
-/

namespace A033041.P16799287757763172916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A341691 (A341691 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033041.P16799287757763172916

noncomputable section

/-- A033041: Numbers all of whose base 16 digits are odd.

Offset 1, canonical program `A033041.P16799287757763172916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A033041 (n : ℕ) : ℤ :=
  A033041.P16799287757763172916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A033041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033264.P13575262640478972273

`A069010(and(n, n+1))`
-/

namespace A033264.P13575262640478972273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Nat.land n (n + 1))

end

end A033264.P13575262640478972273

noncomputable section

/-- A033264: Number of blocks of {1,0} in the binary expansion of n.

Offset 0, canonical program `A033264.P13575262640478972273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033264 (n : ℕ) : ℤ :=
  A033264.P13575262640478972273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033918.P6419129856027809792

`A000312(A002260(n+1))`
-/

namespace A033918.P6419129856027809792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002260 (n + 1)).toNat

end

end A033918.P6419129856027809792

noncomputable section

/-- A033918: Triangular array in which n-th row consists of the numbers 1^1, 2^2, ... n^n.

Offset 1, canonical program `A033918.P6419129856027809792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A033918 (n : ℕ) : ℤ :=
  A033918.P6419129856027809792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A033918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034269.P6772783554879928274

`A002055(n+5)-A000108(n+1)*(n+1)²`
-/

namespace A034269.P6772783554879928274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002055 (n + 5) - A000108 (n + 1) * ((n + 1) ^ 2 : ℤ)

end

end A034269.P6772783554879928274

noncomputable section

/-- A034269: a(n) = f(n,n+2) where f is given in A034261.

Offset 0, canonical program `A034269.P6772783554879928274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A034269 (n : ℕ) : ℤ :=
  A034269.P6772783554879928274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A034269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035040.P15319361910975943609

`2^n-A008860(n)`
-/

namespace A035040.P15319361910975943609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008860 n

end

end A035040.P15319361910975943609

noncomputable section

/-- A035040: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,7).

Offset 0, canonical program `A035040.P15319361910975943609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035040 (n : ℕ) : ℤ :=
  A035040.P15319361910975943609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035487.P12920524519173018273

`A007067(A007064(n+1))`
-/

namespace A035487.P12920524519173018273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007064 (n + 1)).toNat

end

end A035487.P12920524519173018273

noncomputable section

/-- A035487: Second column of Stolarsky array.

Offset 1, canonical program `A035487.P12920524519173018273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035487 (n : ℕ) : ℤ :=
  A035487.P12920524519173018273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035510.P10984197623393377271

`A007064(A026355(2*n+1)-A004956(n))`
-/

namespace A035510.P10984197623393377271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A026355 (2 * n + 1) - A004956 n).toNat

end

end A035510.P10984197623393377271

noncomputable section

/-- A035510: 2nd column of Inverse Stolarsky array.

Offset 0, canonical program `A035510.P10984197623393377271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035510 (n : ℕ) : ℤ :=
  A035510.P10984197623393377271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035606.P15826716796151369121

`∑[2*A035605(n)]-A035605(n)`
-/

namespace A035606.P15826716796151369121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035605 n

end

end A035606.P15826716796151369121

noncomputable section

/-- A035606: Number of points of L1 norm 12 in cubic lattice Z^n.

Offset 0, canonical program `A035606.P15826716796151369121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035606 (n : ℕ) : ℤ :=
  A035606.P15826716796151369121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037126.P15983573472963072743

`A000040(A002260(n+1))`
-/

namespace A037126.P15983573472963072743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat

end

end A037126.P15983573472963072743

noncomputable section

/-- A037126: Triangle T(n,k) = prime(k) for k = 1..n.

Offset 1, canonical program `A037126.P15983573472963072743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037126 (n : ℕ) : ℤ :=
  A037126.P15983573472963072743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037800.P4480434957642420409

`(A069010(n)+n)%(n+1)`
-/

namespace A037800.P4480434957642420409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n + (n : ℤ)) (n + 1 : ℤ)

end

end A037800.P4480434957642420409

noncomputable section

/-- A037800: Number of occurrences of 01 in the binary expansion of n.

Offset 0, canonical program `A037800.P4480434957642420409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800 (n : ℕ) : ℤ :=
  A037800.P4480434957642420409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037957.P523599438952609535

`A001405(n)-A026021(n)`
-/

namespace A037957.P523599438952609535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026021 n

end

end A037957.P523599438952609535

noncomputable section

/-- A037957: a(n) = binomial(n, floor((n-6)/2)).

Offset 0, canonical program `A037957.P523599438952609535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957 (n : ℕ) : ℤ :=
  A037957.P523599438952609535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038444.P7379367993067628945

`lcm(A052216(A014132(n+1)), A057077(n))`
-/

namespace A038444.P7379367993067628945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052216 (A014132 (n + 1)).toNat) (A057077 n)

end

end A038444.P7379367993067628945

noncomputable section

/-- A038444: Sums of 2 distinct powers of 10.

Offset 1, canonical program `A038444.P7379367993067628945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5034 terms. -/
def A038444 (n : ℕ) : ℤ :=
  (A038444.P7379367993067628945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5034 terms. -/
def A038444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038474.P669043294200865699

`A055237(A007401(n+1))`
-/

namespace A038474.P669043294200865699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A007401 (n + 1)).toNat

end

end A038474.P669043294200865699

noncomputable section

/-- A038474: Sums of two distinct powers of 5.

Offset 1, canonical program `A038474.P669043294200865699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038474 (n : ℕ) : ℤ :=
  A038474.P669043294200865699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038478.P5368968624079595123

`A055257(A007401(n+1))`
-/

namespace A038478.P5368968624079595123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 (A007401 (n + 1)).toNat

end

end A038478.P5368968624079595123

noncomputable section

/-- A038478: Sums of 2 distinct powers of 6.

Offset 1, canonical program `A038478.P5368968624079595123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A038478 (n : ℕ) : ℤ :=
  A038478.P5368968624079595123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A038478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038481.P1610050288320443512

`lcm(2, A055258(A007401(n+1)))`
-/

namespace A038481.P1610050288320443512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A055258 (A007401 (n + 1)).toNat)

end

end A038481.P1610050288320443512

noncomputable section

/-- A038481: Sums of 2 distinct powers of 7.

Offset 0, canonical program `A038481.P1610050288320443512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A038481 (n : ℕ) : ℤ :=
  (A038481.P1610050288320443512.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A038481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038482.P3656652885610430883

`A033044(eq[4, A048896(n)]+2)`
-/

namespace A038482.P3656652885610430883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038482.P3656652885610430883

noncomputable section

/-- A038482: Sums of 3 distinct powers of 7.

Offset 1, canonical program `A038482.P3656652885610430883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038482 (n : ℕ) : ℤ :=
  A038482.P3656652885610430883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038484.P6088182014072777916

`A055259(A007401(n+1))`
-/

namespace A038484.P6088182014072777916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 (A007401 (n + 1)).toNat

end

end A038484.P6088182014072777916

noncomputable section

/-- A038484: Sums of 2 distinct powers of 8.

Offset 1, canonical program `A038484.P6088182014072777916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A038484 (n : ℕ) : ℤ :=
  A038484.P6088182014072777916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A038484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038602.P11841758182200453414

`8*4^n-A051960(n+1)`
-/

namespace A038602.P11841758182200453414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℤ) - A051960 (n + 1)

end

end A038602.P11841758182200453414

noncomputable section

/-- A038602: One half of convolution of central binomial coefficients A000984(n) with A000984(n+2), n >= 0.

Offset 0, canonical program `A038602.P11841758182200453414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A038602 (n : ℕ) : ℤ :=
  A038602.P11841758182200453414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A038602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038735.P3675330770344052257

`∑[∑[A038734(n+5)]]`
-/

namespace A038735.P3675330770344052257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P3675330770344052257

noncomputable section

/-- A038735: T(n,n-6), array T as in A038730.

Offset 6, canonical program `A038735.P3675330770344052257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038735 (n : ℕ) : ℤ :=
  A038735.P3675330770344052257.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038742.P9813013638731696612

`∑[A038734(n+5)]`
-/

namespace A038742.P9813013638731696612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P9813013638731696612

noncomputable section

/-- A038742: T(n,n-5), array T as in A038738.

Offset 5, canonical program `A038742.P9813013638731696612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038742 (n : ℕ) : ℤ :=
  A038742.P9813013638731696612.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038836.P9381982746898673660

`A029760(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A038836.P9381982746898673660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029760 n + 4 * a (n - 1)

end

end A038836.P9381982746898673660

noncomputable section

/-- A038836: Convolution of Catalan numbers {1,2,5,14,...} with A002802 (5-fold convoluted central binomial coefficients).

Offset 0, canonical program `A038836.P9381982746898673660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A038836 (n : ℕ) : ℤ :=
  A038836.P9381982746898673660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A038836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039974.P14858621183386826904

`A039973(floor(sqrt(n²+1)))`
-/

namespace A039974.P14858621183386826904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (Nat.sqrt (n ^ 2 + 1))

end

end A039974.P14858621183386826904

noncomputable section

/-- A039974: An example of a d-perfect sequence.

Offset 1, canonical program `A039974.P14858621183386826904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1175 terms. -/
def A039974 (n : ℕ) : ℤ :=
  A039974.P14858621183386826904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1175 terms. -/
def A039974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043726.P885760797965580928

`2*eq[2, and(2, A088748(n))]`
-/

namespace A043726.P885760797965580928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P885760797965580928

noncomputable section

/-- A043726: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 4.

Offset 1, canonical program `A043726.P885760797965580928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A043726 (n : ℕ) : ℤ :=
  (A043726.P885760797965580928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A043726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043729.P1874887262937552627

`eq[7, A096230(A088748(n))]`
-/

namespace A043729.P1874887262937552627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096230 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P1874887262937552627

noncomputable section

/-- A043729: Numbers whose number of runs in their base-2 representation is congruent to 1 mod 5.

Offset 1, canonical program `A043729.P1874887262937552627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043729 (n : ℕ) : ℤ :=
  (A043729.P1874887262937552627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043731.P10385380765839690596

`eq[1, A096230(A088748(n)+1)]`
-/

namespace A043731.P10385380765839690596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096230 (A088748 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043731.P10385380765839690596

noncomputable section

/-- A043731: Numbers whose number of runs in their base-2 representation is congruent to 3 mod 5.

Offset 1, canonical program `A043731.P10385380765839690596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043731 (n : ℕ) : ℤ :=
  (A043731.P10385380765839690596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043740.P5653825656500769311

`eq[gcd(2, n)², A069010(n)]`
-/

namespace A043740.P5653825656500769311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P5653825656500769311

noncomputable section

/-- A043740: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 7.

Offset 1, canonical program `A043740.P5653825656500769311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. -/
def A043740 (n : ℕ) : ℤ :=
  (A043740.P5653825656500769311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. -/
def A043740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043741.P2963682673950430182

`eq[8, A007953(A073334(n))]`
-/

namespace A043741.P2963682673950430182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043741.P2963682673950430182

noncomputable section

/-- A043741: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 7.

Offset 1, canonical program `A043741.P2963682673950430182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A043741 (n : ℕ) : ℤ :=
  (A043741.P2963682673950430182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A043741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043755.P9708365563042042669

`eq[2, dr(A088748(n))]`
-/

namespace A043755.P9708365563042042669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043755.P9708365563042042669

noncomputable section

/-- A043755: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 9.

Offset 1, canonical program `A043755.P9708365563042042669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A043755 (n : ℕ) : ℤ :=
  (A043755.P9708365563042042669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A043755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044967.P11768154619602539084

`A032924(eq[2, A023416(n+1)])`
-/

namespace A044967.P11768154619602539084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044967.P11768154619602539084

noncomputable section

/-- A044967: Numbers whose base-3 representation contains no 0's and exactly two 1's.

Offset 1, canonical program `A044967.P11768154619602539084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044967 (n : ℕ) : ℤ :=
  A044967.P11768154619602539084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044968.P18330494829545156474

`A032924(eq[3, A023416(n+1)])`
-/

namespace A044968.P18330494829545156474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044968.P18330494829545156474

noncomputable section

/-- A044968: Numbers whose base-3 representation contains no 0's and exactly three 1's.

Offset 1, canonical program `A044968.P18330494829545156474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044968 (n : ℕ) : ℤ :=
  A044968.P18330494829545156474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044969.P2565728100705881724

`A032924(eq[4, A023416(n+1)])`
-/

namespace A044969.P2565728100705881724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044969.P2565728100705881724

noncomputable section

/-- A044969: Numbers whose base-3 representation contains no 0's and exactly four 1's.

Offset 1, canonical program `A044969.P2565728100705881724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A044969 (n : ℕ) : ℤ :=
  A044969.P2565728100705881724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A044969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044991.P16800616075751073136

`A032924(eq[4, A048896(n)])`
-/

namespace A044991.P16800616075751073136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044991.P16800616075751073136

noncomputable section

/-- A044991: Numbers whose base-3 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A044991.P16800616075751073136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A044991 (n : ℕ) : ℤ :=
  A044991.P16800616075751073136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A044991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044992.P3415523562355839909

`A032924(eq[8, A048896(n)])`
-/

namespace A044992.P3415523562355839909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044992.P3415523562355839909

noncomputable section

/-- A044992: Numbers whose base-3 representation contains no 0's and exactly three 2's.

Offset 1, canonical program `A044992.P3415523562355839909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A044992 (n : ℕ) : ℤ :=
  A044992.P3415523562355839909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A044992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044993.P12653908327930465946

`A032924(eq[16, A048896(n)])`
-/

namespace A044993.P12653908327930465946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044993.P12653908327930465946

noncomputable section

/-- A044993: Numbers whose base-3 representation contains no 0's and exactly four 2's.

Offset 1, canonical program `A044993.P12653908327930465946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A044993 (n : ℕ) : ℤ :=
  A044993.P12653908327930465946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A044993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045720.P7296829623799460313

`A029760(n+1)-A000531(n+2)`
-/

namespace A045720.P7296829623799460313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029760 (n + 1) - A000531 (n + 2)

end

end A045720.P7296829623799460313

noncomputable section

/-- A045720: 3-fold convolution of A001700(n), n >= 0.

Offset 0, canonical program `A045720.P7296829623799460313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A045720 (n : ℕ) : ℤ :=
  A045720.P7296829623799460313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A045720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045722.P9382885105584645516

`A006013(n)*A008619(A103517(n))`
-/

namespace A045722.P9382885105584645516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A008619 (A103517 n).toNat

end

end A045722.P9382885105584645516

noncomputable section

/-- A045722: Number of border edges in all noncrossing rooted trees on n nodes.

Offset 1, canonical program `A045722.P9382885105584645516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045722 (n : ℕ) : ℤ :=
  A045722.P9382885105584645516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045724.P14771865039815941813

`2*A020918(n)-A042941(n)`
-/

namespace A045724.P14771865039815941813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020918 n - A042941 n

end

end A045724.P14771865039815941813

noncomputable section

/-- A045724: Convolution of Catalan numbers A000108 with A020918.

Offset 0, canonical program `A045724.P14771865039815941813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A045724 (n : ℕ) : ℤ :=
  A045724.P14771865039815941813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A045724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045745.P1348953636339689207

`eq[1, A002260(∑{d}[n+1, #]-n)]+1`
-/

namespace A045745.P1348953636339689207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ d ∈ Nat.divisors (f3 n), d - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045745.P1348953636339689207

noncomputable section

/-- A045745: Numbers k such that sum of proper divisors s(k) is a triangular number.

Offset 1, canonical program `A045745.P1348953636339689207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A045745 (n : ℕ) : ℤ :=
  (A045745.P1348953636339689207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A045745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045746.P5286047332654297800

`eq[1, A002260(A000203(n+1)+1)]+1`
-/

namespace A045746.P5286047332654297800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045746.P5286047332654297800

noncomputable section

/-- A045746: Numbers whose sum of divisors is a triangular number.

Offset 1, canonical program `A045746.P5286047332654297800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A045746 (n : ℕ) : ℤ :=
  (A045746.P5286047332654297800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A045746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046135.P1361638922268334320

`p?[A046133(n+1)+2]-2`
-/

namespace A046135.P1361638922268334320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A046135.P1361638922268334320

noncomputable section

/-- A046135: Primes p such that p+2 and p+12 are primes.

Offset 1, canonical program `A046135.P1361638922268334320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A046135 (n : ℕ) : ℤ :=
  A046135.P1361638922268334320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A046135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046143.P11623041466097887557

`A000225(gcd(A002260(n+1), A025581(n)))`
-/

namespace A046143.P11623041466097887557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.gcd (A002260 (n + 1)) (A025581 n))

end

end A046143.P11623041466097887557

noncomputable section

/-- A046143: Triangle T(n, k) = gcd(2^n-1, 2^k-1), for n>=1 and 1 <= k <= n.

Offset 1, canonical program `A046143.P11623041466097887557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046143 (n : ℕ) : ℤ :=
  A046143.P11623041466097887557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046643.P2213597876425122819

`∏{e}[n+1, A001790(#)]`
-/

namespace A046643.P2213597876425122819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001790 (Nat.factorization (f1 n) p)

end

end A046643.P2213597876425122819

noncomputable section

/-- A046643: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives numerator of b_n.

Offset 1, canonical program `A046643.P2213597876425122819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046643 (n : ℕ) : ℤ :=
  A046643.P2213597876425122819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046819.P1212913902005017791

`A001511(A001316(3*n+2)/2)`
-/

namespace A046819.P1212913902005017791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A001316 (3 * n + 2) : ℚ) / 2)).toNat

end

end A046819.P1212913902005017791

noncomputable section

/-- A046819: Number of 1's in binary expansion of 3n+2.

Offset 0, canonical program `A046819.P1212913902005017791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046819 (n : ℕ) : ℤ :=
  A046819.P1212913902005017791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046899.P13814988241420676234

`C(A051162(n), A002262(n))`
-/

namespace A046899.P13814988241420676234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A002262 n).toNat

end

end A046899.P13814988241420676234

noncomputable section

/-- A046899: Triangle in which n-th row is {binomial(n+k,k), k=0..n}, n >= 0.

Offset 0, canonical program `A046899.P13814988241420676234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. -/
def A046899 (n : ℕ) : ℤ :=
  (A046899.P13814988241420676234.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. -/
def A046899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048151.P9376271394073974320

`A002260(n+2)-1`
-/

namespace A048151.P9376271394073974320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) - 1

end

end A048151.P9376271394073974320

noncomputable section

/-- A048151: Triangular array T read by rows: T(n,k)=k mod n, for k=1,2,...,n, n=1,2,...

Offset 1, canonical program `A048151.P9376271394073974320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048151 (n : ℕ) : ℤ :=
  A048151.P9376271394073974320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048154.P5860400217735100456

`A000578(A002260(n+1))%A002024(n+1)`
-/

namespace A048154.P5860400217735100456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A002260 (n + 1)).toNat) (A002024 (n + 1))

end

end A048154.P5860400217735100456

noncomputable section

/-- A048154: Triangular array T read by rows: T(n,k)=k^3 mod n, for k=1,2,...,n, n=1,2,...

Offset 1, canonical program `A048154.P5860400217735100456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048154 (n : ℕ) : ℤ :=
  A048154.P5860400217735100456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048156.P5678008124741459907

`(A002260(n+1)^4)%A002024(n+1)`
-/

namespace A048156.P5678008124741459907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) ^ 4) (A002024 (n + 1))

end

end A048156.P5678008124741459907

noncomputable section

/-- A048156: Triangular array T read by rows: T(n,k)=k^4 mod n, for k=1,2,...,n, n=1,2,...

Offset 1, canonical program `A048156.P5678008124741459907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048156 (n : ℕ) : ℤ :=
  A048156.P5678008124741459907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048645.P10151414295702732837

`floor(A018900(n+1)/2)`
-/

namespace A048645.P10151414295702732837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018900 (n + 1) : ℚ) / 2⌋

end

end A048645.P10151414295702732837

noncomputable section

/-- A048645: Integers with one or two 1-bits in their binary expansion.

Offset 1, canonical program `A048645.P10151414295702732837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048645 (n : ℕ) : ℤ :=
  A048645.P10151414295702732837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049492.P4525552218433629718

`p?[A046133(n+1)-4]`
-/

namespace A049492.P4525552218433629718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049492.P4525552218433629718

noncomputable section

/-- A049492: Primes p such that p+4 and p+16 are also primes.

Offset 1, canonical program `A049492.P4525552218433629718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. -/
def A049492 (n : ℕ) : ℤ :=
  A049492.P4525552218433629718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. -/
def A049492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049761.P1238685783148988751

`(A025581(n)^3)%A002260(n+1)`
-/

namespace A049761.P1238685783148988751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n ^ 3) (A002260 (n + 1))

end

end A049761.P1238685783148988751

noncomputable section

/-- A049761: Triangular array T, read by rows: T(n,k) = n^3 mod k, for k = 1..n and n >= 1.

Offset 1, canonical program `A049761.P1238685783148988751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049761 (n : ℕ) : ℤ :=
  A049761.P1238685783148988751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049767.P16394582321234295455

`A049759(n+1)+A048152(n+1)`
-/

namespace A049767.P16394582321234295455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (n + 1) + A048152 (n + 1)

end

end A049767.P16394582321234295455

noncomputable section

/-- A049767: Triangular array T, read by rows: T(n,k) = (k^2 mod n) + (n^2 mod k), for k = 1..n and n >= 1.

Offset 1, canonical program `A049767.P16394582321234295455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049767 (n : ℕ) : ℤ :=
  A049767.P16394582321234295455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049780.P7907391970177104858

`1-C(A002260(n+1)+1, 2)+n`
-/

namespace A049780.P7907391970177104858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A002260 (n + 1) + 1).toNat 2 : ℤ) + (n : ℤ)

end

end A049780.P7907391970177104858

noncomputable section

/-- A049780: Array T, read by descending antidiagonals: T(n, k) = k*(2*n + k + 1)/2 for n, k >= 0.

Offset 0, canonical program `A049780.P7907391970177104858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049780 (n : ℕ) : ℤ :=
  A049780.P7907391970177104858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051173.P15389408228656621901

`lcm(∑[A010054(n)], A002260(n+1))`
-/

namespace A051173.P15389408228656621901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A002260 (n + 1))

end

end A051173.P15389408228656621901

noncomputable section

/-- A051173: Triangle read by rows: T(n, k) = lcm(n, k).

Offset 1, canonical program `A051173.P15389408228656621901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051173 (n : ℕ) : ℤ :=
  (A051173.P15389408228656621901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051678.P7321315457957259544

`∑[A002260(n+1)²]`
-/

namespace A051678.P7321315457957259544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P7321315457957259544

noncomputable section

/-- A051678: Square-pyramid-tree numbers: a(n) = sum(b(m),m=1..n), b(m) = 1^2, 1^2,2^2, 1^2,2^2,3^2,.. = (A002260)^2.

Offset 1, canonical program `A051678.P7321315457957259544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051678 (n : ℕ) : ℤ :=
  A051678.P7321315457957259544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051679.P17576665333386059857

`∑[A048967(n)]`
-/

namespace A051679.P17576665333386059857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P17576665333386059857

noncomputable section

/-- A051679: Total number of even entries in first n rows of Pascal's triangle (the zeroth and first rows being 1; 1,1).

Offset 0, canonical program `A051679.P17576665333386059857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051679 (n : ℕ) : ℤ :=
  A051679.P17576665333386059857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054130.P12533457202866750369

`A011782(n)+∑[A035039(n+7)]`
-/

namespace A054130.P12533457202866750369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054130.P12533457202866750369

noncomputable section

/-- A054130: T(n,4), array T as in A054126.

Offset 4, canonical program `A054130.P12533457202866750369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A054130 (n : ℕ) : ℤ :=
  A054130.P12533457202866750369.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A054130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054138.P2542160785684713049

`A035039(n+7)+A011782(n)`
-/

namespace A054138.P2542160785684713049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (n + 7) + A011782 n

end

end A054138.P2542160785684713049

noncomputable section

/-- A054138: T(n,4), array T as in A054134.

Offset 4, canonical program `A054138.P2542160785684713049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A054138 (n : ℕ) : ℤ :=
  A054138.P2542160785684713049.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A054138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054541.P347795157194570387

`A046930(n)+2-a(n-1)` with `a(0)=2`
-/

namespace A054541.P347795157194570387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A046930 n + (2 - a (n - 1))

end

end A054541.P347795157194570387

noncomputable section

/-- A054541: Sum of first n terms equals n-th prime.

Offset 1, canonical program `A054541.P347795157194570387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054541 (n : ℕ) : ℤ :=
  A054541.P347795157194570387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055208.P10297010048786365053

`∑{digits}[A004736(n+1), #^A002260(n+1)]`
-/

namespace A055208.P10297010048786365053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) ^ (A002260 (n + 1) : ℤ)).sum

end

end A055208.P10297010048786365053

noncomputable section

/-- A055208: Table read by ascending antidiagonals: T(n,k) (n >= 1, k >= 1) is the sum of k-th powers of digits of n.

Offset 1, canonical program `A055208.P10297010048786365053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6432 terms. -/
def A055208 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055208.P10297010048786365053.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6432 terms. -/
def A055208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055235.P6827008974222862054

`2*(A023745(n+1)+1)`
-/

namespace A055235.P6827008974222862054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023745 (n + 1) + 1)

end

end A055235.P6827008974222862054

noncomputable section

/-- A055235: Sums of two powers of 3.

Offset 0, canonical program `A055235.P6827008974222862054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055235 (n : ℕ) : ℤ :=
  A055235.P6827008974222862054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055651.P9187909859362461794

`A003992(n)-A004248(n)`
-/

namespace A055651.P9187909859362461794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n - A004248 n

end

end A055651.P9187909859362461794

noncomputable section

/-- A055651: Table T(m,k)=m^k-k^m (with 0^0 taken to be 1) as square array read by antidiagonals.

Offset 0, canonical program `A055651.P9187909859362461794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A055651 (n : ℕ) : ℤ :=
  A055651.P9187909859362461794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A055651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055652.P5077666834946705918

`A004248(n)+A003992(n)`
-/

namespace A055652.P5077666834946705918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n + A003992 n

end

end A055652.P5077666834946705918

noncomputable section

/-- A055652: Table T(m,k)=m^k+k^m (with 0^0 taken to be 1) as square array read by antidiagonals.

Offset 0, canonical program `A055652.P5077666834946705918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A055652 (n : ℕ) : ℤ :=
  A055652.P5077666834946705918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A055652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055938.P11436454756649086681

`A045412(n+1)-1`
-/

namespace A055938.P11436454756649086681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1) - 1

end

end A055938.P11436454756649086681

noncomputable section

/-- A055938: Integers not generated by b(n) = b(floor(n/2)) + n (complement of A005187).

Offset 1, canonical program `A055938.P11436454756649086681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055938 (n : ℕ) : ℤ :=
  A055938.P11436454756649086681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056559.P3524647608024188451

`A056556(n)-A056557(n)`
-/

namespace A056559.P3524647608024188451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056557 n

end

end A056559.P3524647608024188451

noncomputable section

/-- A056559: Tetrahedron with T(t,n,k) = t - n; succession of growing finite triangles with declining values per row.

Offset 0, canonical program `A056559.P3524647608024188451`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056559 (n : ℕ) : ℤ :=
  A056559.P3524647608024188451.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057105.P18280102893373418042

`2*A002260(n+1)²-A055461(n+1)`
-/

namespace A057105.P18280102893373418042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) ^ 2 - A055461 (n + 1)

end

end A057105.P18280102893373418042

noncomputable section

/-- A057105: Triangle of numbers (when unsigned) related to congruum problem: T(n,k)=k^2+2nk-n^2 with n>k>0 and starting at T(2,1)=1.

Offset 1, canonical program `A057105.P18280102893373418042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057105 (n : ℕ) : ℤ :=
  A057105.P18280102893373418042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057145.P9043819964988924881

`A002260(n+1)+A000217(A002262(n))*A025581(n)`
-/

namespace A057145.P9043819964988924881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000217 (A002262 n).toNat * A025581 n

end

end A057145.P9043819964988924881

noncomputable section

/-- A057145: Square array of polygonal numbers T(n,k) = ((n-2)*k^2 - (n-4)*k)/2, n >= 2, k >= 1, read by antidiagonals upwards.

Offset 2, canonical program `A057145.P9043819964988924881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057145 (n : ℕ) : ℤ :=
  A057145.P9043819964988924881.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057168.P11619556814711801112

`A006519(n+1)+A006519(A025480(n)+1)+n`
-/

namespace A057168.P11619556814711801112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + (A006519 (A025480 n + 1).toNat + (n : ℤ))

end

end A057168.P11619556814711801112

noncomputable section

/-- A057168: Next larger integer with same binary weight (number of 1 bits) as n.

Offset 1, canonical program `A057168.P11619556814711801112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057168 (n : ℕ) : ℤ :=
  A057168.P11619556814711801112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057851.P3476129261912973743

`A057850(A000040(n+1))`
-/

namespace A057851.P3476129261912973743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A000040 (n + 1)).toNat

end

end A057851.P3476129261912973743

noncomputable section

/-- A057851: Primes p whose order of primeness A078442(p) is at least 9.

Offset 1, canonical program `A057851.P3476129261912973743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A057851 (n : ℕ) : ℤ :=
  A057851.P3476129261912973743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A057851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058033.P17773397942535060581

`Δ[A054850(n+1)]`
-/

namespace A058033.P17773397942535060581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P17773397942535060581

noncomputable section

/-- A058033: Number of powers of 2 between (but not including) two consecutive primorials.

Offset 1, canonical program `A058033.P17773397942535060581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058033 (n : ℕ) : ℤ :=
  A058033.P17773397942535060581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058071.P17570707102642967147

`A000045(A002260(n+1))*A000045(A004736(n+1))`
-/

namespace A058071.P17570707102642967147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A000045 (A004736 (n + 1)).toNat

end

end A058071.P17570707102642967147

noncomputable section

/-- A058071: A Fibonacci triangle: triangle T(n,k) = Fibonacci(k+1)*Fibonacci(n-k+1), for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A058071.P17570707102642967147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058071 (n : ℕ) : ℤ :=
  A058071.P17570707102642967147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058127.P5154211629077519566

`A002024(n+1)^(A002260(n+1)-2)*A004736(n+1)`
-/

namespace A058127.P5154211629077519566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) - 2 : ℤ) * (A004736 (n + 1) : ℚ)

end

end A058127.P5154211629077519566

noncomputable section

/-- A058127: Triangle read by rows: T(j,k) is the number of acyclic functions from {1,...,j} to {1,...,k}. For n >= 1, a(n) = (k-j)*k^(j-1), where k is such that C(k,2) < n <= C(k+1,2) and j = (n-1) mod C(k,2). Alternatively, table T(k,j) read by antidiagonals with k >= 1, 0 <= j <= k: T(k,j) = number of acyclic-function digraphs on k vertices with j vertices of outdegree 1 and (k-j) vertices of outdegree 0; T(k,j) = (k-j)*k^(j-1).

Offset 1, canonical program `A058127.P5154211629077519566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A058127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058127.P5154211629077519566.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A058127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058263.P10245347506721063533

`gcd(A037166(n+1), A037167(n+1))`
-/

namespace A058263.P10245347506721063533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037166 (n + 1)) (A037167 (n + 1))

end

end A058263.P10245347506721063533

noncomputable section

/-- A058263: a(n) = gcd(prime(n) - 1, prime(n+1) - 1).

Offset 1, canonical program `A058263.P10245347506721063533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058263 (n : ℕ) : ℤ :=
  (A058263.P10245347506721063533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058370.P2006344636146154017

`p?[A058369(n+1)]`
-/

namespace A058370.P2006344636146154017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058370.P2006344636146154017

noncomputable section

/-- A058370: Primes p such that p and p^2 have same digit sum.

Offset 1, canonical program `A058370.P2006344636146154017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A058370 (n : ℕ) : ℤ :=
  A058370.P2006344636146154017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A058370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059144.P1467077077877523239

`A059143(3*n)+A059143(3*n+1)+A059143(3*n)`
-/

namespace A059144.P1467077077877523239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059143 (3 * n) + A059143 (3 * n + 1) + A059143 (3 * n)

end

end A059144.P1467077077877523239

noncomputable section

/-- A059144: A hierarchical sequence (W3{2,2}*cc - see A059126).

Offset 0, canonical program `A059144.P1467077077877523239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059144 (n : ℕ) : ℤ :=
  A059144.P1467077077877523239.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059674.P10796812070366866973

`gcd(A026729(n), A052553(n))`
-/

namespace A059674.P10796812070366866973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026729 n) (A052553 n)

end

end A059674.P10796812070366866973

noncomputable section

/-- A059674: Square array a(m,n) = binomial(max(m,n), min(m,n)) (m>=0, n>=0) read by antidiagonals.

Offset 0, canonical program `A059674.P10796812070366866973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059674 (n : ℕ) : ℤ :=
  (A059674.P10796812070366866973.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060175.P5757316302739651473

`val(A002260(n+1), A000040(A004736(n+1)))`
-/

namespace A060175.P5757316302739651473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002260 (n + 1)).toNat (A000040 (A004736 (n + 1)).toNat).toNat

end

end A060175.P5757316302739651473

noncomputable section

/-- A060175: Square array A(n,k) = exponent of the largest power of k-th prime which divides n, read by falling antidiagonals.

Offset 1, canonical program `A060175.P5757316302739651473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060175 (n : ℕ) : ℤ :=
  (A060175.P5757316302739651473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060329.P5601764562904454066

`p?[A053767(n+4)-A053767(n)]`
-/

namespace A060329.P5601764562904454066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060329.P5601764562904454066

noncomputable section

/-- A060329: Primes the sum of four consecutive composite numbers.

Offset 1, canonical program `A060329.P5601764562904454066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A060329 (n : ℕ) : ℤ :=
  A060329.P5601764562904454066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A060329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061557.P6533906729672181008

`A000782(n+2)`
-/

namespace A061557.P6533906729672181008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 2)

end

end A061557.P6533906729672181008

noncomputable section

/-- A061557: a(n) = (7*n+2)*C(n)/(n+2), where C(n) is the n-th Catalan number.

Offset 1, canonical program `A061557.P6533906729672181008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A061557 (n : ℕ) : ℤ :=
  A061557.P6533906729672181008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A061557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061910.P79250679325321170

`sqrt(A053057(n+2))`
-/

namespace A061910.P79250679325321170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053057 (n + 2) : ℝ)

end

end A061910.P79250679325321170

noncomputable section

/-- A061910: Positive numbers k such that sum of digits of k^2 is a square.

Offset 1, canonical program `A061910.P79250679325321170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A061910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061910.P79250679325321170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A061910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062169.P14923424659138943976

`A002260(n+1)!%A002024(n+1)`
-/

namespace A062169.P14923424659138943976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A002260 (n + 1)).toNat : ℤ) (A002024 (n + 1))

end

end A062169.P14923424659138943976

noncomputable section

/-- A062169: Triangle T(n, k) = k! mod n for n >= 1, 1 <= k <= n.

Offset 1, canonical program `A062169.P14923424659138943976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A062169 (n : ℕ) : ℤ :=
  A062169.P14923424659138943976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A062169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062275.P1482484100513315619

`A003992(n)*A004248(n)`
-/

namespace A062275.P1482484100513315619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A004248 n

end

end A062275.P1482484100513315619

noncomputable section

/-- A062275: Array A(n, k) = n^k * k^n, n, k >= 0, read by antidiagonals.

Offset 0, canonical program `A062275.P1482484100513315619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003992, A004248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062275 (n : ℕ) : ℤ :=
  A062275.P1482484100513315619.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003992, A004248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063656.P315319401503843104

`2*n-A051162(n)`
-/

namespace A063656.P315319401503843104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A051162 n

end

end A063656.P315319401503843104

noncomputable section

/-- A063656: Numbers k such that the truncated square root of k is equal to the rounded square root of k.

Offset 0, canonical program `A063656.P315319401503843104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063656 (n : ℕ) : ℤ :=
  A063656.P315319401503843104.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064720.P14462698037988331331

`A160542(n+1)+A002260(∑[n+1])`
-/

namespace A064720.P14462698037988331331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1) + A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064720.P14462698037988331331

noncomputable section

/-- A064720: A Beatty sequence for 3^i + 3^-i + 1.

Offset 1, canonical program `A064720.P14462698037988331331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A064720 (n : ℕ) : ℤ :=
  A064720.P14462698037988331331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A064720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065075.P5743143580939958103

`∑{digits}[A004207(n), #]`
-/

namespace A065075.P5743143580939958103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065075.P5743143580939958103

noncomputable section

/-- A065075: Sum of digits of the sum of the preceding numbers.

Offset 1, canonical program `A065075.P5743143580939958103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065075 (n : ℕ) : ℤ :=
  (A065075.P5743143580939958103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065859.P13509561153505091038

`A000040(n+1)%Δ[A053767(n)]`
-/

namespace A065859.P13509561153505091038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (f1 (n + 1) - f1 n)

end

end A065859.P13509561153505091038

noncomputable section

/-- A065859: Remainder when the n-th prime is divided by the n-th composite number.

Offset 1, canonical program `A065859.P13509561153505091038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065859 (n : ℕ) : ℤ :=
  A065859.P13509561153505091038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065860.P14952358247560601420

`Δ[A053767(n)]%(n+1)`
-/

namespace A065860.P14952358247560601420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A065860.P14952358247560601420

noncomputable section

/-- A065860: Remainder when the n-th composite number is divided by n.

Offset 1, canonical program `A065860.P14952358247560601420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065860 (n : ℕ) : ℤ :=
  A065860.P14952358247560601420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066116.P5764852715753449970

`A046301(n+1)*A065091(n+1)`
-/

namespace A066116.P5764852715753449970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A065091 (n + 1)

end

end A066116.P5764852715753449970

noncomputable section

/-- A066116: a(n) = prime(n-2)*prime(n-1)^2*prime(n).

Offset 3, canonical program `A066116.P5764852715753449970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066116 (n : ℕ) : ℤ :=
  A066116.P5764852715753449970.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066181.P6556723299225376015

`Δ[A002260(n+1)+A000217(n)]`
-/

namespace A066181.P6556723299225376015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066181.P6556723299225376015

noncomputable section

/-- A066181: Permutation of the integers with cycle form {1}, {2, 3}, {4, 5, 6}, {7, 8, 9, 10}, ...

Offset 1, canonical program `A066181.P6556723299225376015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066181 (n : ℕ) : ℤ :=
  A066181.P6556723299225376015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066704.P9851633682113676223

`C(∑[A010054(n)], A050206(n+2)-1)`
-/

namespace A066704.P9851633682113676223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A050206 (n + 2) - 1).toNat

end

end A066704.P9851633682113676223

noncomputable section

/-- A066704: Triangle with a(n,k) = C(n,floor(n/k)) with n>=k>=1.

Offset 1, canonical program `A066704.P9851633682113676223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066704 (n : ℕ) : ℤ :=
  (A066704.P9851633682113676223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066744.P13027750496536240928

`or(4*a(n-1), Δ[A003623(n+1)])` with `a(0)=1`
-/

namespace A066744.P13027750496536240928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A066744.P13027750496536240928

noncomputable section

/-- A066744: a(n) = either 4a(n-1)+1 or 4a(n-1)+3 depending on corresponding term of A005614, +3 for 0, +1 for 1.

Offset 1, canonical program `A066744.P13027750496536240928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A066744 (n : ℕ) : ℤ :=
  A066744.P13027750496536240928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A066744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066847.P11671662793605075886

`A002024(n+1)!+A002260(n+1)!`
-/

namespace A066847.P11671662793605075886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002024 (n + 1)).toNat + Nat.factorial (A002260 (n + 1)).toNat

end

end A066847.P11671662793605075886

noncomputable section

/-- A066847: Integers of the form m! + n!, m and n = positive integers.

Offset 0, canonical program `A066847.P11671662793605075886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A066847 (n : ℕ) : ℤ :=
  (A066847.P11671662793605075886.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A066847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066975.P3797068642034039164

`gcd(A000051(n), A001790(n))`
-/

namespace A066975.P3797068642034039164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000051 n) (A001790 n)

end

end A066975.P3797068642034039164

noncomputable section

/-- A066975: a(n) = gcd(binomial(2n,n), 2^n + 1).

Offset 0, canonical program `A066975.P3797068642034039164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A066975 (n : ℕ) : ℤ :=
  (A066975.P3797068642034039164.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A066975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067674.P2174303709818007905

`∩[A067673(n+1)-1, A067673(n+1)]`
-/

namespace A067674.P2174303709818007905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067673 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067674.P2174303709818007905

noncomputable section

/-- A067674: Numbers k such that floor((3/2)^(k+4))/floor((3/2)^k)=(3/2)^4.

Offset 1, canonical program `A067674.P2174303709818007905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A067674 (n : ℕ) : ℤ :=
  (A067674.P2174303709818007905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A067674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067982.P7275178896645523825

`A067981(n)+A067980(n)`
-/

namespace A067982.P7275178896645523825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067981 n + A067980 n

end

end A067982.P7275178896645523825

noncomputable section

/-- A067982: Convolution of L(n+1) = A000204(n+1), n>=0, with L(n+4), n>=0.

Offset 0, canonical program `A067982.P7275178896645523825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A067982 (n : ℕ) : ℤ :=
  A067982.P7275178896645523825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A067982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068498.P10147595051279811510

`A000045(lt[A280185(n), 0])`
-/

namespace A068498.P10147595051279811510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068498.P10147595051279811510

noncomputable section

/-- A068498: Fibonacci numbers whose sum of decimal digits is greater than its index.

Offset 1, canonical program `A068498.P10147595051279811510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A068498 (n : ℕ) : ℤ :=
  A068498.P10147595051279811510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A068498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068606.P5825538352083223845

`A004247(n)+A003056(n)*A004247(n)`
-/

namespace A068606.P5825538352083223845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A003056 n * A004247 n

end

end A068606.P5825538352083223845

noncomputable section

/-- A068606: Square table by antidiagonals of T(n,k)=n*k*(n+k+1).

Offset 0, canonical program `A068606.P5825538352083223845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068606 (n : ℕ) : ℤ :=
  A068606.P5825538352083223845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069487.P2918341576510942803

`A006094(n+1)*A069482(n+1)`
-/

namespace A069487.P2918341576510942803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A069482 (n + 1)

end

end A069487.P2918341576510942803

noncomputable section

/-- A069487: Areas of Pythagorean triangles (A069482, A069484, A069486).

Offset 1, canonical program `A069487.P2918341576510942803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069487 (n : ℕ) : ℤ :=
  A069487.P2918341576510942803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069537.P88310199312240341

`A052216(A080036(n))`
-/

namespace A069537.P88310199312240341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A080036 n).toNat

end

end A069537.P88310199312240341

noncomputable section

/-- A069537: Multiples of 2 whose digit sum is 2.

Offset 1, canonical program `A069537.P88310199312240341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5034 terms. -/
def A069537 (n : ℕ) : ℤ :=
  A069537.P88310199312240341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5034 terms. -/
def A069537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071010.P14669995141802898287

`A000203(comp[A069011(n)])/4`
-/

namespace A071010.P14669995141802898287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 4

end

end A071010.P14669995141802898287

noncomputable section

/-- A071010: Sigma(k)/4 when k is not a sum of 2 squares.

Offset 1, canonical program `A071010.P14669995141802898287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071010.P14669995141802898287.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071041.P15932926825950590640

`A071040(A351782(n+1))`
-/

namespace A071041.P15932926825950590640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A351782 (n + 1)).toNat

end

end A071041.P15932926825950590640

noncomputable section

/-- A071041: Triangle read by rows giving successive states of cellular automaton generated by "Rule 246".

Offset 0, canonical program `A071041.P15932926825950590640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071041 (n : ℕ) : ℤ :=
  A071041.P15932926825950590640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071043.P6466129346200666607

`A060632(n)+A064405(n)+n`
-/

namespace A071043.P6466129346200666607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n + (A064405 n + (n : ℤ))

end

end A071043.P6466129346200666607

noncomputable section

/-- A071043: Number of 0's in n-th row of triangle in A071029.

Offset 0, canonical program `A071043.P6466129346200666607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071043 (n : ℕ) : ℤ :=
  A071043.P6466129346200666607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071051.P15402444930345305541

`A117973(n)-A036987(n)`
-/

namespace A071051.P15402444930345305541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n - A036987 n

end

end A071051.P15402444930345305541

noncomputable section

/-- A071051: Number of 1's in n-th row of triangle in A071035.

Offset 0, canonical program `A071051.P15402444930345305541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071051 (n : ℕ) : ℤ :=
  A071051.P15402444930345305541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071264.P6853704357610007777

`Δ[A032952(n)]-A002057(n)`
-/

namespace A071264.P6853704357610007777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002057 n

end

end A071264.P6853704357610007777

noncomputable section

/-- A071264: Expansion of (1+x*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071264.P6853704357610007777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071264 (n : ℕ) : ℤ :=
  A071264.P6853704357610007777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071320.P16588707936141343234

`∩[A071319(n+1)-1, A071319(n+1)]`
-/

namespace A071320.P16588707936141343234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071320.P16588707936141343234

noncomputable section

/-- A071320: Least of four consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2, k+3} are in A067259.

Offset 1, canonical program `A071320.P16588707936141343234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A071320 (n : ℕ) : ℤ :=
  (A071320.P16588707936141343234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A071320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071715.P2007050973766526109

`∑[A026027(n+2)-A099376(n)]`
-/

namespace A071715.P2007050973766526109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026027 (n + 2) - A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071715.P2007050973766526109

noncomputable section

/-- A071715: Expansion of (1+x*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071715.P2007050973766526109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071715 (n : ℕ) : ℤ :=
  A071715.P2007050973766526109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071719.P16601501130629148270

`A067324(n)-A000782(n+1)`
-/

namespace A071719.P16601501130629148270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A000782 (n + 1)

end

end A071719.P16601501130629148270

noncomputable section

/-- A071719: Expansion of (1+x^2*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071719.P16601501130629148270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071719 (n : ℕ) : ℤ :=
  A071719.P16601501130629148270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071733.P8791643933779463557

`A002057(n)+A071725(n)-A071724(n)`
-/

namespace A071733.P8791643933779463557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (A071725 n - A071724 n)

end

end A071733.P8791643933779463557

noncomputable section

/-- A071733: Expansion of (1+x^3*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071733.P8791643933779463557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071733 (n : ℕ) : ℤ :=
  A071733.P8791643933779463557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071736.P17590571516365406048

`A071725(n)+Δ[A071724(n)]`
-/

namespace A071736.P17590571516365406048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n + (f1 (n + 1) - f1 n)

end

end A071736.P17590571516365406048

noncomputable section

/-- A071736: Expansion of (1+x^3*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071736.P17590571516365406048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071736 (n : ℕ) : ℤ :=
  A071736.P17590571516365406048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071740.P5522841597563350787

`A026029(n)+A000245(n)`
-/

namespace A071740.P5522841597563350787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n + A000245 n

end

end A071740.P5522841597563350787

noncomputable section

/-- A071740: Expansion of (1+x^3*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071740.P5522841597563350787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071740 (n : ℕ) : ℤ :=
  A071740.P5522841597563350787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071741.P9703723317413013413

`Δ[A026029(n)]`
-/

namespace A071741.P9703723317413013413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071741.P9703723317413013413

noncomputable section

/-- A071741: Expansion of (1+x^3*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071741.P9703723317413013413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071741 (n : ℕ) : ℤ :=
  A071741.P9703723317413013413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072439.P1791281845013310770

`A000040(A071600(n+1))`
-/

namespace A072439.P1791281845013310770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071600 (n + 1)).toNat

end

end A072439.P1791281845013310770

noncomputable section

/-- A072439: Primes prime(k) such that the number of binary 1's in prime(k) equals the number of binary 1's in k.

Offset 1, canonical program `A072439.P1791281845013310770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A071600, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072439 (n : ℕ) : ℤ :=
  A072439.P1791281845013310770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A071600, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072577.P9359693124357026708

`eq[A023416(n+1), A035103(n+1)]+1`
-/

namespace A072577.P9359693124357026708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072577.P9359693124357026708

noncomputable section

/-- A072577: Numbers k such that k and the k-th prime have the same number of 0's in their binary representation.

Offset 1, canonical program `A072577.P9359693124357026708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1455 terms. -/
def A072577 (n : ℕ) : ℤ :=
  (A072577.P9359693124357026708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1455 terms. -/
def A072577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072579.P12021979385402821400

`eq[A000120(n+1), A035103(n+1)]+1`
-/

namespace A072579.P12021979385402821400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072579.P12021979385402821400

noncomputable section

/-- A072579: In binary representation: k has the same number of 1's as the k-th prime has 0's.

Offset 1, canonical program `A072579.P12021979385402821400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. -/
def A072579 (n : ℕ) : ℤ :=
  (A072579.P12021979385402821400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. -/
def A072579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072757.P10660546183651895635

`A026344(n+1)+1`
-/

namespace A072757.P10660546183651895635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1) + 1

end

end A072757.P10660546183651895635

noncomputable section

/-- A072757: Complement of A072756.

Offset 0, canonical program `A072757.P10660546183651895635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072757 (n : ℕ) : ℤ :=
  A072757.P10660546183651895635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073137.P15165915416940425348

`A053644(n)+A038573(n-A053644(n))`
-/

namespace A073137.P15165915416940425348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A038573 ((n : ℤ) - A053644 n).toNat

end

end A073137.P15165915416940425348

noncomputable section

/-- A073137: a(n) is the least number whose binary representation has the same number of 0's and 1's as n.

Offset 0, canonical program `A073137.P15165915416940425348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073137 (n : ℕ) : ℤ :=
  A073137.P15165915416940425348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073215.P8909294999034023344

`2*A072822(n)`
-/

namespace A073215.P8909294999034023344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072822 n

end

end A073215.P8909294999034023344

noncomputable section

/-- A073215: Sum of two powers of 23.

Offset 0, canonical program `A073215.P8909294999034023344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A073215 (n : ℕ) : ℤ :=
  A073215.P8909294999034023344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A073215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073216.P5288567735889800132

`A023745(n+1)+1`
-/

namespace A073216.P5288567735889800132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 1) + 1

end

end A073216.P5288567735889800132

noncomputable section

/-- A073216: The terms of A055235 (sums of two powers of 3) divided by 2.

Offset 0, canonical program `A073216.P5288567735889800132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073216 (n : ℕ) : ℤ :=
  A073216.P5288567735889800132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073217.P2646747774313223643

`A055237(n)/2`
-/

namespace A073217.P2646747774313223643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055237 n : ℚ) / 2

end

end A073217.P2646747774313223643

noncomputable section

/-- A073217: The terms of A055237 (sums of two powers of 5) divided by 2.

Offset 1, canonical program `A073217.P2646747774313223643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073217.P2646747774313223643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073218.P17562511943308065379

`A055258(n)/2`
-/

namespace A073218.P17562511943308065379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055258 n : ℚ) / 2

end

end A073218.P17562511943308065379

noncomputable section

/-- A073218: The terms of A055258 (sums of two powers of 7) divided by 2.

Offset 0, canonical program `A073218.P17562511943308065379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7139 terms. -/
def A073218 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073218.P17562511943308065379.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7139 terms. -/
def A073218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073219.P4361304061615742939

`A073211(n)/2`
-/

namespace A073219.P4361304061615742939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073211 n : ℚ) / 2

end

end A073219.P4361304061615742939

noncomputable section

/-- A073219: The terms of A073211 (sums of two powers of 11) divided by 2.

Offset 1, canonical program `A073219.P4361304061615742939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4751 terms. -/
def A073219 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073219.P4361304061615742939.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4751 terms. -/
def A073219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073221.P9629194107574289743

`A073213(n)/2`
-/

namespace A073221.P9629194107574289743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073213 n : ℚ) / 2

end

end A073221.P9629194107574289743

noncomputable section

/-- A073221: The terms of A073213 (sums of two powers of 17) divided by 2.

Offset 0, canonical program `A073221.P9629194107574289743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3403 terms. -/
def A073221 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073221.P9629194107574289743.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3403 terms. -/
def A073221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073612.P11465339140112871520

`(A061802(n+1)+1)/2`
-/

namespace A073612.P11465339140112871520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) + 1 : ℚ) / 2

end

end A073612.P11465339140112871520

noncomputable section

/-- A073612: Group the positive integers as (1, 2), (3, 4, 5), (6, 7, 8, 9, 10), (11, 12, 13, 14, 15, 16, 17), ... the n-th group containing prime(n) elements. Except the first, all groups contain an odd number of elements and hence have a middle term. Sequence gives the middle terms starting from group 2.

Offset 2, canonical program `A073612.P11465339140112871520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073612.P11465339140112871520.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073766.P7770165275917776736

`C(A018252(n+3), Δ[A053767(n)])`
-/

namespace A073766.P7770165275917776736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018252 (n + 3)).toNat (f1 (n + 1) - f1 n).toNat

end

end A073766.P7770165275917776736

noncomputable section

/-- A073766: a(n) = binomial(composite(n+1), composite(n)) = binomial(A002808(n+1), A002808(n)).

Offset 1, canonical program `A073766.P7770165275917776736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073766 (n : ℕ) : ℤ :=
  (A073766.P7770165275917776736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075061.P6005277005558474816

`A003418(∑[A010054(n)])+A002260(n+1)`
-/

namespace A075061.P6005277005558474816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A002260 (n + 1)

end

end A075061.P6005277005558474816

noncomputable section

/-- A075061: Triangle in A075059 read by rows.

Offset 1, canonical program `A075061.P6005277005558474816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075061 (n : ℕ) : ℤ :=
  A075061.P6005277005558474816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075673.P275598027146111731

`Δ[A061802(∑[n]+1)]/2`
-/

namespace A075673.P275598027146111731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A075673.P275598027146111731

noncomputable section

/-- A075673: Sum of next n integer interprimes (cf. A024675).

Offset 1, canonical program `A075673.P275598027146111731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075673.P275598027146111731.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075888.P13966252635621325754

`A069482(n+3)/24`
-/

namespace A075888.P13966252635621325754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 3) : ℚ) / 24

end

end A075888.P13966252635621325754

noncomputable section

/-- A075888: Difference of successive primes squared divided by 24, (prime(n+1)^2 - prime(n)^2)/24.

Offset 3, canonical program `A075888.P13966252635621325754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075888.P13966252635621325754.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076014.P1061636729240637047

`A002260(n+1)^∑[char[∑[n+1]]]`
-/

namespace A076014.P1061636729240637047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076014.P1061636729240637047

noncomputable section

/-- A076014: Triangle in which m-th entry of n-th row is m^(n-1).

Offset 1, canonical program `A076014.P1061636729240637047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A076014 (n : ℕ) : ℤ :=
  A076014.P1061636729240637047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A076014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076540.P4910110509095003729

`∑[A073663(n)]`
-/

namespace A076540.P4910110509095003729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076540.P4910110509095003729

noncomputable section

/-- A076540: Number of branches in all ordered trees with n edges.

Offset 1, canonical program `A076540.P4910110509095003729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A076540 (n : ℕ) : ℤ :=
  A076540.P4910110509095003729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A076540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076756.P16032784192735833623

`A033999(A025581(n))*A054142(n)`
-/

namespace A076756.P16032784192735833623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A054142 n

end

end A076756.P16032784192735833623

noncomputable section

/-- A076756: Triangle of coefficients of characteristic polynomial of M_n, the n X n matrix M_(i,j) = min(i,j).

Offset 0, canonical program `A076756.P16032784192735833623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076756 (n : ℕ) : ℤ :=
  A076756.P16032784192735833623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077028.P11682596430163569480

`A004247(n)+1`
-/

namespace A077028.P11682596430163569480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + 1

end

end A077028.P11682596430163569480

noncomputable section

/-- A077028: The rascal triangle, read by rows: T(n,k) (n >= 0, 0 <= k <= n) = k(n-k) + 1.

Offset 0, canonical program `A077028.P11682596430163569480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077028 (n : ℕ) : ℤ :=
  A077028.P11682596430163569480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077039.P5798426574250483865

`∑[A073579(n+1)]`
-/

namespace A077039.P5798426574250483865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P5798426574250483865

noncomputable section

/-- A077039: Partial sums of A073579.

Offset 1, canonical program `A077039.P5798426574250483865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077039 (n : ℕ) : ℤ :=
  A077039.P5798426574250483865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077320.P13145193597817057828

`A002260(n+1)*A005145(n+1)`
-/

namespace A077320.P13145193597817057828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A005145 (n + 1)

end

end A077320.P13145193597817057828

noncomputable section

/-- A077320: Triangle in which n-th row contains n smallest multiples of the n-th prime.

Offset 1, canonical program `A077320.P13145193597817057828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077320 (n : ℕ) : ℤ :=
  A077320.P13145193597817057828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077436.P405008130095313056

`eq[0, A232243(n)]`
-/

namespace A077436.P405008130095313056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077436.P405008130095313056

noncomputable section

/-- A077436: Let B(n) be the sum of binary digits of n. This sequence contains n such that B(n) = B(n^2).

Offset 1, canonical program `A077436.P405008130095313056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A077436 (n : ℕ) : ℤ :=
  (A077436.P405008130095313056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A077436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077459.P11243262185449011416

`eq[A060632(3*n), A060632(n)]`
-/

namespace A077459.P11243262185449011416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P11243262185449011416

noncomputable section

/-- A077459: Numbers k such that k and 3*k have the same digital binary sum.

Offset 1, canonical program `A077459.P11243262185449011416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3712 terms. -/
def A077459 (n : ℕ) : ℤ :=
  (A077459.P11243262185449011416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3712 terms. -/
def A077459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078812.P8860937503474670981

`C(A051162(n)+1, A025581(n))`
-/

namespace A078812.P8860937503474670981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n + 1).toNat (A025581 n).toNat

end

end A078812.P8860937503474670981

noncomputable section

/-- A078812: Triangle read by rows: T(n, k) = binomial(n+k-1, 2*k-1).

Offset 0, canonical program `A078812.P8860937503474670981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078812 (n : ℕ) : ℤ :=
  (A078812.P8860937503474670981.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079292.P9237298591425678832

`∩[A046133(n+1)-2, A046133(n+1)]`
-/

namespace A079292.P9237298591425678832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079292.P9237298591425678832

noncomputable section

/-- A079292: Near twin primes of order 12: twin primes p,p+2 such that p+12 and p+14 are primes.

Offset 1, canonical program `A079292.P9237298591425678832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A079292 (n : ℕ) : ℤ :=
  (A079292.P9237298591425678832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A079292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079318.P1413714621886899686

`ceil(A162784(n)/3)`
-/

namespace A079318.P1413714621886899686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162784 n : ℚ) / 3⌉

end

end A079318.P1413714621886899686

noncomputable section

/-- A079318: a(0) = 1; for n > 0, a(n) = (3^(A000120(n)-1) + 1)/2.

Offset 0, canonical program `A079318.P1413714621886899686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079318 (n : ℕ) : ℤ :=
  A079318.P1413714621886899686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079529.P10814540628979390956

`A079528(Δ[A053767(n)])`
-/

namespace A079529.P10814540628979390956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (f1 (n + 1) - f1 n).toNat

end

end A079529.P10814540628979390956

noncomputable section

/-- A079529: a(n) = sigma(n) - ceiling(n + sqrt n) as n runs through the composite numbers A002808.

Offset 1, canonical program `A079529.P10814540628979390956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079529 (n : ℕ) : ℤ :=
  A079529.P10814540628979390956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080099.P15784613007183456214

`A051162(n)-A080098(n)`
-/

namespace A080099.P15784613007183456214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - A080098 n

end

end A080099.P15784613007183456214

noncomputable section

/-- A080099: Triangle T(n,k) = n AND k, 0<=k<=n, bitwise logical AND, read by rows.

Offset 0, canonical program `A080099.P15784613007183456214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080099 (n : ℕ) : ℤ :=
  A080099.P15784613007183456214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080233.P15572603627752373411

`2*A074909(A056943(n))-A074909(n)`
-/

namespace A080233.P15572603627752373411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 (A056943 n).toNat - A074909 n

end

end A080233.P15572603627752373411

noncomputable section

/-- A080233: Triangle T(n,k) obtained by taking differences of consecutive pairs of row elements of Pascal's triangle A007318.

Offset 0, canonical program `A080233.P15572603627752373411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080233 (n : ℕ) : ℤ :=
  A080233.P15572603627752373411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080885.P16563174699111181845

`C(A080884(n+1), 2)`
-/

namespace A080885.P16563174699111181845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080884 (n + 1)).toNat 2

end

end A080885.P16563174699111181845

noncomputable section

/-- A080885: Boolean AND of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080885.P16563174699111181845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080885 (n : ℕ) : ℤ :=
  (A080885.P16563174699111181845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080886.P17709455679324199152

`floor(sqrt(A080884(n+1)))`
-/

namespace A080886.P17709455679324199152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080884 (n + 1))

end

end A080886.P17709455679324199152

noncomputable section

/-- A080886: Boolean OR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080886.P17709455679324199152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080886 (n : ℕ) : ℤ :=
  A080886.P17709455679324199152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080887.P5959729836914886980

`A080884(n+1)%2`
-/

namespace A080887.P5959729836914886980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080884 (n + 1)) 2

end

end A080887.P5959729836914886980

noncomputable section

/-- A080887: Boolean XOR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080887.P5959729836914886980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080887 (n : ℕ) : ℤ :=
  A080887.P5959729836914886980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081371.P6434691763935947853

`A074909(n+1)%A002260(n+1)`
-/

namespace A081371.P6434691763935947853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) (A002260 (n + 1))

end

end A081371.P6434691763935947853

noncomputable section

/-- A081371: Binomial coefficients C(n,j) reduced modulo j, j=1,...n; read by rows, j=0 is omitted because of mod(n,0).

Offset 1, canonical program `A081371.P6434691763935947853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081371 (n : ℕ) : ℤ :=
  A081371.P6434691763935947853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081605.P3535045395729995710

`comp[A032924(n+1)]`
-/

namespace A081605.P3535045395729995710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081605.P3535045395729995710

noncomputable section

/-- A081605: Numbers having at least one 0 in their ternary representation.

Offset 1, canonical program `A081605.P3535045395729995710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081605 (n : ℕ) : ℤ :=
  (A081605.P3535045395729995710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081835.P3909569724700482251

`A016777(n)+comp[A007064(2*(n+1))]`
-/

namespace A081835.P3909569724700482251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A081835.P3909569724700482251

noncomputable section

/-- A081835: a(1)=1, a(n) = a(n-1) + 5 if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

Offset 1, canonical program `A081835.P3909569724700482251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081835 (n : ℕ) : ℤ :=
  A081835.P3909569724700482251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082110.P17811097944550227352

`A082111(A004247(n))`
-/

namespace A082110.P17811097944550227352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A004247 n).toNat

end

end A082110.P17811097944550227352

noncomputable section

/-- A082110: Array A(n,k) = (k*n)^2 + 5*(k*n) + 1, read by antidiagonals.

Offset 0, canonical program `A082110.P17811097944550227352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082110 (n : ℕ) : ℤ :=
  A082110.P17811097944550227352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082140.P16875489594168843538

`ceil(∑[A006976(n)/2])`
-/

namespace A082140.P16875489594168843538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006976 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A082140.P16875489594168843538

noncomputable section

/-- A082140: A transform of binomial(n,6).

Offset 0, canonical program `A082140.P16875489594168843538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A082140 (n : ℕ) : ℤ :=
  A082140.P16875489594168843538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A082140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082968.P1835205782944855

`∑[(n+1)%A159481(n)]`
-/

namespace A082968.P1835205782944855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A159481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P1835205782944855

noncomputable section

/-- A082968: a(n)=sum(k=1,n, k mod sum(i=0,k-1,1-t(i))) where t(i)=A010060(i) is the Thue-Morse sequence.

Offset 1, canonical program `A082968.P1835205782944855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A082968 (n : ℕ) : ℤ :=
  A082968.P1835205782944855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A082968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083381.P16201519354346313512

`A008585(A004247(n))+A003056(n)`
-/

namespace A083381.P16201519354346313512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A004247 n).toNat + A003056 n

end

end A083381.P16201519354346313512

noncomputable section

/-- A083381: Square array giving the number of trellis edges T(i,j) (i >= 0, j >= 0), read by antidiagonals.

Offset 0, canonical program `A083381.P16201519354346313512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083381 (n : ℕ) : ℤ :=
  A083381.P16201519354346313512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083567.P14460311508063659607

`eq[A000120(n+1), A232243(n+1)]+1`
-/

namespace A083567.P14460311508063659607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083567.P14460311508063659607

noncomputable section

/-- A083567: Let B(k) be the number of binary digits in k equal to 1. This is the sequence of positive integers k such that 2B(k)=B(k^2).

Offset 1, canonical program `A083567.P14460311508063659607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. -/
def A083567 (n : ℕ) : ℤ :=
  (A083567.P14460311508063659607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. -/
def A083567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083922.P13071502860721527938

`∑[A083921(n+1)]`
-/

namespace A083922.P13071502860721527938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P13071502860721527938

noncomputable section

/-- A083922: Partial sums of A083921.

Offset 1, canonical program `A083922.P13071502860721527938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083922 (n : ℕ) : ℤ :=
  A083922.P13071502860721527938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084228.P11895831632362515159

`∑{digits}[A160939(a(n-1)+1)-1, #]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A084228.P11895831632362515159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  A160939 (f1 (n - 1) + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A084228.P11895831632362515159

noncomputable section

/-- A084228: a(1)=1, a(2)=2; thereafter a(n) = sum of digits of (a(1)+a(2)+a(3)+...+a(n-1)).

Offset 1, canonical program `A084228.P11895831632362515159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A084228 (n : ℕ) : ℤ :=
  (A084228.P11895831632362515159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A084228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084856.P14949074464839728074

`A069482(n+2)+A069482(n+1)`
-/

namespace A084856.P14949074464839728074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 2) + A069482 (n + 1)

end

end A084856.P14949074464839728074

noncomputable section

/-- A084856: a(n) = prime(n+2)^2 - prime(n)^2.

Offset 1, canonical program `A084856.P14949074464839728074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084856 (n : ℕ) : ℤ :=
  A084856.P14949074464839728074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085297.P10081021779170976826

`A001285(round(n/3))`
-/

namespace A085297.P10081021779170976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A085297.P10081021779170976826

noncomputable section

/-- A085297: Nonzero residues of Catalan sequence modulo 3; related to the Thue-Morse sequence (A001285).

Offset 1, canonical program `A085297.P10081021779170976826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A085297 (n : ℕ) : ℤ :=
  A085297.P10081021779170976826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A085297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085413.P14024777601885863617

`p?[floor(A077652(n+1)/10)]`
-/

namespace A085413.P14024777601885863617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085413.P14024777601885863617

noncomputable section

/-- A085413: Prime such that concatenation of it and its first digit is prime.

Offset 1, canonical program `A085413.P14024777601885863617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085413 (n : ℕ) : ℤ :=
  A085413.P14024777601885863617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085765.P11713092919206785269

`a(n-1)+a(A025480(n))` with `a(0)=1`
-/

namespace A085765.P11713092919206785269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A025480 n).toNat

end

end A085765.P11713092919206785269

noncomputable section

/-- A085765: Partial sums and bisection of A086450.

Offset 0, canonical program `A085765.P11713092919206785269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085765 (n : ℕ) : ℤ :=
  (A085765.P11713092919206785269.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085860.P17709780043344454738

`∑{digits}[A000045(n), A293162(#+1)]`
-/

namespace A085860.P17709780043344454738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 (x + 1)).sum

end

end A085860.P17709780043344454738

noncomputable section

/-- A085860: Number of 6's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085860.P17709780043344454738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860 (n : ℕ) : ℤ :=
  A085860.P17709780043344454738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085861.P2818835720903400278

`∑{digits}[A000045(n), A293162(#)]`
-/

namespace A085861.P2818835720903400278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 x).sum

end

end A085861.P2818835720903400278

noncomputable section

/-- A085861: Number of 7's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085861.P2818835720903400278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861 (n : ℕ) : ℤ :=
  A085861.P2818835720903400278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086016.P424081892112326700

`∑{digits}[n², A054438(#)]`
-/

namespace A086016.P424081892112326700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A054438 x).sum

end

end A086016.P424081892112326700

noncomputable section

/-- A086016: Number of 8's in decimal expansion of n^2.

Offset 0, canonical program `A086016.P424081892112326700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086016 (n : ℕ) : ℤ :=
  A086016.P424081892112326700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086270.P16223881914570881253

`A004736(n+1)+A002260(n+1)*A161680(A004736(n+1))`
-/

namespace A086270.P16223881914570881253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002260 (n + 1) * A161680 (A004736 (n + 1)).toNat

end

end A086270.P16223881914570881253

noncomputable section

/-- A086270: Rectangular array T(k,n) of polygonal numbers, by antidiagonals.

Offset 1, canonical program `A086270.P16223881914570881253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086270 (n : ℕ) : ℤ :=
  A086270.P16223881914570881253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086272.P15137764482434958628

`(A002260(n+1)+1)*C(A004736(n+1), 2)+1`
-/

namespace A086272.P15137764482434958628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ) + 1

end

end A086272.P15137764482434958628

noncomputable section

/-- A086272: Rectangular array T(n,k) of central polygonal numbers, by antidiagonals.

Offset 1, canonical program `A086272.P15137764482434958628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086272 (n : ℕ) : ℤ :=
  A086272.P15137764482434958628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086460.P16824943285263387007

`A010054(n)+A004247(n)`
-/

namespace A086460.P16824943285263387007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A004247 n

end

end A086460.P16824943285263387007

noncomputable section

/-- A086460: Square array read by antidiagonals: A(n, k) = n*k + 0^k.

Offset 0, canonical program `A086460.P16824943285263387007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086460 (n : ℕ) : ℤ :=
  A086460.P16824943285263387007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087116.P11350810953562711327

`A069010(n)-Δ[ceil(abs((1-n)/2))]`
-/

namespace A087116.P11350810953562711327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - (f1 (n + 1) - f1 n)

end

end A087116.P11350810953562711327

noncomputable section

/-- A087116: Number of maximal groups of consecutive zeros in binary representation of n.

Offset 0, canonical program `A087116.P11350810953562711327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087116 (n : ℕ) : ℤ :=
  A087116.P11350810953562711327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087486.P8452078015866765301

`eq[A007953(n), A081653(A028310(n))]`
-/

namespace A087486.P8452078015866765301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P8452078015866765301

noncomputable section

/-- A087486: Numbers k such that digital sum of k divides digital sum of k-th prime, p(k).

Offset 1, canonical program `A087486.P8452078015866765301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A087486 (n : ℕ) : ℤ :=
  (A087486.P8452078015866765301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A087486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087681.P2693589106627016851

`A046133(n+1)+6`
-/

namespace A087681.P2693589106627016851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 6

end

end A087681.P2693589106627016851

noncomputable section

/-- A087681: Numbers n such that n + 6 and n - 6 are both prime.

Offset 1, canonical program `A087681.P2693589106627016851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087681 (n : ℕ) : ℤ :=
  A087681.P2693589106627016851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088007.P4474793135921286268

`lt[A033879(n+1)², n+2]+1`
-/

namespace A088007.P4474793135921286268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088007.P4474793135921286268

noncomputable section

/-- A088007: Numbers n such that abs(sigma(n) - 2n) <= sqrt(n).

Offset 1, canonical program `A088007.P4474793135921286268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A088007 (n : ℕ) : ℤ :=
  (A088007.P4474793135921286268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A088007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088512.P15945128481436275325

`floor(A038573(n)/2)`
-/

namespace A088512.P15945128481436275325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038573 n : ℚ) / 2⌋

end

end A088512.P15945128481436275325

noncomputable section

/-- A088512: Number of partitions of n into two parts whose xor-sum is n.

Offset 0, canonical program `A088512.P15945128481436275325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088512 (n : ℕ) : ℤ :=
  A088512.P15945128481436275325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089045.P8622504374482449038

`abs(Δ[Δ[A228495(n)]])-1`
-/

namespace A089045.P8622504374482449038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A089045.P8622504374482449038

noncomputable section

/-- A089045: a(n) = a(n-1) + (-1)^floor(n/2)*a(floor(n/2)) with a(1) = 1.

Offset 1, canonical program `A089045.P8622504374482449038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089045 (n : ℕ) : ℤ :=
  A089045.P8622504374482449038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089118.P9208626228526382448

`A074938(n+1)-(A010059(n+1)+1)`
-/

namespace A089118.P9208626228526382448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (n + 1) - (A010059 (n + 1) + 1)

end

end A089118.P9208626228526382448

noncomputable section

/-- A089118: Nonnegative numbers in (3*A005836 - 1) [A005836 are the numbers with base representation containing no 2].

Offset 1, canonical program `A089118.P9208626228526382448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089118 (n : ℕ) : ℤ :=
  A089118.P9208626228526382448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089217.P8919220155031244683

`A087915(n+1)+A089193(n+1)`
-/

namespace A089217.P8919220155031244683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + A089193 (n + 1)

end

end A089217.P8919220155031244683

noncomputable section

/-- A089217: n-2 is a prime of the form 4*k+3.

Offset 1, canonical program `A089217.P8919220155031244683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089217 (n : ℕ) : ℤ :=
  A089217.P8919220155031244683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089231.P18314841228183022687

`A008279(n)*A074909(n)`
-/

namespace A089231.P18314841228183022687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A074909 n

end

end A089231.P18314841228183022687

noncomputable section

/-- A089231: Triangular array A066667 or A008297 unsigned and transposed.

Offset 1, canonical program `A089231.P18314841228183022687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A089231 (n : ℕ) : ℤ :=
  A089231.P18314841228183022687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A089231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089257.P243562782731200786

`A089193(n+1)-1`
-/

namespace A089257.P243562782731200786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) - 1

end

end A089257.P243562782731200786

noncomputable section

/-- A089257: Even numbers n such that 2n-5 is a prime of the form 4k+3.

Offset 1, canonical program `A089257.P243562782731200786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089257 (n : ℕ) : ℤ :=
  A089257.P243562782731200786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089313.P1141171356323381310

`2^A089310(n)-1`
-/

namespace A089313.P1141171356323381310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A089310 n : ℤ) - 1

end

end A089313.P1141171356323381310

noncomputable section

/-- A089313: Write n in binary; a(n) = number represented by second block of 1's from the right.

Offset 0, canonical program `A089313.P1141171356323381310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089313.P1141171356323381310.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089824.P10607685603427349612

`A045319(eq[A045319(n+1), A065073(n+1)])`
-/

namespace A089824.P10607685603427349612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P10607685603427349612

noncomputable section

/-- A089824: Primes p such that the next prime after p can be obtained from p by adding the sum of the digits of p.

Offset 1, canonical program `A089824.P10607685603427349612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A089824 (n : ℕ) : ℤ :=
  A089824.P10607685603427349612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A089824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090971.P432184288547135942

`A074909(n+1)%2`
-/

namespace A090971.P432184288547135942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) 2

end

end A090971.P432184288547135942

noncomputable section

/-- A090971: Sierpiński's triangle, read by rows, starting from 1: T(n,k) = (T(n-1,k) + T(n-1,k-1)) mod 2.

Offset 1, canonical program `A090971.P432184288547135942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090971 (n : ℕ) : ℤ :=
  A090971.P432184288547135942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090973.P12922330251886877101

`A076080(n+1)+1`
-/

namespace A090973.P12922330251886877101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (n + 1) + 1

end

end A090973.P12922330251886877101

noncomputable section

/-- A090973: a(n) = ceiling(prime(n)/n).

Offset 1, canonical program `A090973.P12922330251886877101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090973 (n : ℕ) : ℤ :=
  A090973.P12922330251886877101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091044.P12085571641707083630

`(A091042(A061579(n))+A091042(n))/2`
-/

namespace A091044.P12085571641707083630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 (A061579 n).toNat + A091042 n : ℚ) / 2

end

end A091044.P12085571641707083630

noncomputable section

/-- A091044: One half of odd-numbered entries of even-numbered rows of Pascal's triangle A007318.

Offset 1, canonical program `A091044.P12085571641707083630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A091044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091044.P12085571641707083630.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A091044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000575.P241324822496640098

`∑[A064058(n+1)]-A062988(n)`
-/

namespace A000575.P241324822496640098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062988 n

end

end A000575.P241324822496640098

noncomputable section

/-- A000575: Tenth column of quintinomial coefficients.

Offset 0, canonical program `A000575.P241324822496640098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000575 (n : ℕ) : ℤ :=
  A000575.P241324822496640098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002740.P348049862178716560

`(A005408(n)-A133263(n))*A246432(n)`
-/

namespace A002740.P348049862178716560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A133263 n) * A246432 n

end

end A002740.P348049862178716560

noncomputable section

/-- A002740: Number of tree-rooted bridgeless planar maps with two vertices and n faces.

Offset 0, canonical program `A002740.P348049862178716560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002740 (n : ℕ) : ℤ :=
  A002740.P348049862178716560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003145.P16204300471705086444

`lt[A317193(n+1)/17, 0]+1`
-/

namespace A003145.P16204300471705086444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317193 (n + 1) : ℚ) / 17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A003145.P16204300471705086444

noncomputable section

/-- A003145: Positions of letter b in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

Offset 1, canonical program `A003145.P16204300471705086444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003145 (n : ℕ) : ℤ :=
  (A003145.P16204300471705086444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003265.P1824215656796251863

`lt[A317193(n+1), 1]`
-/

namespace A003265.P1824215656796251863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003265.P1824215656796251863

noncomputable section

/-- A003265: Not representable by truncated tribonacci sequence 2, 4, 7, 13, 24, 44, 81, ....

Offset 1, canonical program `A003265.P1824215656796251863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003265 (n : ℕ) : ℤ :=
  (A003265.P1824215656796251863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003506.P3661532846367947331

`A004736(n+1)*A074909(n)`
-/

namespace A003506.P3661532846367947331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A074909 n

end

end A003506.P3661532846367947331

noncomputable section

/-- A003506: Triangle of denominators in Leibniz's Harmonic Triangle a(n,k), n >= 1, 1 <= k <= n.

Offset 1, canonical program `A003506.P3661532846367947331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003506 (n : ℕ) : ℤ :=
  A003506.P3661532846367947331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003518.P6079018483949857096

`8*A030053(n+3)/(n+8)`
-/

namespace A003518.P6079018483949857096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A030053 (n + 3) : ℚ) / (n + 8 : ℚ)

end

end A003518.P6079018483949857096

noncomputable section

/-- A003518: a(n) = 8*binomial(2*n+1,n-3)/(n+5).

Offset 3, canonical program `A003518.P6079018483949857096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003518.P6079018483949857096.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004730.P1125278465444381569

`gcd(A138364(n), A380909(n))`
-/

namespace A004730.P1125278465444381569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138364 n) (A380909 n)

end

end A004730.P1125278465444381569

noncomputable section

/-- A004730: Numerator of n!!/(n+1)!! (cf. A006882).

Offset 0, canonical program `A004730.P1125278465444381569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004730 (n : ℕ) : ℤ :=
  (A004730.P1125278465444381569.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005322.P16684099688218700763

`∑[A026134(n+1)]`
-/

namespace A005322.P16684099688218700763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005322.P16684099688218700763

noncomputable section

/-- A005322: Column of Motzkin triangle.

Offset 2, canonical program `A005322.P16684099688218700763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A005322 (n : ℕ) : ℤ :=
  A005322.P16684099688218700763.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A005322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005678.P5420556999215670440

`dr(Δ[A015521(A027615(n))])`
-/

namespace A005678.P5420556999215670440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (A027615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A005678.P5420556999215670440

noncomputable section

/-- A005678: A squarefree ternary sequence.

Offset 1, canonical program `A005678.P5420556999215670440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005678 (n : ℕ) : ℤ :=
  (A005678.P5420556999215670440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006134.P14646737511889561180

`A100066(2*n+1)`
-/

namespace A006134.P14646737511889561180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (2 * n + 1)

end

end A006134.P14646737511889561180

noncomputable section

/-- A006134: a(n) = Sum_{k=0..n} binomial(2*k,k).

Offset 0, canonical program `A006134.P14646737511889561180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006134 (n : ℕ) : ℤ :=
  A006134.P14646737511889561180.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006380.P15822107496695707583

`∑[∑[A003082(n)]]`
-/

namespace A006380.P15822107496695707583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006380.P15822107496695707583

noncomputable section

/-- A006380: Number of equivalence classes of 4 X n binary matrices when one can permute rows, permute columns and complement columns.

Offset 0, canonical program `A006380.P15822107496695707583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A006380 (n : ℕ) : ℤ :=
  A006380.P15822107496695707583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A006380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006876.P13042802876446333329

`∑{d}[n+1, A024000(#-1)*A296302((n+1)/#)]`
-/

namespace A006876.P13042802876446333329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024000 (d - 1) * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006876.P13042802876446333329

noncomputable section

/-- A006876: Mu-molecules in Mandelbrot set whose seeds have period n.

Offset 1, canonical program `A006876.P13042802876446333329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876 (n : ℕ) : ℤ :=
  A006876.P13042802876446333329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007223.P11269491908758022439

`A000245(n+2)-A000150(n+3)`
-/

namespace A007223.P11269491908758022439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 2) - A000150 (n + 3)

end

end A007223.P11269491908758022439

noncomputable section

/-- A007223: Number of distinct perforation patterns for deriving (v,b) = (n+2,n) punctured convolutional codes from (2,1).

Offset 2, canonical program `A007223.P11269491908758022439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A007223 (n : ℕ) : ℤ :=
  A007223.P11269491908758022439.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A007223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007345.P15189906619051462837

`∑[A082298(n)-Δ[A181768(n)]]`
-/

namespace A007345.P15189906619051462837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082298 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007345.P15189906619051462837

noncomputable section

/-- A007345: Number of Havender tableaux of height 2 with n columns.

Offset 0, canonical program `A007345.P15189906619051462837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A007345 (n : ℕ) : ℤ :=
  A007345.P15189906619051462837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A007345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008357.P10752370468686593542

`A019562(n)-12*n*(2*n^4+10*n²+3)/15`
-/

namespace A008357.P10752370468686593542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019562 n : ℚ) - 12 * ((n : ℚ) * ((2 * n ^ 4 + 10 * n ^ 2 + 3 : ℚ) / 15))

end

end A008357.P10752370468686593542

noncomputable section

/-- A008357: Coordination sequence for D_6 lattice.

Offset 0, canonical program `A008357.P10752370468686593542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008357 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008357.P10752370468686593542.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008645.P1092398872060374740

`A088954(floor(n/2))`
-/

namespace A008645.P1092398872060374740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088954 ⌊(n : ℚ) / 2⌋.toNat

end

end A008645.P1092398872060374740

noncomputable section

/-- A008645: Molien series of 6 X 6 upper triangular matrices over GF( 2 ).

Offset 0, canonical program `A008645.P1092398872060374740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008645 (n : ℕ) : ℤ :=
  A008645.P1092398872060374740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010064.P7304514149349805866

`∩[A349829(n+1)+1, comp[A349829(n+1)]]`
-/

namespace A010064.P7304514149349805866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A010064.P7304514149349805866

noncomputable section

/-- A010064: Base 4 self or Colombian numbers (not of form k + sum of base 4 digits of k).

Offset 1, canonical program `A010064.P7304514149349805866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. -/
def A010064 (n : ℕ) : ℤ :=
  (A010064.P7304514149349805866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. -/
def A010064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010766.P13358049683493517902

`ceil(ratio[A074909(n)])`
-/

namespace A010766.P13358049683493517902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A010766.P13358049683493517902

noncomputable section

/-- A010766: Triangle read by rows: row n gives the numbers floor(n/k), k = 1..n.

Offset 1, canonical program `A010766.P13358049683493517902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010766 (n : ℕ) : ℤ :=
  A010766.P13358049683493517902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011685.P17100655792265488863

`A011684(A008706(n)+83)`
-/

namespace A011685.P17100655792265488863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011684 (A008706 n + 83).toNat

end

end A011685.P17100655792265488863

noncomputable section

/-- A011685: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^3+x+1.

Offset 0, canonical program `A011685.P17100655792265488863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. -/
def A011685 (n : ℕ) : ℤ :=
  A011685.P17100655792265488863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. -/
def A011685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011847.P11310658585150249160

`floor(A074909(n)/A002260(n+1))`
-/

namespace A011847.P11310658585150249160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 n : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011847.P11310658585150249160

noncomputable section

/-- A011847: Triangle of numbers read by rows: T(n,k) = floor( C(n,k)/(k+1) ), where k=0..n-1 and n >= 1.

Offset 1, canonical program `A011847.P11310658585150249160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011847 (n : ℕ) : ℤ :=
  A011847.P11310658585150249160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011946.P13849652241662667985

`∑{d}[n+1, A001511(#)*A296302((n+1)/#)]`
-/

namespace A011946.P13849652241662667985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P13849652241662667985

noncomputable section

/-- A011946: Number of Barlow packings with group P63/mmc(S) that repeat after 4n layers.

Offset 1, canonical program `A011946.P13849652241662667985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946 (n : ℕ) : ℤ :=
  A011946.P13849652241662667985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014316.P17889708612490521663

`∑[∑[A155051(A004275(n))]-2]+1`
-/

namespace A014316.P17889708612490521663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014316.P17889708612490521663

noncomputable section

/-- A014316: Convolution of Catalan numbers and squares.

Offset 0, canonical program `A014316.P17889708612490521663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A014316 (n : ℕ) : ℤ :=
  A014316.P17889708612490521663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A014316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018160.P17934605926536604901

`A018124(2*n)`
-/

namespace A018160.P17934605926536604901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018124 (2 * n)

end

end A018160.P17934605926536604901

noncomputable section

/-- A018160: Powers of fifth root of 16 rounded to nearest integer.

Offset 0, canonical program `A018160.P17934605926536604901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018160 (n : ℕ) : ℤ :=
  A018160.P17934605926536604901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018211.P8561171215378061643

`4*A031164(n)-A032093(n+8)`
-/

namespace A018211.P8561171215378061643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n - A032093 (n + 8)

end

end A018211.P8561171215378061643

noncomputable section

/-- A018211: Alkane (or paraffin) numbers l(10,n).

Offset 0, canonical program `A018211.P8561171215378061643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018211 (n : ℕ) : ℤ :=
  A018211.P8561171215378061643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018806.P10991983438619491476

`∑[A344598(n+1)]`
-/

namespace A018806.P10991983438619491476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018806.P10991983438619491476

noncomputable section

/-- A018806: Sum of gcd(x, y) for 1 <= x, y <= n.

Offset 1, canonical program `A018806.P10991983438619491476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018806 (n : ℕ) : ℤ :=
  A018806.P10991983438619491476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018825.P17104001644328074366

`comp[A069011(comp[∑[n+1]])]`
-/

namespace A018825.P17104001644328074366
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018825.P17104001644328074366

noncomputable section

/-- A018825: Numbers that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A018825.P17104001644328074366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018825 (n : ℕ) : ℤ :=
  (A018825.P17104001644328074366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019462.P18100823857315622739

`A081123(n)+A019460(n)`
-/

namespace A019462.P18100823857315622739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A019460 n

end

end A019462.P18100823857315622739

noncomputable section

/-- A019462: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 3.

Offset 0, canonical program `A019462.P18100823857315622739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019462 (n : ℕ) : ℤ :=
  A019462.P18100823857315622739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019464.P11505818576841532554

`2*A082458(n)-A082459(n)`
-/

namespace A019464.P11505818576841532554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082458 n - A082459 n

end

end A019464.P11505818576841532554

noncomputable section

/-- A019464: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 1.

Offset 0, canonical program `A019464.P11505818576841532554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019464 (n : ℕ) : ℤ :=
  A019464.P11505818576841532554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019550.P6938258972162787855

`A309809(n+1)-1`
-/

namespace A019550.P6938258972162787855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 1) - 1

end

end A019550.P6938258972162787855

noncomputable section

/-- A019550: a(n) is the concatenation of n and 2n.

Offset 1, canonical program `A019550.P6938258972162787855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019550 (n : ℕ) : ℤ :=
  A019550.P6938258972162787855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019552.P234428209897043585

`A248422(2*(n+1))/4+3*(n+1)`
-/

namespace A019552.P234428209897043585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248422 (2 * (n + 1)) : ℚ) / 4 + (3 * (n + 1) : ℚ)

end

end A019552.P234428209897043585

noncomputable section

/-- A019552: a(n) is the concatenation of n and 4n.

Offset 1, canonical program `A019552.P234428209897043585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A019552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019552.P234428209897043585.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A019552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020952.P6062698508245563205

`A020951(n)+A002487(n+1)`
-/

namespace A020952.P6062698508245563205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n + A002487 (n + 1)

end

end A020952.P6062698508245563205

noncomputable section

/-- A020952: a(2n+1)=a(n), a(2n)=a(n)+a(n-1).

Offset 0, canonical program `A020952.P6062698508245563205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020952 (n : ℕ) : ℤ :=
  A020952.P6062698508245563205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022305.P12163215201102219091

`2*(A022293(n+2)-2)`
-/

namespace A022305.P12163215201102219091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022293 (n + 2) - 2)

end

end A022305.P12163215201102219091

noncomputable section

/-- A022305: Exactly half the first a(n) terms of A022303 are 1's.

Offset 0, canonical program `A022305.P12163215201102219091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A022305 (n : ℕ) : ℤ :=
  A022305.P12163215201102219091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A022305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022429.P17113811194930321929

`A099467(n+1)+comp[3*(n+1)]`
-/

namespace A022429.P17113811194930321929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099467 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A022429.P17113811194930321929

noncomputable section

/-- A022429: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

Offset 0, canonical program `A022429.P17113811194930321929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022429 (n : ℕ) : ℤ :=
  A022429.P17113811194930321929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022544.P380429781793413128

`comp[A069011(n)]`
-/

namespace A022544.P380429781793413128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P380429781793413128

noncomputable section

/-- A022544: Numbers that are not the sum of 2 squares.

Offset 1, canonical program `A022544.P380429781793413128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544 (n : ℕ) : ℤ :=
  (A022544.P380429781793413128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022890.P17059555627055075678

`eq[A046930(n+1), A046930(n+5)]`
-/

namespace A022890.P17059555627055075678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022890.P17059555627055075678

noncomputable section

/-- A022890: n-th index k such that p(k) + p(k+6) = p(k+2) + p(k+4).

Offset 1, canonical program `A022890.P17059555627055075678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A022890 (n : ℕ) : ℤ :=
  (A022890.P17059555627055075678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A022890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023205.P16444965507466187398

`p?[A141544(n+1)]`
-/

namespace A023205.P16444965507466187398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023205.P16444965507466187398

noncomputable section

/-- A023205: Numbers m such that m and 2*m + 5 are both prime.

Offset 1, canonical program `A023205.P16444965507466187398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1702 terms. -/
def A023205 (n : ℕ) : ℤ :=
  A023205.P16444965507466187398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1702 terms. -/
def A023205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023516.P15735167272608923564

`A001221(A023515(n+1))`
-/

namespace A023516.P15735167272608923564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A023515 (n + 1)).toNat

end

end A023516.P15735167272608923564

noncomputable section

/-- A023516: Number of distinct prime divisors of prime(n)*prime(n-1) - 1.

Offset 1, canonical program `A023516.P15735167272608923564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023516 (n : ℕ) : ℤ :=
  A023516.P15735167272608923564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023523.P8224990368586558717

`A023515(n+1)+2`
-/

namespace A023523.P8224990368586558717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 2

end

end A023523.P8224990368586558717

noncomputable section

/-- A023523: a(n) = prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023523.P8224990368586558717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023523 (n : ℕ) : ℤ :=
  A023523.P8224990368586558717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023622.P4193336609147366981

`A023621(n+1)+A023537(n+1)`
-/

namespace A023622.P4193336609147366981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023621 (n + 1) + A023537 (n + 1)

end

end A023622.P4193336609147366981

noncomputable section

/-- A023622: Convolution of Lucas numbers and A001950.

Offset 1, canonical program `A023622.P4193336609147366981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023622 (n : ℕ) : ℤ :=
  A023622.P4193336609147366981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023649.P8276616955042322382

`A023609(n+1)-A002808(n+2)`
-/

namespace A023649.P8276616955042322382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023609 (n + 1) - A002808 (n + 2)

end

end A023649.P8276616955042322382

noncomputable section

/-- A023649: Convolution of composite numbers and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023649.P8276616955042322382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023649 (n : ℕ) : ℤ :=
  A023649.P8276616955042322382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023650.P1233721125443470116

`A023539(n+1)+∑[A053767(n)]`
-/

namespace A023650.P1233721125443470116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P1233721125443470116

noncomputable section

/-- A023650: Convolution of composite numbers and odd numbers.

Offset 1, canonical program `A023650.P1233721125443470116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650 (n : ℕ) : ℤ :=
  A023650.P1233721125443470116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023703.P2710146166391411195

`eq[5, dr(A117942(n))]`
-/

namespace A023703.P2710146166391411195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A117942 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023703.P2710146166391411195

noncomputable section

/-- A023703: Numbers with exactly 5 2's in their ternary expansion.

Offset 1, canonical program `A023703.P2710146166391411195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023703 (n : ℕ) : ℤ :=
  (A023703.P2710146166391411195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023704.P10335352415820928381

`eq[8, sqrt(A117592(n))]`
-/

namespace A023704.P10335352415820928381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A117592 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A023704.P10335352415820928381

noncomputable section

/-- A023704: Numbers with exactly 6 2's in their ternary expansion.

Offset 1, canonical program `A023704.P10335352415820928381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A023704 (n : ℕ) : ℤ :=
  (A023704.P10335352415820928381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A023704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023707.P12285787741113753776

`eq[A160385(n)+2, A110591(n)]`
-/

namespace A023707.P12285787741113753776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023707.P12285787741113753776

noncomputable section

/-- A023707: Numbers with exactly 2 0's in their base 4 expansion.

Offset 1, canonical program `A023707.P12285787741113753776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A023707 (n : ℕ) : ℤ :=
  (A023707.P12285787741113753776.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A023707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023723.P1447336693853563496

`eq[A276134(n)+2, A110592(n)]`
-/

namespace A023723.P1447336693853563496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023723.P1447336693853563496

noncomputable section

/-- A023723: Numbers with exactly 2 0's in their base 5 expansion.

Offset 1, canonical program `A023723.P1447336693853563496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A023723 (n : ℕ) : ℤ :=
  (A023723.P1447336693853563496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A023723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023730.P4010073991563025299

`eq[0, A007432(A194459(n))]`
-/

namespace A023730.P4010073991563025299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007432 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P4010073991563025299

noncomputable section

/-- A023730: Numbers with a single 2 in their base 5 expansion.

Offset 1, canonical program `A023730.P4010073991563025299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. -/
def A023730 (n : ℕ) : ℤ :=
  (A023730.P4010073991563025299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. -/
def A023730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023861.P14188661982875319503

`A023864(n+1)+A023864(n+1)-A023860(n+1)`
-/

namespace A023861.P14188661982875319503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + (A023864 (n + 1) - A023860 (n + 1))

end

end A023861.P14188661982875319503

noncomputable section

/-- A023861: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = A000032 (Lucas numbers).

Offset 1, canonical program `A023861.P14188661982875319503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023861 (n : ℕ) : ℤ :=
  A023861.P14188661982875319503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024310.P6708413732183315017

`2*A024872(n+2)-A024309(n+1)`
-/

namespace A024310.P6708413732183315017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024872 (n + 2) - A024309 (n + 1)

end

end A024310.P6708413732183315017

noncomputable section

/-- A024310: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 2), t = (Lucas numbers).

Offset 1, canonical program `A024310.P6708413732183315017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024310 (n : ℕ) : ℤ :=
  A024310.P6708413732183315017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024554.P10151573056255696748

`∑[A024553(n+1)]`
-/

namespace A024554.P10151573056255696748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024554.P10151573056255696748

noncomputable section

/-- A024554: a(n) = Sum_{k=1..n} floor( 1/{k*sqrt(5)} ), where {x} := x - floor(x).

Offset 1, canonical program `A024554.P10151573056255696748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024554 (n : ℕ) : ℤ :=
  A024554.P10151573056255696748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024705.P11783983241854966151

`filter[n+3, A024711(#)]`
-/

namespace A024705.P11783983241854966151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A024711 (f1 j) = 1) n)

end

end A024705.P11783983241854966151

noncomputable section

/-- A024705: Positions of odd numbers in A024702.

Offset 1, canonical program `A024705.P11783983241854966151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A024705 (n : ℕ) : ℤ :=
  (A024705.P11783983241854966151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A024705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024838.P16764802098399120150

`floor(3/2*A024835(n+2))`
-/

namespace A024838.P16764802098399120150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A024835 (n + 2) : ℚ)⌋

end

end A024838.P16764802098399120150

noncomputable section

/-- A024838: Least m such that if r and s in {1/3, 1/6, 1/9, ..., 1/3n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

Offset 2, canonical program `A024838.P16764802098399120150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A024838 (n : ℕ) : ℤ :=
  A024838.P16764802098399120150.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A024838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024839.P430240173223612655

`2*A024835(n+2)-1`
-/

namespace A024839.P430240173223612655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024835 (n + 2) - 1

end

end A024839.P430240173223612655

noncomputable section

/-- A024839: Least m such that if r and s in {1/4, 1/8, 1/12, ..., 1/4n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

Offset 2, canonical program `A024839.P430240173223612655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A024839 (n : ℕ) : ℤ :=
  A024839.P430240173223612655.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A024839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025089.P5435601216984553650

`A004799(n+1)-A024469(n+1)`
-/

namespace A025089.P5435601216984553650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) - A024469 (n + 1)

end

end A025089.P5435601216984553650

noncomputable section

/-- A025089: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n-k+1), where k = [n/2], s = (Lucas numbers).

Offset 1, canonical program `A025089.P5435601216984553650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A025089 (n : ℕ) : ℤ :=
  A025089.P5435601216984553650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A025089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025092.P5540335712594963880

`2*(A023610(n+2)-A024458(n+4))-A025082(n+1)`
-/

namespace A025092.P5540335712594963880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023610 (n + 2) - A024458 (n + 4)) - A025082 (n + 1)

end

end A025092.P5540335712594963880

noncomputable section

/-- A025092: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (F(2), F(3), F(4), ...).

Offset 1, canonical program `A025092.P5540335712594963880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A025092 (n : ℕ) : ℤ :=
  A025092.P5540335712594963880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A025092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025544.P11648437338997869476

`∑[A032741(ratio[A025543(n)])]`
-/

namespace A025544.P11648437338997869476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P11648437338997869476

noncomputable section

/-- A025544: a(n) = sum of the exponents in the prime factorization of the least common multiple of the first n composite numbers.

Offset 1, canonical program `A025544.P11648437338997869476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A025544 (n : ℕ) : ℤ :=
  A025544.P11648437338997869476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A025544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025743.P16932314400444451753

`A022335(n)+∑[n]`
-/

namespace A025743.P16932314400444451753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022335 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025743.P16932314400444451753

noncomputable section

/-- A025743: Index of 10^n within the sequence of the numbers of the form 5^i*10^j.

Offset 0, canonical program `A025743.P16932314400444451753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025743 (n : ℕ) : ℤ :=
  A025743.P16932314400444451753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026070.P16071561854489553922

`2*A025180(n+2)-A026134(n+1)`
-/

namespace A026070.P16071561854489553922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025180 (n + 2) - A026134 (n + 1)

end

end A026070.P16071561854489553922

noncomputable section

/-- A026070: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A024996.

Offset 3, canonical program `A026070.P16071561854489553922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026070 (n : ℕ) : ℤ :=
  A026070.P16071561854489553922.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026109.P346914583229573815

`Δ[A026134(n+2)]-A026107(n+3)`
-/

namespace A026109.P346914583229573815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026107 (n + 3)

end

end A026109.P346914583229573815

noncomputable section

/-- A026109: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, s(n) = 3, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array defined in A026105.

Offset 3, canonical program `A026109.P346914583229573815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026109 (n : ℕ) : ℤ :=
  A026109.P346914583229573815.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026123.P266507043467753679

`Δ[A026134(n+1)]`
-/

namespace A026123.P266507043467753679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026123.P266507043467753679

noncomputable section

/-- A026123: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 2, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-1), where T is the array in A026120; a(n) = U(n,n+1), where U is the array in A026148.

Offset 2, canonical program `A026123.P266507043467753679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026123 (n : ℕ) : ℤ :=
  A026123.P266507043467753679.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026608.P5492152877420761031

`A026612(n+1)-Δ[A090239(n)]`
-/

namespace A026608.P5492152877420761031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026608.P5492152877420761031

noncomputable section

/-- A026608: a(n) = number of 2's between n-th 1 and (n+1)st 1 in A026600.

Offset 1, canonical program `A026608.P5492152877420761031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026608 (n : ℕ) : ℤ :=
  A026608.P5492152877420761031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027173.P7610654787817011449

`A027172(n+2)-(A081496(n+2)+2)`
-/

namespace A027173.P7610654787817011449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027172 (n + 2) - (A081496 (n + 2) + 2)

end

end A027173.P7610654787817011449

noncomputable section

/-- A027173: a(n) = A027170(2n, n-1).

Offset 1, canonical program `A027173.P7610654787817011449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A027173 (n : ℕ) : ℤ :=
  A027173.P7610654787817011449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A027173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027706.P6557649522257405168

`record[Δ[n*A200244(n+1)]]`
-/

namespace A027706.P6557649522257405168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A200244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027706.P6557649522257405168

noncomputable section

/-- A027706: n-th prime has odd number of 1's in binary expansion and (n+1)st prime has even number of 1's.

Offset 1, canonical program `A027706.P6557649522257405168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A027706 (n : ℕ) : ℤ :=
  A027706.P6557649522257405168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A027706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027836.P1844303588074329339

`(4*A069271(n))%A007228(n)`
-/

namespace A027836.P1844303588074329339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A069271 n) (A007228 n)

end

end A027836.P1844303588074329339

noncomputable section

/-- A027836: Total number of vertices in all loopless rooted planar maps with n edges.

Offset 0, canonical program `A027836.P1844303588074329339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027836 (n : ℕ) : ℤ :=
  A027836.P1844303588074329339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029213.P5201621740032638678

`A025827(n)+A029198(n)-A029225(n)`
-/

namespace A029213.P5201621740032638678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n + (A029198 n - A029225 n)

end

end A029213.P5201621740032638678

noncomputable section

/-- A029213: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029213.P5201621740032638678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029213 (n : ℕ) : ℤ :=
  A029213.P5201621740032638678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029411.P3027199765007840635

`A029376(n)+A029398(n)-A029365(n)`
-/

namespace A029411.P3027199765007840635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029398 n - A029365 n)

end

end A029411.P3027199765007840635

noncomputable section

/-- A029411: Expansion of 1/((1-x^5)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029411.P3027199765007840635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029411 (n : ℕ) : ℤ :=
  A029411.P3027199765007840635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029420.P6798218575498447443

`A029313(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029420.P6798218575498447443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029313 n - a (n - 3)

end

end A029420.P6798218575498447443

noncomputable section

/-- A029420: Expansion of 1/((1-x^6)(1-x^7)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029420.P6798218575498447443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029420 (n : ℕ) : ℤ :=
  A029420.P6798218575498447443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029609.P12791470884905269588

`A100320(n)+record[A138364(n)]`
-/

namespace A029609.P12791470884905269588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029609.P12791470884905269588

noncomputable section

/-- A029609: Central numbers in the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029609.P12791470884905269588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A029609 (n : ℕ) : ℤ :=
  A029609.P12791470884905269588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A029609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029715.P4140309927833293615

`∑[A007843(n)]`
-/

namespace A029715.P4140309927833293615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P4140309927833293615

noncomputable section

/-- A029715: a(n) = Sum_{k divides 2^n} S(k), where S is the Kempner function A002034.

Offset 0, canonical program `A029715.P4140309927833293615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029715 (n : ℕ) : ℤ :=
  A029715.P4140309927833293615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029854.P6332837947734356896

`gcd(Δ[A061802(n)], A031131(n+1))`
-/

namespace A029854.P6332837947734356896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A031131 (n + 1))

end

end A029854.P6332837947734356896

noncomputable section

/-- A029854: a(n) = gcd(prime(n)+prime(n+1), prime(n+1)+prime(n+2)).

Offset 1, canonical program `A029854.P6332837947734356896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029854 (n : ℕ) : ℤ :=
  (A029854.P6332837947734356896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029935.P8211030715977532207

`∑{d}[n+1, A000203(#)*A007432((n+1)/#)]`
-/

namespace A029935.P8211030715977532207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P8211030715977532207

noncomputable section

/-- A029935: a(n) = Sum_{d divides n} phi(d)*phi(n/d).

Offset 1, canonical program `A029935.P8211030715977532207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029935 (n : ℕ) : ℤ :=
  A029935.P8211030715977532207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030002.P13336497132258617398

`C(A024675(n+1)-A089253(n+1), 3)`
-/

namespace A030002.P13336497132258617398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024675 (n + 1) - A089253 (n + 1)).toNat 3

end

end A030002.P13336497132258617398

noncomputable section

/-- A030002: (prime(n)-5)(prime(n)-7)(prime(n)-9)/48.

Offset 3, canonical program `A030002.P13336497132258617398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030002 (n : ℕ) : ℤ :=
  (A030002.P13336497132258617398.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030494.P12041848191355079327

`record[A137948(n+5)-1]`
-/

namespace A030494.P12041848191355079327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 (n + 5) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030494.P12041848191355079327

noncomputable section

/-- A030494: If n is even, 2(n/2 + 1)! - 1; if n is odd, ((n + 1)/2 + 1)! - 1.

Offset 1, canonical program `A030494.P12041848191355079327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A030494 (n : ℕ) : ℤ :=
  A030494.P12041848191355079327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A030494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030655.P11811847413903437405

`A001704(Δ[n²])`
-/

namespace A030655.P11811847413903437405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030655.P11811847413903437405

noncomputable section

/-- A030655: Pair up the numbers.

Offset 1, canonical program `A030655.P11811847413903437405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030655 (n : ℕ) : ℤ :=
  A030655.P11811847413903437405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031168.P15526209776913543128

`A031167(n+2)+A001223(n+1)`
-/

namespace A031168.P15526209776913543128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 2) + A001223 (n + 1)

end

end A031168.P15526209776913543128

noncomputable section

/-- A031168: a(n) = prime(n+6) - prime(n).

Offset 1, canonical program `A031168.P15526209776913543128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A031168 (n : ℕ) : ℤ :=
  A031168.P15526209776913543128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A031168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031337.P4949667839663439052

`A031215(2*(n+1))`
-/

namespace A031337.P4949667839663439052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (2 * (n + 1))

end

end A031337.P4949667839663439052

noncomputable section

/-- A031337: a(n) = prime(4*n).

Offset 1, canonical program `A031337.P4949667839663439052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031337 (n : ℕ) : ℤ :=
  A031337.P4949667839663439052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031378.P7182389519507571766

`A031215(2*n+1)`
-/

namespace A031378.P7182389519507571766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (2 * n + 1)

end

end A031378.P7182389519507571766

noncomputable section

/-- A031378: a(n) = prime(4*n - 2).

Offset 1, canonical program `A031378.P7182389519507571766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031378 (n : ℕ) : ℤ :=
  A031378.P7182389519507571766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031380.P5591748985726001025

`A031377(2*(n+1))`
-/

namespace A031380.P5591748985726001025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (2 * (n + 1))

end

end A031380.P5591748985726001025

noncomputable section

/-- A031380: a(n) = prime(6*n - 2).

Offset 1, canonical program `A031380.P5591748985726001025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031380 (n : ℕ) : ℤ :=
  A031380.P5591748985726001025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031383.P194245590334256938

`A031377(3*(n+1))`
-/

namespace A031383.P194245590334256938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (3 * (n + 1))

end

end A031383.P194245590334256938

noncomputable section

/-- A031383: a(n) = prime(9*n - 2).

Offset 1, canonical program `A031383.P194245590334256938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031383 (n : ℕ) : ℤ :=
  A031383.P194245590334256938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031462.P2223033496409481425

`∪[A031444(n+1), A031445(n+1)]`
-/

namespace A031462.P2223033496409481425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031462.P2223033496409481425

noncomputable section

/-- A031462: Numbers whose base-4 representation has one more 0 than 3's.

Offset 1, canonical program `A031462.P2223033496409481425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031462 (n : ℕ) : ℤ :=
  (A031462.P2223033496409481425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031906.P1952359557130741548

`A031377(Δ[n²])`
-/

namespace A031906.P1952359557130741548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031906.P1952359557130741548

noncomputable section

/-- A031906: a(n) = prime(6*n - 5).

Offset 1, canonical program `A031906.P1952359557130741548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031906 (n : ℕ) : ℤ :=
  A031906.P1952359557130741548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031909.P13253097657339389194

`A031377(3*n+2)`
-/

namespace A031909.P13253097657339389194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (3 * n + 2)

end

end A031909.P13253097657339389194

noncomputable section

/-- A031909: a(n) = prime(9*n - 5).

Offset 1, canonical program `A031909.P13253097657339389194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031909 (n : ℕ) : ℤ :=
  A031909.P13253097657339389194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A031909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031918.P13992052628362725352

`A031377(3*n+1)`
-/

namespace A031918.P13992052628362725352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (3 * n + 1)

end

end A031918.P13992052628362725352

noncomputable section

/-- A031918: a(n) = prime(9*n-8).

Offset 1, canonical program `A031918.P13992052628362725352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A031918 (n : ℕ) : ℤ :=
  A031918.P13992052628362725352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A031918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031924.P13407024209646525674

`p?[A072571(n+1)-3]`
-/

namespace A031924.P13407024209646525674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031924.P13407024209646525674

noncomputable section

/-- A031924: Primes followed by a gap of 6, i.e., next prime is p + 6.

Offset 1, canonical program `A031924.P13407024209646525674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A031924 (n : ℕ) : ℤ :=
  A031924.P13407024209646525674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A031924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032123.P2559086527313729286

`A007123(n+1)+n*A000150(n)`
-/

namespace A032123.P2559086527313729286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 1) + (n : ℤ) * A000150 n

end

end A032123.P2559086527313729286

noncomputable section

/-- A032123: Number of 2n-bead black-white reversible strings with n black beads.

Offset 0, canonical program `A032123.P2559086527313729286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032123 (n : ℕ) : ℤ :=
  A032123.P2559086527313729286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032927.P16396062760344607680

`∑[A147993(A135517(n+1))]`
-/

namespace A032927.P16396062760344607680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (A135517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032927.P16396062760344607680

noncomputable section

/-- A032927: Numbers whose set of base-6 digits is {1,2}.

Offset 1, canonical program `A032927.P16396062760344607680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032927 (n : ℕ) : ℤ :=
  A032927.P16396062760344607680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033053.P7667902373871781944

`∑[A079882(n)*A115716(n)]`
-/

namespace A033053.P7667902373871781944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n * A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033053.P7667902373871781944

noncomputable section

/-- A033053: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(i)=1 when i != m mod 2.

Offset 1, canonical program `A033053.P7667902373871781944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033053 (n : ℕ) : ℤ :=
  A033053.P7667902373871781944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033883.P11300718746933929236

`A033879(A263837(n+1))`
-/

namespace A033883.P11300718746933929236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A263837 (n + 1)).toNat

end

end A033883.P11300718746933929236

noncomputable section

/-- A033883: Deficiency of the deficient or perfect numbers: m = 2n - sigma(n) for n such that m >= 0.

Offset 0, canonical program `A033883.P11300718746933929236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033883 (n : ℕ) : ℤ :=
  A033883.P11300718746933929236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033884.P16185199075458043016

`A033879(A005100(n+1))`
-/

namespace A033884.P16185199075458043016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A005100 (n + 1)).toNat

end

end A033884.P16185199075458043016

noncomputable section

/-- A033884: Deficiency of n-th deficient number: 2k - sigma(k) for k such that this is > 0.

Offset 1, canonical program `A033884.P16185199075458043016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033884 (n : ℕ) : ℤ :=
  A033884.P16185199075458043016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034027.P12646886906343554827

`eq[1, char[A069011(n)+A002262(n)²]]`
-/

namespace A034027.P12646886906343554827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A002262 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034027.P12646886906343554827

noncomputable section

/-- A034027: Numbers of the form x^2+2y^2 with x >= y >= 0.

Offset 1, canonical program `A034027.P12646886906343554827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A034027 (n : ℕ) : ℤ :=
  (A034027.P12646886906343554827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A034027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034035.P4222596731264387004

`comp[A069011(n)-A004247(n)]`
-/

namespace A034035.P4222596731264387004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n - A004247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034035.P4222596731264387004

noncomputable section

/-- A034035: Not of form (x^2+xy+2y^2 with x >= 0, y >= 0).

Offset 1, canonical program `A034035.P4222596731264387004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034035 (n : ℕ) : ℤ :=
  (A034035.P4222596731264387004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034099.P16522247859076894767

`A034097(n+1)+∑[A133100(n)]`
-/

namespace A034099.P16522247859076894767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034099.P16522247859076894767

noncomputable section

/-- A034099: Fractional part of square root of a(n) starts with digit 3.

Offset 1, canonical program `A034099.P16522247859076894767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034099 (n : ℕ) : ℤ :=
  A034099.P16522247859076894767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034748.P1038499301982470669

`∑{d}[n+1, #*A007436((n+1)/#)]`
-/

namespace A034748.P1038499301982470669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P1038499301982470669

noncomputable section

/-- A034748: Dirichlet convolution of Fibonacci numbers with phi(n).

Offset 1, canonical program `A034748.P1038499301982470669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034748 (n : ℕ) : ℤ :=
  A034748.P1038499301982470669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034749.P16979121441155564528

`∑{d}[n+1, A007436(#)*A034731((n+1)/#)]`
-/

namespace A034749.P16979121441155564528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034749.P16979121441155564528

noncomputable section

/-- A034749: Dirichlet convolution of Fibonacci numbers with Catalan numbers.

Offset 1, canonical program `A034749.P16979121441155564528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034749 (n : ℕ) : ℤ :=
  A034749.P16979121441155564528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034762.P11132840516407714243

`∑{d}[n+1, #*A030014((n+1)/#)]`
-/

namespace A034762.P11132840516407714243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034762.P11132840516407714243

noncomputable section

/-- A034762: Dirichlet convolution of primes (with 1) with sigma(n).

Offset 1, canonical program `A034762.P11132840516407714243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034762 (n : ℕ) : ℤ :=
  A034762.P11132840516407714243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034763.P16998395620027400134

`∑{d}[n+1, A030014(#)*A034742((n+1)/#)]`
-/

namespace A034763.P16998395620027400134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030014 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034763.P16998395620027400134

noncomputable section

/-- A034763: Dirichlet convolution of primes (with 1) with Catalan numbers.

Offset 1, canonical program `A034763.P16998395620027400134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034763 (n : ℕ) : ℤ :=
  A034763.P16998395620027400134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034773.P6091639492477816883

`∑{d}[n+1, A030014(#)]`
-/

namespace A034773.P6091639492477816883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030014 d

end

end A034773.P6091639492477816883

noncomputable section

/-- A034773: Dirichlet convolution of d(n) (number of divisors of n) with primes (with 1).

Offset 1, canonical program `A034773.P6091639492477816883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034773 (n : ℕ) : ℤ :=
  A034773.P6091639492477816883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034867.P8941285567894178108

`A074909(2*n+1-A000196(n))`
-/

namespace A034867.P8941285567894178108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((2 * n + 1 : ℤ) - A000196 n).toNat

end

end A034867.P8941285567894178108

noncomputable section

/-- A034867: Triangle of odd-numbered terms in rows of Pascal's triangle.

Offset 0, canonical program `A034867.P8941285567894178108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5775 terms. -/
def A034867 (n : ℕ) : ℤ :=
  A034867.P8941285567894178108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5775 terms. -/
def A034867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034871.P10370109262443921469

`A074909(A259361(n)²+n)`
-/

namespace A034871.P10370109262443921469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A259361 n ^ 2 + (n : ℤ)).toNat

end

end A034871.P10370109262443921469

noncomputable section

/-- A034871: Odd-numbered rows of Pascal's triangle.

Offset 0, canonical program `A034871.P10370109262443921469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5851 terms. -/
def A034871 (n : ℕ) : ℤ :=
  A034871.P10370109262443921469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5851 terms. -/
def A034871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034960.P12268259456304225378

`A061802(n)*A000040(n+1)`
-/

namespace A034960.P12268259456304225378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n * A000040 (n + 1)

end

end A034960.P12268259456304225378

noncomputable section

/-- A034960: Divide odd numbers into groups with prime(n) elements and add together.

Offset 1, canonical program `A034960.P12268259456304225378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034960 (n : ℕ) : ℤ :=
  A034960.P12268259456304225378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034964.P11682848730202211862

`A000040(n+1)+2*A131019(n+1)`
-/

namespace A034964.P11682848730202211862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A131019 (n + 1)

end

end A034964.P11682848730202211862

noncomputable section

/-- A034964: Sums of five consecutive primes.

Offset 1, canonical program `A034964.P11682848730202211862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034964 (n : ℕ) : ℤ :=
  A034964.P11682848730202211862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035172.P5026987147346886316

`A122071(A025480(n))`
-/

namespace A035172.P5026987147346886316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (A025480 n).toNat

end

end A035172.P5026987147346886316

noncomputable section

/-- A035172: a(n) = Sum_{d|n} Kronecker(-18, d).

Offset 1, canonical program `A035172.P5026987147346886316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035172 (n : ℕ) : ℤ :=
  A035172.P5026987147346886316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035182.P215545328454174601

`A001511(n+1)*A035162(n+1)`
-/

namespace A035182.P215545328454174601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A035162 (n + 1)

end

end A035182.P215545328454174601

noncomputable section

/-- A035182: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -7.

Offset 1, canonical program `A035182.P215545328454174601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035182 (n : ℕ) : ℤ :=
  A035182.P215545328454174601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035186.P15949002848067084157

`∑{d}[n+1, A091338(#)]`
-/

namespace A035186.P15949002848067084157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091338 d

end

end A035186.P15949002848067084157

noncomputable section

/-- A035186: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 3.

Offset 1, canonical program `A035186.P15949002848067084157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035186 (n : ℕ) : ℤ :=
  A035186.P15949002848067084157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035227.P12722226152063359411

`A035187((n+1)/A038500(n+1))`
-/

namespace A035227.P12722226152063359411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035227.P12722226152063359411

noncomputable section

/-- A035227: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 45.

Offset 1, canonical program `A035227.P12722226152063359411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035227 (n : ℕ) : ℤ :=
  A035227.P12722226152063359411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035254.P2200993960505381021

`record[n-(A127648(n)+2)]`
-/

namespace A035254.P2200993960505381021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A127648 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P2200993960505381021

noncomputable section

/-- A035254: First differences of A035253.

Offset 0, canonical program `A035254.P2200993960505381021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035254 (n : ℕ) : ℤ :=
  A035254.P2200993960505381021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036264.P7593126480384688485

`A036263(n+2)-A036263(n+1)`
-/

namespace A036264.P7593126480384688485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) - A036263 (n + 1)

end

end A036264.P7593126480384688485

noncomputable section

/-- A036264: Third differences of primes.

Offset 1, canonical program `A036264.P7593126480384688485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036264 (n : ℕ) : ℤ :=
  A036264.P7593126480384688485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036272.P13640507030568503975

`abs(Δ[abs(A036263(n+1))])`
-/

namespace A036272.P13640507030568503975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036263 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P13640507030568503975

noncomputable section

/-- A036272: Absolute values of differences of absolute values of second differences of primes.

Offset 0, canonical program `A036272.P13640507030568503975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036272 (n : ℕ) : ℤ :=
  A036272.P13640507030568503975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036348.P10794029547459417967

`∩[2*n, A036347(n+1)]`
-/

namespace A036348.P10794029547459417967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P10794029547459417967

noncomputable section

/-- A036348: Even numbers whose number of odd prime factors is odd (when counted with multiplicity).

Offset 1, canonical program `A036348.P10794029547459417967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A036348 (n : ℕ) : ℤ :=
  (A036348.P10794029547459417967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A036348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036565.P6808793362176662829

`A000420(A002262(n))*A130321(n)`
-/

namespace A036565.P6808793362176662829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat * A130321 n

end

end A036565.P6808793362176662829

noncomputable section

/-- A036565: Triangle of numbers in which i-th row is {2^(i-j)*7^j, 0<=j<=i}; i >= 0.

Offset 0, canonical program `A036565.P6808793362176662829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7258 terms. -/
def A036565 (n : ℕ) : ℤ :=
  A036565.P6808793362176662829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7258 terms. -/
def A036565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036577.P861720372246105226

`A029883(n+1)+1`
-/

namespace A036577.P861720372246105226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) + 1

end

end A036577.P861720372246105226

noncomputable section

/-- A036577: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 1, canonical program `A036577.P861720372246105226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036577 (n : ℕ) : ℤ :=
  A036577.P861720372246105226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037888.P3332479234474473082

`A000120(A370427(n+1))`
-/

namespace A037888.P3332479234474473082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A370427 (n + 1)).toNat

end

end A037888.P3332479234474473082

noncomputable section

/-- A037888: a(n) = (1/2)*Sum_{i} |d(i) - e(i)| where Sum_{i} d(i)*2^i is the base-2 representation of n and e(i) are digits d(i) in reverse order.

Offset 1, canonical program `A037888.P3332479234474473082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037888 (n : ℕ) : ℤ :=
  A037888.P3332479234474473082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037956.P945758566745438306

`A001405(n)-A026008(n)`
-/

namespace A037956.P945758566745438306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026008 n

end

end A037956.P945758566745438306

noncomputable section

/-- A037956: a(n) = binomial(n, floor((n-4)/2)).

Offset 0, canonical program `A037956.P945758566745438306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037956 (n : ℕ) : ℤ :=
  A037956.P945758566745438306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038490.P10897644593069472211

`lcm(2, A073211(A007401(n+1)))`
-/

namespace A038490.P10897644593069472211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073211 (A007401 (n + 1)).toNat)

end

end A038490.P10897644593069472211

noncomputable section

/-- A038490: Sums of 2 distinct powers of 11.

Offset 1, canonical program `A038490.P10897644593069472211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4655 terms. -/
def A038490 (n : ℕ) : ℤ :=
  (A038490.P10897644593069472211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4655 terms. -/
def A038490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039965.P14292940567836305902

`A039973(Δ[n²])`
-/

namespace A039965.P14292940567836305902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A039965.P14292940567836305902

noncomputable section

/-- A039965: An example of a d-perfect sequence.

Offset 1, canonical program `A039965.P14292940567836305902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039965 (n : ℕ) : ℤ :=
  A039965.P14292940567836305902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041005.P1067801707216124384

`A020918(n+1)-A042941(n+1)`
-/

namespace A041005.P1067801707216124384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020918 (n + 1) - A042941 (n + 1)

end

end A041005.P1067801707216124384

noncomputable section

/-- A041005: Convolution of Catalan numbers A000108(n+1), n >= 0, with A020918.

Offset 0, canonical program `A041005.P1067801707216124384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A041005 (n : ℕ) : ℤ :=
  A041005.P1067801707216124384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A041005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042971.P10072078429808819715

`A005654(n+1)-A116406(n+1)`
-/

namespace A042971.P10072078429808819715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) - A116406 (n + 1)

end

end A042971.P10072078429808819715

noncomputable section

/-- A042971: a(n) = (C(2n, n)/2 - (2^(n-1) + ((n+1) mod 2)*C(n-1, n/2-1)))/2.

Offset 1, canonical program `A042971.P10072078429808819715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A042971 (n : ℕ) : ℤ :=
  A042971.P10072078429808819715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A042971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042988.P9376538551254334237

`∪[A023207(n+1), A044042(n+1)]`
-/

namespace A042988.P9376538551254334237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P9376538551254334237

noncomputable section

/-- A042988: Primes not congruent to -1 (mod 7).

Offset 0, canonical program `A042988.P9376538551254334237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042988 (n : ℕ) : ℤ :=
  (A042988.P9376538551254334237.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043333.P3859592073351921722

`A023706(n+2)`
-/

namespace A043333.P3859592073351921722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 2)

end

end A043333.P3859592073351921722

noncomputable section

/-- A043333: Numbers having one 0 in base 4.

Offset 1, canonical program `A043333.P3859592073351921722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043333 (n : ℕ) : ℤ :=
  A043333.P3859592073351921722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043556.P9155403054735313195

`A160385(A064706(A000007(n)+n))`
-/

namespace A043556.P9155403054735313195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A064706 (A000007 n + (n : ℤ)).toNat).toNat

end

end A043556.P9155403054735313195

noncomputable section

/-- A043556: Number of runs in base-4 representation of n.

Offset 0, canonical program `A043556.P9155403054735313195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A043556 (n : ℕ) : ℤ :=
  A043556.P9155403054735313195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A043556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044966.P1757624402048700845

`2*A309758(n+1)-1`
-/

namespace A044966.P1757624402048700845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309758 (n + 1) - 1

end

end A044966.P1757624402048700845

noncomputable section

/-- A044966: Numbers whose base-3 representation contains no 0's and exactly one 1.

Offset 1, canonical program `A044966.P1757624402048700845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A044966 (n : ℕ) : ℤ :=
  A044966.P1757624402048700845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A044966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044974.P2158267626890744817

`∩[A023695(n+1), A043321(n+1)]`
-/

namespace A044974.P2158267626890744817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044974.P2158267626890744817

noncomputable section

/-- A044974: Numbers whose base-3 representation contains exactly one 0 and four 1's.

Offset 1, canonical program `A044974.P2158267626890744817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A044974 (n : ℕ) : ℤ :=
  (A044974.P2158267626890744817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A044974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044979.P7189074795377754944

`∩[A023695(n+1), A043322(n+1)]`
-/

namespace A044979.P7189074795377754944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044979.P7189074795377754944

noncomputable section

/-- A044979: Numbers whose base-3 representation contains exactly two 0's and four 1's.

Offset 1, canonical program `A044979.P7189074795377754944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A044979 (n : ℕ) : ℤ :=
  (A044979.P7189074795377754944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A044979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044984.P4664107033638038390

`∩[A023695(n+1), A043323(n+1)]`
-/

namespace A044984.P4664107033638038390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044984.P4664107033638038390

noncomputable section

/-- A044984: Numbers whose base-3 representation contains exactly three 0's and four 1's.

Offset 1, canonical program `A044984.P4664107033638038390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A044984 (n : ℕ) : ℤ :=
  (A044984.P4664107033638038390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A044984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045000.P2718937104415212112

`∩[A023699(n+1), A031453(n+1)]`
-/

namespace A045000.P2718937104415212112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045000.P2718937104415212112

noncomputable section

/-- A045000: Numbers whose base-3 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045000.P2718937104415212112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. -/
def A045000 (n : ℕ) : ℤ :=
  (A045000.P2718937104415212112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. -/
def A045000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045006.P6297844350569896683

`∩[A023700(n+1), A031453(n+1)]`
-/

namespace A045006.P6297844350569896683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045006.P6297844350569896683

noncomputable section

/-- A045006: Numbers whose base-3 representation contains exactly three 0's and two 2's.

Offset 1, canonical program `A045006.P6297844350569896683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A045006 (n : ℕ) : ℤ :=
  (A045006.P6297844350569896683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A045006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045042.P5036496588180730293

`∩[A023706(n+1), A023713(n+1)]`
-/

namespace A045042.P5036496588180730293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045042.P5036496588180730293

noncomputable section

/-- A045042: Numbers whose base-4 representation contains exactly one 0 and no 2's.

Offset 1, canonical program `A045042.P5036496588180730293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A045042 (n : ℕ) : ℤ :=
  (A045042.P5036496588180730293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A045042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045044.P5944877663035332256

`∩[A023706(n+1), A023715(n+1)]`
-/

namespace A045044.P5944877663035332256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045044.P5944877663035332256

noncomputable section

/-- A045044: Numbers whose base-4 representation contains exactly one 0 and two 2's.

Offset 1, canonical program `A045044.P5944877663035332256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A045044 (n : ℕ) : ℤ :=
  (A045044.P5944877663035332256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A045044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045067.P14652624658165700475

`∩[A023706(n+1), A023718(n+1)]`
-/

namespace A045067.P14652624658165700475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P14652624658165700475

noncomputable section

/-- A045067: Numbers whose base-4 representation contains exactly one 0 and one 3.

Offset 1, canonical program `A045067.P14652624658165700475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2933 terms. -/
def A045067 (n : ℕ) : ℤ :=
  (A045067.P14652624658165700475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2933 terms. -/
def A045067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045069.P18357878242646511179

`∩[A023706(n+1), A031467(n+1)]`
-/

namespace A045069.P18357878242646511179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045069.P18357878242646511179

noncomputable section

/-- A045069: Numbers whose base-4 representation contains exactly one 0 and three 3's.

Offset 1, canonical program `A045069.P18357878242646511179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. -/
def A045069 (n : ℕ) : ℤ :=
  (A045069.P18357878242646511179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. -/
def A045069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045089.P4664350553262061469

`A023709(A023695(n+1)+1)`
-/

namespace A045089.P4664350553262061469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023695 (n + 1) + 1).toNat

end

end A045089.P4664350553262061469

noncomputable section

/-- A045089: Numbers whose base-4 representation contains no 1's and exactly four 2's.

Offset 1, canonical program `A045089.P4664350553262061469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A045089 (n : ℕ) : ℤ :=
  A045089.P4664350553262061469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A045089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045109.P98421992831852164

`A023717(∩[A023695(n+1), A023702(n+1)])`
-/

namespace A045109.P98421992831852164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045109.P98421992831852164

noncomputable section

/-- A045109: Numbers whose base-4 representation contains exactly four 1's and four 2's.

Offset 1, canonical program `A045109.P98421992831852164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A045109 (n : ℕ) : ℤ :=
  A045109.P98421992831852164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A045109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045158.P3664676629981563040

`∩[A023721(n+1), A023726(n+1)]`
-/

namespace A045158.P3664676629981563040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045158.P3664676629981563040

noncomputable section

/-- A045158: Numbers whose base-5 representation contains no 0's and exactly one 1.

Offset 1, canonical program `A045158.P3664676629981563040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045158 (n : ℕ) : ℤ :=
  (A045158.P3664676629981563040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045174.P2012388389799234288

`∩[A023721(n+1), A023731(n+1)]`
-/

namespace A045174.P2012388389799234288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045174.P2012388389799234288

noncomputable section

/-- A045174: Numbers whose base-5 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A045174.P2012388389799234288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2923 terms. -/
def A045174 (n : ℕ) : ℤ :=
  (A045174.P2012388389799234288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2923 terms. -/
def A045174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045189.P7914584813931535098

`∩[A023721(n+1), A023735(n+1)]`
-/

namespace A045189.P7914584813931535098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045189.P7914584813931535098

noncomputable section

/-- A045189: Numbers whose base-5 representation contains no 0's and exactly two 3's.

Offset 1, canonical program `A045189.P7914584813931535098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A045189 (n : ℕ) : ℤ :=
  (A045189.P7914584813931535098.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A045189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045203.P16200633240208871595

`∩[A023721(n+1), A023738(n+1)]`
-/

namespace A045203.P16200633240208871595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045203.P16200633240208871595

noncomputable section

/-- A045203: Numbers whose base-5 representation contains no 0's and exactly one 4.

Offset 1, canonical program `A045203.P16200633240208871595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045203 (n : ℕ) : ℤ :=
  (A045203.P16200633240208871595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045204.P2765214535292922617

`∩[A023721(n+1), A023739(n+1)]`
-/

namespace A045204.P2765214535292922617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045204.P2765214535292922617

noncomputable section

/-- A045204: Numbers whose base-5 representation contains no 0's and exactly two 4's.

Offset 1, canonical program `A045204.P2765214535292922617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045204 (n : ℕ) : ℤ :=
  (A045204.P2765214535292922617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045223.P8017231945570195036

`∩[A023726(n+1), A023731(n+1)]`
-/

namespace A045223.P8017231945570195036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045223.P8017231945570195036

noncomputable section

/-- A045223: Numbers whose base-5 representation contains exactly one 1 and two 2's.

Offset 1, canonical program `A045223.P8017231945570195036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045223 (n : ℕ) : ℤ :=
  (A045223.P8017231945570195036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045238.P198686045998000565

`∩[A023726(n+1), A023735(n+1)]`
-/

namespace A045238.P198686045998000565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045238.P198686045998000565

noncomputable section

/-- A045238: Numbers whose base-5 representation contains exactly one 1 and two 3's.

Offset 1, canonical program `A045238.P198686045998000565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045238 (n : ℕ) : ℤ :=
  (A045238.P198686045998000565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045242.P2725133411994737502

`∩[A023735(n+1), A039011(n+1)]`
-/

namespace A045242.P2725133411994737502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P2725133411994737502

noncomputable section

/-- A045242: Numbers whose base-5 representation contains exactly two 1's and two 3's.

Offset 1, canonical program `A045242.P2725133411994737502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A045242 (n : ℕ) : ℤ :=
  (A045242.P2725133411994737502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A045242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045252.P1369454173368973201

`∩[A023726(n+1), A023738(n+1)]`
-/

namespace A045252.P1369454173368973201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045252.P1369454173368973201

noncomputable section

/-- A045252: Numbers whose base-5 representation contains exactly one 1 and one 4.

Offset 1, canonical program `A045252.P1369454173368973201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A045252 (n : ℕ) : ℤ :=
  (A045252.P1369454173368973201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A045252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045253.P1746793444030517754

`∩[A023726(n+1), A023739(n+1)]`
-/

namespace A045253.P1746793444030517754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045253.P1746793444030517754

noncomputable section

/-- A045253: Numbers whose base-5 representation contains exactly one 1 and two 4's.

Offset 1, canonical program `A045253.P1746793444030517754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2763 terms. -/
def A045253 (n : ℕ) : ℤ :=
  (A045253.P1746793444030517754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2763 terms. -/
def A045253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045272.P12300636511309598618

`∩[A023731(n+1), A023735(n+1)]`
-/

namespace A045272.P12300636511309598618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045272.P12300636511309598618

noncomputable section

/-- A045272: Numbers whose base-5 representation contains exactly two 2's and two 3's.

Offset 1, canonical program `A045272.P12300636511309598618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A045272 (n : ℕ) : ℤ :=
  (A045272.P12300636511309598618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A045272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045286.P12771524637702086982

`∩[A023731(n+1), A023738(n+1)]`
-/

namespace A045286.P12771524637702086982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045286.P12771524637702086982

noncomputable section

/-- A045286: Numbers whose base-5 representation contains exactly two 2's and one 4.

Offset 1, canonical program `A045286.P12771524637702086982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2700 terms. -/
def A045286 (n : ℕ) : ℤ :=
  (A045286.P12771524637702086982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2700 terms. -/
def A045286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045287.P5177977857156502833

`∩[A023731(n+1), A023739(n+1)]`
-/

namespace A045287.P5177977857156502833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045287.P5177977857156502833

noncomputable section

/-- A045287: Numbers whose base-5 representation contains exactly two 2's and two 4's.

Offset 1, canonical program `A045287.P5177977857156502833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A045287 (n : ℕ) : ℤ :=
  (A045287.P5177977857156502833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A045287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045301.P10348100126199338629

`∩[A023735(n+1), A023738(n+1)]`
-/

namespace A045301.P10348100126199338629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045301.P10348100126199338629

noncomputable section

/-- A045301: Numbers whose base-5 representation contains exactly two 3's and one 4.

Offset 1, canonical program `A045301.P10348100126199338629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A045301 (n : ℕ) : ℤ :=
  (A045301.P10348100126199338629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A045301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045302.P15232411961889536853

`∩[A023735(n+1), A023739(n+1)]`
-/

namespace A045302.P15232411961889536853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045302.P15232411961889536853

noncomputable section

/-- A045302: Numbers whose base-5 representation contains exactly two 3's and two 4's.

Offset 1, canonical program `A045302.P15232411961889536853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1935 terms. -/
def A045302 (n : ℕ) : ℤ :=
  (A045302.P15232411961889536853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1935 terms. -/
def A045302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045348.P16793999395921366390

`∪[A023207(n+1), A045371(n+1)]`
-/

namespace A045348.P16793999395921366390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045348.P16793999395921366390

noncomputable section

/-- A045348: Primes congruent to {0, 1, 2, 4} mod 5.

Offset 1, canonical program `A045348.P16793999395921366390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045348 (n : ℕ) : ℤ :=
  (A045348.P16793999395921366390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045393.P17575290336670406807

`∪[A023210(n+1), A045402(n+1)]`
-/

namespace A045393.P17575290336670406807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045393.P17575290336670406807

noncomputable section

/-- A045393: Primes congruent to {0, 1, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A045393.P17575290336670406807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045393 (n : ℕ) : ℤ :=
  (A045393.P17575290336670406807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045405.P9318787035671126970

`∪[A023225(n+1), A045428(n+1)]`
-/

namespace A045405.P9318787035671126970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P9318787035671126970

noncomputable section

/-- A045405: Primes congruent to {0, 1, 3, 4} mod 5.

Offset 1, canonical program `A045405.P9318787035671126970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045405 (n : ℕ) : ℤ :=
  (A045405.P9318787035671126970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045407.P10976223801705910227

`∪[A030431(n+1), A045453(n+1)]`
-/

namespace A045407.P10976223801705910227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P10976223801705910227

noncomputable section

/-- A045407: Primes congruent to {0, 1, 3} mod 5.

Offset 1, canonical program `A045407.P10976223801705910227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045407 (n : ℕ) : ℤ :=
  (A045407.P10976223801705910227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045718.P15743282503320170960

`∪[A006093(n+1), A028815(n)]`
-/

namespace A045718.P15743282503320170960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P15743282503320170960

noncomputable section

/-- A045718: Nearest neighbors of primes.

Offset 0, canonical program `A045718.P15743282503320170960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045718 (n : ℕ) : ℤ :=
  (A045718.P15743282503320170960.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045839.P4359965335800922722

`A005929(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045839.P4359965335800922722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005929 n : ℚ) / 2

end

end A045839.P4359965335800922722

noncomputable section

/-- A045839: a(n) = A005929(n)/2.

Offset 0, canonical program `A045839.P4359965335800922722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045839.P4359965335800922722.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045932.P17507093528048832173

`A006073(eq[1, Δ[A006073(n+1)]]+1)`
-/

namespace A045932.P17507093528048832173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045932.P17507093528048832173

noncomputable section

/-- A045932: Numbers n such that n through n+3 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045932.P17507093528048832173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. -/
def A045932 (n : ℕ) : ℤ :=
  A045932.P17507093528048832173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. -/
def A045932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046141.P14612882901117279201

`∩[A015915(n+1), A046133(n+1)]`
-/

namespace A046141.P14612882901117279201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P14612882901117279201

noncomputable section

/-- A046141: p, p+8 and p+12 are primes.

Offset 1, canonical program `A046141.P14612882901117279201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A046141 (n : ℕ) : ℤ :=
  (A046141.P14612882901117279201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A046141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046302.P14230165923865904189

`lcm(A046301(n+1), A090090(n+1))`
-/

namespace A046302.P14230165923865904189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046301 (n + 1)) (A090090 (n + 1))

end

end A046302.P14230165923865904189

noncomputable section

/-- A046302: Products of 4 successive primes.

Offset 1, canonical program `A046302.P14230165923865904189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046302 (n : ℕ) : ℤ :=
  (A046302.P14230165923865904189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046868.P12771719425983285755

`lt[A036263(n+1), 1]+2`
-/

namespace A046868.P12771719425983285755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A046868.P12771719425983285755

noncomputable section

/-- A046868: Numbers n such that prime(n)^2 > prime(n-1)*prime(n+1).

Offset 1, canonical program `A046868.P12771719425983285755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046868 (n : ℕ) : ℤ :=
  (A046868.P12771719425983285755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047727.P4578526210664008932

`∩[A033950(n+1), A301975(n+1)]`
-/

namespace A047727.P4578526210664008932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P4578526210664008932

noncomputable section

/-- A047727: Average divisor is an integer (A003601) and the number is refactorable (A033950).

Offset 1, canonical program `A047727.P4578526210664008932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A047727 (n : ℕ) : ℤ :=
  (A047727.P4578526210664008932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A047727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048158.P5985551271054969895

`A051127(A122797(n+1))`
-/

namespace A048158.P5985551271054969895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A122797 (n + 1)).toNat

end

end A048158.P5985551271054969895

noncomputable section

/-- A048158: Triangular array T read by rows: T(n,k) = n mod k, for k=1,2,...,n, n=1,2,...

Offset 1, canonical program `A048158.P5985551271054969895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048158 (n : ℕ) : ℤ :=
  A048158.P5985551271054969895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048261.P561528646434980064

`eq[A000007(n), A000007(A111900(n))]`
-/

namespace A048261.P561528646434980064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A111900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048261.P561528646434980064

noncomputable section

/-- A048261: Numbers that are the sum of the squares of distinct primes.

Offset 1, canonical program `A048261.P561528646434980064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7700 terms. -/
def A048261 (n : ℕ) : ℤ :=
  (A048261.P561528646434980064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7700 terms. -/
def A048261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048519.P10135432408505313688

`p?[A047791(n+1)]`
-/

namespace A048519.P10135432408505313688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048519.P10135432408505313688

noncomputable section

/-- A048519: Prime plus its digit sum equals a prime.

Offset 1, canonical program `A048519.P10135432408505313688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. -/
def A048519 (n : ℕ) : ℤ :=
  A048519.P10135432408505313688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. -/
def A048519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048614.P8089396376325747707

`A027833(C(2, n+1)+n+1)-2`
-/

namespace A048614.P8089396376325747707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (Nat.choose 2 (n + 1) + n + 1) - 2

end

end A048614.P8089396376325747707

noncomputable section

/-- A048614: Number of primes between successive pairs of twin primes.

Offset 1, canonical program `A048614.P8089396376325747707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048614 (n : ℕ) : ℤ :=
  A048614.P8089396376325747707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048702.P3727629024629284360

`A048701(n)/3`
-/

namespace A048702.P3727629024629284360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048701 n : ℚ) / 3

end

end A048702.P3727629024629284360

noncomputable section

/-- A048702: Binary palindromes of even length divided by 3.

Offset 0, canonical program `A048702.P3727629024629284360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048702 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048702.P3727629024629284360.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048702.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048741.P2194570441843201245

`A007956(A002808(n+1))`
-/

namespace A048741.P2194570441843201245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A002808 (n + 1)).toNat

end

end A048741.P2194570441843201245

noncomputable section

/-- A048741: Product of aliquot divisors of composite n (1 and primes omitted).

Offset 1, canonical program `A048741.P2194570441843201245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048741 (n : ℕ) : ℤ :=
  A048741.P2194570441843201245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048754.P5290523552306248918

`A007956(A048753(n+1))/A032741(A048753(n+1))`
-/

namespace A048754.P5290523552306248918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (A048753 (n + 1)).toNat : ℚ) / (A032741 (A048753 (n + 1)).toNat : ℚ)

end

end A048754.P5290523552306248918

noncomputable section

/-- A048754: Mean integral quotients associated with A048753.

Offset 1, canonical program `A048754.P5290523552306248918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, A032741, A048753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048754.P5290523552306248918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, A032741, A048753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049202.P14441440426540642835

`A049203(A000040(n+1))`
-/

namespace A049202.P14441440426540642835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A000040 (n + 1)).toNat

end

end A049202.P14441440426540642835

noncomputable section

/-- A049202: Primes p whose order of primeness A049076(p) is >= 6.

Offset 1, canonical program `A049202.P14441440426540642835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A049202 (n : ℕ) : ℤ :=
  A049202.P14441440426540642835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A049202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049319.P9182740163463165320

`6*A395768(2*n+1)`
-/

namespace A049319.P9182740163463165320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A395768 (2 * n + 1)

end

end A049319.P9182740163463165320

noncomputable section

/-- A049319: Number of 3-dimensional integer direction vectors (a,b,c) towards grid points at squared integer distance 2n-1.

Offset 1, canonical program `A049319.P9182740163463165320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. -/
def A049319 (n : ℕ) : ℤ :=
  A049319.P9182740163463165320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. -/
def A049319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049321.P1209473950840220207

`(A026232(n+1)%A026227(n+1))%3`
-/

namespace A049321.P1209473950840220207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A026232 (n + 1)) (A026227 (n + 1))) 3

end

end A049321.P1209473950840220207

noncomputable section

/-- A049321: Primitive Chacon sequence: fixed under 0->0012, 1->12, 2->012.

Offset 0, canonical program `A049321.P1209473950840220207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049321 (n : ℕ) : ℤ :=
  A049321.P1209473950840220207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049620.P15532980577468314224

`A008865(n+1)%A206350(n+1)`
-/

namespace A049620.P15532980577468314224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008865 (n + 1)) (A206350 (n + 1))

end

end A049620.P15532980577468314224

noncomputable section

/-- A049620: a(n) = T(n,n), array T as in A049615.

Offset 0, canonical program `A049620.P15532980577468314224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2797 terms. -/
def A049620 (n : ℕ) : ℤ :=
  A049620.P15532980577468314224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2797 terms. -/
def A049620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049632.P1310813934760745666

`abs(xor(-2, A206350(n+1)))`
-/

namespace A049632.P1310813934760745666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A206350 (n + 1))|

end

end A049632.P1310813934760745666

noncomputable section

/-- A049632: a(n) = T(n,n), array T as in A049627.

Offset 0, canonical program `A049632.P1310813934760745666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2836 terms. -/
def A049632 (n : ℕ) : ℤ :=
  A049632.P1310813934760745666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2836 terms. -/
def A049632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049691.P16354850273583101

`xor(1, A206350(n+1))`
-/

namespace A049691.P16354850273583101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A206350 (n + 1))

end

end A049691.P16354850273583101

noncomputable section

/-- A049691: a(n)=T(n,n), array T as in A049687. Also a(n)=T(2n,2n), array T given by A049639.

Offset 0, canonical program `A049691.P16354850273583101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A049691 (n : ℕ) : ℤ :=
  A049691.P16354850273583101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A049691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050182.P14663664458586946178

`A275206(n+2)/2`
-/

namespace A050182.P14663664458586946178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275206 (n + 2) : ℚ) / 2

end

end A050182.P14663664458586946178

noncomputable section

/-- A050182: a(n) = T(2*n+4, n), array T as in A051168 (a count of Lyndon words).

Offset 0, canonical program `A050182.P14663664458586946178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A050182 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050182.P14663664458586946178.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A050182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050436.P13941268239678709413

`A002808(A050435(n+1))`
-/

namespace A050436.P13941268239678709413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050435 (n + 1)).toNat

end

end A050436.P13941268239678709413

noncomputable section

/-- A050436: Third-order composites.

Offset 1, canonical program `A050436.P13941268239678709413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050436 (n : ℕ) : ℤ :=
  A050436.P13941268239678709413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050464.P7511366373007771745

`A002131(n+1)-A050460(n+1)`
-/

namespace A050464.P7511366373007771745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A050460 (n + 1)

end

end A050464.P7511366373007771745

noncomputable section

/-- A050464: a(n) = Sum_{d|n, n/d=3 mod 4} d.

Offset 1, canonical program `A050464.P7511366373007771745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050464 (n : ℕ) : ℤ :=
  A050464.P7511366373007771745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050531.P14066139163259779683

`A037240(n)+A000292(A110654(n))`
-/

namespace A050531.P14066139163259779683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n + A000292 (A110654 n).toNat

end

end A050531.P14066139163259779683

noncomputable section

/-- A050531: Number of multigraphs with loops on 3 nodes with n edges.

Offset 0, canonical program `A050531.P14066139163259779683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050531 (n : ℕ) : ℤ :=
  A050531.P14066139163259779683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050614.P3798663840407021647

`A050613(2*n)`
-/

namespace A050614.P3798663840407021647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (2 * n)

end

end A050614.P3798663840407021647

noncomputable section

/-- A050614: Products of distinct terms of A001566: a(n) = Product_{i=0..floor(log_2(n+1))} L(2^(i+1))^bit(n,i).

Offset 0, canonical program `A050614.P3798663840407021647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A050614 (n : ℕ) : ℤ :=
  A050614.P3798663840407021647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A050614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050622.P13515621561881358484

`record[A005843(n+1)%A103456(A001511(n+1))]`
-/

namespace A050622.P13515621561881358484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1)) (A103456 (A001511 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050622.P13515621561881358484

noncomputable section

/-- A050622: Numbers m that are divisible by 2^k, where k is the digit length of m.

Offset 1, canonical program `A050622.P13515621561881358484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A050622 (n : ℕ) : ℤ :=
  A050622.P13515621561881358484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A050622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051178.P2441463361311588415

`eq[0, A027857(n+1)]+1`
-/

namespace A051178.P2441463361311588415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051178.P2441463361311588415

noncomputable section

/-- A051178: Numbers k such that k divides the number of divisors of k!.

Offset 1, canonical program `A051178.P2441463361311588415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178 (n : ℕ) : ℤ :=
  (A051178.P2441463361311588415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051197.P11361868764992353229

`(n+2)*A275206(n+2)`
-/

namespace A051197.P11361868764992353229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A275206 (n + 2)

end

end A051197.P11361868764992353229

noncomputable section

/-- A051197: T(2n+4,n), array T as in A050186; a count of aperiodic binary words.

Offset 0, canonical program `A051197.P11361868764992353229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A051197 (n : ℕ) : ℤ :=
  A051197.P11361868764992353229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A051197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051777.P15797319284762546370

`A123578(n)%A193592(n)`
-/

namespace A051777.P15797319284762546370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 n) (A193592 n)

end

end A051777.P15797319284762546370

noncomputable section

/-- A051777: Triangle read by rows, where row (n) = n mod n, n mod (n-1), n mod (n-2), ...n mod 1.

Offset 1, canonical program `A051777.P15797319284762546370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051777 (n : ℕ) : ℤ :=
  A051777.P15797319284762546370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052288.P13034887197585829558

`A162345(n+3)`
-/

namespace A052288.P13034887197585829558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 3)

end

end A052288.P13034887197585829558

noncomputable section

/-- A052288: First differences of the average of two consecutive odd primes (A024675).

Offset 1, canonical program `A052288.P13034887197585829558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052288 (n : ℕ) : ℤ :=
  A052288.P13034887197585829558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052343.P15911122501402458117

`ceil(A008441(n)/2)`
-/

namespace A052343.P15911122501402458117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008441 n : ℚ) / 2⌉

end

end A052343.P15911122501402458117

noncomputable section

/-- A052343: Number of ways to write n as the unordered sum of two triangular numbers (zero allowed).

Offset 0, canonical program `A052343.P15911122501402458117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052343 (n : ℕ) : ℤ :=
  A052343.P15911122501402458117.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053023.P541668529944221178

`∏{e}[A053021(n+1), #+1]`
-/

namespace A053023.P541668529944221178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053023.P541668529944221178

noncomputable section

/-- A053023: Divisor function applied thrice to n!.

Offset 1, canonical program `A053023.P541668529944221178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A053023 (n : ℕ) : ℤ :=
  (A053023.P541668529944221178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A053023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053123.P11549836046725381131

`A062157(A002260(n+1))*A172431(n+1)`
-/

namespace A053123.P11549836046725381131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A172431 (n + 1)

end

end A053123.P11549836046725381131

noncomputable section

/-- A053123: Triangle of coefficients of shifted Chebyshev's S(n,x-2) = U(n,x/2-1) polynomials (exponents of x in decreasing order).

Offset 0, canonical program `A053123.P11549836046725381131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053123 (n : ℕ) : ℤ :=
  A053123.P11549836046725381131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053177.P14888561992425814603

`2*A053176(n+1)+1`
-/

namespace A053177.P14888561992425814603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053176 (n + 1) + 1

end

end A053177.P14888561992425814603

noncomputable section

/-- A053177: Odd composite k such that (k-1)/2 is prime.

Offset 1, canonical program `A053177.P14888561992425814603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053177 (n : ℕ) : ℤ :=
  A053177.P14888561992425814603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053179.P11829121929846558222

`A017305(A153403(n+1))`
-/

namespace A053179.P11829121929846558222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A153403 (n + 1)).toNat

end

end A053179.P11829121929846558222

noncomputable section

/-- A053179: Numbers ending in 3 which are not prime.

Offset 1, canonical program `A053179.P11829121929846558222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7598 terms. -/
def A053179 (n : ℕ) : ℤ :=
  A053179.P11829121929846558222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7598 terms. -/
def A053179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053603.P8228624408487937013

`A008441(n)-A046698(A198954(n))`
-/

namespace A053603.P8228624408487937013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - A046698 (A198954 n).toNat

end

end A053603.P8228624408487937013

noncomputable section

/-- A053603: Number of ways to write n as an ordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A053603.P8228624408487937013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603 (n : ℕ) : ℤ :=
  A053603.P8228624408487937013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053800.P13951810941336330139

`2*A091773(n)-A053798(n)`
-/

namespace A053800.P13951810941336330139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091773 n - A053798 n

end

end A053800.P13951810941336330139

noncomputable section

/-- A053800: Number of basis partitions of n+25 with Durfee square size 5.

Offset 0, canonical program `A053800.P13951810941336330139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053800 (n : ℕ) : ℤ :=
  A053800.P13951810941336330139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053821.P9529170289535089362

`∑{d}[n+1, A029833(#)]`
-/

namespace A053821.P9529170289535089362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029833 d

end

end A053821.P9529170289535089362

noncomputable section

/-- A053821: A discrete approximation to log(n): Sum_{ d divides n } A029833(d).

Offset 1, canonical program `A053821.P9529170289535089362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053821 (n : ℕ) : ℤ :=
  A053821.P9529170289535089362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054023.P16419217150835548806

`comp[A054022(n+1)-1]+1`
-/

namespace A054023.P16419217150835548806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054023.P16419217150835548806

noncomputable section

/-- A054023: Chowla function of n is not divisible by the number of divisors of n.

Offset 1, canonical program `A054023.P16419217150835548806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023 (n : ℕ) : ℤ :=
  (A054023.P16419217150835548806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054075.P9880067483023913226

`A054072(n+1)+∑[n]`
-/

namespace A054075.P9880067483023913226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054072 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054075.P9880067483023913226

noncomputable section

/-- A054075: Position of first appearance of n in A054073.

Offset 1, canonical program `A054075.P9880067483023913226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054075 (n : ℕ) : ℤ :=
  A054075.P9880067483023913226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054114.P2092372370366146121

`∑[A001700(n)]*A036453(n+1)`
-/

namespace A054114.P2092372370366146121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A036453 (n + 1)

end

end A054114.P2092372370366146121

noncomputable section

/-- A054114: T(2n+1,n), array T as in A054110.

Offset 0, canonical program `A054114.P2092372370366146121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054114 (n : ℕ) : ℤ :=
  A054114.P2092372370366146121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054115.P12923722601801715663

`A143122(A038722(n+1)%A080036(n))`
-/

namespace A054115.P12923722601801715663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (Int.tmod (A038722 (n + 1)) (A080036 n)).toNat

end

end A054115.P12923722601801715663

noncomputable section

/-- A054115: Triangular array generated by its row sums: T(n,0)=1 for n >= 1, T(n,1)=r(n-1), T(n,k)=T(n,k-1)+r(n-k) for k=2,3,...,n, n >= 2, r(h)=sum of the numbers in row h of T.

Offset 0, canonical program `A054115.P12923722601801715663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A054115 (n : ℕ) : ℤ :=
  A054115.P12923722601801715663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A054115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054473.P5529264726719540084

`A003082(n)-A173196(A110654(n))`
-/

namespace A054473.P5529264726719540084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 n - A173196 (A110654 n).toNat

end

end A054473.P5529264726719540084

noncomputable section

/-- A054473: Number of ways of numbering the faces of a cube with nonnegative integers so that the sum of the 6 numbers is n.

Offset 0, canonical program `A054473.P5529264726719540084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A054473 (n : ℕ) : ℤ :=
  A054473.P5529264726719540084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A054473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054643.P5809740023025136968

`A000040(eq[6, gcd(6, A036263(n+1))]+1)`
-/

namespace A054643.P5809740023025136968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A036263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A054643.P5809740023025136968

noncomputable section

/-- A054643: Primes prime(n) such that prime(n) + prime(n+1) + prime(n+2) == 0 (mod 3).

Offset 1, canonical program `A054643.P5809740023025136968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A054643 (n : ℕ) : ℤ :=
  A054643.P5809740023025136968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A054643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054784.P4050351329649829973

`eq[1, A336923(n+1)]+1`
-/

namespace A054784.P4050351329649829973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054784.P4050351329649829973

noncomputable section

/-- A054784: Integers n such that sigma(2n) - sigma(n) is a power of 2, where sigma is the sum of the divisors of n.

Offset 1, canonical program `A054784.P4050351329649829973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A054784 (n : ℕ) : ℤ :=
  (A054784.P4050351329649829973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A054784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055398.P5120495182018114897

`∪[A000040(n+1), A038511(n+1)]`
-/

namespace A055398.P5120495182018114897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055398.P5120495182018114897

noncomputable section

/-- A055398: Result of fourth stage of sieve of Eratosthenes (after eliminating multiples of 2, 3, 5, 7).

Offset 1, canonical program `A055398.P5120495182018114897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055398 (n : ℕ) : ℤ :=
  (A055398.P5120495182018114897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055401.P8525785156040280502

`a(A055400(n))+1` with `a(0)=0`
-/

namespace A055401.P8525785156040280502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A055400 n).toNat + 1

end

end A055401.P8525785156040280502

noncomputable section

/-- A055401: Number of positive cubes needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A055401.P8525785156040280502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055400, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055401 (n : ℕ) : ℤ :=
  (A055401.P8525785156040280502.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055400, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055499.P1678802310428195531

`A055498(n+1)-A010051(A007918(n)+1)`
-/

namespace A055499.P1678802310428195531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) - A010051 (A007918 n + 1).toNat

end

end A055499.P1678802310428195531

noncomputable section

/-- A055499: a(0)=0, a(1)=1, a(n) = smallest prime > a(n-1)+a(n-2).

Offset 0, canonical program `A055499.P1678802310428195531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A055499 (n : ℕ) : ℤ :=
  A055499.P1678802310428195531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A055499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055656.P11271106632421425074

`A055597(n+1)-A011371(n+1)`
-/

namespace A055656.P11271106632421425074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055597 (n + 1) - A011371 (n + 1)

end

end A055656.P11271106632421425074

noncomputable section

/-- A055656: Excess in exponents of powers of 2 in Euler phi of n! compared to that of n!.

Offset 1, canonical program `A055656.P11271106632421425074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055656 (n : ℕ) : ℤ :=
  A055656.P11271106632421425074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055786.P1330688624360433329

`A001790(n)/gcd(A002596(n), A005408(n))`
-/

namespace A055786.P1330688624360433329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (Int.gcd (A002596 n) (A005408 n) : ℚ)

end

end A055786.P1330688624360433329

noncomputable section

/-- A055786: Numerators of Taylor series expansion of arcsin(x). Also arises from arccos(x), arccsc(x), arcsec(x), arcsinh(x).

Offset 0, canonical program `A055786.P1330688624360433329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A055786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055786.P1330688624360433329.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A055786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055864.P3727447162581188383

`A003057(n+2)^A025581(n)*A076112(n+1)`
-/

namespace A055864.P3727447162581188383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) ^ (A025581 n : ℤ) * (A076112 (n + 1) : ℚ)

end

end A055864.P3727447162581188383

noncomputable section

/-- A055864: Coefficient triangle for certain polynomials.

Offset 1, canonical program `A055864.P3727447162581188383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A055864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055864.P3727447162581188383.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A055864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056023.P18301880220554603864

`A038722(A056011(n+1))`
-/

namespace A056023.P18301880220554603864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A056011 (n + 1)).toNat

end

end A056023.P18301880220554603864

noncomputable section

/-- A056023: The positive integers written as a triangle, where row n is written from right to left if n is odd and otherwise from left to right.

Offset 1, canonical program `A056023.P18301880220554603864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056023 (n : ℕ) : ℤ :=
  A056023.P18301880220554603864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056142.P638140004868031470

`A059995(A275238(n))`
-/

namespace A056142.P638140004868031470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A275238 n).toNat

end

end A056142.P638140004868031470

noncomputable section

/-- A056142: Concatenate n, floor[n/10], floor[n/100] ... (but do not continue if floor[.]=0).

Offset 0, canonical program `A056142.P638140004868031470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142 (n : ℕ) : ℤ :=
  A056142.P638140004868031470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056835.P10679261030270007209

`lcm(a(n-1), A024619(n))` with `a(0)=1`
-/

namespace A056835.P10679261030270007209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A024619 n)

end

end A056835.P10679261030270007209

noncomputable section

/-- A056835: a(n) = lcm(s(1),...,s(n)) where {s(n)} = A024619 and a(0) = 1.

Offset 0, canonical program `A056835.P10679261030270007209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A056835 (n : ℕ) : ℤ :=
  (A056835.P10679261030270007209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A056835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056981.P2022671667099570059

`A002596(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056981.P2022671667099570059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n ^ 2

end

end A056981.P2022671667099570059

noncomputable section

/-- A056981: a(n) = A002596(n)^2.

Offset 0, canonical program `A056981.P2022671667099570059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002596, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056981 (n : ℕ) : ℤ :=
  A056981.P2022671667099570059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002596, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057585.P18440918043362759352

`(A055218(n)-A275289(n+3))/2`
-/

namespace A057585.P18440918043362759352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055218 n - A275289 (n + 3) : ℚ) / 2

end

end A057585.P18440918043362759352

noncomputable section

/-- A057585: Area under Motzkin excursions.

Offset 1, canonical program `A057585.P18440918043362759352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A057585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057585.P18440918043362759352.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A057585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057656.P13929880755277153593

`∑[2*A008441(n)]`
-/

namespace A057656.P13929880755277153593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P13929880755277153593

noncomputable section

/-- A057656: Number of points (x,y) in square lattice with (x-1/2)^2+y^2 <= n.

Offset 0, canonical program `A057656.P13929880755277153593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057656 (n : ℕ) : ℤ :=
  A057656.P13929880755277153593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057890.P14104783262774469296

`eq[n, A057889(n)]`
-/

namespace A057890.P14104783262774469296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057890.P14104783262774469296

noncomputable section

/-- A057890: In base 2, either a palindrome or becomes a palindrome if trailing 0's are omitted.

Offset 1, canonical program `A057890.P14104783262774469296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A057890 (n : ℕ) : ℤ :=
  (A057890.P14104783262774469296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A057890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058049.P13942602292199883948

`eq[2, A000005(A051351(n+1))]+1`
-/

namespace A058049.P13942602292199883948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051351 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058049.P13942602292199883948

noncomputable section

/-- A058049: Numbers k such that the sum of the digits of the first k primes is a prime.

Offset 1, canonical program `A058049.P13942602292199883948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A058049 (n : ℕ) : ℤ :=
  (A058049.P13942602292199883948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A058049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059289.P8424593623092388927

`A059288(n+1)+1`
-/

namespace A059289.P8424593623092388927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059288 (n + 1) + 1

end

end A059289.P8424593623092388927

noncomputable section

/-- A059289: a(n) = 1 + (binomial(2n,n) mod n).

Offset 1, canonical program `A059289.P8424593623092388927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059289 (n : ℕ) : ℤ :=
  A059289.P8424593623092388927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059448.P3674555559967751262

`A010059(A054429(n+1))`
-/

namespace A059448.P3674555559967751262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A054429 (n + 1)).toNat

end

end A059448.P3674555559967751262

noncomputable section

/-- A059448: The parity of the number of zero digits when n is written in binary.

Offset 1, canonical program `A059448.P3674555559967751262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059448 (n : ℕ) : ℤ :=
  A059448.P3674555559967751262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059648.P7247611612074337130

`A327177((n-1)*A327205(n))`
-/

namespace A059648.P7247611612074337130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (((n : ℤ) - 1) * A327205 n).toNat

end

end A059648.P7247611612074337130

noncomputable section

/-- A059648: a(n) = [[(k^2)*n]-(k*[k*n])], where k = sqrt(2) and [] is the floor function.

Offset 0, canonical program `A059648.P7247611612074337130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059648 (n : ℕ) : ℤ :=
  A059648.P7247611612074337130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059778.P17070218230264612452

`A106459(A004483(n))+A106459(n)`
-/

namespace A059778.P17070218230264612452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (A004483 n).toNat + A106459 n

end

end A059778.P17070218230264612452

noncomputable section

/-- A059778: Expansion of 1 / product((1+q^(2*n+3))/(1-q^(2*n+2)), n=0..inf).

Offset 0, canonical program `A059778.P17070218230264612452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A059778 (n : ℕ) : ℤ :=
  A059778.P17070218230264612452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A059778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060025.P9020648666092478282

`A026811(n+5)-A026812(n+5)`
-/

namespace A060025.P9020648666092478282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 5) - A026812 (n + 5)

end

end A060025.P9020648666092478282

noncomputable section

/-- A060025: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 6.

Offset 0, canonical program `A060025.P9020648666092478282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, A026812, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060025 (n : ℕ) : ℤ :=
  A060025.P9020648666092478282.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, A026812, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060648.P14045307468802834346

`∑{d}[n+1, A007432(#)*A062367((n+1)/#)]`
-/

namespace A060648.P14045307468802834346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P14045307468802834346

noncomputable section

/-- A060648: Number of cyclic subgroups of the group C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A060648.P14045307468802834346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060648 (n : ℕ) : ℤ :=
  A060648.P14045307468802834346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060968.P17331185296749833849

`A177704(n)*A395768(n+1)`
-/

namespace A060968.P17331185296749833849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A395768 (n + 1)

end

end A060968.P17331185296749833849

noncomputable section

/-- A060968: Number of solutions to x^2 + y^2 == 1 (mod n).

Offset 1, canonical program `A060968.P17331185296749833849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060968 (n : ℕ) : ℤ :=
  A060968.P17331185296749833849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061466.P6591558170122978266

`A031336(n+1)*A031369(n+1)*A031377(n+1)`
-/

namespace A061466.P6591558170122978266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) * A031369 (n + 1) * A031377 (n + 1)

end

end A061466.P6591558170122978266

noncomputable section

/-- A061466: Product of primes prime(3*n+1), prime(3*n+2), prime(3*n+3).

Offset 0, canonical program `A061466.P6591558170122978266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061466 (n : ℕ) : ℤ :=
  A061466.P6591558170122978266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061538.P6238861604211954641

`(n+1)^(A048105(n+1)/2)`
-/

namespace A061538.P6238861604211954641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A048105 (n + 1) : ℚ) / 2 : ℝ)

end

end A061538.P6238861604211954641

noncomputable section

/-- A061538: Product of all divisors of n, divided by product of unitary divisors; or equivalently product of non-unitary divisors of n.

Offset 1, canonical program `A061538.P6238861604211954641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061538.P6238861604211954641.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062333.P7322437637995011704

`∩[A030431(n+1), A077652(n+1)]`
-/

namespace A062333.P7322437637995011704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P7322437637995011704

noncomputable section

/-- A062333: Primes starting and ending with 3.

Offset 1, canonical program `A062333.P7322437637995011704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A062333 (n : ℕ) : ℤ :=
  (A062333.P7322437637995011704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A062333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062336.P8122795505287334106

`p?[A273159(n+1)]`
-/

namespace A062336.P8122795505287334106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062336.P8122795505287334106

noncomputable section

/-- A062336: Primes whose sum of digits is a multiple of 7.

Offset 1, canonical program `A062336.P8122795505287334106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A062336 (n : ℕ) : ℤ :=
  A062336.P8122795505287334106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A062336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062513.P1789972320997813551

`A061537(n+1)/(n+1)^A001221(n+1)`
-/

namespace A062513.P1789972320997813551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A062513.P1789972320997813551

noncomputable section

/-- A062513: Product of unitary divisors of n is divided by n^(number of distinct prime factors).

Offset 1, canonical program `A062513.P1789972320997813551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062513.P1789972320997813551.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062799.P13116436156649917585

`∑{d}[n+1, A001511(#)*A205745((n+1)/#)]`
-/

namespace A062799.P13116436156649917585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A205745 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P13116436156649917585

noncomputable section

/-- A062799: Inverse Möbius transform of the numbers of distinct prime factors (A001221).

Offset 1, canonical program `A062799.P13116436156649917585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062799 (n : ℕ) : ℤ :=
  A062799.P13116436156649917585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062876.P12290400857756145582

`8*A111333(n+1)-4`
-/

namespace A062876.P12290400857756145582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A111333 (n + 1) - 4

end

end A062876.P12290400857756145582

noncomputable section

/-- A062876: Numbers of lattice points corresponding to incrementally largest circle radii in A062875.

Offset 1, canonical program `A062876.P12290400857756145582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062876 (n : ℕ) : ℤ :=
  A062876.P12290400857756145582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063113.P7442920505588382049

`A117592(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A063113.P7442920505588382049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117592 (a (n - 1)).toNat + a (n - 1)

end

end A063113.P7442920505588382049

noncomputable section

/-- A063113: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. But display sequence in base 10.

Offset 1, canonical program `A063113.P7442920505588382049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A063113 (n : ℕ) : ℤ :=
  A063113.P7442920505588382049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A063113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063264.P15008203233816380364

`A034263(n)+∑[A064058(n)]`
-/

namespace A063264.P15008203233816380364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063264.P15008203233816380364

noncomputable section

/-- A063264: Tenth column (k=9) of sextinomial array A063260.

Offset 0, canonical program `A063264.P15008203233816380364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063264 (n : ℕ) : ℤ :=
  A063264.P15008203233816380364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063535.P4924521992092445288

`A000040(lt[A056221(n+1), 0]+1)`
-/

namespace A063535.P4924521992092445288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063535.P4924521992092445288

noncomputable section

/-- A063535: Primes prime(n) such that prime(n+1)^2 < prime(n)*prime(n+2).

Offset 0, canonical program `A063535.P4924521992092445288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4802 terms. -/
def A063535 (n : ℕ) : ℤ :=
  A063535.P4924521992092445288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4802 terms. -/
def A063535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063645.P11828165529242582443

`∩[A063641(n+1), A063642(n+1)]`
-/

namespace A063645.P11828165529242582443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063645.P11828165529242582443

noncomputable section

/-- A063645: Primes with two representations: p*q*r - 2 = u*v*w + 2 where p, q, r, u, v and w are primes (not necessarily distinct).

Offset 1, canonical program `A063645.P11828165529242582443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A063645 (n : ℕ) : ℤ :=
  (A063645.P11828165529242582443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A063645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063911.P1303039430308054328

`p?[A097069(n+1)]`
-/

namespace A063911.P1303039430308054328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P1303039430308054328

noncomputable section

/-- A063911: Primes p such that 2*p - 9 is also prime.

Offset 1, canonical program `A063911.P1303039430308054328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. -/
def A063911 (n : ℕ) : ℤ :=
  A063911.P1303039430308054328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. -/
def A063911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064032.P2469251830036419908

`A061537(A001405(n+1))`
-/

namespace A064032.P2469251830036419908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (A001405 (n + 1)).toNat

end

end A064032.P2469251830036419908

noncomputable section

/-- A064032: Product of unitary divisors of binomial(n, floor(n/2)).

Offset 1, canonical program `A064032.P2469251830036419908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064032 (n : ℕ) : ℤ :=
  A064032.P2469251830036419908.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064149.P17735911331487124559

`eq[A036263(n+2), A036263(n+1)]+1`
-/

namespace A064149.P17735911331487124559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064149.P17735911331487124559

noncomputable section

/-- A064149: Indices of zeros of third differences of primes: Numbers k such that A036264(k) = 0.

Offset 1, canonical program `A064149.P17735911331487124559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3071 terms. -/
def A064149 (n : ℕ) : ℤ :=
  (A064149.P17735911331487124559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3071 terms. -/
def A064149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064532.P10940684509799697832

`A064531(n)-1`
-/

namespace A064532.P10940684509799697832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064531 n - 1

end

end A064532.P10940684509799697832

noncomputable section

/-- A064532: Total number of holes in decimal expansion of the number n, assuming 4 has no hole.

Offset 0, canonical program `A064532.P10940684509799697832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064532 (n : ℕ) : ℤ :=
  A064532.P10940684509799697832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065311.P12801822224862950029

`A065994(n+3)`
-/

namespace A065311.P12801822224862950029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 (n + 3)

end

end A065311.P12801822224862950029

noncomputable section

/-- A065311: Primes which occur exactly twice in the sequence of a(n) = prime(n) - prime(n - pi(n)) = A065308(n).

Offset 1, canonical program `A065311.P12801822224862950029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A065311 (n : ℕ) : ℤ :=
  A065311.P12801822224862950029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A065311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065714.P2804291034299227177

`∑{digits}[A000079(n), A115346(A000045(#))%2]`
-/

namespace A065714.P2804291034299227177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (A115346 (A000045 x).toNat) 2).sum

end

end A065714.P2804291034299227177

noncomputable section

/-- A065714: Number of 3's in decimal expansion of 2^n.

Offset 0, canonical program `A065714.P2804291034299227177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065714 (n : ℕ) : ℤ :=
  A065714.P2804291034299227177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065803.P10961158191132642769

`Δ[floor(sqrt(n))]*A035187(n+1)`
-/

namespace A065803.P10961158191132642769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A035187 (n + 1)

end

end A065803.P10961158191132642769

noncomputable section

/-- A065803: a(n) = (sigma_2(n) mod 2) * (sigma_2(n) mod 5). Residue-product modulo 2 and 5 of sum of square of divisors.

Offset 1, canonical program `A065803.P10961158191132642769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065803 (n : ℕ) : ℤ :=
  A065803.P10961158191132642769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066066.P11585399840041140735

`A031215(n+1)-A100484(n+1)`
-/

namespace A066066.P11585399840041140735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A100484 (n + 1)

end

end A066066.P11585399840041140735

noncomputable section

/-- A066066: a(n) = prime(2*n) - 2*prime(n).

Offset 1, canonical program `A066066.P11585399840041140735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066066 (n : ℕ) : ℤ :=
  A066066.P11585399840041140735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066169.P16801772389171406171

`A103517(n)-A033558(n+1)`
-/

namespace A066169.P16801772389171406171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A033558 (n + 1)

end

end A066169.P16801772389171406171

noncomputable section

/-- A066169: Least k such that phi(k) >= n.

Offset 1, canonical program `A066169.P16801772389171406171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066169 (n : ℕ) : ℤ :=
  A066169.P16801772389171406171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066560.P2608043460305824476

`A061397(abs(1-n)+2)+n+1`
-/

namespace A066560.P2608043460305824476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (|1 - (n : ℤ)| + 2).toNat + (n + 1 : ℤ)

end

end A066560.P2608043460305824476

noncomputable section

/-- A066560: Smallest composite number divisible by n.

Offset 1, canonical program `A066560.P2608043460305824476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066560 (n : ℕ) : ℤ :=
  A066560.P2608043460305824476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066940.P14356666684523876078

`eq[2, A063086(n+1)]+1`
-/

namespace A066940.P14356666684523876078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066940.P14356666684523876078

noncomputable section

/-- A066940: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 2.

Offset 1, canonical program `A066940.P14356666684523876078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A066940 (n : ℕ) : ℤ :=
  (A066940.P14356666684523876078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A066940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066941.P4211167729421485919

`eq[4, A063086(n+1)]+1`
-/

namespace A066941.P4211167729421485919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066941.P4211167729421485919

noncomputable section

/-- A066941: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 4.

Offset 1, canonical program `A066941.P4211167729421485919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. -/
def A066941 (n : ℕ) : ℤ :=
  (A066941.P4211167729421485919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. -/
def A066941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066942.P934297260943197593

`eq[6, A063086(n+6)]+6`
-/

namespace A066942.P934297260943197593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A066942.P934297260943197593

noncomputable section

/-- A066942: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 6.

Offset 1, canonical program `A066942.P934297260943197593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1599 terms. -/
def A066942 (n : ℕ) : ℤ :=
  (A066942.P934297260943197593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1599 terms. -/
def A066942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066943.P8029319133329898766

`eq[8, A063086(n+1)]+1`
-/

namespace A066943.P8029319133329898766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066943.P8029319133329898766

noncomputable section

/-- A066943: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 8.

Offset 1, canonical program `A066943.P8029319133329898766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A066943 (n : ℕ) : ℤ :=
  (A066943.P8029319133329898766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A066943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066944.P2385431604871524094

`eq[10, A063086(n+1)]+1`
-/

namespace A066944.P2385431604871524094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066944.P2385431604871524094

noncomputable section

/-- A066944: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 10.

Offset 1, canonical program `A066944.P2385431604871524094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A066944 (n : ℕ) : ℤ :=
  (A066944.P2385431604871524094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A066944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068424.P13772130629057733356

`A074909(n)*A137948(n)`
-/

namespace A068424.P13772130629057733356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A137948 n

end

end A068424.P13772130629057733356

noncomputable section

/-- A068424: Triangle of falling factorials, read by rows: T(n, k) = n*(n-1)*...*(n-k+1), n > 0, 1 <= k <= n.

Offset 1, canonical program `A068424.P13772130629057733356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A068424 (n : ℕ) : ℤ :=
  A068424.P13772130629057733356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A068424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069350.P10464430584062666886

`p?[comp[A317531(2*(n+1))+n]]`
-/

namespace A069350.P10464430584062666886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (2 * (n + 1)) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069350.P10464430584062666886

noncomputable section

/-- A069350: Primes having no representation of the form n - A001222(n), complement of A069346.

Offset 1, canonical program `A069350.P10464430584062666886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A069350 (n : ℕ) : ℤ :=
  (A069350.P10464430584062666886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A069350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069466.P16891646356280959536

`A067804(n)*A086645(n)`
-/

namespace A069466.P16891646356280959536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067804 n * A086645 n

end

end A069466.P16891646356280959536

noncomputable section

/-- A069466: Triangle T(n, k) of numbers of square lattice walks that start and end at origin after 2*n steps and contain exactly k steps to the east, possibly touching origin at intermediate stages.

Offset 0, canonical program `A069466.P16891646356280959536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3781 terms. -/
def A069466 (n : ℕ) : ℤ :=
  A069466.P16891646356280959536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3781 terms. -/
def A069466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070689.P1393312578879141227

`p?[A067720(n+1)+1]-1`
-/

namespace A070689.P1393312578879141227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070689.P1393312578879141227

noncomputable section

/-- A070689: Numbers k such that k+1 and k^2+1 are primes.

Offset 1, canonical program `A070689.P1393312578879141227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6961 terms. -/
def A070689 (n : ℕ) : ℤ :=
  A070689.P1393312578879141227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6961 terms. -/
def A070689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070873.P18160527976048025681

`lt[n+1, A070871(n+1)]+1`
-/

namespace A070873.P18160527976048025681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070873.P18160527976048025681

noncomputable section

/-- A070873: Integers k such that A070871(k) > k.

Offset 1, canonical program `A070873.P18160527976048025681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070873 (n : ℕ) : ℤ :=
  (A070873.P18160527976048025681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070874.P9251368327235790021

`lt[A070871(abs(1-n)+1), n]`
-/

namespace A070874.P9251368327235790021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070874.P9251368327235790021

noncomputable section

/-- A070874: A070871(n) < n.

Offset 1, canonical program `A070874.P9251368327235790021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A070874 (n : ℕ) : ℤ :=
  (A070874.P9251368327235790021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A070874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071023.P6119485440541145974

`A070909(A056943(n))`
-/

namespace A071023.P6119485440541145974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A056943 n).toNat

end

end A071023.P6119485440541145974

noncomputable section

/-- A071023: Triangle read by rows giving successive states of cellular automaton generated by "Rule 78".

Offset 0, canonical program `A071023.P6119485440541145974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071023 (n : ℕ) : ℤ :=
  A071023.P6119485440541145974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071024.P6899209022238862614

`A070909(A083920(n))`
-/

namespace A071024.P6899209022238862614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A083920 n).toNat

end

end A071024.P6899209022238862614

noncomputable section

/-- A071024: Triangle read by rows giving successive states of cellular automaton generated by "Rule 92".

Offset 0, canonical program `A071024.P6899209022238862614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071024 (n : ℕ) : ℤ :=
  A071024.P6899209022238862614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071224.P12951188151330650985

`(n+1)*A002808(n+1)/A064814(n+1)`
-/

namespace A071224.P12951188151330650985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A002808 (n + 1) : ℚ) / (A064814 (n + 1) : ℚ)

end

end A071224.P12951188151330650985

noncomputable section

/-- A071224: LCM of n and n-th composite number.

Offset 1, canonical program `A071224.P12951188151330650985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A064814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071224.P12951188151330650985.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A064814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071260.P4436838018633827743

`floor(sqrt(A067563(n+1)))`
-/

namespace A071260.P4436838018633827743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067563 (n + 1))

end

end A071260.P4436838018633827743

noncomputable section

/-- A071260: Integer part of the geometric mean of the n-th prime prime(n) and the n-th composite number C(n).

Offset 0, canonical program `A071260.P4436838018633827743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071260 (n : ℕ) : ℤ :=
  A071260.P4436838018633827743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071688.P13269881866704923199

`(A105523(n+1)+A000108(n+1))/2`
-/

namespace A071688.P13269881866704923199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105523 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A071688.P13269881866704923199

noncomputable section

/-- A071688: Number of plane trees with even number of leaves.

Offset 1, canonical program `A071688.P13269881866704923199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071688.P13269881866704923199.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071749.P11877832049882480316

`Δ[A071728(n)]-A071717(n)`
-/

namespace A071749.P11877832049882480316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071717 n

end

end A071749.P11877832049882480316

noncomputable section

/-- A071749: Expansion of (1+x^4*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071749.P11877832049882480316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071749 (n : ℕ) : ℤ :=
  A071749.P11877832049882480316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071751.P10296614711207118545

`A071748(n)-A099376(n)`
-/

namespace A071751.P10296614711207118545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n - A099376 n

end

end A071751.P10296614711207118545

noncomputable section

/-- A071751: Expansion of (1+x^4*C^3)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071751.P10296614711207118545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071751 (n : ℕ) : ℤ :=
  A071751.P10296614711207118545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071911.P14894144207853448793

`eq[0, A071412(n)]`
-/

namespace A071911.P14894144207853448793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071911.P14894144207853448793

noncomputable section

/-- A071911: Numbers m such that Stern's diatomic A002487(m) is divisible by 3.

Offset 0, canonical program `A071911.P14894144207853448793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A071911 (n : ℕ) : ℤ :=
  (A071911.P14894144207853448793.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A071911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072056.P13940639996211056336

`A000005(A072055(n+1))`
-/

namespace A072056.P13940639996211056336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072055 (n + 1)).toNat

end

end A072056.P13940639996211056336

noncomputable section

/-- A072056: Number of divisors of 2*prime(n)+1.

Offset 1, canonical program `A072056.P13940639996211056336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072056 (n : ℕ) : ℤ :=
  A072056.P13940639996211056336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072057.P2864237752006151958

`A000203(A072055(n+1))`
-/

namespace A072057.P2864237752006151958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072055 (n + 1)).toNat

end

end A072057.P2864237752006151958

noncomputable section

/-- A072057: Sum of divisors of 2*prime(n)+1.

Offset 1, canonical program `A072057.P2864237752006151958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072057 (n : ℕ) : ℤ :=
  A072057.P2864237752006151958.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072153.P15671203336583528979

`A004396(A315634(n))-A004525(3*n)`
-/

namespace A072153.P15671203336583528979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315634 n).toNat - A004525 (3 * n)

end

end A072153.P15671203336583528979

noncomputable section

/-- A072153: Coordination sequence for VPl-5 structure with respect to node (Y) where 18-gon, hexagon and square meet.

Offset 0, canonical program `A072153.P15671203336583528979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1945 terms. -/
def A072153 (n : ℕ) : ℤ :=
  A072153.P15671203336583528979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1945 terms. -/
def A072153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072476.P1718783776541712770

`∑[A038529(n+1)]`
-/

namespace A072476.P1718783776541712770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P1718783776541712770

noncomputable section

/-- A072476: Difference between the sum of first n prime numbers and the sum of first n composite numbers.

Offset 1, canonical program `A072476.P1718783776541712770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072476 (n : ℕ) : ℤ :=
  A072476.P1718783776541712770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072492.P5866814603808169309

`eq[3, A072491(n)]`
-/

namespace A072492.P5866814603808169309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072492.P5866814603808169309

noncomputable section

/-- A072492: Values of n for which A072491(n)=3.

Offset 1, canonical program `A072492.P5866814603808169309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3398 terms. -/
def A072492 (n : ℕ) : ℤ :=
  (A072492.P5866814603808169309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3398 terms. -/
def A072492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072568.P6946884247769924292

`∪[A072570(n+1), A072571(n+1)]`
-/

namespace A072568.P6946884247769924292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P6946884247769924292

noncomputable section

/-- A072568: Even interprimes.

Offset 1, canonical program `A072568.P6946884247769924292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072568 (n : ℕ) : ℤ :=
  (A072568.P6946884247769924292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072628.P15487048248922606126

`A000005(n+1)-A072627(n+1)`
-/

namespace A072628.P15487048248922606126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A072627 (n + 1)

end

end A072628.P15487048248922606126

noncomputable section

/-- A072628: Number of divisors d of n such that d-1 is not prime.

Offset 1, canonical program `A072628.P15487048248922606126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A072627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072628 (n : ℕ) : ℤ :=
  A072628.P15487048248922606126.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A072627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072681.P11367421680311934153

`A064722(n+2)*A007920(n+2)`
-/

namespace A072681.P11367421680311934153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) * A007920 (n + 2)

end

end A072681.P11367421680311934153

noncomputable section

/-- A072681: a(n) = (n - A007917(n)) * (A007918(n) - n).

Offset 2, canonical program `A072681.P11367421680311934153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, A064722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072681 (n : ℕ) : ℤ :=
  A072681.P11367421680311934153.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, A064722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072904.P2738740859369155927

`filter[A072903(n+1), A049240(#)]`
-/

namespace A072904.P2738740859369155927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072904.P2738740859369155927

noncomputable section

/-- A072904: Nonsquares m such that the discriminant of the quadratic field Q(sqrt(m)) < m.

Offset 1, canonical program `A072904.P2738740859369155927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9816 terms. -/
def A072904 (n : ℕ) : ℤ :=
  A072904.P2738740859369155927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9816 terms. -/
def A072904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073124.P4841457181950181251

`A072677(n+1)-A006450(n+1)`
-/

namespace A073124.P4841457181950181251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A006450 (n + 1)

end

end A073124.P4841457181950181251

noncomputable section

/-- A073124: a(n) = prime(1+prime(n)) - prime(prime(n)).

Offset 1, canonical program `A073124.P4841457181950181251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073124 (n : ℕ) : ℤ :=
  A073124.P4841457181950181251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073168.P7500810570419237010

`A007821(n+2)-A022449(n+2)`
-/

namespace A073168.P7500810570419237010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - A022449 (n + 2)

end

end A073168.P7500810570419237010

noncomputable section

/-- A073168: a(n) = A007821(n) - A022449(n).

Offset 1, canonical program `A073168.P7500810570419237010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073168 (n : ℕ) : ℤ :=
  A073168.P7500810570419237010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073426.P5918157491881724604

`A004737(A072668(n+1)+n²)`
-/

namespace A073426.P5918157491881724604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A072668 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A073426.P5918157491881724604

noncomputable section

/-- A073426: Number of primes between n-th prime and n-th composite or number of primes that are >=Min[prime(n),c(n)] and are < Max[prime(n),c(n)].

Offset 1, canonical program `A073426.P5918157491881724604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A073426 (n : ℕ) : ℤ :=
  A073426.P5918157491881724604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A073426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074594.P12974540694644133885

`A001221(A024619(n+1))`
-/

namespace A074594.P12974540694644133885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A024619 (n + 1)).toNat

end

end A074594.P12974540694644133885

noncomputable section

/-- A074594: Number of distinct prime factors of numbers that are not prime powers.

Offset 1, canonical program `A074594.P12974540694644133885`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074594 (n : ℕ) : ℤ :=
  A074594.P12974540694644133885.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074674.P7981779253606655807

`Δ[A074673(n+1)]`
-/

namespace A074674.P7981779253606655807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074674.P7981779253606655807

noncomputable section

/-- A074674: Differences between successive four-digit distinct-digit primes.

Offset 1, canonical program `A074674.P7981779253606655807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 509 terms. -/
def A074674 (n : ℕ) : ℤ :=
  A074674.P7981779253606655807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 509 terms. -/
def A074674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074822.P17874906260609589235

`p?[A030431(n+1)-4]`
-/

namespace A074822.P17874906260609589235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074822.P17874906260609589235

noncomputable section

/-- A074822: Primes p such that p + 4 is prime and p == 9 (mod 10).

Offset 1, canonical program `A074822.P17874906260609589235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A074822 (n : ℕ) : ℤ :=
  A074822.P17874906260609589235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A074822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074848.P16007081709838019779

`∏{e}[n+1, A194740(#)+1]`
-/

namespace A074848.P16007081709838019779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A194740 (Nat.factorization (f1 n) p) + 1)

end

end A074848.P16007081709838019779

noncomputable section

/-- A074848: Number of 4-infinitary divisors of n.

Offset 1, canonical program `A074848.P16007081709838019779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074848 (n : ℕ) : ℤ :=
  A074848.P16007081709838019779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074922.P6112303066442032603

`n*A037953(comp[2*(n+1)])`
-/

namespace A074922.P6112303066442032603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037953 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074922.P6112303066442032603

noncomputable section

/-- A074922: Number of ways of arranging n chords on a circle (handshakes between 2n people across a table) with exactly 2 simple intersections.

Offset 0, canonical program `A074922.P6112303066442032603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A074922 (n : ℕ) : ℤ :=
  A074922.P6112303066442032603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A074922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074929.P16736353383474102315

`A006094(n+1)-A078444(n+1)²`
-/

namespace A074929.P16736353383474102315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A078444 (n + 1) ^ 2

end

end A074929.P16736353383474102315

noncomputable section

/-- A074929: a(n)>0 such that p(n)*p(n+1)-a(n) is a maximal square.

Offset 1, canonical program `A074929.P16736353383474102315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074929 (n : ℕ) : ℤ :=
  A074929.P16736353383474102315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075283.P12820807251186463982

`∩[A063080(n+1), A072571(n+1)]`
-/

namespace A075283.P12820807251186463982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075283.P12820807251186463982

noncomputable section

/-- A075283: Interprimes which are of the form s*prime, s=8.

Offset 1, canonical program `A075283.P12820807251186463982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A075283 (n : ℕ) : ℤ :=
  (A075283.P12820807251186463982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A075283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075287.P9261930736193490140

`∩[2*A138636(n+1), A072570(n+1)]`
-/

namespace A075287.P9261930736193490140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075287.P9261930736193490140

noncomputable section

/-- A075287: Interprimes which are of the form s*prime, s=12.

Offset 1, canonical program `A075287.P9261930736193490140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A075287 (n : ℕ) : ℤ :=
  (A075287.P9261930736193490140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A075287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075291.P15903210363753547292

`∩[2*A063080(n+1), A072571(n+1)]`
-/

namespace A075291.P15903210363753547292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P15903210363753547292

noncomputable section

/-- A075291: Interprimes which are of the form s*prime, s=16.

Offset 1, canonical program `A075291.P15903210363753547292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A075291 (n : ℕ) : ℤ :=
  (A075291.P15903210363753547292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A075291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075892.P14339571462834104975

`A024675(n+1)²+A028334(n+2)²`
-/

namespace A075892.P14339571462834104975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) ^ 2 + A028334 (n + 2) ^ 2

end

end A075892.P14339571462834104975

noncomputable section

/-- A075892: Average of squares of successive primes: a(n) = (prime(n+1)^2 + prime(n)^2)/2, with n >= 2.

Offset 2, canonical program `A075892.P14339571462834104975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075892 (n : ℕ) : ℤ :=
  A075892.P14339571462834104975.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076236.P15465252075086350596

`A050435(n+1)%A002808(n+1)`
-/

namespace A076236.P15465252075086350596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (n + 1)) (A002808 (n + 1))

end

end A076236.P15465252075086350596

noncomputable section

/-- A076236: a(n) = A050435(n) mod A002808(n).

Offset 1, canonical program `A076236.P15465252075086350596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076236 (n : ℕ) : ℤ :=
  A076236.P15465252075086350596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076237.P11217215264667886405

`A050435(n+1)%(n+1)`
-/

namespace A076237.P11217215264667886405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (n + 1)) (n + 1 : ℤ)

end

end A076237.P11217215264667886405

noncomputable section

/-- A076237: a(n) = A050435(n) mod n.

Offset 1, canonical program `A076237.P11217215264667886405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076237 (n : ℕ) : ℤ :=
  A076237.P11217215264667886405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076361.P78704012862514364

`eq[0, A076360(n+1)]+1`
-/

namespace A076361.P78704012862514364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076361.P78704012862514364

noncomputable section

/-- A076361: Numbers k such that d(sigma(k)) = sigma(d(k)).

Offset 1, canonical program `A076361.P78704012862514364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361 (n : ℕ) : ℤ :=
  (A076361.P78704012862514364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076407.P16447474876734789034

`∑[(n+1)*A075802(n+1)]`
-/

namespace A076407.P16447474876734789034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076407.P16447474876734789034

noncomputable section

/-- A076407: Sum of perfect powers <= n.

Offset 1, canonical program `A076407.P16447474876734789034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076407 (n : ℕ) : ℤ :=
  A076407.P16447474876734789034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076471.P3211783425861885313

`∑[char[A076273(n+2)]]`
-/

namespace A076471.P3211783425861885313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P3211783425861885313

noncomputable section

/-- A076471: Number of pairs (p,q) of successive primes with p+q<=n.

Offset 1, canonical program `A076471.P3211783425861885313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076471 (n : ℕ) : ℤ :=
  (A076471.P3211783425861885313.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076752.P4228621196644119807

`∑{d}[n+1, A000005(#)*A074722((n+1)/#)]`
-/

namespace A076752.P4228621196644119807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P4228621196644119807

noncomputable section

/-- A076752: a(n) = Sum_{d is a square divisor of n} n/d.

Offset 1, canonical program `A076752.P4228621196644119807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076752 (n : ℕ) : ℤ :=
  A076752.P4228621196644119807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076882.P3937786556317545022

`A076881(n+2)-1`
-/

namespace A076882.P3937786556317545022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076881 (n + 2) - 1

end

end A076882.P3937786556317545022

noncomputable section

/-- A076882: pi(n) - ceiling(n / log(n)), where pi(n) = the number of primes <= n.

Offset 2, canonical program `A076882.P3937786556317545022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076882 (n : ℕ) : ℤ :=
  A076882.P3937786556317545022.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077012.P1073452310071073019

`A074909(n)*A098361(n)`
-/

namespace A077012.P1073452310071073019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A098361 n

end

end A077012.P1073452310071073019

noncomputable section

/-- A077012: Triangle in which n-th row contains all possible products of n-1 of the first n natural numbers in ascending order.

Offset 1, canonical program `A077012.P1073452310071073019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A077012 (n : ℕ) : ℤ :=
  A077012.P1073452310071073019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A077012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077126.P13407782285364760235

`∑[A031215(n+1)]`
-/

namespace A077126.P13407782285364760235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P13407782285364760235

noncomputable section

/-- A077126: Sum of even-indexed primes.

Offset 1, canonical program `A077126.P13407782285364760235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077126 (n : ℕ) : ℤ :=
  A077126.P13407782285364760235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078153.P11915035993394285373

`A051201(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078153.P11915035993394285373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A000203 (n + 1)

end

end A078153.P11915035993394285373

noncomputable section

/-- A078153: a(n) = A051201(n) - A000203(n).

Offset 1, canonical program `A078153.P11915035993394285373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078153 (n : ℕ) : ℤ :=
  A078153.P11915035993394285373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078153.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078161.P15379382876916595624

`A051201(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078161.P15379382876916595624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (2 ^ n)

end

end A078161.P15379382876916595624

noncomputable section

/-- A078161: a(n) = A051201(2^n).

Offset 0, canonical program `A078161.P15379382876916595624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078161 (n : ℕ) : ℤ :=
  A078161.P15379382876916595624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078162.P2737128330194667250

`A051201(n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078162.P2737128330194667250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (Nat.factorial n)

end

end A078162.P2737128330194667250

noncomputable section

/-- A078162: a(n) = A051201(n!).

Offset 0, canonical program `A078162.P2737128330194667250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078162 (n : ℕ) : ℤ :=
  A078162.P2737128330194667250.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078163.P10734314273824272191

`A051201((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078163.P10734314273824272191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 ((n + 1) ^ 2)

end

end A078163.P10734314273824272191

noncomputable section

/-- A078163: a(n) = A051201(n^2).

Offset 1, canonical program `A078163.P10734314273824272191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078163 (n : ℕ) : ℤ :=
  A078163.P10734314273824272191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078172.P693633647040685283

`A051201(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078172.P693633647040685283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A000040 (n + 1)).toNat

end

end A078172.P693633647040685283

noncomputable section

/-- A078172: a(n) = A051201(A000040(n)).

Offset 1, canonical program `A078172.P693633647040685283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078172 (n : ℕ) : ℤ :=
  A078172.P693633647040685283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078285.P17863953192826726886

`A377565(A000040(n+1))`
-/

namespace A078285.P17863953192826726886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A000040 (n + 1)).toNat

end

end A078285.P17863953192826726886

noncomputable section

/-- A078285: Least nontrivial multiple of the n-th prime beginning with 1.

Offset 1, canonical program `A078285.P17863953192826726886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078285 (n : ℕ) : ℤ :=
  A078285.P17863953192826726886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078428.P675862069735494792

`∑[A035187(n+1)]`
-/

namespace A078428.P675862069735494792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P675862069735494792

noncomputable section

/-- A078428: Partial sums of A035187.

Offset 0, canonical program `A078428.P675862069735494792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078428 (n : ℕ) : ℤ :=
  A078428.P675862069735494792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078612.P13252193627128276912

`A382097(n+1)+A048974(n+1)`
-/

namespace A078612.P13252193627128276912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1) + A048974 (n + 1)

end

end A078612.P13252193627128276912

noncomputable section

/-- A078612: Number of transitions necessary for a Turing machine to compute the differences between consecutive primes (primes written in unary), when using the instruction table below.

Offset 1, canonical program `A078612.P13252193627128276912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078612 (n : ℕ) : ℤ :=
  A078612.P13252193627128276912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079079.P8328069185297308944

`A111333(n+1)+A005097(n+1)*A130291(n+1)`
-/

namespace A079079.P8328069185297308944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A005097 (n + 1) * A130291 (n + 1)

end

end A079079.P8328069185297308944

noncomputable section

/-- A079079: a(n) = (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079079.P8328069185297308944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079079 (n : ℕ) : ℤ :=
  A079079.P8328069185297308944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079421.P9358731664964090965

`A078510(n)%2`
-/

namespace A079421.P9358731664964090965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078510 n) 2

end

end A079421.P9358731664964090965

noncomputable section

/-- A079421: Spiro-Fibonacci differences, a(n) = difference of two previous terms that are nearest when terms arranged in a spiral.

Offset 0, canonical program `A079421.P9358731664964090965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079421 (n : ℕ) : ℤ :=
  A079421.P9358731664964090965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079424.P16692156195540481726

`A162802(n+2)`
-/

namespace A079424.P16692156195540481726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162802 (n + 2)

end

end A079424.P16692156195540481726

noncomputable section

/-- A079424: A bisection of A024675. Cf. A058296.

Offset 1, canonical program `A079424.P16692156195540481726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079424 (n : ℕ) : ℤ :=
  A079424.P16692156195540481726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080584.P17484479246964496310

`A079944(A002264(n))`
-/

namespace A080584.P17484479246964496310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A002264 n).toNat

end

end A080584.P17484479246964496310

noncomputable section

/-- A080584: A run of 3*2^n 0's followed by a run of 3*2^n 1's, for n=0, 1, 2, ...

Offset 0, canonical program `A080584.P17484479246964496310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080584 (n : ℕ) : ℤ :=
  A080584.P17484479246964496310.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080586.P1986153064841671641

`1+A079944(A002264(n))`
-/

namespace A080586.P1986153064841671641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A079944 (A002264 n).toNat

end

end A080586.P1986153064841671641

noncomputable section

/-- A080586: A run of 3*2^n 1's followed by a run of 3*2^n 2's, for n=0, 1, 2, ...

Offset 0, canonical program `A080586.P1986153064841671641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080586 (n : ℕ) : ℤ :=
  A080586.P1986153064841671641.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080818.P16206206201295920908

`A068527(A127773(n+1))+A002260(n+1)`
-/

namespace A080818.P16206206201295920908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + A002260 (n + 1)

end

end A080818.P16206206201295920908

noncomputable section

/-- A080818: Triangle read by rows in which the n-th row contains n distinct numbers whose sum is the smallest square.

Offset 1, canonical program `A080818.P16206206201295920908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080818 (n : ℕ) : ℤ :=
  A080818.P16206206201295920908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080849.P14518128900101485434

`(n+1)*A080848(n+1)`
-/

namespace A080849.P14518128900101485434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080848 (n + 1)

end

end A080849.P14518128900101485434

noncomputable section

/-- A080849: a(n) = (mu(n)+2)*n^2, where mu is the Moebius function (A008683).

Offset 1, canonical program `A080849.P14518128900101485434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080849 (n : ℕ) : ℤ :=
  A080849.P14518128900101485434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081204.P12343401143930803537

`∪[A005809(n), A165817(n)]`
-/

namespace A081204.P12343401143930803537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081204.P12343401143930803537

noncomputable section

/-- A081204: Staircase on Pascal's triangle.

Offset 0, canonical program `A081204.P12343401143930803537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A081204 (n : ℕ) : ℤ :=
  (A081204.P12343401143930803537.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A081204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081289.P17307542022439683697

`A081291(A081290(n))`
-/

namespace A081289.P17307542022439683697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081291 (A081290 n).toNat

end

end A081289.P17307542022439683697

noncomputable section

/-- A081289: a(0) = 0, a(n) = A081293(A081288(n)-1).

Offset 0, canonical program `A081289.P17307542022439683697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081289 (n : ℕ) : ℤ :=
  A081289.P17307542022439683697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081672.P4891467764290445925

`A027306(n)*A036453(n+1)`
-/

namespace A081672.P4891467764290445925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n * A036453 (n + 1)

end

end A081672.P4891467764290445925

noncomputable section

/-- A081672: Expansion of exp(2x) - exp(0) + BesselI_0(2x).

Offset 0, canonical program `A081672.P4891467764290445925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672 (n : ℕ) : ℤ :=
  A081672.P4891467764290445925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081769.P1839311465366829947

`∑[3*A092910(n)-4]`
-/

namespace A081769.P1839311465366829947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A092910 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081769.P1839311465366829947

noncomputable section

/-- A081769: a(n)-th term of the continued fraction for 2*Sum_{k>=0} 1/2^(2^k) is 2.

Offset 1, canonical program `A081769.P1839311465366829947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081769 (n : ℕ) : ℤ :=
  A081769.P1839311465366829947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082462.P1976247485161842933

`A071538(A000040(n+1))`
-/

namespace A082462.P1976247485161842933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000040 (n + 1)).toNat

end

end A082462.P1976247485161842933

noncomputable section

/-- A082462: Let chi(k) = 1 if prime(k+1) - prime(k) = 2, = 0 otherwise; sequence gives a(n) = Sum_{k <= n} chi(k).

Offset 1, canonical program `A082462.P1976247485161842933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A071538, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082462 (n : ℕ) : ℤ :=
  A082462.P1976247485161842933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A071538, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082728.P8463879847482110208

`filter[A078643(n+3), A005614(#)]`
-/

namespace A082728.P8463879847482110208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A082728.P8463879847482110208

noncomputable section

/-- A082728: Numbers expressible as a sum of 2 nonzero Fibonacci numbers in exactly 1 way.

Offset 1, canonical program `A082728.P8463879847482110208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A082728 (n : ℕ) : ℤ :=
  A082728.P8463879847482110208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A082728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082851.P6825031164580738321

`∑[(A308188(n+1)-1)*a(n-1)+1]` with `a(0)=1`
-/

namespace A082851.P6825031164580738321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A308188 (n + 1) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P6825031164580738321

noncomputable section

/-- A082851: Partial sums of A082850.

Offset 1, canonical program `A082851.P6825031164580738321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082851 (n : ℕ) : ℤ :=
  A082851.P6825031164580738321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082852.P5408554968582082285

`A155587(A072643(n))-1`
-/

namespace A082852.P5408554968582082285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A072643 n).toNat - 1

end

end A082852.P5408554968582082285

noncomputable section

/-- A082852: a(0)=0, a(n) = A014137(A072643(n)-1).

Offset 0, canonical program `A082852.P5408554968582082285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852 (n : ℕ) : ℤ :=
  A082852.P5408554968582082285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082928.P3722669598215508231

`gcd(A014683(n+1), A027480(n))`
-/

namespace A082928.P3722669598215508231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A027480 n)

end

end A082928.P3722669598215508231

noncomputable section

/-- A082928: If n is prime, a(n) = n+1; if n is even, a(n) = n/2; otherwise a(n) = n.

Offset 1, canonical program `A082928.P3722669598215508231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082928 (n : ℕ) : ℤ :=
  (A082928.P3722669598215508231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083038.P4826268886601187542

`abs(∑[A083037(n+1)])`
-/

namespace A083038.P4826268886601187542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A083038.P4826268886601187542

noncomputable section

/-- A083038: A fractal sequence.

Offset 1, canonical program `A083038.P4826268886601187542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083038 (n : ℕ) : ℤ :=
  A083038.P4826268886601187542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083273.P10952218317192786139

`A080374(n+1)/A001223(n+1)`
-/

namespace A083273.P10952218317192786139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A083273.P10952218317192786139

noncomputable section

/-- A083273: a(n) is the quotient of lcm of first n consecutive prime differences and A001223(n), the n-th difference between consecutive primes.

Offset 1, canonical program `A083273.P10952218317192786139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083273.P10952218317192786139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083399.P16148020281325742632

`A000005(n+1)-A055212(n+1)`
-/

namespace A083399.P16148020281325742632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A055212 (n + 1)

end

end A083399.P16148020281325742632

noncomputable section

/-- A083399: Number of divisors of n that are not divisors of other divisors of n.

Offset 1, canonical program `A083399.P16148020281325742632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083399 (n : ℕ) : ℤ :=
  A083399.P16148020281325742632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083552.P3447721149402971387

`A083551(n+1)/A057467(n+1)`
-/

namespace A083552.P3447721149402971387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A083552.P3447721149402971387

noncomputable section

/-- A083552: Quotient when LCM of 2 consecutive prime differences is divided by GCD of the same two differences.

Offset 1, canonical program `A083552.P3447721149402971387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057467, A083551, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083552.P3447721149402971387.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057467, A083551, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083558.P13428316401202771703

`A000040(n+1)*A119959(n+1)`
-/

namespace A083558.P13428316401202771703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A119959 (n + 1)

end

end A083558.P13428316401202771703

noncomputable section

/-- A083558: p(p^2-p+1) as p runs through the primes.

Offset 1, canonical program `A083558.P13428316401202771703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A119959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083558 (n : ℕ) : ℤ :=
  A083558.P13428316401202771703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A119959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083905.P6777605636858218612

`A030300(n+1)-A065359(n+1)`
-/

namespace A083905.P6777605636858218612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (n + 1) - A065359 (n + 1)

end

end A083905.P6777605636858218612

noncomputable section

/-- A083905: G.f.: 1/(1-x) * sum(k>=0, (-1)^k*x^2^(k+1)/(1+x^2^k)).

Offset 1, canonical program `A083905.P6777605636858218612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083905 (n : ℕ) : ℤ :=
  A083905.P6777605636858218612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084196.P3907743680021484046

`A072627(A008864(n+1))-1`
-/

namespace A084196.P3907743680021484046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A008864 (n + 1)).toNat - 1

end

end A084196.P3907743680021484046

noncomputable section

/-- A084196: Number of primes q

Offset 1, canonical program `A084196.P3907743680021484046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A084196 (n : ℕ) : ℤ :=
  A084196.P3907743680021484046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A084196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084771.P4193283616547471538

`Δ[n*A162326(n)]`
-/

namespace A084771.P4193283616547471538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084771.P4193283616547471538

noncomputable section

/-- A084771: Coefficients of expansion of 1/sqrt(1 - 10*x + 9*x^2); also, a(n) is the central coefficient of (1 + 5*x + 4*x^2)^n.

Offset 0, canonical program `A084771.P4193283616547471538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A084771 (n : ℕ) : ℤ :=
  A084771.P4193283616547471538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A084771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085414.P12443412934305902750

`∩[A077652(n+1), A227919(n+1)]`
-/

namespace A085414.P12443412934305902750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085414.P12443412934305902750

noncomputable section

/-- A085414: Primes that are a concatenation of a prime and its first digit.

Offset 1, canonical program `A085414.P12443412934305902750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085414 (n : ℕ) : ℤ :=
  (A085414.P12443412934305902750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085949.P14222808602695038026

`A109805(n+1)/A057467(n+1)`
-/

namespace A085949.P14222808602695038026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A085949.P14222808602695038026

noncomputable section

/-- A085949: Smallest multiple of prime(n) of the form r*prime(n-1) + s*prime(n+1) with r and s positive integers.

Offset 2, canonical program `A085949.P14222808602695038026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085949.P14222808602695038026.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086222.P1188365077820885668

`A086165(n+1)+A048691(n+1)`
-/

namespace A086222.P1188365077820885668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A048691 (n + 1)

end

end A086222.P1188365077820885668

noncomputable section

/-- A086222: a(n) = card{ (x,y,z) | x <= y <= z and lcm(x,y,z) = n }.

Offset 1, canonical program `A086222.P1188365077820885668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A086165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086222 (n : ℕ) : ℤ :=
  A086222.P1188365077820885668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A086165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087118.P15285861938204290638

`eq[A087734(n), A135481(n)]`
-/

namespace A087118.P15285861938204290638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P15285861938204290638

noncomputable section

/-- A087118: Numbers having exactly one maximal group of consecutive zeros in binary representation of n.

Offset 1, canonical program `A087118.P15285861938204290638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A087118 (n : ℕ) : ℤ :=
  (A087118.P15285861938204290638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A087118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087165.P6335515186169840550

`4+A244041(4*n)-A244041(4*(n+1))`
-/

namespace A087165.P6335515186169840550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A244041 (4 * n) - A244041 (4 * (n + 1))

end

end A087165.P6335515186169840550

noncomputable section

/-- A087165: a(n)=1 when n == 1 (mod 4), otherwise a(n) = a(n - ceiling(n/4)) + 1. Removing all the 1's results in the original sequence with every term incremented by 1.

Offset 1, canonical program `A087165.P6335515186169840550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087165 (n : ℕ) : ℤ :=
  A087165.P6335515186169840550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087748.P14719700054015883806

`A098158(n)%2`
-/

namespace A087748.P14719700054015883806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098158 n) 2

end

end A087748.P14719700054015883806

noncomputable section

/-- A087748: Triangle formed by reading triangle of Stirling numbers of the first kind (A048994) mod 2.

Offset 0, canonical program `A087748.P14719700054015883806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087748 (n : ℕ) : ℤ :=
  A087748.P14719700054015883806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087755.P10889702025143067399

`A098157(n)%2`
-/

namespace A087755.P10889702025143067399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098157 n) 2

end

end A087755.P10889702025143067399

noncomputable section

/-- A087755: Triangle read by rows: Stirling numbers of the first kind (A008275) mod 2.

Offset 1, canonical program `A087755.P10889702025143067399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087755 (n : ℕ) : ℤ :=
  A087755.P10889702025143067399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087781.P18092569315473088163

`∑{d}[n+1, A035187(#)*A271102((n+1)/#)]`
-/

namespace A087781.P18092569315473088163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087781.P18092569315473088163

noncomputable section

/-- A087781: Number of non-congruent solutions to x^2 - x - 1 == 0 mod n.

Offset 1, canonical program `A087781.P18092569315473088163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087781 (n : ℕ) : ℤ :=
  A087781.P18092569315473088163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088018.P1872163237001237444

`A071538(2*A028310(n))-A071538(A028310(n))`
-/

namespace A088018.P1872163237001237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (2 * A028310 n).toNat - A071538 (A028310 n).toNat

end

end A088018.P1872163237001237444

noncomputable section

/-- A088018: Number of twin-prime pairs between n and 2n (inclusive).

Offset 1, canonical program `A088018.P1872163237001237444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088018 (n : ℕ) : ℤ :=
  A088018.P1872163237001237444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088682.P16408597995929489488

`A031377(n+2)-A031369(n+1)`
-/

namespace A088682.P16408597995929489488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 2) - A031369 (n + 1)

end

end A088682.P16408597995929489488

noncomputable section

/-- A088682: a(n) = prime(3*n+1) - prime(3*n-1).

Offset 1, canonical program `A088682.P16408597995929489488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088682 (n : ℕ) : ℤ :=
  A088682.P16408597995929489488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088764.P11806142455434414841

`(A087680(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088764.P11806142455434414841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087680 (n + 1) - 1 : ℚ) / 2

end

end A088764.P11806142455434414841

noncomputable section

/-- A088764: a(n) = (A087680(n)-1)/2.

Offset 1, canonical program `A088764.P11806142455434414841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088764.P11806142455434414841.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089038.P1158643592573954498

`A161720(n+3)+1`
-/

namespace A089038.P1158643592573954498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + 1

end

end A089038.P1158643592573954498

noncomputable section

/-- A089038: Nonnegative numbers k such that 2k+5 is prime.

Offset 1, canonical program `A089038.P1158643592573954498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089038 (n : ℕ) : ℤ :=
  A089038.P1158643592573954498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089311.P16370938375623616626

`A089310(A261693(n))`
-/

namespace A089311.P16370938375623616626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A261693 n).toNat

end

end A089311.P16370938375623616626

noncomputable section

/-- A089311: Write n in binary; a(n) = number of 0's in rightmost block of zeros, after dropping any trailing 0's.

Offset 0, canonical program `A089311.P16370938375623616626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089311 (n : ℕ) : ℤ :=
  A089311.P16370938375623616626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089820.P16018739911247489937

`2^(n+1)-A089819(n+1)`
-/

namespace A089820.P16018739911247489937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A089819 (n + 1)

end

end A089820.P16018739911247489937

noncomputable section

/-- A089820: Number of subsets of {1,..,n} containing at least one prime.

Offset 1, canonical program `A089820.P16018739911247489937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089820 (n : ℕ) : ℤ :=
  A089820.P16018739911247489937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089822.P4169949727800120308

`A000217(A033270(n+1))*A089819(n+1)`
-/

namespace A089822.P4169949727800120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033270 (n + 1)).toNat * A089819 (n + 1)

end

end A089822.P4169949727800120308

noncomputable section

/-- A089822: Number of subsets of {1,.., n} containing exactly two primes.

Offset 1, canonical program `A089822.P4169949727800120308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A089822 (n : ℕ) : ℤ :=
  A089822.P4169949727800120308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A089822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090076.P14041092475761084439

`A205955(n+1)+A006094(n+1)`
-/

namespace A090076.P14041092475761084439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205955 (n + 1) + A006094 (n + 1)

end

end A090076.P14041092475761084439

noncomputable section

/-- A090076: a(n) = prime(n)*prime(n+2).

Offset 1, canonical program `A090076.P14041092475761084439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090076 (n : ℕ) : ℤ :=
  A090076.P14041092475761084439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090192.P1518387728064855857

`A000038(n)-A105523(n)`
-/

namespace A090192.P1518387728064855857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A105523 n

end

end A090192.P1518387728064855857

noncomputable section

/-- A090192: Carlitz-Riordan q-Catalan numbers (recurrence version) for q = -1.

Offset 0, canonical program `A090192.P1518387728064855857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192 (n : ℕ) : ℤ :=
  A090192.P1518387728064855857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090412.P5090535877680576514

`(3*a(n-1)-A105523(n))/2` with `a(0)=1`
-/

namespace A090412.P5090535877680576514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * a (n - 1) - (A105523 n : ℚ)) / 2

end

end A090412.P5090535877680576514

noncomputable section

/-- A090412: A Chebyshev transform of 2^n.

Offset 0, canonical program `A090412.P5090535877680576514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A090412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090412.P5090535877680576514.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A090412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090433.P5899068372481364331

`A000040(A154311(n+1))`
-/

namespace A090433.P5899068372481364331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154311 (n + 1)).toNat

end

end A090433.P5899068372481364331

noncomputable section

/-- A090433: Primes p(k) having a smaller sum of digits than k.

Offset 1, canonical program `A090433.P5899068372481364331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090433 (n : ℕ) : ℤ :=
  A090433.P5899068372481364331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090802.P9470819191447258427

`A008279(n)*A130321(n)`
-/

namespace A090802.P9470819191447258427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A130321 n

end

end A090802.P9470819191447258427

noncomputable section

/-- A090802: Triangle read by rows: a(n,k) = number of k-length walks in the Hasse diagram of a Boolean algebra of order n.

Offset 0, canonical program `A090802.P9470819191447258427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A090802 (n : ℕ) : ℤ :=
  A090802.P9470819191447258427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A090802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091050.P13434770891422209589

`∑{d}[n+1, A075802(#)]`
-/

namespace A091050.P13434770891422209589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A075802 d

end

end A091050.P13434770891422209589

noncomputable section

/-- A091050: Number of divisors of n that are perfect powers.

Offset 1, canonical program `A091050.P13434770891422209589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050 (n : ℕ) : ℤ :=
  A091050.P13434770891422209589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091051.P295852673504000466

`∑{d}[n+1, #*A075802(#)]`
-/

namespace A091051.P295852673504000466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 d

end

end A091051.P295852673504000466

noncomputable section

/-- A091051: Sum of divisors of n that are perfect powers.

Offset 1, canonical program `A091051.P295852673504000466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051 (n : ℕ) : ℤ :=
  A091051.P295852673504000466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091154.P3915821087696335756

`A002596(n)/(2*n+1)*A056617(n)`
-/

namespace A091154.P3915821087696335756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n : ℚ) / (2 * n + 1 : ℚ) * (A056617 n : ℚ)

end

end A091154.P3915821087696335756

noncomputable section

/-- A091154: Numerator of Maclaurin expansion of (t*sqrt(t^2+1) + arcsinh(t))/2, the arc length of Archimedes' spiral.

Offset 1, canonical program `A091154.P3915821087696335756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A091154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091154.P3915821087696335756.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A091154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000360.P16123140622544761321

`A002487(1+n)-A284556(1+n)`
-/

namespace A000360.P16123140622544761321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + n) - A284556 (1 + n)

end

end A000360.P16123140622544761321

noncomputable section

/-- A000360: Distribution of nonempty triangles inside a fractal rep-4-tile.

Offset 0, canonical program `A000360.P16123140622544761321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000360 (n : ℕ) : ℤ :=
  A000360.P16123140622544761321.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002175.P12639420198237532064

`A008441(3*n)`
-/

namespace A002175.P12639420198237532064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (3 * n)

end

end A002175.P12639420198237532064

noncomputable section

/-- A002175: Excess of number of divisors of 12n+1 of form 4k+1 over those of form 4k+3.

Offset 0, canonical program `A002175.P12639420198237532064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002175 (n : ℕ) : ℤ :=
  A002175.P12639420198237532064.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002420.P5682305404914460292

`A036453(n+1)*A115140(n)`
-/

namespace A002420.P5682305404914460292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A115140 n

end

end A002420.P5682305404914460292

noncomputable section

/-- A002420: Expansion of sqrt(1 - 4*x) in powers of x.

Offset 0, canonical program `A002420.P5682305404914460292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A002420 (n : ℕ) : ℤ :=
  A002420.P5682305404914460292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A002420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003256.P16678740995948322813

`A003623(n+1)-A003247(A000201(n+1))`
-/

namespace A003256.P16678740995948322813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - A003247 (A000201 (n + 1)).toNat

end

end A003256.P16678740995948322813

noncomputable section

/-- A003256: a(n) is the number m such that A242094(m) = A001950(n).

Offset 1, canonical program `A003256.P16678740995948322813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A003256 (n : ℕ) : ℤ :=
  A003256.P16678740995948322813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A003256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003617.P3664545779481022082

`A151800(A011557(n))`
-/

namespace A003617.P3664545779481022082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A011557 n).toNat

end

end A003617.P3664545779481022082

noncomputable section

/-- A003617: Smallest n-digit prime.

Offset 1, canonical program `A003617.P3664545779481022082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003617 (n : ℕ) : ℤ :=
  A003617.P3664545779481022082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004020.P12808183263529079992

`2*A008441(n)`
-/

namespace A004020.P12808183263529079992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008441 n

end

end A004020.P12808183263529079992

noncomputable section

/-- A004020: Theta series of square lattice with respect to edge.

Offset 0, canonical program `A004020.P12808183263529079992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004020 (n : ℕ) : ℤ :=
  A004020.P12808183263529079992.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004332.P15868963250475042287

`(n+1)/5*A196678(n+1)`
-/

namespace A004332.P15868963250475042287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5 * (A196678 (n + 1) : ℚ)

end

end A004332.P15868963250475042287

noncomputable section

/-- A004332: a(n) = C(4n,n-2).

Offset 2, canonical program `A004332.P15868963250475042287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A004332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004332.P15868963250475042287.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A004332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004333.P9850098452004335521

`A119304(eq[4, A002262(n)])`
-/

namespace A004333.P9850098452004335521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004333.P9850098452004335521

noncomputable section

/-- A004333: Binomial coefficient C(4n,n-3).

Offset 3, canonical program `A004333.P9850098452004335521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004333 (n : ℕ) : ℤ :=
  A004333.P9850098452004335521.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004429.P14034330055574467056

`A000194(A001511(n²+1))*A000194(A111707(n))`
-/

namespace A004429.P14034330055574467056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A001511 (n ^ 2 + 1)).toNat * A000194 (A111707 n).toNat

end

end A004429.P14034330055574467056

noncomputable section

/-- A004429: Geometric mean of digits of n (rounded to nearest integer).

Offset 0, canonical program `A004429.P14034330055574467056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004429 (n : ℕ) : ℤ :=
  A004429.P14034330055574467056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004431.P13089136488273060828

`eq[1, A353814(n+1)]+1`
-/

namespace A004431.P13089136488273060828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004431.P13089136488273060828

noncomputable section

/-- A004431: Numbers that are the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004431.P13089136488273060828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431 (n : ℕ) : ℤ :=
  (A004431.P13089136488273060828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005508.P2090669877977170398

`A026008(n+2)-A026021(n)`
-/

namespace A005508.P2090669877977170398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (n + 2) - A026021 n

end

end A005508.P2090669877977170398

noncomputable section

/-- A005508: Number of unrooted triangulations with reflection symmetry of a disk with one internal node and n+3 nodes on the boundary.

Offset 0, canonical program `A005508.P2090669877977170398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A005508 (n : ℕ) : ℤ :=
  A005508.P2090669877977170398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A005508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005513.P10771624203458813298

`(A294085(n)+A037240(n))/2`
-/

namespace A005513.P10771624203458813298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294085 n + A037240 n : ℚ) / 2

end

end A005513.P10771624203458813298

noncomputable section

/-- A005513: Number of n-bead bracelets (turnover necklaces) of two colors with 6 red beads and n-6 black beads.

Offset 6, canonical program `A005513.P10771624203458813298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005513.P10771624203458813298.a (n - 6))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005882.P16544228379664512821

`A033685(3*n+1)`
-/

namespace A005882.P16544228379664512821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (3 * n + 1)

end

end A005882.P16544228379664512821

noncomputable section

/-- A005882: Theta series of planar hexagonal lattice (A2) with respect to deep hole.

Offset 0, canonical program `A005882.P16544228379664512821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033685, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005882 (n : ℕ) : ℤ :=
  A005882.P16544228379664512821.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033685, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005883.P3734216093274140482

`4*A008441(n)`
-/

namespace A005883.P3734216093274140482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 n

end

end A005883.P3734216093274140482

noncomputable section

/-- A005883: Theta series of square lattice with respect to deep hole.

Offset 0, canonical program `A005883.P3734216093274140482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005883 (n : ℕ) : ℤ :=
  A005883.P3734216093274140482.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006466.P13063757461679902126

`∏{e}[Δ[A076216(A028310(n))]², #]`
-/

namespace A006466.P13063757461679902126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076216 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A006466.P13063757461679902126

noncomputable section

/-- A006466: Continued fraction expansion of C = 2*Sum_{n>=0} 1/2^(2^n).

Offset 0, canonical program `A006466.P13063757461679902126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006466 (n : ℕ) : ℤ :=
  (A006466.P13063757461679902126.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006586.P15091628275662653035

`A095374(n+1)+A077025(n+1)`
-/

namespace A006586.P15091628275662653035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 1) + A077025 (n + 1)

end

end A006586.P15091628275662653035

noncomputable section

/-- A006586: a(n) = Sum_{k=1..n} floor((2*n-1)/(2*k+1)).

Offset 2, canonical program `A006586.P15091628275662653035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006586 (n : ℕ) : ℤ :=
  A006586.P15091628275662653035.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006633.P1750214595423413622

`(n+1)*A000260(n+1)`
-/

namespace A006633.P1750214595423413622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000260 (n + 1)

end

end A006633.P1750214595423413622

noncomputable section

/-- A006633: Expansion of hypergeom([3/2, 7/4, 2, 9/4], [7/3, 8/3, 3], (256/27)*x).

Offset 0, canonical program `A006633.P1750214595423413622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006633 (n : ℕ) : ℤ :=
  A006633.P1750214595423413622.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006634.P16062171049094468116

`A002293(n+2)-A000260(n+2)`
-/

namespace A006634.P16062171049094468116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 2) - A000260 (n + 2)

end

end A006634.P16062171049094468116

noncomputable section

/-- A006634: a(n) = 3*binomial(4*n+8, n)/(n+3).

Offset 0, canonical program `A006634.P16062171049094468116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A006634 (n : ℕ) : ℤ :=
  A006634.P16062171049094468116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A006634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007431.P16849793818733668455

`∑{d}[n, A007432(#)]`
-/

namespace A007431.P16849793818733668455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d

end

end A007431.P16849793818733668455

noncomputable section

/-- A007431: a(n) = Sum_{d|n} phi(d)*mu(n/d).

Offset 0, canonical program `A007431.P16849793818733668455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007431 (n : ℕ) : ℤ :=
  A007431.P16849793818733668455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007433.P17123779711710309047

`∑{d}[n+1, A001157(#)]`
-/

namespace A007433.P17123779711710309047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d

end

end A007433.P17123779711710309047

noncomputable section

/-- A007433: Inverse Moebius transform applied twice to squares.

Offset 1, canonical program `A007433.P17123779711710309047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007433 (n : ℕ) : ℤ :=
  A007433.P17123779711710309047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007437.P4259273858504125532

`1/2*(A000203(n+1)+A001157(n+1))`
-/

namespace A007437.P4259273858504125532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000203 (n + 1) + A001157 (n + 1) : ℚ)

end

end A007437.P4259273858504125532

noncomputable section

/-- A007437: Inverse Moebius transform of triangular numbers.

Offset 1, canonical program `A007437.P4259273858504125532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007437.P4259273858504125532.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007437.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008493.P15021164243418089667

`A000582(n+9)+A008503(n)-A008492(n)`
-/

namespace A008493.P15021164243418089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A008503 n - A008492 n)

end

end A008493.P15021164243418089667

noncomputable section

/-- A008493: Expansion of (1-x^11) / (1-x)^11.

Offset 0, canonical program `A008493.P15021164243418089667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493 (n : ℕ) : ℤ :=
  A008493.P15021164243418089667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008846.P8671149939260561417

`filter[A008784(n+2), A187074(#)]`
-/

namespace A008846.P8671149939260561417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A008846.P8671149939260561417

noncomputable section

/-- A008846: Hypotenuses of primitive Pythagorean triangles.

Offset 1, canonical program `A008846.P8671149939260561417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A008846 (n : ℕ) : ℤ :=
  A008846.P8671149939260561417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A008846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011681.P13883477490797957766

`A011684(A033627(n+1))`
-/

namespace A011681.P13883477490797957766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011684 (A033627 (n + 1)).toNat

end

end A011681.P13883477490797957766

noncomputable section

/-- A011681: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^3+x^2+x+1.

Offset 0, canonical program `A011681.P13883477490797957766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A011681 (n : ℕ) : ℤ :=
  A011681.P13883477490797957766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A011681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013600.P6360817973615106358

`A063766(n)-6^n`
-/

namespace A013600.P6360817973615106358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063766 n - (6 ^ n : ℤ)

end

end A013600.P6360817973615106358

noncomputable section

/-- A013600: a(n) = nextprime(6^n)-6^n.

Offset 0, canonical program `A013600.P6360817973615106358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013600 (n : ℕ) : ℤ :=
  A013600.P6360817973615106358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013634.P1496314925931275042

`A151800(n)+n`
-/

namespace A013634.P1496314925931275042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + (n : ℤ)

end

end A013634.P1496314925931275042

noncomputable section

/-- A013634: a(n) = nextprime(n) + n.

Offset 0, canonical program `A013634.P1496314925931275042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013634 (n : ℕ) : ℤ :=
  A013634.P1496314925931275042.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014211.P17006346503809986776

`A104081(n)+A000038(A008611(n))`
-/

namespace A014211.P17006346503809986776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n + A000038 (A008611 n).toNat

end

end A014211.P17006346503809986776

noncomputable section

/-- A014211: Next prime after 3^n.

Offset 0, canonical program `A014211.P17006346503809986776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014211 (n : ℕ) : ℤ :=
  A014211.P17006346503809986776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014567.P6675992213739059239

`eq[1, A325964(n+1)]+1`
-/

namespace A014567.P6675992213739059239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P6675992213739059239

noncomputable section

/-- A014567: Numbers k such that k and sigma(k) are relatively prime, where sigma(k) = sum of divisors of k (A000203).

Offset 1, canonical program `A014567.P6675992213739059239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567 (n : ℕ) : ℤ :=
  (A014567.P6675992213739059239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014684.P14857736222881351984

`A005171(n+1)+n`
-/

namespace A014684.P14857736222881351984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (n : ℤ)

end

end A014684.P14857736222881351984

noncomputable section

/-- A014684: In the sequence of positive integers subtract 1 from each prime number.

Offset 1, canonical program `A014684.P14857736222881351984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014684 (n : ℕ) : ℤ :=
  A014684.P14857736222881351984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014688.P4990984272387159238

`A090178(n+2)-1`
-/

namespace A014688.P4990984272387159238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 2) - 1

end

end A014688.P4990984272387159238

noncomputable section

/-- A014688: a(n) = n-th prime + n.

Offset 1, canonical program `A014688.P4990984272387159238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014688 (n : ℕ) : ℤ :=
  A014688.P4990984272387159238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014688.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018122.P2107038045910433194

`A018120(n)+A011558(n)`
-/

namespace A018122.P2107038045910433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018120 n + A011558 n

end

end A018122.P2107038045910433194

noncomputable section

/-- A018122: Powers of fifth root of 3 rounded up.

Offset 0, canonical program `A018122.P2107038045910433194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018122 (n : ℕ) : ℤ :=
  A018122.P2107038045910433194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019551.P12101301121661445223

`A248038(n+1)/3+2*(n+1)`
-/

namespace A019551.P12101301121661445223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248038 (n + 1) : ℚ) / 3 + (2 * (n + 1) : ℚ)

end

end A019551.P12101301121661445223

noncomputable section

/-- A019551: a(n) is the concatenation of n and 3n.

Offset 1, canonical program `A019551.P12101301121661445223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019551.P12101301121661445223.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020478.P13030858516864996585

`(n+1)*A069097(n+1)`
-/

namespace A020478.P13030858516864996585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069097 (n + 1)

end

end A020478.P13030858516864996585

noncomputable section

/-- A020478: Number of singular 2 X 2 matrices over Z(n) (i.e., with determinant = 0).

Offset 1, canonical program `A020478.P13030858516864996585`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020478 (n : ℕ) : ℤ :=
  A020478.P13030858516864996585.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020888.P7815334307482986800

`∑[char[∑[A068068(n+1)]]]+1`
-/

namespace A020888.P7815334307482986800
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A020888.P7815334307482986800

noncomputable section

/-- A020888: Ordered set of (a + b - c)/2 as (a,b,c) runs through all primitive Pythagorean triples with a

Offset 1, canonical program `A020888.P7815334307482986800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020888 (n : ℕ) : ℤ :=
  (A020888.P7815334307482986800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020934.P7643348161234849820

`A099801(A076274(n+2))`
-/

namespace A020934.P7643348161234849820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A076274 (n + 2)).toNat

end

end A020934.P7643348161234849820

noncomputable section

/-- A020934: Greatest k such that (k-th prime) < (4 times n-th prime).

Offset 1, canonical program `A020934.P7643348161234849820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A020934 (n : ℕ) : ℤ :=
  A020934.P7643348161234849820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A020934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022822.P11183532390283054040

`∑[Δ[A339918(n+1)]-2]`
-/

namespace A022822.P11183532390283054040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022822.P11183532390283054040

noncomputable section

/-- A022822: a(n) = [ (n+2)/(n-1) ] + [ (n+4)/(n-2) ] + ... + [ (3n-2)/1 ].

Offset 2, canonical program `A022822.P11183532390283054040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022822 (n : ℕ) : ℤ :=
  A022822.P11183532390283054040.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023208.P15659647281431019452

`floor(A094524(n+1)/3)`
-/

namespace A023208.P15659647281431019452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094524 (n + 1) : ℚ) / 3⌋

end

end A023208.P15659647281431019452

noncomputable section

/-- A023208: Primes p such that 3*p + 2 is also prime.

Offset 1, canonical program `A023208.P15659647281431019452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023208 (n : ℕ) : ℤ :=
  A023208.P15659647281431019452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023281.P8211061823659445661

`∩[A023250(n+1), A127580(n+1)]`
-/

namespace A023281.P8211061823659445661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023281.P8211061823659445661

noncomputable section

/-- A023281: Primes that remain prime through 3 iterations of function f(x) = 4x + 3.

Offset 1, canonical program `A023281.P8211061823659445661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023281 (n : ℕ) : ℤ :=
  (A023281.P8211061823659445661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023582.P9742730044850618795

`A001221(A076274(n+2))`
-/

namespace A023582.P9742730044850618795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076274 (n + 2)).toNat

end

end A023582.P9742730044850618795

noncomputable section

/-- A023582: Number of distinct prime divisors of 2*prime(n)-1.

Offset 1, canonical program `A023582.P9742730044850618795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023582 (n : ℕ) : ℤ :=
  A023582.P9742730044850618795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023584.P17412108272901523238

`A051903(A076274(n+2))`
-/

namespace A023584.P17412108272901523238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A076274 (n + 2)).toNat

end

end A023584.P17412108272901523238

noncomputable section

/-- A023584: Greatest exponent in prime-power factorization of 2*p(n)-1.

Offset 1, canonical program `A023584.P17412108272901523238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023584 (n : ℕ) : ℤ :=
  A023584.P17412108272901523238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A023584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023591.P7298037230346281186

`A051903(A072055(n+1))`
-/

namespace A023591.P7298037230346281186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A072055 (n + 1)).toNat

end

end A023591.P7298037230346281186

noncomputable section

/-- A023591: Greatest exponent in prime-power factorization of 2*prime(n)+1.

Offset 1, canonical program `A023591.P7298037230346281186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023591 (n : ℕ) : ℤ :=
  A023591.P7298037230346281186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023708.P16351005740160143642

`eq[3, A160380(n)]`
-/

namespace A023708.P16351005740160143642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023708.P16351005740160143642

noncomputable section

/-- A023708: Numbers with exactly 3 0's in their base 4 expansion.

Offset 1, canonical program `A023708.P16351005740160143642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A023708 (n : ℕ) : ℤ :=
  (A023708.P16351005740160143642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A023708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024361.P1146025692209475519

`A004526(abs(A317528(n+1)))`
-/

namespace A024361.P1146025692209475519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A317528 (n + 1)|.toNat

end

end A024361.P1146025692209475519

noncomputable section

/-- A024361: Number of primitive Pythagorean triangles with leg n.

Offset 1, canonical program `A024361.P1146025692209475519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024361 (n : ℕ) : ℤ :=
  A024361.P1146025692209475519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024549.P15398664414193032257

`∑[A024548(n+1)]`
-/

namespace A024549.P15398664414193032257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024549.P15398664414193032257

noncomputable section

/-- A024549: Sum of [ 1/{k*sqrt(3)} ], k = 1,2,...,n, where {x} := x - [ x ].

Offset 1, canonical program `A024549.P15398664414193032257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024549 (n : ℕ) : ℤ :=
  A024549.P15398664414193032257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025303.P15711616276104886077

`eq[2, A004526(A125061(n))]`
-/

namespace A025303.P15711616276104886077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P15711616276104886077

noncomputable section

/-- A025303: Numbers that are the sum of 2 distinct nonzero squares in exactly 2 ways.

Offset 1, canonical program `A025303.P15711616276104886077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A025303 (n : ℕ) : ℤ :=
  (A025303.P15711616276104886077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A025303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025615.P14668085945350379624

`3^A025643(n+1)*8^A025672(n+1)`
-/

namespace A025615.P14668085945350379624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025643 (n + 1) : ℤ) * (8 : ℚ) ^ (A025672 (n + 1) : ℤ)

end

end A025615.P14668085945350379624

noncomputable section

/-- A025615: Numbers of form 3^i*8^j, with i, j >= 0.

Offset 1, canonical program `A025615.P14668085945350379624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025643, A025672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025615.P14668085945350379624.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025643, A025672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026169.P10383142877277565433

`(A057427(n)+1)*A026138(A028310(n))`
-/

namespace A026169.P10383142877277565433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A026138 (A028310 n).toNat

end

end A026169.P10383142877277565433

noncomputable section

/-- A026169: a(n) = s(k), where k is the n-th number k such that s(j)

Offset 1, canonical program `A026169.P10383142877277565433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026169 (n : ℕ) : ℤ :=
  A026169.P10383142877277565433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026224.P5311099254236011223

`A057428(n)+A026228(n+1)`
-/

namespace A026224.P5311099254236011223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A026228 (n + 1)

end

end A026224.P5311099254236011223

noncomputable section

/-- A026224: Numbers n such that t(n) = s(n) + 1, where s = A026136, t = A026142.

Offset 1, canonical program `A026224.P5311099254236011223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026224 (n : ℕ) : ℤ :=
  A026224.P5311099254236011223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026231.P13603207205108125394

`3*A026232(n+1)-1`
-/

namespace A026231.P13603207205108125394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026232 (n + 1) - 1

end

end A026231.P13603207205108125394

noncomputable section

/-- A026231: Numbers k such that A026166(k) = A026142(k) + 1.

Offset 1, canonical program `A026231.P13603207205108125394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026231 (n : ℕ) : ℤ :=
  A026231.P13603207205108125394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026269.P3901397121172539667

`record[Δ[A105695(A008612(n))]]`
-/

namespace A026269.P3901397121172539667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026269.P3901397121172539667

noncomputable section

/-- A026269: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0 = s(n), s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also a(n) = T(n,n) and a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is array in A026268.

Offset 2, canonical program `A026269.P3901397121172539667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026269 (n : ℕ) : ℤ :=
  A026269.P3901397121172539667.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027847.P15543816742427511378

`∑{d}[n+1, #*A001157(#)]`
-/

namespace A027847.P15543816742427511378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001157 d

end

end A027847.P15543816742427511378

noncomputable section

/-- A027847: a(n) = Sum_{d|n} sigma(n/d)*d^3.

Offset 1, canonical program `A027847.P15543816742427511378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027847 (n : ℕ) : ℤ :=
  A027847.P15543816742427511378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029224.P11078861318480278839

`A029357(abs(2-n))+A029357(n)`
-/

namespace A029224.P11078861318480278839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 |2 - (n : ℤ)|.toNat + A029357 n

end

end A029224.P11078861318480278839

noncomputable section

/-- A029224: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029224.P11078861318480278839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029224 (n : ℕ) : ℤ :=
  A029224.P11078861318480278839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029664.P8303718336109731663

`A029662(eq[1, A029662(n)%2])`
-/

namespace A029664.P8303718336109731663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029662 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029664.P8303718336109731663

noncomputable section

/-- A029664: Odd numbers to the left of the central elements of the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029664.P8303718336109731663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A029664 (n : ℕ) : ℤ :=
  A029664.P8303718336109731663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A029664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029667.P12356662964523118376

`A029629(n)-A014463(n+1)`
-/

namespace A029667.P12356662964523118376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029629 n - A014463 (n + 1)

end

end A029667.P12356662964523118376

noncomputable section

/-- A029667: Numbers to the left of the central elements of the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029667.P12356662964523118376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029667 (n : ℕ) : ℤ :=
  A029667.P12356662964523118376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030013.P3659823557313004055

`∑{d}[n+1, A007427(#)*A030014((n+1)/#)]`
-/

namespace A030013.P3659823557313004055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030013.P3659823557313004055

noncomputable section

/-- A030013: Moebius transform of {1, primes}.

Offset 1, canonical program `A030013.P3659823557313004055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030013 (n : ℕ) : ℤ :=
  A030013.P3659823557313004055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030664.P2721385197302219876

`∏{p}[A136548(n+1), #*A007918(n)]`
-/

namespace A030664.P2721385197302219876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A007918 n

end

end A030664.P2721385197302219876

noncomputable section

/-- A030664: Product of largest prime <= n and smallest prime >= n.

Offset 0, canonical program `A030664.P2721385197302219876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A030664 (n : ℕ) : ℤ :=
  A030664.P2721385197302219876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A030664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033245.P10583328777124407485

`∪[A139655(n+1), A139914(n+1)]`
-/

namespace A033245.P10583328777124407485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P10583328777124407485

noncomputable section

/-- A033245: Primes of form x^2+70*y^2.

Offset 1, canonical program `A033245.P10583328777124407485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033245 (n : ℕ) : ℤ :=
  (A033245.P10583328777124407485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033457.P6058291552115705490

`A069097(n+2)-(n+2)²`
-/

namespace A033457.P6058291552115705490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A033457.P6058291552115705490

noncomputable section

/-- A033457: GCD-convolution of squares A000290 with themselves.

Offset 0, canonical program `A033457.P6058291552115705490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033457 (n : ℕ) : ℤ :=
  A033457.P6058291552115705490.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033859.P9143334773756198897

`eq[2^A001221(n+1), A033831(n+1)]+1`
-/

namespace A033859.P9143334773756198897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A033859.P9143334773756198897

noncomputable section

/-- A033859: Numbers k such that A033831(k) = A034444(k) where A034444(k) = number of unitary divisors of k.

Offset 1, canonical program `A033859.P9143334773756198897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859 (n : ℕ) : ℤ :=
  (A033859.P9143334773756198897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034025.P14022890828150912476

`∩[A008784(n+1), A034046(n+1)]`
-/

namespace A034025.P14022890828150912476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P14022890828150912476

noncomputable section

/-- A034025: Both primitively and imprimitively represented by x^2+y^2.

Offset 0, canonical program `A034025.P14022890828150912476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A034025 (n : ℕ) : ℤ :=
  (A034025.P14022890828150912476.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A034025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035109.P3286072140509272248

`∑{d}[n+1, A068068(#)*A193356((n+1)/#)]`
-/

namespace A035109.P3286072140509272248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P3286072140509272248

noncomputable section

/-- A035109: Numerators in the expansion of the Dirichlet series zeta(s) * Product((1+p^-s) / (1-p^(1-s))), p > 2.

Offset 0, canonical program `A035109.P3286072140509272248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035109 (n : ℕ) : ℤ :=
  A035109.P3286072140509272248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035181.P2688111840695593634

`∑{d}[n+1, A035184(#)*A154272((n+1)/#)]`
-/

namespace A035181.P2688111840695593634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035184 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035181.P2688111840695593634

noncomputable section

/-- A035181: a(n) = Sum_{d|n} Kronecker(-9, d).

Offset 1, canonical program `A035181.P2688111840695593634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035181 (n : ℕ) : ℤ :=
  A035181.P2688111840695593634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036345.P12048830508452336379

`∩[2*A036349(n+1), A036844(n+1)]`
-/

namespace A036345.P12048830508452336379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036345.P12048830508452336379

noncomputable section

/-- A036345: Divisible by its 'even' sum of prime factors (counted with multiplicity).

Offset 1, canonical program `A036345.P12048830508452336379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036345 (n : ℕ) : ℤ :=
  (A036345.P12048830508452336379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036762.P3331353246584791037

`A033950(n+1)/A039819(n+1)`
-/

namespace A036762.P3331353246584791037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A039819 (n + 1) : ℚ)

end

end A036762.P3331353246584791037

noncomputable section

/-- A036762: The integer values of x/d(x) in order of magnitude of x in A033950.

Offset 1, canonical program `A036762.P3331353246584791037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036762.P3331353246584791037.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037127.P14189568244569981483

`A151800(A000244(n))-A000079(n)`
-/

namespace A037127.P14189568244569981483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000244 n).toNat - A000079 n

end

end A037127.P14189568244569981483

noncomputable section

/-- A037127: a(n) = nextprime(3^n) - 2^n.

Offset 0, canonical program `A037127.P14189568244569981483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037127 (n : ℕ) : ℤ :=
  A037127.P14189568244569981483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037130.P1803988098589939308

`A014210(2*n)-A014210(n)`
-/

namespace A037130.P1803988098589939308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) - A014210 n

end

end A037130.P1803988098589939308

noncomputable section

/-- A037130: Nextprime(4^n)-nextprime(2^n).

Offset 0, canonical program `A037130.P1803988098589939308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A037130 (n : ℕ) : ℤ :=
  A037130.P1803988098589939308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A037130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037151.P13747861056298471043

`A151800(A000142(n+1))`
-/

namespace A037151.P13747861056298471043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000142 (n + 1)).toNat

end

end A037151.P13747861056298471043

noncomputable section

/-- A037151: Smallest prime > n!.

Offset 1, canonical program `A037151.P13747861056298471043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037151 (n : ℕ) : ℤ :=
  A037151.P13747861056298471043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037152.P12694008118734574474

`A151800(A038507(n+1))`
-/

namespace A037152.P12694008118734574474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A038507 (n + 1)).toNat

end

end A037152.P12694008118734574474

noncomputable section

/-- A037152: Smallest prime > n!+1.

Offset 1, canonical program `A037152.P12694008118734574474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037152 (n : ℕ) : ℤ :=
  A037152.P12694008118734574474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038615.P850949430042522498

`p?[A376047(n+1)]`
-/

namespace A038615.P850949430042522498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P850949430042522498

noncomputable section

/-- A038615: Primes not containing the digit '7'.

Offset 1, canonical program `A038615.P850949430042522498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A038615 (n : ℕ) : ℤ :=
  A038615.P850949430042522498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A038615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038917.P6060502532703074723

`p?[comp[A038918(n+1)]]`
-/

namespace A038917.P6060502532703074723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038918 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038917.P6060502532703074723

noncomputable section

/-- A038917: Primes p such that 39 is a square mod p.

Offset 1, canonical program `A038917.P6060502532703074723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A038917 (n : ℕ) : ℤ :=
  (A038917.P6060502532703074723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A038917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039634.P12108157023021413697

`floor((n+1)/gcd(A034008(n), A292599(n+1)))`
-/

namespace A039634.P12108157023021413697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.gcd (A034008 n) (A292599 (n + 1)) : ℚ)⌋

end

end A039634.P12108157023021413697

noncomputable section

/-- A039634: Fixed point of "n -> n/2 or (n-1)/2 until result is prime".

Offset 1, canonical program `A039634.P12108157023021413697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A039634 (n : ℕ) : ℤ :=
  A039634.P12108157023021413697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A039634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039636.P10786167837322776309

`A136480(2*A292599(n+1))`
-/

namespace A039636.P10786167837322776309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * A292599 (n + 1)).toNat

end

end A039636.P10786167837322776309

noncomputable section

/-- A039636: Number of steps to fixed point of "n -> n/2 or (n-1)/2 until result is prime".

Offset 1, canonical program `A039636.P10786167837322776309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039636 (n : ℕ) : ℤ :=
  A039636.P10786167837322776309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039733.P7472038918648065283

`∑[A217564(n+1)]+1`
-/

namespace A039733.P7472038918648065283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039733.P7472038918648065283

noncomputable section

/-- A039733: a(n)=k such that prime(k) is the prime q

Offset 2, canonical program `A039733.P7472038918648065283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039733 (n : ℕ) : ℤ :=
  A039733.P7472038918648065283.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043336.P7301550884485477738

`eq[4, A160380(n)]`
-/

namespace A043336.P7301550884485477738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043336.P7301550884485477738

noncomputable section

/-- A043336: Numbers having four 0's in base 4.

Offset 1, canonical program `A043336.P7301550884485477738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A043336 (n : ℕ) : ℤ :=
  (A043336.P7301550884485477738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A043336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045347.P16404716568036589971

`∪[A045351(n+1), A045389(n+1)]`
-/

namespace A045347.P16404716568036589971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045347.P16404716568036589971

noncomputable section

/-- A045347: Primes congruent to {0, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A045347.P16404716568036589971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045347 (n : ℕ) : ℤ :=
  (A045347.P16404716568036589971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045353.P9662914916560255161

`∪[A045358(n+1), A045389(n+1)]`
-/

namespace A045353.P9662914916560255161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045353.P9662914916560255161

noncomputable section

/-- A045353: Primes congruent to {0, 1, 2, 5, 6} mod 7.

Offset 1, canonical program `A045353.P9662914916560255161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045353 (n : ℕ) : ℤ :=
  (A045353.P9662914916560255161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045844.P8390296984948231799

`∑[A132137(n+1)]`
-/

namespace A045844.P8390296984948231799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045844.P8390296984948231799

noncomputable section

/-- A045844: a(n+1) = a(n) + largest digit of a(n); a(0) = 1.

Offset 0, canonical program `A045844.P8390296984948231799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045844 (n : ℕ) : ℤ :=
  A045844.P8390296984948231799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046099.P13381263788828517193

`comp[(n+1)*A212793(n+1)]`
-/

namespace A046099.P13381263788828517193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A046099.P13381263788828517193

noncomputable section

/-- A046099: Numbers that are not cubefree. Numbers divisible by a cube greater than 1. Complement of A004709.

Offset 1, canonical program `A046099.P13381263788828517193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046099 (n : ℕ) : ℤ :=
  (A046099.P13381263788828517193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046134.P9921329866424086126

`p?[A087680(n+1)-2]-2`
-/

namespace A046134.P9921329866424086126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A046134.P9921329866424086126

noncomputable section

/-- A046134: p, p+2 and p+8 are primes.

Offset 1, canonical program `A046134.P9921329866424086126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A046134 (n : ℕ) : ℤ :=
  A046134.P9921329866424086126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A046134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046386.P16871154902910785853

`filter[A030634(n+1), A212793(#)]`
-/

namespace A046386.P16871154902910785853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A046386.P16871154902910785853

noncomputable section

/-- A046386: Products of exactly four distinct primes.

Offset 1, canonical program `A046386.P16871154902910785853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6527 terms. -/
def A046386 (n : ℕ) : ℤ :=
  A046386.P16871154902910785853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6527 terms. -/
def A046386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046841.P12442994457345878225

`eq[1, A091258(n+1)]+1`
-/

namespace A046841.P12442994457345878225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046841.P12442994457345878225

noncomputable section

/-- A046841: Numbers whose sum of divisors divides their sum of cubes of divisors.

Offset 1, canonical program `A046841.P12442994457345878225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046841 (n : ℕ) : ℤ :=
  (A046841.P12442994457345878225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047074.P16291066266653691884

`ceil((n+1)/2*A089408(n))`
-/

namespace A047074.P16291066266653691884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A089408 n : ℚ)⌉

end

end A047074.P16291066266653691884

noncomputable section

/-- A047074: a(n) = Sum_{i=0..floor(n/2)} T(i,n-i), array T as in A047072.

Offset 0, canonical program `A047074.P16291066266653691884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A047074 (n : ℕ) : ℤ :=
  A047074.P16291066266653691884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A047074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047781.P7244301787128564813

`floor(A123164(n)/2)`
-/

namespace A047781.P7244301787128564813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123164 n : ℚ) / 2⌋

end

end A047781.P7244301787128564813

noncomputable section

/-- A047781: a(n) = Sum_{k=0..n-1} binomial(n-1,k)*binomial(n+k,k). Also a(n) = T(n,n), array T as in A049600.

Offset 0, canonical program `A047781.P7244301787128564813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A047781 (n : ℕ) : ℤ :=
  A047781.P7244301787128564813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A047781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048272.P6639145440777643207

`A001227(n+1)-A183063(n+1)`
-/

namespace A048272.P6639145440777643207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A183063 (n + 1)

end

end A048272.P6639145440777643207

noncomputable section

/-- A048272: Number of odd divisors of n minus number of even divisors of n.

Offset 1, canonical program `A048272.P6639145440777643207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048272 (n : ℕ) : ℤ :=
  A048272.P6639145440777643207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049593.P11643952065115088752

`p?[A071904(n+1)-(4%(n+1))²]`
-/

namespace A049593.P11643952065115088752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - (((4 % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P11643952065115088752

noncomputable section

/-- A049593: Primes p for which residue of ((p-1)! + 1) modulo (p + 16) equals 1.

Offset 1, canonical program `A049593.P11643952065115088752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A049593 (n : ℕ) : ℤ :=
  A049593.P11643952065115088752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A049593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049716.P16933746543691876245

`A049711(2*n+3)`
-/

namespace A049716.P16933746543691876245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * n + 3)

end

end A049716.P16933746543691876245

noncomputable section

/-- A049716: a(n) = 2*n + 1 - prevprime(2*n + 1).

Offset 1, canonical program `A049716.P16933746543691876245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049716 (n : ℕ) : ℤ :=
  A049716.P16933746543691876245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049756.P14980323311031342040

`A305117(n²+1)+1`
-/

namespace A049756.P14980323311031342040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2 + 1) + 1

end

end A049756.P14980323311031342040

noncomputable section

/-- A049756: a(n) = T(n,1), array T as in A049747.

Offset 0, canonical program `A049756.P14980323311031342040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049756 (n : ℕ) : ℤ :=
  A049756.P14980323311031342040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049757.P1655446980647832021

`A305117(n²+4)+1`
-/

namespace A049757.P1655446980647832021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2 + 4) + 1

end

end A049757.P1655446980647832021

noncomputable section

/-- A049757: a(n) = T(n,2), array T as in A049747.

Offset 0, canonical program `A049757.P1655446980647832021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049757 (n : ℕ) : ℤ :=
  A049757.P1655446980647832021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049758.P9833744827448509849

`A305117(n²+9)+1`
-/

namespace A049758.P9833744827448509849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2 + 9) + 1

end

end A049758.P9833744827448509849

noncomputable section

/-- A049758: a(n) = T(n,3), array T as in A049747.

Offset 0, canonical program `A049758.P9833744827448509849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049758 (n : ℕ) : ℤ :=
  A049758.P9833744827448509849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050150.P9836629661305837996

`filter[A009087(n+1), A361023(#)]`
-/

namespace A050150.P9836629661305837996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A050150.P9836629661305837996

noncomputable section

/-- A050150: Odd numbers with prime number of divisors.

Offset 1, canonical program `A050150.P9836629661305837996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150 (n : ℕ) : ℤ :=
  A050150.P9836629661305837996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050200.P6281150429617740541

`A151800(A052147(n+1))+A001043(n+1)`
-/

namespace A050200.P6281150429617740541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A052147 (n + 1)).toNat + A001043 (n + 1)

end

end A050200.P6281150429617740541

noncomputable section

/-- A050200: Let p = prime(n). Then a(n) = p + (next prime >= p+1) + (next prime >= p+3).

Offset 0, canonical program `A050200.P6281150429617740541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A050200 (n : ℕ) : ℤ :=
  A050200.P6281150429617740541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A050200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050321.P13414595198554501131

`lt[1, abs(A065359(n))]`
-/

namespace A050321.P13414595198554501131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065359 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P13414595198554501131

noncomputable section

/-- A050321: k such that A050292(k) is different from A004396(k).

Offset 0, canonical program `A050321.P13414595198554501131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050321 (n : ℕ) : ℤ :=
  (A050321.P13414595198554501131.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050463.P239937787475028521

`(A050468(n+1)+A285989(n+1))/2`
-/

namespace A050463.P239937787475028521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050468 (n + 1) + A285989 (n + 1) : ℚ) / 2

end

end A050463.P239937787475028521

noncomputable section

/-- A050463: a(n) = Sum_{d|n, n/d=1 mod 4} d^4.

Offset 1, canonical program `A050463.P239937787475028521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, A285989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050463.P239937787475028521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, A285989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051458.P2421049686485935770

`A029631(n)/2`
-/

namespace A051458.P2421049686485935770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029631 n : ℚ) / 2

end

end A051458.P2421049686485935770

noncomputable section

/-- A051458: (Terms in A029631)/2.

Offset 0, canonical program `A051458.P2421049686485935770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051458 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051458.P2421049686485935770.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051471.P4968011604832206761

`A029647(n)/2`
-/

namespace A051471.P4968011604832206761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029647 n : ℚ) / 2

end

end A051471.P4968011604832206761

noncomputable section

/-- A051471: (Terms in A029647)/2.

Offset 0, canonical program `A051471.P4968011604832206761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051471 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051471.P4968011604832206761.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051897.P8902770767646687647

`∩[A224854(n+1), A224855(n+1)]`
-/

namespace A051897.P8902770767646687647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051897.P8902770767646687647

noncomputable section

/-- A051897: Values of n such that 90n+11, 90n+13, 90n+17, 90n+19 are all primes.

Offset 1, canonical program `A051897.P8902770767646687647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A051897 (n : ℕ) : ℤ :=
  (A051897.P8902770767646687647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A051897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053239.P5244932916170375337

`A053238(A053240(n+1))`
-/

namespace A053239.P5244932916170375337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A053240 (n + 1)).toNat

end

end A053239.P5244932916170375337

noncomputable section

/-- A053239: First differences between n for which sigma(n) > sigma(n+1), which are not 2.

Offset 1, canonical program `A053239.P5244932916170375337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053238, A053240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053239 (n : ℕ) : ℤ :=
  A053239.P5244932916170375337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053238, A053240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053542.P1380259865153201069

`A065890(A073169(n+1))-n`
-/

namespace A053542.P1380259865153201069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A073169 (n + 1)).toNat - (n : ℤ)

end

end A053542.P1380259865153201069

noncomputable section

/-- A053542: Distance from n-th composite number (A002808) to next prime.

Offset 1, canonical program `A053542.P1380259865153201069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053542 (n : ℕ) : ℤ :=
  A053542.P1380259865153201069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053694.P6109795769144306558

`∑{d}[n+1, A035207(#)*A275966((n+1)/#)]`
-/

namespace A053694.P6109795769144306558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035207 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053694.P6109795769144306558

noncomputable section

/-- A053694: Number of self-conjugate 5-core partitions of n.

Offset 0, canonical program `A053694.P6109795769144306558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053694 (n : ℕ) : ℤ :=
  A053694.P6109795769144306558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053785.P3643210725324420680

`A053786(n+1)-(n+1)²²`
-/

namespace A053785.P3643210725324420680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 1) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A053785.P3643210725324420680

noncomputable section

/-- A053785: Nextprime(n^4) - n^4.

Offset 1, canonical program `A053785.P3643210725324420680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053785 (n : ℕ) : ℤ :=
  A053785.P3643210725324420680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054388.P5591882632319717874

`A002595(n)/gcd(A002595(n), A008574(n))`
-/

namespace A054388.P5591882632319717874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002595 n : ℚ) / (Int.gcd (A002595 n) (A008574 n) : ℚ)

end

end A054388.P5591882632319717874

noncomputable section

/-- A054388: Denominators of coefficients of 1/2^(2n+1) in Newton's series for Pi.

Offset 0, canonical program `A054388.P5591882632319717874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A054388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054388.P5591882632319717874.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A054388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055003.P16368500312500081187

`A175248(n+2)`
-/

namespace A055003.P16368500312500081187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 2)

end

end A055003.P16368500312500081187

noncomputable section

/-- A055003: a(n) = prime(prime(n)-1).

Offset 1, canonical program `A055003.P16368500312500081187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055003 (n : ℕ) : ℤ :=
  A055003.P16368500312500081187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055435.P11643938149336222448

`(A053061(n+1)-A055436(n+1))/18`
-/

namespace A055435.P11643938149336222448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053061 (n + 1) - A055436 (n + 1) : ℚ) / 18

end

end A055435.P11643938149336222448

noncomputable section

/-- A055435: (1/18)*Difference between concatenation of n and n^2 and concatenation of n^2 and n.

Offset 1, canonical program `A055435.P11643938149336222448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055435.P11643938149336222448.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055579.P14572805537248560419

`A000260(3*(n+1)-1)/3`
-/

namespace A055579.P14572805537248560419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 (3 * (n + 1) - 1) : ℚ) / 3

end

end A055579.P14572805537248560419

noncomputable section

/-- A055579: a(n) = binomial(12*n-1,3*n-1)/((6*n-1)*(12*n-1)).

Offset 1, canonical program `A055579.P14572805537248560419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055579 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055579.P14572805537248560419.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055579.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055930.P12939233674708047952

`A217564(n)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A055930.P12939233674708047952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A217564 n + a (n - 1)

end

end A055930.P12939233674708047952

noncomputable section

/-- A055930: Number of distinct prime factors of totient of (n-th prime)!.

Offset 1, canonical program `A055930.P12939233674708047952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A055930 (n : ℕ) : ℤ :=
  A055930.P12939233674708047952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A055930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056166.P4154456828195991417

`record[(n+1)*A293449(n+1)]`
-/

namespace A056166.P4154456828195991417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A293449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056166.P4154456828195991417

noncomputable section

/-- A056166: Numbers which are the product of distinct primes raised to prime powers.

Offset 1, canonical program `A056166.P4154456828195991417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A056166 (n : ℕ) : ℤ :=
  A056166.P4154456828195991417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A056166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056549.P512568632204534587

`A062550(n)-A006218(n)`
-/

namespace A056549.P512568632204534587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - A006218 n

end

end A056549.P512568632204534587

noncomputable section

/-- A056549: a(n) = Sum_{k>=1} round(n/k) where round(1/2)=1.

Offset 0, canonical program `A056549.P512568632204534587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A062550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056549 (n : ℕ) : ℤ :=
  A056549.P512568632204534587.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A062550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056818.P10951133536727049415

`record[gcd(n+2, A334628(n+2))]`
-/

namespace A056818.P10951133536727049415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A334628 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056818.P10951133536727049415

noncomputable section

/-- A056818: A number n is included if n^2 divides n-th term of A056855.

Offset 1, canonical program `A056818.P10951133536727049415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A056818 (n : ℕ) : ℤ :=
  (A056818.P10951133536727049415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A056818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057060.P18078579117183750198

`A057062(n+1)-A243111(n+1)`
-/

namespace A057060.P18078579117183750198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) - A243111 (n + 1)

end

end A057060.P18078579117183750198

noncomputable section

/-- A057060: a(n) = number of the row of (R(i,j)) that contains prime(n), where R(i,j) is the rectangle with descending antidiagonals 1; 2,3; 4,5,6; ...

Offset 1, canonical program `A057060.P18078579117183750198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057060 (n : ℕ) : ℤ :=
  A057060.P18078579117183750198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057061.P14924133041998602489

`A243111(n+1)+1`
-/

namespace A057061.P14924133041998602489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243111 (n + 1) + 1

end

end A057061.P14924133041998602489

noncomputable section

/-- A057061: a(n) = number of the column of (R(i,j)) that contains prime(n), where R(i,j) is the rectangle with antidiagonals 1; 2,3; 4,5,6; ...

Offset 1, canonical program `A057061.P14924133041998602489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057061 (n : ℕ) : ℤ :=
  A057061.P14924133041998602489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057660.P308819105178745283

`A001157(A000290(n+1))/A065764(n+1)`
-/

namespace A057660.P308819105178745283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (A000290 (n + 1)).toNat : ℚ) / (A065764 (n + 1) : ℚ)

end

end A057660.P308819105178745283

noncomputable section

/-- A057660: a(n) = Sum_{k=1..n} n/gcd(n,k).

Offset 1, canonical program `A057660.P308819105178745283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057660.P308819105178745283.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057872.P8502585632871789703

`A215260(A230980(n))`
-/

namespace A057872.P8502585632871789703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215260 (A230980 n).toNat

end

end A057872.P8502585632871789703

noncomputable section

/-- A057872: A version of the Chebyshev function theta(n): a(n) = round(Sum_{primes p <= n } log(p)).

Offset 0, canonical program `A057872.P8502585632871789703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057872 (n : ℕ) : ℤ :=
  A057872.P8502585632871789703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059247.P12274264004788898649

`(n+1)/gcd(n+1, A002541(n+1))`
-/

namespace A059247.P12274264004788898649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002541 (n + 1)) : ℚ)

end

end A059247.P12274264004788898649

noncomputable section

/-- A059247: Denominator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

Offset 1, canonical program `A059247.P12274264004788898649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059247 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059247.P12274264004788898649.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059324.P9355351555036225255

`eq[0, A075743(2*n+1)]`
-/

namespace A059324.P9355351555036225255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059324.P9355351555036225255

noncomputable section

/-- A059324: Numbers n such that 6n + 5 is composite.

Offset 1, canonical program `A059324.P9355351555036225255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059324 (n : ℕ) : ℤ :=
  (A059324.P9355351555036225255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059452.P7730538796313932387

`∩[A053176(n+1), A072055(n+1)]`
-/

namespace A059452.P7730538796313932387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P7730538796313932387

noncomputable section

/-- A059452: Safe primes (A005385) that are not Sophie Germain primes.

Offset 1, canonical program `A059452.P7730538796313932387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A059452 (n : ℕ) : ℤ :=
  (A059452.P7730538796313932387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A059452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059603.P16506682477234733057

`∑[A060105(n)]`
-/

namespace A059603.P16506682477234733057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059603.P16506682477234733057

noncomputable section

/-- A059603: Expansion of (1+15*x+15*x^2+x^3)/(1-x)^12.

Offset 0, canonical program `A059603.P16506682477234733057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059603 (n : ℕ) : ℤ :=
  A059603.P16506682477234733057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059624.P2258279082146612919

`∑[A060559(n)]`
-/

namespace A059624.P2258279082146612919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059624.P2258279082146612919

noncomputable section

/-- A059624: Expansion of (3+10*x+3*x^2)/(1-x)^12.

Offset 0, canonical program `A059624.P2258279082146612919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059624 (n : ℕ) : ℤ :=
  A059624.P2258279082146612919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060264.P4854329161308632623

`A151800(2*n)`
-/

namespace A060264.P4854329161308632623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n)

end

end A060264.P4854329161308632623

noncomputable section

/-- A060264: First prime after 2n.

Offset 0, canonical program `A060264.P4854329161308632623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060264 (n : ℕ) : ℤ :=
  A060264.P4854329161308632623.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060266.P13024036352084086722

`A151800(2*(n+1))-2*(n+1)`
-/

namespace A060266.P13024036352084086722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A060266.P13024036352084086722

noncomputable section

/-- A060266: Difference between 2n and the following prime.

Offset 1, canonical program `A060266.P13024036352084086722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060266 (n : ℕ) : ℤ :=
  A060266.P13024036352084086722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060343.P12469655398525747036

`A151800(4*(n+3))`
-/

namespace A060343.P12469655398525747036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (4 * (n + 3))

end

end A060343.P12469655398525747036

noncomputable section

/-- A060343: Smallest prime which is the sum of n composite numbers.

Offset 2, canonical program `A060343.P12469655398525747036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9118 terms. -/
def A060343 (n : ℕ) : ℤ :=
  A060343.P12469655398525747036.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9118 terms. -/
def A060343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060357.P5151139434586093012

`A151800(A003418(n))`
-/

namespace A060357.P5151139434586093012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003418 n).toNat

end

end A060357.P5151139434586093012

noncomputable section

/-- A060357: a(n) = smallest prime > lcm(1..n).

Offset 0, canonical program `A060357.P5151139434586093012`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060357 (n : ℕ) : ℤ :=
  A060357.P5151139434586093012.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060476.P15326547790520508984

`record[(n+1)*A005171(A051903(n+1)+1)]`
-/

namespace A060476.P15326547790520508984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060476.P15326547790520508984

noncomputable section

/-- A060476: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that 1 + max{e_2, e_3, ...} is nonprime.

Offset 1, canonical program `A060476.P15326547790520508984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060476 (n : ℕ) : ℤ :=
  A060476.P15326547790520508984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060872.P4140804828554997717

`(n+1)*A038548(n+1)`
-/

namespace A060872.P4140804828554997717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038548 (n + 1)

end

end A060872.P4140804828554997717

noncomputable section

/-- A060872: Sum of d*d' over all unordered pairs (d,d') with d*d' = n.

Offset 1, canonical program `A060872.P4140804828554997717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060872 (n : ℕ) : ℤ :=
  A060872.P4140804828554997717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060983.P4598278765053728380

`∑{d}[n+1, A069097(#)*A073184((n+1)/#)]`
-/

namespace A060983.P4598278765053728380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060983.P4598278765053728380

noncomputable section

/-- A060983: Number of primitive sublattices of index n in generic 3-dimensional lattice.

Offset 1, canonical program `A060983.P4598278765053728380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060983 (n : ℕ) : ℤ :=
  A060983.P4598278765053728380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061245.P11850383648329025270

`∩[A009996(n+1), A030096(n+1)]`
-/

namespace A061245.P11850383648329025270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P11850383648329025270

noncomputable section

/-- A061245: Prime numbers with odd digits in descending order.

Offset 1, canonical program `A061245.P11850383648329025270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A061245 (n : ℕ) : ℤ :=
  (A061245.P11850383648329025270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A061245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061385.P4395846907397159520

`A061383(eq[2, A285093(n)])`
-/

namespace A061385.P4395846907397159520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061385.P4395846907397159520

noncomputable section

/-- A061385: Numbers n such that sum of digits = twice number of digits.

Offset 1, canonical program `A061385.P4395846907397159520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A061385 (n : ℕ) : ℤ :=
  A061385.P4395846907397159520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A061385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061386.P9883862173632192436

`A061383(eq[3, A285093(n)])`
-/

namespace A061386.P9883862173632192436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061386.P9883862173632192436

noncomputable section

/-- A061386: Sum of digits = 3 times number of digits.

Offset 1, canonical program `A061386.P9883862173632192436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A061386 (n : ℕ) : ℤ :=
  A061386.P9883862173632192436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A061386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061387.P13792558151730477015

`A061383(eq[4, A285093(n)])`
-/

namespace A061387.P13792558151730477015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061387.P13792558151730477015

noncomputable section

/-- A061387: Sum of digits = 4 times number of digits.

Offset 1, canonical program `A061387.P13792558151730477015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A061387 (n : ℕ) : ℤ :=
  A061387.P13792558151730477015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A061387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061388.P12309060482662442082

`A061383(eq[5, A285093(n)])`
-/

namespace A061388.P12309060482662442082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061388.P12309060482662442082

noncomputable section

/-- A061388: Sum of digits = 5 times number of digits.

Offset 1, canonical program `A061388.P12309060482662442082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A061388 (n : ℕ) : ℤ :=
  A061388.P12309060482662442082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A061388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061423.P247878433871587893

`∩[A178366(n+1), A274319(n+1)]`
-/

namespace A061423.P247878433871587893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061423.P247878433871587893

noncomputable section

/-- A061423: Sum of digits = 6 times number of digits.

Offset 1, canonical program `A061423.P247878433871587893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1434 terms. -/
def A061423 (n : ℕ) : ℤ :=
  (A061423.P247878433871587893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1434 terms. -/
def A061423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061424.P9634388697526268422

`∩[A178367(n+1), A273159(n+1)]`
-/

namespace A061424.P9634388697526268422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061424.P9634388697526268422

noncomputable section

/-- A061424: Sum of digits = 7 times number of digits.

Offset 1, canonical program `A061424.P9634388697526268422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A061424 (n : ℕ) : ℤ :=
  (A061424.P9634388697526268422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A061424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061763.P17211553431124948696

`∩[A038366(n+1), A052382(n+1)]`
-/

namespace A061763.P17211553431124948696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061763.P17211553431124948696

noncomputable section

/-- A061763: Numbers k such that k is divisible by A061762(k) and the product of digits of k (A007954(k)) is not zero.

Offset 1, canonical program `A061763.P17211553431124948696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A061763 (n : ℕ) : ℤ :=
  (A061763.P17211553431124948696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A061763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061771.P15852509562719419888

`A000040(lt[A100375(n+1), 2]+1)`
-/

namespace A061771.P15852509562719419888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A061771.P15852509562719419888

noncomputable section

/-- A061771: Primes p(k) such that p(k+1) - p(k) = 2^m for some m (smaller of a pair of consecutive primes which differ by a power of 2).

Offset 1, canonical program `A061771.P15852509562719419888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A061771 (n : ℕ) : ℤ :=
  A061771.P15852509562719419888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A061771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061810.P419658108467470369

`∩[A059708(n+1), A016945(n)]`
-/

namespace A061810.P419658108467470369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P419658108467470369

noncomputable section

/-- A061810: Multiples of 3 with all odd digits.

Offset 1, canonical program `A061810.P419658108467470369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A061810 (n : ℕ) : ℤ :=
  (A061810.P419658108467470369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A061810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061825.P11667199288861640491

`∩[A059708(n+1), A147587(n)]`
-/

namespace A061825.P11667199288861640491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061825.P11667199288861640491

noncomputable section

/-- A061825: Multiples of 7 containing only odd digits.

Offset 1, canonical program `A061825.P11667199288861640491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. -/
def A061825 (n : ℕ) : ℤ :=
  (A061825.P11667199288861640491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. -/
def A061825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062042.P6136320871512992597

`A151800(2*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P6136320871512992597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (2 * a (n - 1)).toNat - a (n - 1)

end

end A062042.P6136320871512992597

noncomputable section

/-- A062042: a(1) = 2, a(n) = least number greater than a(n-1) such that a(n-1) + a(n) is a prime.

Offset 1, canonical program `A062042.P6136320871512992597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5676 terms. -/
def A062042 (n : ℕ) : ℤ :=
  A062042.P6136320871512992597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5676 terms. -/
def A062042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062086.P15083974956987109728

`filter[A059708(n+1), A323239(#)]`
-/

namespace A062086.P15083974956987109728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A062086.P15083974956987109728

noncomputable section

/-- A062086: Squarefree numbers with all odd digits.

Offset 1, canonical program `A062086.P15083974956987109728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A062086 (n : ℕ) : ℤ :=
  A062086.P15083974956987109728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A062086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062301.P7583159109600131455

`A010051(A075526(n))`
-/

namespace A062301.P7583159109600131455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A075526 n).toNat

end

end A062301.P7583159109600131455

noncomputable section

/-- A062301: Number of ways writing n-th prime as a sum of two primes.

Offset 1, canonical program `A062301.P7583159109600131455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062301 (n : ℕ) : ℤ :=
  A062301.P7583159109600131455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062772.P2777884273118347424

`A151800(A001248(n+1))`
-/

namespace A062772.P2777884273118347424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001248 (n + 1)).toNat

end

end A062772.P2777884273118347424

noncomputable section

/-- A062772: Smallest prime larger than square of n-th prime.

Offset 1, canonical program `A062772.P2777884273118347424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062772 (n : ℕ) : ℤ :=
  A062772.P2777884273118347424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062992.P8931874765169475408

`A025225(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A062992.P8931874765169475408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025225 (n + 1) - a (n - 1)

end

end A062992.P8931874765169475408

noncomputable section

/-- A062992: Row sums of unsigned triangle A062991.

Offset 0, canonical program `A062992.P8931874765169475408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A062992 (n : ℕ) : ℤ :=
  A062992.P8931874765169475408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A062992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063478.P17431467518286176009

`A001157(A000045(n+1))`
-/

namespace A063478.P17431467518286176009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000045 (n + 1)).toNat

end

end A063478.P17431467518286176009

noncomputable section

/-- A063478: a(n) = Sum_{d|Fibonacci(n)} d^2.

Offset 1, canonical program `A063478.P17431467518286176009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063478 (n : ℕ) : ℤ :=
  A063478.P17431467518286176009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063765.P12169801839756139973

`2*A014210(n+1)`
-/

namespace A063765.P12169801839756139973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014210 (n + 1)

end

end A063765.P12169801839756139973

noncomputable section

/-- A063765: Least integer m whose largest prime factor > m^(n/(n+1)).

Offset 1, canonical program `A063765.P12169801839756139973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063765 (n : ℕ) : ℤ :=
  A063765.P12169801839756139973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063768.P1427965183729236015

`A014210(3*n)`
-/

namespace A063768.P1427965183729236015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (3 * n)

end

end A063768.P1427965183729236015

noncomputable section

/-- A063768: Smallest prime >= 8^n.

Offset 0, canonical program `A063768.P1427965183729236015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A063768 (n : ℕ) : ℤ :=
  A063768.P1427965183729236015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A063768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063909.P3011731433848719074

`(A145471(n+1)+5)/2`
-/

namespace A063909.P3011731433848719074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145471 (n + 1) + 5 : ℚ) / 2

end

end A063909.P3011731433848719074

noncomputable section

/-- A063909: Primes p such that 2*p - 5 is also prime.

Offset 1, canonical program `A063909.P3011731433848719074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063909.P3011731433848719074.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064027.P15469288149459066613

`(-1)^(n+1)*(A001157(n+1)-2*A050999(n+1))`
-/

namespace A064027.P15469288149459066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A001157 (n + 1) - 2 * A050999 (n + 1))

end

end A064027.P15469288149459066613

noncomputable section

/-- A064027: a(n) = (-1)^n*Sum_{d|n} (-1)^d*d^2.

Offset 1, canonical program `A064027.P15469288149459066613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064027 (n : ℕ) : ℤ :=
  A064027.P15469288149459066613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064337.P4577822479173310774

`A151800(A000040(n)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P4577822479173310774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000040 n + a (n - 1)).toNat

end

end A064337.P4577822479173310774

noncomputable section

/-- A064337: Minimal prime numbers with increasing prime differences.

Offset 1, canonical program `A064337.P4577822479173310774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A064337 (n : ℕ) : ℤ :=
  A064337.P4577822479173310774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A064337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064602.P11911922222031921481

`a(n-1)+A001157(n+1)` with `a(0)=1`
-/

namespace A064602.P11911922222031921481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001157 (n + 1)

end

end A064602.P11911922222031921481

noncomputable section

/-- A064602: Partial sums of A001157: Sum_{j=1..n} sigma_2(j).

Offset 1, canonical program `A064602.P11911922222031921481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064602 (n : ℕ) : ℤ :=
  A064602.P11911922222031921481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065079.P18023857822470704852

`p?[(2*n+1)*A043545(A065359(n)²)]`
-/

namespace A065079.P18023857822470704852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A043545 (A065359 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065079.P18023857822470704852

noncomputable section

/-- A065079: Primes > 3 for which the alternating bit sum (A065359) is not equal to 1 or 2.

Offset 1, canonical program `A065079.P18023857822470704852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A065079 (n : ℕ) : ℤ :=
  A065079.P18023857822470704852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A065079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065081.P8743477589480820839

`A057427(n)-A065359(A130290(n+1))`
-/

namespace A065081.P8743477589480820839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A065359 (A130290 (n + 1)).toNat

end

end A065081.P8743477589480820839

noncomputable section

/-- A065081: Alternating bit sum (A065359) for n-th prime p: replace 2^k with (-1)^k in binary expansion of p.

Offset 1, canonical program `A065081.P8743477589480820839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065081 (n : ℕ) : ℤ :=
  A065081.P8743477589480820839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065312.P1319422233856677202

`A093515(A068780(n+1)-2+n)`
-/

namespace A065312.P1319422233856677202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A068780 (n + 1) - 2 + (n : ℤ)).toNat

end

end A065312.P1319422233856677202

noncomputable section

/-- A065312: Primes which occur exactly once in A065308 (prime(n - pi(n))).

Offset 1, canonical program `A065312.P1319422233856677202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8628 terms. -/
def A065312 (n : ℕ) : ℤ :=
  A065312.P1319422233856677202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8628 terms. -/
def A065312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065347.P5764445465654465881

`eq[0, A065344(n+1)]+1`
-/

namespace A065347.P5764445465654465881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065347.P5764445465654465881

noncomputable section

/-- A065347: Positions of zeros in A065344, i.e., binomial(2n,n) mod ((n+1)*(n+2)) = 0.

Offset 1, canonical program `A065347.P5764445465654465881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9605 terms. -/
def A065347 (n : ℕ) : ℤ :=
  (A065347.P5764445465654465881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9605 terms. -/
def A065347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065383.P2629360467203917195

`A151800(and(∑[n], -2))`
-/

namespace A065383.P2629360467203917195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)).toNat

end

end A065383.P2629360467203917195

noncomputable section

/-- A065383: a(n) = smallest prime >= n*(n + 1)/2.

Offset 0, canonical program `A065383.P2629360467203917195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A065383 (n : ℕ) : ℤ :=
  A065383.P2629360467203917195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A065383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065512.P5672657743991023653

`record[(n+1)*A296212(n+1)]`
-/

namespace A065512.P5672657743991023653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A296212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065512.P5672657743991023653

noncomputable section

/-- A065512: Numbers n such that sigma(n) + 1 is prime.

Offset 1, canonical program `A065512.P5672657743991023653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065512 (n : ℕ) : ℤ :=
  A065512.P5672657743991023653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065683.P16875126102504137122

`∑[A316865(A137589(n+1))]`
-/

namespace A065683.P16875126102504137122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A137589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P16875126102504137122

noncomputable section

/-- A065683: Number of primes <= prime(n) which begin with a 4.

Offset 1, canonical program `A065683.P16875126102504137122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065683 (n : ℕ) : ℤ :=
  A065683.P16875126102504137122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065741.P168978404757248362

`A048760(A001157(n+1))`
-/

namespace A065741.P168978404757248362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A001157 (n + 1)).toNat

end

end A065741.P168978404757248362

noncomputable section

/-- A065741: Largest square <= sum of squares of divisors of n.

Offset 1, canonical program `A065741.P168978404757248362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065741 (n : ℕ) : ℤ :=
  A065741.P168978404757248362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065814.P14091942470070191405

`A035116(n+1)-A048691(n+1)`
-/

namespace A065814.P14091942470070191405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - A048691 (n + 1)

end

end A065814.P14091942470070191405

noncomputable section

/-- A065814: a(n) = tau(n)^2 - tau(n^2), where tau(n) = A000005(n).

Offset 1, canonical program `A065814.P14091942470070191405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035116, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065814 (n : ℕ) : ℤ :=
  A065814.P14091942470070191405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035116, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065827.P4606986247344016180

`A001157((n+1)²)`
-/

namespace A065827.P4606986247344016180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 ((n + 1) ^ 2)

end

end A065827.P4606986247344016180

noncomputable section

/-- A065827: Sum of squares of divisors of square numbers.

Offset 1, canonical program `A065827.P4606986247344016180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065827 (n : ℕ) : ℤ :=
  A065827.P4606986247344016180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065864.P3235383946542202387

`A000027(n+1)%∑[A005171(n+1)]`
-/

namespace A065864.P3235383946542202387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065864.P3235383946542202387

noncomputable section

/-- A065864: Remainder when n is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065864.P3235383946542202387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065864 (n : ℕ) : ℤ :=
  A065864.P3235383946542202387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066088.P18408062941437000967

`A001221(A001157(n+1))`
-/

namespace A066088.P18408062941437000967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001157 (n + 1)).toNat

end

end A066088.P18408062941437000967

noncomputable section

/-- A066088: Number of distinct prime factors of sigma_2(n), where sigma_2(n) = A001157(n).

Offset 1, canonical program `A066088.P18408062941437000967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066088 (n : ℕ) : ℤ :=
  A066088.P18408062941437000967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066168.P525393161361809631

`A151800(∑{d}[n+1, #]+1)`
-/

namespace A066168.P525393161361809631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A066168.P525393161361809631

noncomputable section

/-- A066168: a(n) = least k such that phi(k) > sigma(n).

Offset 1, canonical program `A066168.P525393161361809631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066168 (n : ℕ) : ℤ :=
  A066168.P525393161361809631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066270.P16574927822782617413

`∩[A073763(n+1), A216997(n+1)]`
-/

namespace A066270.P16574927822782617413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P16574927822782617413

noncomputable section

/-- A066270: Multiples of 24 whose digits also sum to 24.

Offset 1, canonical program `A066270.P16574927822782617413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A066270 (n : ℕ) : ℤ :=
  (A066270.P16574927822782617413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A066270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066293.P1248160133260108300

`A000203(n+1)²-A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066293.P1248160133260108300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A001157 (n + 1)

end

end A066293.P1248160133260108300

noncomputable section

/-- A066293: a(n) = A000203(n)^2 - A001157(n) = sigma(n)^2 - sigma_2(n).

Offset 1, canonical program `A066293.P1248160133260108300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066293 (n : ℕ) : ℤ :=
  A066293.P1248160133260108300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066294.P3948626955409705385

`A000203(n+1)²-A001157(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066294.P3948626955409705385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A001157 (n + 1) - (2 * (n + 1) : ℤ)

end

end A066294.P3948626955409705385

noncomputable section

/-- A066294: a(n) = A000203(n)^2 - A001157(n) - 2n = sigma(n)^2 - sigma_2(n) - 2n.

Offset 1, canonical program `A066294.P3948626955409705385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066294 (n : ℕ) : ℤ :=
  A066294.P3948626955409705385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066332.P2938778054957547547

`n*a(A136548(n))` with `a(0)=1, a(1)=1`
-/

namespace A066332.P2938778054957547547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * a (A136548 n).toNat

end

end A066332.P2938778054957547547

noncomputable section

/-- A066332: a(1)=1; for n > 0, a(n+1) = rad(a(n))*n where rad=A007947.

Offset 1, canonical program `A066332.P2938778054957547547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A066332 (n : ℕ) : ℤ :=
  (A066332.P2938778054957547547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A066332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066513.P13292651458917012293

`eq[A093667(n+2), A093667(n+1)]+3`
-/

namespace A066513.P13292651458917012293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A066513.P13292651458917012293

noncomputable section

/-- A066513: Numbers n such that f(n) = f(n-1) - f(n-2) where f is the prime gap function given by f(m) = prime(m+1) - prime(m) and prime(m) denotes the m-th prime.

Offset 1, canonical program `A066513.P13292651458917012293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. -/
def A066513 (n : ℕ) : ℤ :=
  (A066513.P13292651458917012293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. -/
def A066513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066725.P11129998244749345787

`∩[A038618(n+1), A084354(n+1)]`
-/

namespace A066725.P11129998244749345787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P11129998244749345787

noncomputable section

/-- A066725: Primes whose product of digits + 1 is also prime.

Offset 1, canonical program `A066725.P11129998244749345787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3887 terms. -/
def A066725 (n : ℕ) : ℤ :=
  (A066725.P11129998244749345787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3887 terms. -/
def A066725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067079.P1175467807256603628

`A321243(A037213(n²))`
-/

namespace A067079.P1175467807256603628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A037213 (n ^ 2)).toNat

end

end A067079.P1175467807256603628

noncomputable section

/-- A067079: Right digitorial function Rd(n) = abcd...*bcd...*cd...*d...*..., for n = abcd... in decimal notation.

Offset 0, canonical program `A067079.P1175467807256603628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A067079 (n : ℕ) : ℤ :=
  A067079.P1175467807256603628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A067079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067197.P14256898239862614097

`∪[A046790(n+1)-1, A046790(n+1)]`
-/

namespace A067197.P14256898239862614097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067197.P14256898239862614097

noncomputable section

/-- A067197: Numbers k such that k*(k+1)/2 is not squarefree.

Offset 1, canonical program `A067197.P14256898239862614097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067197 (n : ℕ) : ℤ :=
  (A067197.P14256898239862614097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067558.P16712056113848255202

`A001157(n+1)-(n+1)²`
-/

namespace A067558.P16712056113848255202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A067558.P16712056113848255202

noncomputable section

/-- A067558: Sum of squares of proper divisors of n.

Offset 1, canonical program `A067558.P16712056113848255202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067558 (n : ℕ) : ℤ :=
  A067558.P16712056113848255202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067766.P12496777605607687847

`lt[A001157(n+1), A002620(A000203(n+1))]+1`
-/

namespace A067766.P12496777605607687847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067766.P12496777605607687847

noncomputable section

/-- A067766: Numbers k such that sigma(k)^2 > 4*sigma_2(k) where sigma_2(k) is the sum of squares over the divisors of k.

Offset 1, canonical program `A067766.P12496777605607687847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A067766 (n : ℕ) : ℤ :=
  (A067766.P12496777605607687847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A067766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067770.P15834457254967640433

`A065344(A028310(n))/(A028310(n)+1)`
-/

namespace A067770.P15834457254967640433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065344 (A028310 n).toNat : ℚ) / (A028310 n + 1 : ℚ)

end

end A067770.P15834457254967640433

noncomputable section

/-- A067770: a(n) = Catalan(n) mod (n+2).

Offset 0, canonical program `A067770.P15834457254967640433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067770.P15834457254967640433.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067775.P8759455663766693638

`p?[A156037(n+1)+A005171(A175221(n+1))]`
-/

namespace A067775.P8759455663766693638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) + A005171 (A175221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P8759455663766693638

noncomputable section

/-- A067775: Primes p such that p + 4 is composite.

Offset 1, canonical program `A067775.P8759455663766693638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5682 terms. -/
def A067775 (n : ℕ) : ℤ :=
  A067775.P8759455663766693638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5682 terms. -/
def A067775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067874.P9560290715763698654

`2*A272799(n+1)`
-/

namespace A067874.P9560290715763698654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272799 (n + 1)

end

end A067874.P9560290715763698654

noncomputable section

/-- A067874: Positive integers x satisfying x^2 - D*y^2 = 1 for a unique integer D.

Offset 1, canonical program `A067874.P9560290715763698654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067874 (n : ℕ) : ℤ :=
  A067874.P9560290715763698654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067874.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067889.P13334168951864869108

`A045319(lt[A145337(n)², 1])`
-/

namespace A067889.P13334168951864869108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067889.P13334168951864869108

noncomputable section

/-- A067889: Primes sandwiched between two numbers having same number of divisors.

Offset 1, canonical program `A067889.P13334168951864869108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A067889 (n : ℕ) : ℤ :=
  A067889.P13334168951864869108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A067889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068050.P2800692697421074325

`A013939(n+1)-∑[A072627(n+1)]`
-/

namespace A068050.P2800692697421074325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068050.P2800692697421074325

noncomputable section

/-- A068050: Number of values of k, 1<=k<=n, for which floor(n/k) is prime.

Offset 1, canonical program `A068050.P2800692697421074325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068050 (n : ℕ) : ℤ :=
  A068050.P2800692697421074325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068067.P8429999717288911896

`A068068(n+1)-n%2`
-/

namespace A068067.P8429999717288911896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A068067.P8429999717288911896

noncomputable section

/-- A068067: Number of integers m, 0 < m <= n, such that n divides m(m+1)/2.

Offset 1, canonical program `A068067.P8429999717288911896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068067 (n : ℕ) : ℤ :=
  A068067.P8429999717288911896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068822.P12092756705496627243

`gcd(n+1, A089186(n+1))`
-/

namespace A068822.P12092756705496627243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A089186 (n + 1))

end

end A068822.P12092756705496627243

noncomputable section

/-- A068822: a(n) = gcd(n,c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068822.P12092756705496627243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068822 (n : ℕ) : ℤ :=
  (A068822.P12092756705496627243.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069059.P15537564215172939838

`eq[0, A325964(n+1)]+1`
-/

namespace A069059.P15537564215172939838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069059.P15537564215172939838

noncomputable section

/-- A069059: Numbers k such that k and sigma(k) are not relatively prime.

Offset 1, canonical program `A069059.P15537564215172939838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069059 (n : ℕ) : ℤ :=
  (A069059.P15537564215172939838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069639.P8862387872476146711

`A007491(n+1)²`
-/

namespace A069639.P8862387872476146711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) ^ 2

end

end A069639.P8862387872476146711

noncomputable section

/-- A069639: Smallest composite k such that phi(k) > k*(1-1/n^2).

Offset 1, canonical program `A069639.P8862387872476146711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069639 (n : ℕ) : ℤ :=
  A069639.P8862387872476146711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069735.P7037159933635836489

`A000005(n+1)+A183063(n+1)`
-/

namespace A069735.P7037159933635836489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A183063 (n + 1)

end

end A069735.P7037159933635836489

noncomputable section

/-- A069735: Number of regular orientable coverings of the Klein bottle with 2n lists.

Offset 1, canonical program `A069735.P7037159933635836489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069735 (n : ℕ) : ℤ :=
  A069735.P7037159933635836489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069879.P15875305375985047542

`2*A071917(n+1)`
-/

namespace A069879.P15875305375985047542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071917 (n + 1)

end

end A069879.P15875305375985047542

noncomputable section

/-- A069879: Number of pairs {i,j} with i different from j; 1<=i<=n; 1<= j <=n such that i+j is a prime number.

Offset 1, canonical program `A069879.P15875305375985047542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069879 (n : ℕ) : ℤ :=
  A069879.P15875305375985047542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070545.P9962568616879436559

`∑[A325964(n+1)]`
-/

namespace A070545.P9962568616879436559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P9962568616879436559

noncomputable section

/-- A070545: a(n) = Card( k, 0

Offset 1, canonical program `A070545.P9962568616879436559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070545 (n : ℕ) : ℤ :=
  A070545.P9962568616879436559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070949.P1002043794183417045

`Δ[A174868(n+1)]²-A071883(n+1)`
-/

namespace A070949.P1002043794183417045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A071883 (n + 1)

end

end A070949.P1002043794183417045

noncomputable section

/-- A070949: Little Hankel transform of A002487.

Offset 0, canonical program `A070949.P1002043794183417045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070949 (n : ℕ) : ℤ :=
  A070949.P1002043794183417045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071328.P14920521615999072632

`A151800(A095116(n+1))`
-/

namespace A071328.P14920521615999072632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A095116 (n + 1)).toNat

end

end A071328.P14920521615999072632

noncomputable section

/-- A071328: Smallest prime q such that q - prime(n) >= n.

Offset 1, canonical program `A071328.P14920521615999072632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071328 (n : ℕ) : ℤ :=
  A071328.P14920521615999072632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071868.P4330058732517651371

`∑[A295405(n+1)]`
-/

namespace A071868.P4330058732517651371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P4330058732517651371

noncomputable section

/-- A071868: Number of integers k (1 <= k <= n) such that k^2+1 is prime.

Offset 1, canonical program `A071868.P4330058732517651371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071868 (n : ℕ) : ℤ :=
  A071868.P4330058732517651371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071941.P10099421233231050487

`eq[Δ[A065357(n)], A323547(n+1)]+1`
-/

namespace A071941.P10099421233231050487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A071941.P10099421233231050487

noncomputable section

/-- A071941: Nonprimes for which floor(2^n/n) is even.

Offset 1, canonical program `A071941.P10099421233231050487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5826 terms. -/
def A071941 (n : ℕ) : ℤ :=
  (A071941.P10099421233231050487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5826 terms. -/
def A071941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072516.P18149148055783031557

`∑[A000196(n)-A293235(n+1)]`
-/

namespace A072516.P18149148055783031557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A293235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P18149148055783031557

noncomputable section

/-- A072516: Sum of remainders when n is divided by lesser squares.

Offset 1, canonical program `A072516.P18149148055783031557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072516 (n : ℕ) : ℤ :=
  A072516.P18149148055783031557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072670.P17694124448625562099

`A038548(n+1)-1`
-/

namespace A072670.P17694124448625562099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - 1

end

end A072670.P17694124448625562099

noncomputable section

/-- A072670: Number of ways to write n as i*j + i + j, 0 < i <= j.

Offset 0, canonical program `A072670.P17694124448625562099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072670 (n : ℕ) : ℤ :=
  A072670.P17694124448625562099.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072695.P12128296506412736913

`A356574(n+1)/A061680(n+1)`
-/

namespace A072695.P12128296506412736913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356574 (n + 1) : ℚ) / (A061680 (n + 1) : ℚ)

end

end A072695.P12128296506412736913

noncomputable section

/-- A072695: a(n) = lcm(d(n^2),d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072695.P12128296506412736913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072695.P12128296506412736913.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072902.P12422950838438587847

`filter[A003658(n+1), A005171(#)]`
-/

namespace A072902.P12422950838438587847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A072902.P12422950838438587847

noncomputable section

/-- A072902: Nonprime numbers m such that the discriminant of the quadratic field Q(sqrt(m)) equals m.

Offset 1, canonical program `A072902.P12422950838438587847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8249 terms. -/
def A072902 (n : ℕ) : ℤ :=
  A072902.P12422950838438587847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8249 terms. -/
def A072902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073445.P10904794807909655656

`A073783(n+2)-A073783(n+1)`
-/

namespace A073445.P10904794807909655656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 2) - A073783 (n + 1)

end

end A073445.P10904794807909655656

noncomputable section

/-- A073445: Second differences of A002808, the sequence of composites.

Offset 1, canonical program `A073445.P10904794807909655656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073445 (n : ℕ) : ℤ :=
  A073445.P10904794807909655656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073632.P11723121080494302604

`comp[A073634(n+1)]`
-/

namespace A073632.P11723121080494302604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073632.P11723121080494302604

noncomputable section

/-- A073632: Numbers k such that floor((3/2)^k) = A002379(k) is odd.

Offset 1, canonical program `A073632.P11723121080494302604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073632 (n : ℕ) : ℤ :=
  (A073632.P11723121080494302604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073806.P9628583595315297770

`A000005(A001157(n+1))`
-/

namespace A073806.P9628583595315297770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001157 (n + 1)).toNat

end

end A073806.P9628583595315297770

noncomputable section

/-- A073806: Number of divisors of sum of square of divisors.

Offset 1, canonical program `A073806.P9628583595315297770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073806 (n : ℕ) : ℤ :=
  A073806.P9628583595315297770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074039.P2969745360173369401

`A071538(n+1)*A353463(n+1)`
-/

namespace A074039.P2969745360173369401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) * A353463 (n + 1)

end

end A074039.P2969745360173369401

noncomputable section

/-- A074039: If (n, n+2) is the k-th twin prime pair then k else 0.

Offset 1, canonical program `A074039.P2969745360173369401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074039 (n : ℕ) : ℤ :=
  A074039.P2969745360173369401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074495.P8235273495252244141

`A151800(A000203(n+1))`
-/

namespace A074495.P8235273495252244141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000203 (n + 1)).toNat

end

end A074495.P8235273495252244141

noncomputable section

/-- A074495: a(n) = the first prime > sigma(n).

Offset 1, canonical program `A074495.P8235273495252244141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074495 (n : ℕ) : ℤ :=
  A074495.P8235273495252244141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074965.P6729501148211341454

`p?[A034953(n+1)%A291463(n+1)]`
-/

namespace A074965.P6729501148211341454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034953 (n + 1)) (A291463 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074965.P6729501148211341454

noncomputable section

/-- A074965: Primes p for which there is an integer k such that (2*k+1)*p=2*k*q+1, where q is the next prime after p. Equivalently, (p-1)/(2*(q-p)) is an integer.

Offset 1, canonical program `A074965.P6729501148211341454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A074965 (n : ℕ) : ℤ :=
  A074965.P6729501148211341454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A074965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075694.P11278241029682646582

`2*A151800(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A075694.P11278241029682646582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A151800 (a (n - 1)).toNat - a (n - 1)

end

end A075694.P11278241029682646582

noncomputable section

/-- A075694: a(1)=1, then "jump over next prime": a(n) = 2 nextprime(a(n-1))-a(n-1).

Offset 1, canonical program `A075694.P11278241029682646582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5266 terms. -/
def A075694 (n : ℕ) : ℤ :=
  A075694.P11278241029682646582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5266 terms. -/
def A075694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075695.P3023950291633561010

`2*A151800(A151800(a(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A075695.P3023950291633561010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A151800 (A151800 (a (n - 1)).toNat).toNat - a (n - 1)

end

end A075695.P3023950291633561010

noncomputable section

/-- A075695: a(1)=1, then "jump over two primes": a(n) = 2*nextprime(nextprime(a(n-1))) - a(n-1).

Offset 1, canonical program `A075695.P3023950291633561010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2546 terms. -/
def A075695 (n : ℕ) : ℤ :=
  A075695.P3023950291633561010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2546 terms. -/
def A075695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075794.P2063623705962702064

`A151800(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1)`
-/

namespace A075794.P2063623705962702064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A075794.P2063623705962702064

noncomputable section

/-- A075794: a(n) = the least positive integer k such that phi(k) > phi(1) + ... + phi(n).

Offset 1, canonical program `A075794.P2063623705962702064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A075794 (n : ℕ) : ℤ :=
  A075794.P2063623705962702064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A075794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076873.P18423737301945540033

`A151800(∑[p?[2*n+1]]+1-p?[2*n+1])`
-/

namespace A076873.P18423737301945540033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

end

end A076873.P18423737301945540033

noncomputable section

/-- A076873: Smallest prime not less than sum of first n primes.

Offset 1, canonical program `A076873.P18423737301945540033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A076873 (n : ℕ) : ℤ :=
  A076873.P18423737301945540033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A076873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076934.P11420301577610555374

`(n+1)/A055770(n+1)`
-/

namespace A076934.P11420301577610555374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055770 (n + 1) : ℚ)

end

end A076934.P11420301577610555374

noncomputable section

/-- A076934: Smallest integer of the form n/k!.

Offset 1, canonical program `A076934.P11420301577610555374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076934.P11420301577610555374.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077171.P15624260767854281939

`A136548(∑[C(2, a(n-1))+n]+1)` with `a(0)=1`
-/

namespace A077171.P15624260767854281939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose 2 (f1 (n - 1)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077171.P15624260767854281939

noncomputable section

/-- A077171: a(n) = k where k! is the product of the terms of the n-th row of A077168.

Offset 0, canonical program `A077171.P15624260767854281939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077171 (n : ℕ) : ℤ :=
  A077171.P15624260767854281939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077457.P11706829085176532255

`A001159((n+1)^4)/A001157((n+1)^4)`
-/

namespace A077457.P11706829085176532255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 ((n + 1) ^ 4) : ℚ) / (A001157 ((n + 1) ^ 4) : ℚ)

end

end A077457.P11706829085176532255

noncomputable section

/-- A077457: a(n) = sigma_4(n^4)/sigma_2(n^4).

Offset 1, canonical program `A077457.P11706829085176532255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077457 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077457.P11706829085176532255.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077598.P2942604265624404829

`∑[A143356(n+1)-A131089(n+1)]`
-/

namespace A077598.P2942604265624404829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143356 (n + 1) - A131089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077598.P2942604265624404829

noncomputable section

/-- A077598: Coefficient of x^2 in the n-th Moebius polynomial (A074586), M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

Offset 1, canonical program `A077598.P2942604265624404829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598 (n : ℕ) : ℤ :=
  A077598.P2942604265624404829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078782.P12729689077806731544

`filter[A141437(n+2), A005171(#)]`
-/

namespace A078782.P12729689077806731544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A078782.P12729689077806731544

noncomputable section

/-- A078782: Nonprimes (A018252) with prime (A000040) subscripts.

Offset 1, canonical program `A078782.P12729689077806731544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5113 terms. -/
def A078782 (n : ℕ) : ℤ :=
  A078782.P12729689077806731544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5113 terms. -/
def A078782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079477.P16249418504405446302

`A151800(A036689(n+1))`
-/

namespace A079477.P16249418504405446302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A036689 (n + 1)).toNat

end

end A079477.P16249418504405446302

noncomputable section

/-- A079477: First prime after phi(prime(n)^2).

Offset 1, canonical program `A079477.P16249418504405446302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079477 (n : ℕ) : ℤ :=
  A079477.P16249418504405446302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079779.P14774343609716682029

`A151800(A033286(n+1))`
-/

namespace A079779.P14774343609716682029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A033286 (n + 1)).toNat

end

end A079779.P14774343609716682029

noncomputable section

/-- A079779: a(n) = smallest prime > n*prime(n).

Offset 1, canonical program `A079779.P14774343609716682029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079779 (n : ℕ) : ℤ :=
  A079779.P14774343609716682029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080736.P3377769303044766093

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A317528(n+1))`
-/

namespace A080736.P3377769303044766093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A317528 (n + 1))

end

end A080736.P3377769303044766093

noncomputable section

/-- A080736: Multiplicative function defined by a(1)=1, a(2)=0, a(2^r) = phi(2^r) (r>1), a(p^r) = phi(p^r) (p odd prime, r>=1), where phi is Euler's function A000010.

Offset 1, canonical program `A080736.P3377769303044766093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080736 (n : ℕ) : ℤ :=
  (A080736.P3377769303044766093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081241.P18283941350862078452

`(A145341(n+3)-3)/2`
-/

namespace A081241.P18283941350862078452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 3) - 3 : ℚ) / 2

end

end A081241.P18283941350862078452

noncomputable section

/-- A081241: Position in B of reversal of n-th term of B, where B is the logic-binary sequence, A007931.

Offset 1, canonical program `A081241.P18283941350862078452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081241 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081241.P18283941350862078452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081531.P7633572976891130999

`A045344(lt[1, A082886(n+1)])`
-/

namespace A081531.P7633572976891130999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081531.P7633572976891130999

noncomputable section

/-- A081531: Primes p such that (r-p)/log(p) > 2, where r is the next prime after p.

Offset 1, canonical program `A081531.P7633572976891130999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A081531 (n : ℕ) : ℤ :=
  A081531.P7633572976891130999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A081531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082092.P6243506660087546577

`filter[A073803(n+1), A005171(#)]`
-/

namespace A082092.P6243506660087546577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A082092.P6243506660087546577

noncomputable section

/-- A082092: Composite k such that d(k) < d(sigma(k)), i.e., A000005(k) < A000005(A000203(k)).

Offset 1, canonical program `A082092.P6243506660087546577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092 (n : ℕ) : ℤ :=
  A082092.P6243506660087546577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082509.P14196802049557851940

`A001223(lt[1, A100375(n+1)]+1)`
-/

namespace A082509.P14196802049557851940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A082509.P14196802049557851940

noncomputable section

/-- A082509: Differences between consecutive primes that are not powers of 2 in order of their appearance. Differences which are powers of 2 are omitted from A001223.

Offset 1, canonical program `A082509.P14196802049557851940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. -/
def A082509 (n : ℕ) : ℤ :=
  A082509.P14196802049557851940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. -/
def A082509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082522.P5892597509266673484

`A050376(n+1)²`
-/

namespace A082522.P5892597509266673484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) ^ 2

end

end A082522.P5892597509266673484

noncomputable section

/-- A082522: Numbers of the form p^(2^k) with p prime and k>0.

Offset 1, canonical program `A082522.P5892597509266673484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522 (n : ℕ) : ℤ :=
  A082522.P5892597509266673484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082902.P17735805173281727521

`A006519(A001157(n+1))`
-/

namespace A082902.P17735805173281727521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001157 (n + 1)).toNat

end

end A082902.P17735805173281727521

noncomputable section

/-- A082902: a(n) = gcd(2^n, sigma(2,n)) = gcd(A000079(n), A001157(n)).

Offset 1, canonical program `A082902.P17735805173281727521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082902 (n : ℕ) : ℤ :=
  A082902.P17735805173281727521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083854.P7100940027082630718

`lt[1, A000034(A125061(n))]`
-/

namespace A083854.P7100940027082630718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083854.P7100940027082630718

noncomputable section

/-- A083854: Numbers that are squares, twice squares, three times squares, or six times squares, i.e., numbers whose squarefree part divides 6.

Offset 0, canonical program `A083854.P7100940027082630718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854 (n : ℕ) : ℤ :=
  (A083854.P7100940027082630718.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084988.P10462834294168288044

`∩[A084984(n+1), A104211(n+1)]`
-/

namespace A084988.P10462834294168288044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084988.P10462834294168288044

noncomputable section

/-- A084988: Numbers made with nonprime digits such that the sum of the digits is also not prime.

Offset 1, canonical program `A084988.P10462834294168288044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. -/
def A084988 (n : ℕ) : ℤ :=
  (A084988.P10462834294168288044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. -/
def A084988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085987.P7602126064279087842

`filter[A030630(n+1), A212793(#)]`
-/

namespace A085987.P7602126064279087842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A085987.P7602126064279087842

noncomputable section

/-- A085987: Product of exactly four primes, three of which are distinct (p^2*q*r).

Offset 1, canonical program `A085987.P7602126064279087842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. -/
def A085987 (n : ℕ) : ℤ :=
  A085987.P7602126064279087842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. -/
def A085987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086933.P4574553822298761829

`∑{d}[n+1, A111938(#)*A374367((n+1)/#)]`
-/

namespace A086933.P4574553822298761829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111938 d * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086933.P4574553822298761829

noncomputable section

/-- A086933: Number of solutions to x^2 + y^2 = 0 mod n.

Offset 1, canonical program `A086933.P4574553822298761829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933 (n : ℕ) : ℤ :=
  A086933.P4574553822298761829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087030.P1288497495494676247

`2*A151800(n+1)-(n+1)`
-/

namespace A087030.P1288497495494676247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 (n + 1) - (n + 1 : ℤ)

end

end A087030.P1288497495494676247

noncomputable section

/-- A087030: n "reflected" in the next prime: a(n)=2p-n, p is smallest prime > n.

Offset 1, canonical program `A087030.P1288497495494676247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087030 (n : ℕ) : ℤ :=
  A087030.P1288497495494676247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087032.P929361503282917607

`A010051(2*A151800(n+1)-(n+1))`
-/

namespace A087032.P929361503282917607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A151800 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087032.P929361503282917607

noncomputable section

/-- A087032: a(n) = 1 if 2*A151800(n) - n is prime, otherwise 0, where A151800(n) is the smallest prime > n.

Offset 1, canonical program `A087032.P929361503282917607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087032 (n : ℕ) : ℤ :=
  A087032.P929361503282917607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087472.P6974076248790329574

`A031346(A056709(2*(n+1)))*A031346(n+1)`
-/

namespace A087472.P6974076248790329574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A056709 (2 * (n + 1))).toNat * A031346 (n + 1)

end

end A087472.P6974076248790329574

noncomputable section

/-- A087472: Number of iterations required for the function f(n) to reach a single digit, where f(n) is the product of the two numbers formed from the alternating digits of n.

Offset 1, canonical program `A087472.P6974076248790329574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A087472 (n : ℕ) : ℤ :=
  A087472.P6974076248790329574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A087472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087624.P6510087448774720234

`A001221(n+1)*A005171(n+1)`
-/

namespace A087624.P6510087448774720234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A005171 (n + 1)

end

end A087624.P6510087448774720234

noncomputable section

/-- A087624: a(n)=0 if n is prime, A001221(n) otherwise.

Offset 1, canonical program `A087624.P6510087448774720234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087624 (n : ℕ) : ℤ :=
  A087624.P6510087448774720234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088499.P11000041782602806712

`record[A145064(A141545(n+1))+1]`
-/

namespace A088499.P11000041782602806712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A141545 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088499.P11000041782602806712

noncomputable section

/-- A088499: Doubly (3)-perfect numbers.

Offset 1, canonical program `A088499.P11000041782602806712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A088499 (n : ℕ) : ℤ :=
  A088499.P11000041782602806712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A088499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088709.P16139510648427696938

`filter[A007422(n+1), A296211(#)]`
-/

namespace A088709.P16139510648427696938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P16139510648427696938

noncomputable section

/-- A088709: Numbers m that are a product of two primes j and k such that m+j+k is prime.

Offset 1, canonical program `A088709.P16139510648427696938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709 (n : ℕ) : ℤ :=
  A088709.P16139510648427696938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089189.P12304478124887923302

`p?[A212793(n+1)+1+n]`
-/

namespace A089189.P12304478124887923302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P12304478124887923302

noncomputable section

/-- A089189: Primes p such that p-1 is cubefree.

Offset 1, canonical program `A089189.P12304478124887923302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. -/
def A089189 (n : ℕ) : ℤ :=
  A089189.P12304478124887923302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. -/
def A089189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089191.P6897987938072641486

`p?[n*A212793(n+1)]`
-/

namespace A089191.P6897987938072641486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089191.P6897987938072641486

noncomputable section

/-- A089191: Primes p such that p+1 is cubefree.

Offset 1, canonical program `A089191.P6897987938072641486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. -/
def A089191 (n : ℕ) : ℤ :=
  A089191.P6897987938072641486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. -/
def A089191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089199.P16774325504568410811

`p?[n*(1-A212793(n+1))]`
-/

namespace A089199.P16774325504568410811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A212793 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P16774325504568410811

noncomputable section

/-- A089199: Primes p such that p+1 is divisible by a cube.

Offset 1, canonical program `A089199.P16774325504568410811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. -/
def A089199 (n : ℕ) : ℤ :=
  A089199.P16774325504568410811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. -/
def A089199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089402.P12649387450735140950

`(A000108(n)+A089408(n))/2`
-/

namespace A089402.P12649387450735140950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A089408 n : ℚ) / 2

end

end A089402.P12649387450735140950

noncomputable section

/-- A089402: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

Offset 0, canonical program `A089402.P12649387450735140950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089402.P12649387450735140950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089960.P1978568559231808263

`∩[A003233(n+1), A247425(n+1)]`
-/

namespace A089960.P1978568559231808263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089960.P1978568559231808263

noncomputable section

/-- A089960: Positions in A089959 where 4 occurs.

Offset 1, canonical program `A089960.P1978568559231808263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A089960 (n : ℕ) : ℤ :=
  (A089960.P1978568559231808263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A089960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008313.P7466062722273303324

`A008311(n)-A008311(n+1)%A008311(n)`
-/

namespace A008313.P7466062722273303324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n - Int.tmod (A008311 (n + 1)) (A008311 n)

end

end A008313.P7466062722273303324

noncomputable section

/-- A008313: Triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008313.P7466062722273303324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008313 (n : ℕ) : ℤ :=
  A008313.P7466062722273303324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014411.P10381451059067802495

`A008311(lt[A008311(n+1), A008311(n)])`
-/

namespace A014411.P10381451059067802495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014411.P10381451059067802495

noncomputable section

/-- A014411: Triangular array formed from elements to right of middle of rows of Pascal's triangle that are not 1.

Offset 1, canonical program `A014411.P10381451059067802495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9702 terms. -/
def A014411 (n : ℕ) : ℤ :=
  A014411.P10381451059067802495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9702 terms. -/
def A014411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019470.P13912836705486436891

`record[n+3-A065344(n+1)]`
-/

namespace A019470.P13912836705486436891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A065344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019470.P13912836705486436891

noncomputable section

/-- A019470: Numbers k that divide binomial(2*k-4, k-2).

Offset 1, canonical program `A019470.P13912836705486436891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. -/
def A019470 (n : ℕ) : ℤ :=
  A019470.P13912836705486436891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. -/
def A019470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023801.P9421328058165886828

`eq[1, A178788(A084984(n+1))]`
-/

namespace A023801.P9421328058165886828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023801.P9421328058165886828

noncomputable section

/-- A023801: Xenodromes: numbers such that all digits in base 6 are different.

Offset 1, canonical program `A023801.P9421328058165886828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. -/
def A023801 (n : ℕ) : ℤ :=
  (A023801.P9421328058165886828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. -/
def A023801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026818.P14528478807317566553

`eq[2, A000005(A073730(n+1))]+1`
-/

namespace A026818.P14528478807317566553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073730 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026818.P14528478807317566553

noncomputable section

/-- A026818: Largest digit of n concatenated with smallest digit of n is prime.

Offset 1, canonical program `A026818.P14528478807317566553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A026818 (n : ℕ) : ℤ :=
  (A026818.P14528478807317566553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A026818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028846.P7450383305862241760

`A261189(A308496(n+1))`
-/

namespace A028846.P7450383305862241760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (A308496 (n + 1)).toNat

end

end A028846.P7450383305862241760

noncomputable section

/-- A028846: Numbers whose product of digits is a power of 2.

Offset 1, canonical program `A028846.P7450383305862241760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A028846 (n : ℕ) : ℤ :=
  A028846.P7450383305862241760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A028846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029611.P2146311653280549813

`A029610(A049068(n+1))`
-/

namespace A029611.P2146311653280549813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029610 (A049068 (n + 1)).toNat

end

end A029611.P2146311653280549813

noncomputable section

/-- A029611: Numbers to the left of the central elements of the (2,3)-Pascal triangle A029600 that are different from 2.

Offset 0, canonical program `A029611.P2146311653280549813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029611 (n : ℕ) : ℤ :=
  A029611.P2146311653280549813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033035.P7501407559641855011

`A037477(A033034(n+1))`
-/

namespace A033035.P7501407559641855011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A033034 (n + 1)).toNat

end

end A033035.P7501407559641855011

noncomputable section

/-- A033035: Numbers such that all base 9 digits are odd.

Offset 1, canonical program `A033035.P7501407559641855011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033035 (n : ℕ) : ℤ :=
  A033035.P7501407559641855011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033229.P4645839565782858084

`∪[A139506(n+1), A139875(n+1)]`
-/

namespace A033229.P4645839565782858084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P4645839565782858084

noncomputable section

/-- A033229: Primes of form x^2+42*y^2.

Offset 1, canonical program `A033229.P4645839565782858084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033229 (n : ℕ) : ℤ :=
  (A033229.P4645839565782858084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034939.P731908720823549946

`abs(A048899(n)-A268922(n))`
-/

namespace A034939.P731908720823549946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048899 n - A268922 n|

end

end A034939.P731908720823549946

noncomputable section

/-- A034939: a(n) is smallest number such that a(n)^2 + 1 is divisible by 5^n.

Offset 0, canonical program `A034939.P731908720823549946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034939 (n : ℕ) : ℤ :=
  A034939.P731908720823549946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036795.P10115071211355073936

`A062879(n+1)+1-A062877(n)`
-/

namespace A036795.P10115071211355073936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + (1 - A062877 n)

end

end A036795.P10115071211355073936

noncomputable section

/-- A036795: Integers that can be decomposed into sums of different Fibonacci numbers of even argument.

Offset 0, canonical program `A036795.P10115071211355073936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A036795 (n : ℕ) : ℤ :=
  A036795.P10115071211355073936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A036795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037997.P5303989114763957412

`eq[2, A043283(n+1)]+1`
-/

namespace A037997.P5303989114763957412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037997.P5303989114763957412

noncomputable section

/-- A037997: Numbers whose maximal base-9 run length is 2.

Offset 1, canonical program `A037997.P5303989114763957412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037997 (n : ℕ) : ℤ :=
  (A037997.P5303989114763957412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037998.P10736495446636954267

`eq[3, A043283(A028310(n))]`
-/

namespace A037998.P10736495446636954267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037998.P10736495446636954267

noncomputable section

/-- A037998: Numbers whose maximal base-9 run length is 3.

Offset 1, canonical program `A037998.P10736495446636954267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A037998 (n : ℕ) : ℤ :=
  (A037998.P10736495446636954267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A037998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040115.P18270072698268688053

`A037904(A000007(n²)+n)`
-/

namespace A040115.P18270072698268688053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A040115.P18270072698268688053

noncomputable section

/-- A040115: Concatenate absolute values of differences between adjacent digits of n.

Offset 0, canonical program `A040115.P18270072698268688053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A040115 (n : ℕ) : ℤ :=
  A040115.P18270072698268688053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A040115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043095.P4901901167020790074

`eq[3, A043283(A028310(n))+2]`
-/

namespace A043095.P4901901167020790074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P4901901167020790074

noncomputable section

/-- A043095: Numbers with property that no two consecutive base 9 digits are equal.

Offset 1, canonical program `A043095.P4901901167020790074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6571 terms. -/
def A043095 (n : ℕ) : ℤ :=
  (A043095.P4901901167020790074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6571 terms. -/
def A043095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043281.P4877973788972823573

`A043283(A037475(n+1))`
-/

namespace A043281.P4877973788972823573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037475 (n + 1)).toNat

end

end A043281.P4877973788972823573

noncomputable section

/-- A043281: Maximal run length in base-7 representation of n.

Offset 1, canonical program `A043281.P4877973788972823573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043281 (n : ℕ) : ℤ :=
  A043281.P4877973788972823573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043282.P4792003988380030781

`A043283(A037477(n+1))`
-/

namespace A043282.P4792003988380030781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037477 (n + 1)).toNat

end

end A043282.P4792003988380030781

noncomputable section

/-- A043282: Maximal run length in base 8 representation of n.

Offset 1, canonical program `A043282.P4792003988380030781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043282 (n : ℕ) : ℤ :=
  A043282.P4792003988380030781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043369.P5469046483156148534

`eq[n*A055641(A084984(n+1)), A028310(n)]`
-/

namespace A043369.P5469046483156148534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 (A084984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043369.P5469046483156148534

noncomputable section

/-- A043369: Numbers having one 0 in base 6.

Offset 1, canonical program `A043369.P5469046483156148534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A043369 (n : ℕ) : ℤ :=
  (A043369.P5469046483156148534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A043369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043386.P13446729167235893764

`eq[2, A316869(A084984(n+1))]`
-/

namespace A043386.P13446729167235893764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043386.P13446729167235893764

noncomputable section

/-- A043386: Numbers having two 4's in base 6.

Offset 1, canonical program `A043386.P13446729167235893764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043386 (n : ℕ) : ℤ :=
  (A043386.P13446729167235893764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045328.P12171368475854525433

`∪[A045329(n+1), A045463(n+1)]`
-/

namespace A045328.P12171368475854525433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045328.P12171368475854525433

noncomputable section

/-- A045328: Primes congruent to {0, 1, 2, 3, 6} (mod 7).

Offset 1, canonical program `A045328.P12171368475854525433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045328 (n : ℕ) : ℤ :=
  (A045328.P12171368475854525433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049653.P2986559009846252833

`A049711(2*(n+2))`
-/

namespace A049653.P2986559009846252833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * (n + 2))

end

end A049653.P2986559009846252833

noncomputable section

/-- A049653: a(n) = 2*n - prevprime(2*n).

Offset 2, canonical program `A049653.P2986559009846252833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049653 (n : ℕ) : ℤ :=
  A049653.P2986559009846252833.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053795.P9037477365799927319

`A100490(n+1)`
-/

namespace A053795.P9037477365799927319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 (n + 1)

end

end A053795.P9037477365799927319

noncomputable section

/-- A053795: Composite numbers ending in 1, 3, 7 or 9.

Offset 1, canonical program `A053795.P9037477365799927319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053795 (n : ℕ) : ℤ :=
  A053795.P9037477365799927319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080218.P8051704122228594511

`comp[A182859(n+1)-1]+1`
-/

namespace A080218.P8051704122228594511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080218.P8051704122228594511

noncomputable section

/-- A080218: Monotonically increasing sequence such that every positive integer n appears if and only if d(n) doesn't (d(n)=number of divisors of n, A000005).

Offset 1, canonical program `A080218.P8051704122228594511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218 (n : ℕ) : ℤ :=
  (A080218.P8051704122228594511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084558.P8374569854218058976

`A090529(n+1)-1`
-/

namespace A084558.P8374569854218058976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1) - 1

end

end A084558.P8374569854218058976

noncomputable section

/-- A084558: a(0) = 0; for n >= 1: a(n) = largest m such that n >= m!.

Offset 0, canonical program `A084558.P8374569854218058976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084558 (n : ℕ) : ℤ :=
  A084558.P8374569854218058976.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034935.P1943282245876720282

`record[A048898(abs(1-abs(1-n)))]`
-/

namespace A034935.P1943282245876720282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 |(1 - |1 - (n : ℤ)|)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034935.P1943282245876720282

noncomputable section

/-- A034935: Successive approximations to 5-adic integer sqrt(-1).

Offset 0, canonical program `A034935.P1943282245876720282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A034935 (n : ℕ) : ℤ :=
  A034935.P1943282245876720282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A034935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037903.P7439451824534172886

`A037904(A007095(n)+floor(1/(n+1)))`
-/

namespace A037903.P7439451824534172886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A007095 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A037903.P7439451824534172886

noncomputable section

/-- A037903: a(n) = (greatest base 9 digit of n) - (least base 9 digit of n).

Offset 0, canonical program `A037903.P7439451824534172886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037903 (n : ℕ) : ℤ :=
  A037903.P7439451824534172886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045320.P2739606859632727750

`∪[A066436(n+1), A045334(n+1)]`
-/

namespace A045320.P2739606859632727750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045320.P2739606859632727750

noncomputable section

/-- A045320: Primes not congruent to 5 (mod 7).

Offset 1, canonical program `A045320.P2739606859632727750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045320 (n : ℕ) : ℤ :=
  (A045320.P2739606859632727750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045417.P13044081721877140394

`∪[A066436(n+1), A045426(n+1)]`
-/

namespace A045417.P13044081721877140394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P13044081721877140394

noncomputable section

/-- A045417: Primes congruent to {0, 1, 3, 4, 6} mod 7.

Offset 1, canonical program `A045417.P13044081721877140394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045417 (n : ℕ) : ℤ :=
  (A045417.P13044081721877140394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045422.P2170341325868455356

`∪[A066436(n+1), A045433(n+1)]`
-/

namespace A045422.P2170341325868455356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P2170341325868455356

noncomputable section

/-- A045422: Primes congruent to {0, 1, 3, 6} mod 7.

Offset 1, canonical program `A045422.P2170341325868455356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045422 (n : ℕ) : ℤ :=
  (A045422.P2170341325868455356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008508.P16450631041842970422

`A000720(A071904(n+1))-1`
-/

namespace A008508.P16450631041842970422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071904 (n + 1)).toNat - 1

end

end A008508.P16450631041842970422

noncomputable section

/-- A008508: Number of odd primes less than n-th odd composite number.

Offset 1, canonical program `A008508.P16450631041842970422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A071904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008508 (n : ℕ) : ℤ :=
  A008508.P16450631041842970422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A071904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013638.P16465662460005604629

`A007917(n+2)*A151800(n+3)`
-/

namespace A013638.P16465662460005604629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A151800 (n + 3)

end

end A013638.P16465662460005604629

noncomputable section

/-- A013638: a(n) = prevprime(n)*nextprime(n).

Offset 3, canonical program `A013638.P16465662460005604629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013638 (n : ℕ) : ℤ :=
  A013638.P16465662460005604629.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014198.P2354480518814049901

`a(n-1)+2*A105673(n)` with `a(0)=0`
-/

namespace A014198.P2354480518814049901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A105673 n

end

end A014198.P2354480518814049901

noncomputable section

/-- A014198: Number of integer solutions to x^2 + y^2 <= n excluding (0,0).

Offset 0, canonical program `A014198.P2354480518814049901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198 (n : ℕ) : ℤ :=
  A014198.P2354480518814049901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018804.P15177010680010264719

`∑{d}[n+1, A007429(#)*A007432((n+1)/#)]`
-/

namespace A018804.P15177010680010264719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A018804.P15177010680010264719

noncomputable section

/-- A018804: Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A018804.P15177010680010264719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018804 (n : ℕ) : ℤ :=
  A018804.P15177010680010264719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022885.P9407388956969530620

`A000040(A022884(n+1))`
-/

namespace A022885.P9407388956969530620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022884 (n + 1)).toNat

end

end A022885.P9407388956969530620

noncomputable section

/-- A022885: Primes p=prime(k) such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

Offset 1, canonical program `A022885.P9407388956969530620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A022884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022885 (n : ℕ) : ℤ :=
  A022885.P9407388956969530620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A022884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023521.P8353557815363639841

`A008472(A023515(n+2))`
-/

namespace A023521.P8353557815363639841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A023515 (n + 2)).toNat

end

end A023521.P8353557815363639841

noncomputable section

/-- A023521: Sum of distinct prime divisors of prime(n)*prime(n-1) - 1.

Offset 2, canonical program `A023521.P8353557815363639841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A023515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023521 (n : ℕ) : ℤ :=
  A023521.P8353557815363639841.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A023515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027375.P1624201345270917595

`2*∑{d}[n, A296302(#)]`
-/

namespace A027375.P1624201345270917595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A296302 d)

end

end A027375.P1624201345270917595

noncomputable section

/-- A027375: Number of aperiodic binary strings of length n; also number of binary sequences with primitive period n.

Offset 0, canonical program `A027375.P1624201345270917595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A027375 (n : ℕ) : ℤ :=
  A027375.P1624201345270917595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A027375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036556.P10612096107422092398

`lt[0, A293162(n)]`
-/

namespace A036556.P10612096107422092398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036556.P10612096107422092398

noncomputable section

/-- A036556: Integers which when multiplied by 3 have an odd number of 1's in their binary expansion (cf. A000069).

Offset 1, canonical program `A036556.P10612096107422092398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8736 terms. -/
def A036556 (n : ℕ) : ℤ :=
  (A036556.P10612096107422092398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8736 terms. -/
def A036556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044450.P2422719575531033708

`record[A225822(n+1)+A006519(A003159(n+1))]`
-/

namespace A044450.P2422719575531033708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225822 (n + 1) + A006519 (A003159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044450.P2422719575531033708

noncomputable section

/-- A044450: Numbers k such that string 2,0 occurs in the base 4 representation of k but not of k+1.

Offset 1, canonical program `A044450.P2422719575531033708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. -/
def A044450 (n : ℕ) : ℤ :=
  A044450.P2422719575531033708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. -/
def A044450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046117.P460302525211984613

`A023201(n+1)+6`
-/

namespace A046117.P460302525211984613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + 6

end

end A046117.P460302525211984613

noncomputable section

/-- A046117: Primes p such that p-6 is also prime. (Upper of a pair of sexy primes.)

Offset 1, canonical program `A046117.P460302525211984613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046117 (n : ℕ) : ℤ :=
  A046117.P460302525211984613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046136.P11134419459334397821

`p?[A023201(n+1)-4]`
-/

namespace A046136.P11134419459334397821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046136.P11134419459334397821

noncomputable section

/-- A046136: Primes p such that p, p+4 and p+10 are primes.

Offset 1, canonical program `A046136.P11134419459334397821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A046136 (n : ℕ) : ℤ :=
  A046136.P11134419459334397821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A046136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048168.P17831030899034331783

`record[gcd(A048167(n+1)², A048166(n+1))]`
-/

namespace A048168.P17831030899034331783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048167 (n + 1) ^ 2) (A048166 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P17831030899034331783

noncomputable section

/-- A048168: n is divisible by the square of the number of unitary divisors of n (A034444).

Offset 1, canonical program `A048168.P17831030899034331783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168 (n : ℕ) : ℤ :=
  (A048168.P17831030899034331783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049508.P1111944552521367574

`A000720(A030431(n+1))`
-/

namespace A049508.P1111944552521367574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030431 (n + 1)).toNat

end

end A049508.P1111944552521367574

noncomputable section

/-- A049508: Numbers k such that prime(k) == 3 (mod 10).

Offset 1, canonical program `A049508.P1111944552521367574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049508 (n : ℕ) : ℤ :=
  A049508.P1111944552521367574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049773.P11655978421668356086

`A030109(n+1)+1`
-/

namespace A049773.P11655978421668356086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + 1

end

end A049773.P11655978421668356086

noncomputable section

/-- A049773: Triangular array T read by rows: if row n is r(1),...,r(m), then row n+1 is 2r(1)-1,...,2r(m)-1,2r(1),...,2r(m).

Offset 1, canonical program `A049773.P11655978421668356086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049773 (n : ℕ) : ℤ :=
  A049773.P11655978421668356086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054271.P1599914643439914482

`A001248(n+1)-A054270(n+1)`
-/

namespace A054271.P1599914643439914482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A054270 (n + 1)

end

end A054271.P1599914643439914482

noncomputable section

/-- A054271: Difference between prime(n)^2 and the previous prime.

Offset 1, canonical program `A054271.P1599914643439914482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054271 (n : ℕ) : ℤ :=
  A054271.P1599914643439914482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055041.P17568345596612921113

`filter[A155504(n+1), A182581(#)]`
-/

namespace A055041.P17568345596612921113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055041.P17568345596612921113

noncomputable section

/-- A055041: Numbers of the form 3^(2i+1)*(3*j+1).

Offset 1, canonical program `A055041.P17568345596612921113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A055041 (n : ℕ) : ℤ :=
  A055041.P17568345596612921113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A055041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056611.P9328325300768638059

`A056610(n+1)/A056609(n+1)`
-/

namespace A056611.P9328325300768638059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056610 (n + 1) : ℚ) / (A056609 (n + 1) : ℚ)

end

end A056611.P9328325300768638059

noncomputable section

/-- A056611: Quotient: squarefree kernel of A002944(n) divided by that of A001405.

Offset 1, canonical program `A056611.P9328325300768638059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A056611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056611.P9328325300768638059.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A056611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056795.P12632508630850494636

`A000005(A051451(n+1))`
-/

namespace A056795.P12632508630850494636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051451 (n + 1)).toNat

end

end A056795.P12632508630850494636

noncomputable section

/-- A056795: Number of divisors of k as k runs through sequence of distinct values of LCM(1,..,n).

Offset 1, canonical program `A056795.P12632508630850494636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056795 (n : ℕ) : ℤ :=
  A056795.P12632508630850494636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056928.P1059956196817698277

`A000290(n+2)+(A053000(n+2)-A056927(n+2))/2`
-/

namespace A056928.P1059956196817698277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 2) : ℚ) + (A053000 (n + 2) - A056927 (n + 2) : ℚ) / 2

end

end A056928.P1059956196817698277

noncomputable section

/-- A056928: Average of the smallest prime greater than n^2 and the largest prime less than n^2.

Offset 2, canonical program `A056928.P1059956196817698277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, A056927, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056928.P1059956196817698277.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, A056927, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056930.P2112737162764340499

`(A007491(n+2)+A053001(n+3))/2`
-/

namespace A056930.P2112737162764340499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 2) + A053001 (n + 3) : ℚ) / 2

end

end A056930.P2112737162764340499

noncomputable section

/-- A056930: Average of smallest prime greater than n^2 and largest prime less than (n+1)^2.

Offset 2, canonical program `A056930.P2112737162764340499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056930.P2112737162764340499.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059787.P10805631217386349978

`A059786(n+1)-A100484(n+1)`
-/

namespace A059787.P10805631217386349978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (n + 1) - A100484 (n + 1)

end

end A059787.P10805631217386349978

noncomputable section

/-- A059787: Distance between 2*(n-th prime) and next prime.

Offset 1, canonical program `A059787.P10805631217386349978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059787 (n : ℕ) : ℤ :=
  A059787.P10805631217386349978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059893.P16024368139843891037

`A030109(n+1)+A053644(n+1)`
-/

namespace A059893.P16024368139843891037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + A053644 (n + 1)

end

end A059893.P16024368139843891037

noncomputable section

/-- A059893: Reverse the order of all but the most significant bit in binary expansion of n: if n = 1ab..yz then a(n) = 1zy..ba.

Offset 1, canonical program `A059893.P16024368139843891037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059893 (n : ℕ) : ℤ :=
  A059893.P16024368139843891037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061321.P7688988226899301674

`A061320(n)/5`
-/

namespace A061321.P7688988226899301674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061320 n : ℚ) / 5

end

end A061321.P7688988226899301674

noncomputable section

/-- A061321: Column 5 of A061315.

Offset 0, canonical program `A061321.P7688988226899301674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061321.P7688988226899301674.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063933.P964808002848698662

`n+2-A063932(n+2)`
-/

namespace A063933.P964808002848698662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A063932 (n + 2)

end

end A063933.P964808002848698662

noncomputable section

/-- A063933: Difference between n and the average of largest prime less than or equal to n and smallest prime greater than or equal to n.

Offset 2, canonical program `A063933.P964808002848698662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063933 (n : ℕ) : ℤ :=
  A063933.P964808002848698662.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064547.P11832440237822956980

`log2(A037445(n+1))`
-/

namespace A064547.P11832440237822956980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A037445 (n + 1) : ℝ)

end

end A064547.P11832440237822956980

noncomputable section

/-- A064547: Sum of binary digits (or count of 1-bits) in the exponents of the prime factorization of n.

Offset 1, canonical program `A064547.P11832440237822956980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064547.P11832440237822956980.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065862.P3556588124265416427

`Δ[A053767(n)]%A062298(n+1)`
-/

namespace A065862.P3556588124265416427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A062298 (n + 1))

end

end A065862.P3556588124265416427

noncomputable section

/-- A065862: Remainder when n-th composite number is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065862.P3556588124265416427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065862 (n : ℕ) : ℤ :=
  A065862.P3556588124265416427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066246.P11504023463901313022

`A065855(n+1)*A005171(n+1)`
-/

namespace A066246.P11504023463901313022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) * A005171 (n + 1)

end

end A066246.P11504023463901313022

noncomputable section

/-- A066246: a(n) = 0 unless n is a composite number A002808(k) then a(n) = k.

Offset 1, canonical program `A066246.P11504023463901313022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066246 (n : ℕ) : ℤ :=
  A066246.P11504023463901313022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068902.P5961941588359506973

`A000040(n+1)+A068901(n+1)`
-/

namespace A068902.P5961941588359506973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A068901 (n + 1)

end

end A068902.P5961941588359506973

noncomputable section

/-- A068902: Least multiple of n not less than the n-th prime.

Offset 1, canonical program `A068902.P5961941588359506973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A068901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068902 (n : ℕ) : ℤ :=
  A068902.P5961941588359506973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A068901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072058.P15477409953588563310

`A007947(A072055(n+1))`
-/

namespace A072058.P15477409953588563310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072055 (n + 1)).toNat

end

end A072058.P15477409953588563310

noncomputable section

/-- A072058: Squarefree kernel of 2*prime(n)+1.

Offset 1, canonical program `A072058.P15477409953588563310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072058 (n : ℕ) : ℤ :=
  A072058.P15477409953588563310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072680.P3143065957285476925

`A057427(n+2-A007917(n+2))*A001223(A049084(A007917(n+2)))`
-/

namespace A072680.P3143065957285476925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n + 2 : ℤ) - A007917 (n + 2)).toNat * A001223 (A049084 (A007917 (n + 2)).toNat).toNat

end

end A072680.P3143065957285476925

noncomputable section

/-- A072680: Difference between (least prime >= n) and (largest prime <= n).

Offset 2, canonical program `A072680.P3143065957285476925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A007917, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072680 (n : ℕ) : ℤ :=
  A072680.P3143065957285476925.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A007917, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073841.P7314902352590072057

`A025543(A065896(n+1))`
-/

namespace A073841.P7314902352590072057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A065896 (n + 1)).toNat

end

end A073841.P7314902352590072057

noncomputable section

/-- A073841: LCM of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073841.P7314902352590072057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841 (n : ℕ) : ℤ :=
  A073841.P7314902352590072057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074397.P9951868034758738243

`A000720(A067792(n+1))-Δ[A002815(n)]`
-/

namespace A074397.P9951868034758738243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067792 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A074397.P9951868034758738243

noncomputable section

/-- A074397: Number of primes between sigma(n) and n exclusive.

Offset 1, canonical program `A074397.P9951868034758738243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074397 (n : ℕ) : ℤ :=
  A074397.P9951868034758738243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076488.P10336001382820436641

`record[A105570(A076487(n+4))]`
-/

namespace A076488.P10336001382820436641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A076487 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076488.P10336001382820436641

noncomputable section

/-- A076488: Nonsquarefree solutions to gcd(sigma(x), phi(x)) = gcd(sigma(core(x)), Phi(core(x))), i.e., when A009223(x) = A066086(x) or if A066087(x)=0 and mu(x)=0.

Offset 1, canonical program `A076488.P10336001382820436641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A076488 (n : ℕ) : ℤ :=
  A076488.P10336001382820436641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A076488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080148.P13293786807354433186

`A049084(A002145(n+1))`
-/

namespace A080148.P13293786807354433186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A002145 (n + 1)).toNat

end

end A080148.P13293786807354433186

noncomputable section

/-- A080148: Positions of primes of the form 4*k+3 (A002145) among all primes (A000040).

Offset 1, canonical program `A080148.P13293786807354433186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080148 (n : ℕ) : ℤ :=
  A080148.P13293786807354433186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080332.P12047644629895740680

`A010815(n)*A116916(n)`
-/

namespace A080332.P12047644629895740680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A116916 n

end

end A080332.P12047644629895740680

noncomputable section

/-- A080332: G.f.: Product_{n>0} (1 - x^n)^3 * (1 - x^(2*n - 1))^2 = Sum_{n in Z} (6*n + 1) * x^(n*(3*n + 1)/2).

Offset 0, canonical program `A080332.P12047644629895740680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080332 (n : ℕ) : ℤ :=
  A080332.P12047644629895740680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080399.P11561655422514624049

`A007947(A001157(n+1))`
-/

namespace A080399.P11561655422514624049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001157 (n + 1)).toNat

end

end A080399.P11561655422514624049

noncomputable section

/-- A080399: Largest squarefree number dividing sum of squares of divisors of n.

Offset 1, canonical program `A080399.P11561655422514624049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080399 (n : ℕ) : ℤ :=
  A080399.P11561655422514624049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080759.P78527280457839002

`eq[A005171(n+2), A005171(A000720(n+1)+1)]+2`
-/

namespace A080759.P78527280457839002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080759.P78527280457839002

noncomputable section

/-- A080759: Inverse Aronson transform of primes.

Offset 1, canonical program `A080759.P78527280457839002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080759 (n : ℕ) : ℤ :=
  (A080759.P78527280457839002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081240.P9652852946263676047

`A081238(n+1)+A002321(n+1)²`
-/

namespace A081240.P9652852946263676047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081238 (n + 1) + A002321 (n + 1) ^ 2

end

end A081240.P9652852946263676047

noncomputable section

/-- A081240: a(n) = #{(i,j): mu(i)*mu(j) = 1, 1<=i,j<=n}, where mu = A008683 (Moebius function).

Offset 1, canonical program `A081240.P9652852946263676047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081240 (n : ℕ) : ℤ :=
  A081240.P9652852946263676047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081717.P73423759083911477

`p?[(n+1)*A005171(A000720(n+1)+n+1)]`
-/

namespace A081717.P73423759083911477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P73423759083911477

noncomputable section

/-- A081717: Primes prime(j) such that prime(j) + j is composite.

Offset 1, canonical program `A081717.P73423759083911477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. -/
def A081717 (n : ℕ) : ℤ :=
  A081717.P73423759083911477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. -/
def A081717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083901.P13271728194704751477

`A083900(n+1)+A083893(n+1)`
-/

namespace A083901.P13271728194704751477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) + A083893 (n + 1)

end

end A083901.P13271728194704751477

noncomputable section

/-- A083901: Number of divisors of n with largest digit <= 6 (base 10).

Offset 1, canonical program `A083901.P13271728194704751477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083893, A083900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083901 (n : ℕ) : ℤ :=
  A083901.P13271728194704751477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083893, A083900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084365.P12351951049728921383

`A007947(A024619(n+1))`
-/

namespace A084365.P12351951049728921383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A024619 (n + 1)).toNat

end

end A084365.P12351951049728921383

noncomputable section

/-- A084365: Squarefree kernel of numbers that are not prime powers.

Offset 1, canonical program `A084365.P12351951049728921383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A084365 (n : ℕ) : ℤ :=
  A084365.P12351951049728921383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A084365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084369.P2349708795339258249

`A000720(A030096(n+1))`
-/

namespace A084369.P2349708795339258249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030096 (n + 1)).toNat

end

end A084369.P2349708795339258249

noncomputable section

/-- A084369: Numbers n such that the n-th prime number doesn't contain any even digits.

Offset 1, canonical program `A084369.P2349708795339258249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A084369 (n : ℕ) : ℤ :=
  A084369.P2349708795339258249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A084369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087207.P12536008426233777954

`A048675(A007947(n+1))`
-/

namespace A087207.P12536008426233777954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (n + 1)).toNat

end

end A087207.P12536008426233777954

noncomputable section

/-- A087207: A binary representation of the primes that divide a number, shown in decimal.

Offset 1, canonical program `A087207.P12536008426233777954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087207 (n : ℕ) : ℤ :=
  A087207.P12536008426233777954.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089821.P1761871828032168591

`A000720(n+1)*A089819(n+1)`
-/

namespace A089821.P1761871828032168591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A089819 (n + 1)

end

end A089821.P1761871828032168591

noncomputable section

/-- A089821: Number of subsets of {1,.., n} containing exactly one prime.

Offset 1, canonical program `A089821.P1761871828032168591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A089819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089821 (n : ℕ) : ℤ :=
  A089821.P1761871828032168591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A089819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002325.P14825616568919519912

`A188169(n+1)+A188170(n+1)-A188171(n+1)-A188172(n+1)`
-/

namespace A002325.P14825616568919519912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) + A188170 (n + 1) - A188171 (n + 1) - A188172 (n + 1)

end

end A002325.P14825616568919519912

noncomputable section

/-- A002325: Glaisher's J numbers.

Offset 1, canonical program `A002325.P14825616568919519912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002325 (n : ℕ) : ℤ :=
  A002325.P14825616568919519912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005076.P7083894196155953315

`A005064(n+1)-A005072(n+1)-27*A079978(n+1)`
-/

namespace A005076.P7083894196155953315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A005072 (n + 1) - 27 * A079978 (n + 1)

end

end A005076.P7083894196155953315

noncomputable section

/-- A005076: Sum of cubes of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005076.P7083894196155953315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005076 (n : ℕ) : ℤ :=
  A005076.P7083894196155953315.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005080.P9273284340090812152

`A005064(n+1)-A005084(n+1)-8*A059841(n+1)`
-/

namespace A005080.P9273284340090812152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A005084 (n + 1) - 8 * A059841 (n + 1)

end

end A005080.P9273284340090812152

noncomputable section

/-- A005080: Sum of cubes of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005080.P9273284340090812152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005080 (n : ℕ) : ℤ :=
  A005080.P9273284340090812152.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005524.P6132441036754086361

`floor((sqrt(A246655(n+1))+1)²/2)`
-/

namespace A005524.P6132441036754086361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A246655 (n + 1) : ℝ) + 1) ^ 2 / 2⌋

end

end A005524.P6132441036754086361

noncomputable section

/-- A005524: Values k arising from a construction of Hirschfeld of k-arcs on elliptic curves over GF(q), where q = A246655(n) is the n-th prime power > 1.

Offset 1, canonical program `A005524.P6132441036754086361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005524 (n : ℕ) : ℤ :=
  A005524.P6132441036754086361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006282.P14916949899284549395

`∑[A083742(n)]`
-/

namespace A006282.P14916949899284549395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006282.P14916949899284549395

noncomputable section

/-- A006282: Sorting numbers: number of comparisons in Batcher's parallel sort.

Offset 1, canonical program `A006282.P14916949899284549395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006282 (n : ℕ) : ℤ :=
  A006282.P14916949899284549395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008330.P13503378460675444512

`A356093(n+1)*A356474(n+1)`
-/

namespace A008330.P13503378460675444512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356093 (n + 1) * A356474 (n + 1)

end

end A008330.P13503378460675444512

noncomputable section

/-- A008330: phi(p-1), as p runs through the primes.

Offset 1, canonical program `A008330.P13503378460675444512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008330 (n : ℕ) : ℤ :=
  A008330.P13503378460675444512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008914.P8241371107922137073

`A037248(A246655(n+1))`
-/

namespace A008914.P8241371107922137073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037248 (A246655 (n + 1)).toNat

end

end A008914.P8241371107922137073

noncomputable section

/-- A008914: Order of simple Chevalley group G_2 (q), q = prime power.

Offset 1, canonical program `A008914.P8241371107922137073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A008914 (n : ℕ) : ℤ :=
  A008914.P8241371107922137073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A008914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013947.P11385183315367073616

`∪[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A013947.P11385183315367073616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013947.P11385183315367073616

noncomputable section

/-- A013947: Positions of 1's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013947.P11385183315367073616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947 (n : ℕ) : ℤ :=
  (A013947.P11385183315367073616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022422.P1741204150297171016

`A002251(A022418(n)-n)`
-/

namespace A022422.P1741204150297171016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022418 n - (n : ℤ)).toNat

end

end A022422.P1741204150297171016

noncomputable section

/-- A022422: Kim-sums: "Kimberling sums" K_n + K_11.

Offset 0, canonical program `A022422.P1741204150297171016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A022422 (n : ℕ) : ℤ :=
  A022422.P1741204150297171016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A022422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023889.P17073280978498141665

`A023888(n+1)-1`
-/

namespace A023889.P17073280978498141665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - 1

end

end A023889.P17073280978498141665

noncomputable section

/-- A023889: Sum of the prime power divisors of n (not including 1).

Offset 1, canonical program `A023889.P17073280978498141665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023889 (n : ℕ) : ℤ :=
  A023889.P17073280978498141665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026272.P3028833638085150316

`A026242(n+3)-1`
-/

namespace A026272.P3028833638085150316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (n + 3) - 1

end

end A026272.P3028833638085150316

noncomputable section

/-- A026272: a(n) = smallest k such that k=a(n-k-1) is the only appearance of k so far; if there is no such k, then a(n) = least positive integer that has not yet appeared.

Offset 1, canonical program `A026272.P3028833638085150316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026272 (n : ℕ) : ℤ :=
  A026272.P3028833638085150316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027883.P3043507636580154283

`A024620(n+1)-1`
-/

namespace A027883.P3043507636580154283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1) - 1

end

end A027883.P3043507636580154283

noncomputable section

/-- A027883: Positions of primes in sequence (A246655) of primes and prime powers {p^i, i >= 1}.

Offset 1, canonical program `A027883.P3043507636580154283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027883 (n : ℕ) : ℤ :=
  A027883.P3043507636580154283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028890.P17409885626667997560

`eq[1, A007895(A007954(n))]`
-/

namespace A028890.P17409885626667997560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028890.P17409885626667997560

noncomputable section

/-- A028890: Product of digits of n is a nonzero Fibonacci number.

Offset 1, canonical program `A028890.P17409885626667997560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A028890 (n : ℕ) : ℤ :=
  (A028890.P17409885626667997560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A028890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034849.P15691742915255427826

`1+2*A034784(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034849.P15691742915255427826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A034784 (n + 1)

end

end A034849.P15691742915255427826

noncomputable section

/-- A034849: a(n) = 1 + 2*A034784(n).

Offset 1, canonical program `A034849.P15691742915255427826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034849 (n : ℕ) : ℤ :=
  A034849.P15691742915255427826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035250.P17429527738898511012

`1-A307989(n+1)+n`
-/

namespace A035250.P17429527738898511012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307989 (n + 1) + (n : ℤ)

end

end A035250.P17429527738898511012

noncomputable section

/-- A035250: Number of primes between n and 2n (inclusive).

Offset 1, canonical program `A035250.P17429527738898511012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035250 (n : ℕ) : ℤ :=
  A035250.P17429527738898511012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037208.P757796877470365880

`lt[A137735(n), A056813(A151800(n))]`
-/

namespace A037208.P757796877470365880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037208.P757796877470365880

noncomputable section

/-- A037208: Numbers k such that q^2 < p, where p=nextprime(k), q=nextprime(square root of k).

Offset 1, canonical program `A037208.P757796877470365880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037208 (n : ℕ) : ℤ :=
  (A037208.P757796877470365880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038668.P7380723209016836923

`∑[A304094(n+1)-1]`
-/

namespace A038668.P7380723209016836923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038668.P7380723209016836923

noncomputable section

/-- A038668: a(n)=[ n/3 ] + [ n/4 ] + [ n/7 ] + [ n/11 ] + [ n/18 ] + [ n/29 ] + [ n/47 ] + [ n/76 ] + [ n/123 ] + [ n/199 ]... (using Lucas numbers A000204).

Offset 1, canonical program `A038668.P7380723209016836923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038668 (n : ℕ) : ℤ :=
  A038668.P7380723209016836923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042942.P7773469861340243061

`A001083(n+3)-1`
-/

namespace A042942.P7773469861340243061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 3) - 1

end

end A042942.P7773469861340243061

noncomputable section

/-- A042942: From substitutional generation of Kolakoski sequence (A000002).

Offset 1, canonical program `A042942.P7773469861340243061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042942 (n : ℕ) : ℤ :=
  A042942.P7773469861340243061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046954.P3746753794890301022

`A272902(n+1)-1`
-/

namespace A046954.P3746753794890301022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1) - 1

end

end A046954.P3746753794890301022

noncomputable section

/-- A046954: Numbers k such that 6*k + 1 is nonprime.

Offset 1, canonical program `A046954.P3746753794890301022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046954 (n : ℕ) : ℤ :=
  A046954.P3746753794890301022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049511.P8890718646906056889

`A000720(A030430(n+1))`
-/

namespace A049511.P8890718646906056889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030430 (n + 1)).toNat

end

end A049511.P8890718646906056889

noncomputable section

/-- A049511: Numbers k such that prime(k) == 1 (mod 10).

Offset 1, canonical program `A049511.P8890718646906056889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049511 (n : ℕ) : ℤ :=
  A049511.P8890718646906056889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050461.P8492635839699756591

`A050470(n+1)+A050465(n+1)`
-/

namespace A050461.P8492635839699756591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) + A050465 (n + 1)

end

end A050461.P8492635839699756591

noncomputable section

/-- A050461: a(n) = Sum_{d|n, n/d=1 mod 4} d^2.

Offset 1, canonical program `A050461.P8492635839699756591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050465, A050470, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050461 (n : ℕ) : ℤ :=
  A050461.P8492635839699756591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050465, A050470, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051953.P12093122754958550118

`A003557(n+1)*A318305(n+1)`
-/

namespace A051953.P12093122754958550118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A318305 (n + 1)

end

end A051953.P12093122754958550118

noncomputable section

/-- A051953: Cototient(n) := n - phi(n).

Offset 1, canonical program `A051953.P12093122754958550118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A318305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051953 (n : ℕ) : ℤ :=
  A051953.P12093122754958550118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A318305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053091.P8742769929826108326

`A239053(n+1)/2-A363291(n+1)`
-/

namespace A053091.P8742769929826108326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239053 (n + 1) : ℚ) / 2 - (A363291 (n + 1) : ℚ)

end

end A053091.P8742769929826108326

noncomputable section

/-- A053091: Number of F^3-convex polyominoes on the honeycomb lattice by number of cells.

Offset 1, canonical program `A053091.P8742769929826108326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053091.P8742769929826108326.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053726.P6824905761757210776

`A047845(n+2)+1`
-/

namespace A053726.P6824905761757210776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + 1

end

end A053726.P6824905761757210776

noncomputable section

/-- A053726: "Flag numbers": number of dots that can be arranged in successive rows of K, K-1, K, K-1, K, ..., K-1, K (assuming there is a total of L > 1 rows of size K > 1).

Offset 1, canonical program `A053726.P6824905761757210776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053726 (n : ℕ) : ℤ :=
  A053726.P6824905761757210776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055028.P9559815972415415958

`4*A055029(n)`
-/

namespace A055028.P9559815972415415958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055029 n

end

end A055028.P9559815972415415958

noncomputable section

/-- A055028: Number of Gaussian primes of norm n.

Offset 0, canonical program `A055028.P9559815972415415958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055028 (n : ℕ) : ℤ :=
  A055028.P9559815972415415958.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055669.P6290050088216304237

`24*A055670(n+1)`
-/

namespace A055669.P6290050088216304237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A055670 (n + 1)

end

end A055669.P6290050088216304237

noncomputable section

/-- A055669: Number of prime Hurwitz quaternions of norm prime(n).

Offset 1, canonical program `A055669.P6290050088216304237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055669 (n : ℕ) : ℤ :=
  A055669.P6290050088216304237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056564.P14160989435104353240

`A056562(n)+A056563(n)`
-/

namespace A056564.P14160989435104353240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + A056563 n

end

end A056564.P14160989435104353240

noncomputable section

/-- A056564: Number of times primes can be produced by taking the absolute difference between the n-th triangular number and another triangular number.

Offset 0, canonical program `A056564.P14160989435104353240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056564 (n : ℕ) : ℤ :=
  A056564.P14160989435104353240.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056812.P14896031248377744571

`A078342(n+1)-A066247(n+1)`
-/

namespace A056812.P14896031248377744571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078342 (n + 1) - A066247 (n + 1)

end

end A056812.P14896031248377744571

noncomputable section

/-- A056812: Number of unitary prime factors of lcm[1..n], i.e., primes in LCM with exponent 1.

Offset 1, canonical program `A056812.P14896031248377744571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056812 (n : ℕ) : ℤ :=
  A056812.P14896031248377744571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062332.P16166739913561001302

`∩[A030430(n+1), A077652(n+1)]`
-/

namespace A062332.P16166739913561001302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P16166739913561001302

noncomputable section

/-- A062332: Primes starting and ending with 1.

Offset 1, canonical program `A062332.P16166739913561001302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A062332 (n : ℕ) : ℤ :=
  (A062332.P16166739913561001302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A062332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062347.P10586268289605082187

`A066909(A000040(n+1))`
-/

namespace A062347.P10586268289605082187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (A000040 (n + 1)).toNat

end

end A062347.P10586268289605082187

noncomputable section

/-- A062347: a(n) = (product of first n primes) modulo prime(n+1).

Offset 0, canonical program `A062347.P10586268289605082187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A062347 (n : ℕ) : ℤ :=
  A062347.P10586268289605082187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A062347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063124.P9970457058300728251

`n+1-A331677(n+1)`
-/

namespace A063124.P9970457058300728251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A331677 (n + 1)

end

end A063124.P9970457058300728251

noncomputable section

/-- A063124: a(n) = # { primes p | prime(n) <= p < 2*prime(n) } where prime(n) is the n-th prime.

Offset 1, canonical program `A063124.P9970457058300728251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063124 (n : ℕ) : ℤ :=
  A063124.P9970457058300728251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064786.P10676103472922795577

`2*A026242(n+1)-A003849(n)`
-/

namespace A064786.P10676103472922795577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026242 (n + 1) - A003849 n

end

end A064786.P10676103472922795577

noncomputable section

/-- A064786: Inverse permutation to A054084.

Offset 1, canonical program `A064786.P10676103472922795577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064786 (n : ℕ) : ℤ :=
  A064786.P10676103472922795577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066339.P5957712968518338971

`A296021(floor(n/4))`
-/

namespace A066339.P5957712968518338971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 ⌊(n : ℚ) / 4⌋.toNat

end

end A066339.P5957712968518338971

noncomputable section

/-- A066339: Number of primes p of the form 4m+1 with p <= n.

Offset 1, canonical program `A066339.P5957712968518338971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066339 (n : ℕ) : ℤ :=
  A066339.P5957712968518338971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066489.P4410920429026512829

`A007088(A035928(n+1))`
-/

namespace A066489.P4410920429026512829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035928 (n + 1)).toNat

end

end A066489.P4410920429026512829

noncomputable section

/-- A066489: Binary expansion of n followed by its reverse complement.

Offset 1, canonical program `A066489.P4410920429026512829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A066489 (n : ℕ) : ℤ :=
  A066489.P4410920429026512829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A066489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066691.P12764247508307257723

`A000005(A066692(n+1))`
-/

namespace A066691.P12764247508307257723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066692 (n + 1)).toNat

end

end A066691.P12764247508307257723

noncomputable section

/-- A066691: Value of tau(2n-1) when tau(2n-1) = tau(2n+1).

Offset 1, canonical program `A066691.P12764247508307257723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691 (n : ℕ) : ℤ :=
  A066691.P12764247508307257723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068227.P14594515771624751627

`A076982(A039710(n+1))`
-/

namespace A068227.P14594515771624751627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A039710 (n + 1)).toNat

end

end A068227.P14594515771624751627

noncomputable section

/-- A068227: The "genity" sequence of the primes, i.e., a(n) = g(p) = ((p mod 4) + (p mod 6))/2, where p is the n-th prime.

Offset 1, canonical program `A068227.P14594515771624751627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068227 (n : ℕ) : ℤ :=
  A068227.P14594515771624751627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070555.P15125073285784750273

`A028310(n)*A070554(n)`
-/

namespace A070555.P15125073285784750273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A070554 n

end

end A070555.P15125073285784750273

noncomputable section

/-- A070555: Sum of positive integers k, where k <= n and gcd(k,2n+1) = gcd(k+1,2n+1).

Offset 1, canonical program `A070555.P15125073285784750273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070555 (n : ℕ) : ℤ :=
  A070555.P15125073285784750273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071923.P103564520230020603

`record[A000040(2*A213649(n+1)+n)]`
-/

namespace A071923.P103564520230020603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * A213649 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071923.P103564520230020603

noncomputable section

/-- A071923: a(n) is the prime p such that pi(n^2, (n+1)^2+1) = pi((n+1)^2, p) where pi(s,t) = pi(t) - pi(s) is the number of primes between s and t.

Offset 1, canonical program `A071923.P103564520230020603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A071923 (n : ℕ) : ℤ :=
  A071923.P103564520230020603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A071923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072666.P4852007313916300024

`A000720(A072667(n+1))`
-/

namespace A072666.P4852007313916300024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072667 (n + 1)).toNat

end

end A072666.P4852007313916300024

noncomputable section

/-- A072666: Numbers n such that prime(n) + prime(n+1) - 1 is prime.

Offset 1, canonical program `A072666.P4852007313916300024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072667, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072666 (n : ℕ) : ℤ :=
  A072666.P4852007313916300024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072667, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073432.P14421923093104671474

`abs(1-(A047845(n+1)+n))`
-/

namespace A073432.P14421923093104671474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A047845 (n + 1) + (n : ℤ))|

end

end A073432.P14421923093104671474

noncomputable section

/-- A073432: Numbers k such that prime(k) + composite(k) is even.

Offset 1, canonical program `A073432.P14421923093104671474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073432 (n : ℕ) : ℤ :=
  A073432.P14421923093104671474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073941.P15569608911463552460

`A081848(n+1)/3`
-/

namespace A073941.P15569608911463552460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 1) : ℚ) / 3

end

end A073941.P15569608911463552460

noncomputable section

/-- A073941: a(n) = ceiling((Sum_{k=1..n-1} a(k)) / 2) for n >= 2 starting with a(1) = 1.

Offset 1, canonical program `A073941.P15569608911463552460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073941.P15569608911463552460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076241.P12636829170902356370

`A302493(A024620(n+1))%(n+1)`
-/

namespace A076241.P12636829170902356370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302493 (A024620 (n + 1)).toNat) (n + 1 : ℤ)

end

end A076241.P12636829170902356370

noncomputable section

/-- A076241: Remainder when 2nd order prime pp(n)=A006450(n) is divided by n.

Offset 1, canonical program `A076241.P12636829170902356370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A076241 (n : ℕ) : ℤ :=
  A076241.P12636829170902356370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A076241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078174.P17368214536566437184

`eq[1, A323172(n+2)]+2`
-/

namespace A078174.P17368214536566437184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323172 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A078174.P17368214536566437184

noncomputable section

/-- A078174: Numbers with an integer arithmetic mean of distinct prime factors.

Offset 1, canonical program `A078174.P17368214536566437184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078174 (n : ℕ) : ℤ :=
  (A078174.P17368214536566437184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079251.P10366369306939895838

`∑[A166517(A048298(A006068(n)))]`
-/

namespace A079251.P10366369306939895838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A048298 (A006068 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079251.P10366369306939895838

noncomputable section

/-- A079251: Complement of A079000.

Offset 1, canonical program `A079251.P10366369306939895838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A079251 (n : ℕ) : ℤ :=
  A079251.P10366369306939895838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A079251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082294.P3187455701052448076

`eq[2, A071325(n+1)]+1`
-/

namespace A082294.P3187455701052448076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082294.P3187455701052448076

noncomputable section

/-- A082294: Numbers having exactly two square divisors > 1.

Offset 1, canonical program `A082294.P3187455701052448076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294 (n : ℕ) : ℤ :=
  (A082294.P3187455701052448076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082686.P7085759963606305548

`2*A226567(n+1)+1`
-/

namespace A082686.P7085759963606305548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226567 (n + 1) + 1

end

end A082686.P7085759963606305548

noncomputable section

/-- A082686: Odd nonprime integers n which have an odd number of proper divisors.

Offset 1, canonical program `A082686.P7085759963606305548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082686 (n : ℕ) : ℤ :=
  A082686.P7085759963606305548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086100.P12874924642419526521

`A007088(A086099(n))`
-/

namespace A086100.P12874924642419526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A086099 n).toNat

end

end A086100.P12874924642419526521

noncomputable section

/-- A086100: A086099 in binary.

Offset 0, canonical program `A086100.P12874924642419526521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086100 (n : ℕ) : ℤ :=
  A086100.P12874924642419526521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086486.P12972051268827397954

`eq[1, A340678(n+1)]+1`
-/

namespace A086486.P12972051268827397954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086486.P12972051268827397954

noncomputable section

/-- A086486: Numbers k such that the sum of the distinct prime divisors divides rad(k)=A007947(k).

Offset 1, canonical program `A086486.P12972051268827397954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A086486 (n : ℕ) : ℤ :=
  (A086486.P12972051268827397954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A086486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086668.P4920581332236016487

`A305818(n+1)+A101264(n+1)`
-/

namespace A086668.P4920581332236016487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A101264 (n + 1)

end

end A086668.P4920581332236016487

noncomputable section

/-- A086668: Number of divisors d of n such that 2d+1 is a prime.

Offset 1, canonical program `A086668.P4920581332236016487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, A305818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086668 (n : ℕ) : ℤ :=
  A086668.P4920581332236016487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, A305818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087247.P1816243731063758448

`filter[A087246(n+1), A005171(#)]`
-/

namespace A087247.P1816243731063758448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A087247.P1816243731063758448

noncomputable section

/-- A087247: Squarefree deficient nonprime numbers.

Offset 1, canonical program `A087247.P1816243731063758448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. -/
def A087247 (n : ℕ) : ℤ :=
  A087247.P1816243731063758448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. -/
def A087247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088723.P15091544922327729321

`2*lt[0, A325334(n)]`
-/

namespace A088723.P15091544922327729321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088723.P15091544922327729321

noncomputable section

/-- A088723: Numbers k with at least one divisor d>1 such that d+1 also divides k.

Offset 1, canonical program `A088723.P15091544922327729321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088723 (n : ℕ) : ℤ :=
  (A088723.P15091544922327729321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091113.P2066234327924851190

`4*A045751(n+1)+1`
-/

namespace A091113.P2066234327924851190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045751 (n + 1) + 1

end

end A091113.P2066234327924851190

noncomputable section

/-- A091113: Nonprimes of the form 4*k+1.

Offset 1, canonical program `A091113.P2066234327924851190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091113 (n : ℕ) : ℤ :=
  A091113.P2066234327924851190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000082.P16648937404349228138

`A181797(n+1)*A003557(n+1)`
-/

namespace A000082.P16648937404349228138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (n + 1) * A003557 (n + 1)

end

end A000082.P16648937404349228138

noncomputable section

/-- A000082: a(n) = n^2*Product_{p|n} (1 + 1/p).

Offset 1, canonical program `A000082.P16648937404349228138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A181797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000082 (n : ℕ) : ℤ :=
  A000082.P16648937404349228138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A181797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007948.P9205423498154585874

`A071773(n+1)*A007947(n+1)`
-/

namespace A007948.P9205423498154585874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A007947 (n + 1)

end

end A007948.P9205423498154585874

noncomputable section

/-- A007948: Largest cubefree number dividing n.

Offset 1, canonical program `A007948.P9205423498154585874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007948 (n : ℕ) : ℤ :=
  A007948.P9205423498154585874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018820.P234269659203219396

`A341329(n+1)²`
-/

namespace A018820.P234269659203219396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1) ^ 2

end

end A018820.P234269659203219396

noncomputable section

/-- A018820: Numbers k that are the sum of m nonzero squares for all 1 <= m <= k - 14.

Offset 1, canonical program `A018820.P234269659203219396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018820 (n : ℕ) : ℤ :=
  A018820.P234269659203219396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025710.P12530225791585977841

`∑[A011262(A011262(floor(n/γ-n)+1))]`
-/

namespace A025710.P12530225791585977841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A011262 (⌊(n : ℝ) / Real.eulerMascheroniConstant - (n : ℝ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025710.P12530225791585977841

noncomputable section

/-- A025710: Index of 5^n within the sequence of the numbers of the form 5^i*9^j.

Offset 0, canonical program `A025710.P12530225791585977841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A025710 (n : ℕ) : ℤ :=
  A025710.P12530225791585977841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A025710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037228.P8123356914219364626

`A152993(n+1)-A045763(n+1)`
-/

namespace A037228.P8123356914219364626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152993 (n + 1) - A045763 (n + 1)

end

end A037228.P8123356914219364626

noncomputable section

/-- A037228: a(n) = phi(n) - pi(n).

Offset 1, canonical program `A037228.P8123356914219364626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037228 (n : ℕ) : ℤ :=
  A037228.P8123356914219364626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038388.P12225938423161256159

`sqrt((n+1)*A038387(n+1))`
-/

namespace A038388.P12225938423161256159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A038387 (n + 1) : ℝ)

end

end A038388.P12225938423161256159

noncomputable section

/-- A038388: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives G values.

Offset 1, canonical program `A038388.P12225938423161256159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038388.P12225938423161256159.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038389.P11327127064887863338

`round((A038387(n+1)+n)/2)`
-/

namespace A038389.P11327127064887863338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038387 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A038389.P11327127064887863338

noncomputable section

/-- A038389: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives A values.

Offset 1, canonical program `A038389.P11327127064887863338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038389 (n : ℕ) : ℤ :=
  A038389.P11327127064887863338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044056.P17555869598845722757

`eq[A048735(A289813(n+1)), A318666(n+1)]+1`
-/

namespace A044056.P17555869598845722757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A289813 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044056.P17555869598845722757

noncomputable section

/-- A044056: Numbers n such that string 1,1 occurs in the base 3 representation of n but not of n-1.

Offset 1, canonical program `A044056.P17555869598845722757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A044056 (n : ℕ) : ℤ :=
  (A044056.P17555869598845722757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A044056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046791.P4309065801860843159

`A038387(A046790(n+1))`
-/

namespace A046791.P4309065801860843159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A046790 (n + 1)).toNat

end

end A046791.P4309065801860843159

noncomputable section

/-- A046791: A046790 has several definitions, one of which is: "Numbers i such that there is a smaller positive number j such that (i+j)/2 and sqrt(i*j) are integers". The present sequence gives the smallest choice for j.

Offset 1, canonical program `A046791.P4309065801860843159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. -/
def A046791 (n : ℕ) : ℤ :=
  A046791.P4309065801860843159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. -/
def A046791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053143.P2973590149006615306

`A019554(n+1)²`
-/

namespace A053143.P2973590149006615306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

end

end A053143.P2973590149006615306

noncomputable section

/-- A053143: Smallest square divisible by n.

Offset 1, canonical program `A053143.P2973590149006615306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053143 (n : ℕ) : ℤ :=
  A053143.P2973590149006615306.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054753.P14709416938439353488

`filter[A081619(n+1), A359475(#)]`
-/

namespace A054753.P14709416938439353488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A054753.P14709416938439353488

noncomputable section

/-- A054753: Numbers which are the product of a prime and the square of a different prime (p^2 * q).

Offset 1, canonical program `A054753.P14709416938439353488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A054753 (n : ℕ) : ℤ :=
  A054753.P14709416938439353488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A054753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055048.P15109314482782834928

`A055040(n+1)/3`
-/

namespace A055048.P15109314482782834928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055040 (n + 1) : ℚ) / 3

end

end A055048.P15109314482782834928

noncomputable section

/-- A055048: Numbers of the form 9^i*(3*j+2).

Offset 1, canonical program `A055048.P15109314482782834928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055048.P15109314482782834928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055071.P16321007213921378376

`A008833((n+1)!)`
-/

namespace A055071.P16321007213921378376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (Nat.factorial (n + 1))

end

end A055071.P16321007213921378376

noncomputable section

/-- A055071: Largest square dividing n!.

Offset 1, canonical program `A055071.P16321007213921378376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055071 (n : ℕ) : ℤ :=
  A055071.P16321007213921378376.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055231.P8962300905713718501

`A007947(n+1)/A071773(n+1)`
-/

namespace A055231.P8962300905713718501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A055231.P8962300905713718501

noncomputable section

/-- A055231: Powerfree part of n: product of primes that divide n only once.

Offset 1, canonical program `A055231.P8962300905713718501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055231.P8962300905713718501.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056057.P2194597549001614042

`A008833(A001405(n+1))`
-/

namespace A056057.P2194597549001614042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A001405 (n + 1)).toNat

end

end A056057.P2194597549001614042

noncomputable section

/-- A056057: The largest square which divides n-th central binomial coefficient.

Offset 1, canonical program `A056057.P2194597549001614042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056057 (n : ℕ) : ℤ :=
  A056057.P2194597549001614042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056191.P12587118165966918180

`A055229(n+1)^3`
-/

namespace A056191.P12587118165966918180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) ^ 3

end

end A056191.P12587118165966918180

noncomputable section

/-- A056191: Characteristic cube divisor of n: cube of g = gcd(K,F), where K is the largest square root divisor of n (A000188) and F = n/(K*K) = A007913(n) is its squarefree part; g^2 divides K^2 = A008833(n) = g^2*L^2 and g divides F = gf.

Offset 1, canonical program `A056191.P12587118165966918180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056191 (n : ℕ) : ℤ :=
  A056191.P12587118165966918180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056322.P10987569585989631847

`∑{d}[n+1, A056313(#)*A069158((n+1)/#)]`
-/

namespace A056322.P10987569585989631847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056313 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056322.P10987569585989631847

noncomputable section

/-- A056322: Number of primitive (aperiodic) reversible strings with n beads using exactly six different colors.

Offset 1, canonical program `A056322.P10987569585989631847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A056322 (n : ℕ) : ℤ :=
  A056322.P10987569585989631847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A056322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056623.P4042659177706060418

`A008833(n+1)/A055229(n+1)²`
-/

namespace A056623.P4042659177706060418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A055229 (n + 1) ^ 2 : ℚ)

end

end A056623.P4042659177706060418

noncomputable section

/-- A056623: If n=LLgggf (see A056192) and a(n) = LL, then its complementary divisor n/LL = gggf and gcd(L^2, n/LL) = 1.

Offset 1, canonical program `A056623.P4042659177706060418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A055229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056623.P4042659177706060418.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A055229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064950.P4902822540981006057

`∑{d}[n+1, #*A357938((n+1)/#)]`
-/

namespace A064950.P4902822540981006057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P4902822540981006057

noncomputable section

/-- A064950: a(n) = Sum_{i|n, j|n} lcm(i,j).

Offset 1, canonical program `A064950.P4902822540981006057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064950 (n : ℕ) : ℤ :=
  A064950.P4902822540981006057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065720.P12704675329475562977

`p?[A036952(n+1)]`
-/

namespace A065720.P12704675329475562977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065720.P12704675329475562977

noncomputable section

/-- A065720: Primes whose binary representation is also the decimal representation of a prime.

Offset 1, canonical program `A065720.P12704675329475562977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2363 terms. -/
def A065720 (n : ℕ) : ℤ :=
  A065720.P12704675329475562977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2363 terms. -/
def A065720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066620.P12972451173244049079

`A015995(n+1)-A100565(n+1)`
-/

namespace A066620.P12972451173244049079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (n + 1) - A100565 (n + 1)

end

end A066620.P12972451173244049079

noncomputable section

/-- A066620: Number of unordered triples of distinct pairwise coprime divisors of n.

Offset 1, canonical program `A066620.P12972451173244049079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066620 (n : ℕ) : ℤ :=
  A066620.P12972451173244049079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069187.P10848046467755903059

`record[A059591(n)*A253909(n)]`
-/

namespace A069187.P10848046467755903059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n * A253909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069187.P10848046467755903059

noncomputable section

/-- A069187: Numbers k such that core(k) = ceiling(sqrt(k)) where core(k) is the squarefree part of k (the smallest integer such that k*core(k) is a square).

Offset 1, canonical program `A069187.P10848046467755903059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A069187 (n : ℕ) : ℤ :=
  A069187.P10848046467755903059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A069187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069209.P1495088304037464611

`lt[1, A126864(n+1)]+1`
-/

namespace A069209.P1495088304037464611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069209.P1495088304037464611

noncomputable section

/-- A069209: Orders of non-Abelian Z-groups.

Offset 1, canonical program `A069209.P1495088304037464611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069209 (n : ℕ) : ℤ :=
  (A069209.P1495088304037464611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072375.P16248227479690323833

`∑[A359475(n+1)]`
-/

namespace A072375.P16248227479690323833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072375.P16248227479690323833

noncomputable section

/-- A072375: Number of cubefree numbers <= n which are nonsquares having exactly one square in their factorization.

Offset 1, canonical program `A072375.P16248227479690323833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072375 (n : ℕ) : ℤ :=
  A072375.P16248227479690323833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076959.P2642211357967656886

`A086680(n+1)-A055729(n+1)`
-/

namespace A076959.P2642211357967656886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 (n + 1) - A055729 (n + 1)

end

end A076959.P2642211357967656886

noncomputable section

/-- A076959: Number of primes between 3^n and 4^n.

Offset 1, canonical program `A076959.P2642211357967656886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055729, A086680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076959 (n : ℕ) : ℤ :=
  A076959.P2642211357967656886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055729, A086680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078439.P15086975663287675147

`∑{d}[n+1, A007432(#)*A319132((n+1)/#)]`
-/

namespace A078439.P15086975663287675147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P15086975663287675147

noncomputable section

/-- A078439: a(n) = Sum_{k=1..n} gcd(k,n)*mu(gcd(k,n))^2.

Offset 1, canonical program `A078439.P15086975663287675147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078439 (n : ℕ) : ℤ :=
  A078439.P15086975663287675147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083482.P9826563306636625719

`A019554(A002378(n+1))`
-/

namespace A083482.P9826563306636625719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A002378 (n + 1)).toNat

end

end A083482.P9826563306636625719

noncomputable section

/-- A083482: Square root of smallest square of the type n(n+1)*k.

Offset 1, canonical program `A083482.P9826563306636625719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083482 (n : ℕ) : ℤ :=
  A083482.P9826563306636625719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084744.P4104311271369201504

`record[and(1-n, A085056(n+1))]`
-/

namespace A084744.P4104311271369201504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A085056 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084744.P4104311271369201504

noncomputable section

/-- A084744: Product of all composite numbers from 1 to the n-th nonprime number divided by product of all the prime divisors of each of those composite numbers which exceed the previously stated value.

Offset 1, canonical program `A084744.P4104311271369201504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A084744 (n : ℕ) : ℤ :=
  A084744.P4104311271369201504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A084744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085057.P15424866120729747992

`A069113(n+1)`
-/

namespace A085057.P15424866120729747992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069113 (n + 1)

end

end A085057.P15424866120729747992

noncomputable section

/-- A085057: a(n) is the smallest integer of the form a*b*c.../p*q*r..., where the numerator and the denominator contain n numbers each and a,b,c,...p,q,r... are all the integers from 1 to 2n.

Offset 1, canonical program `A085057.P15424866120729747992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A085057 (n : ℕ) : ℤ :=
  A085057.P15424866120729747992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A085057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000188.P7486858720566838181

`sqrt(A008833(n+1))`
-/

namespace A000188.P7486858720566838181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

end

end A000188.P7486858720566838181

noncomputable section

/-- A000188: (1) Number of solutions to x^2 == 0 (mod n). (2) Also square root of largest square dividing n. (3) Also max_{ d divides n } gcd(d, n/d).

Offset 1, canonical program `A000188.P7486858720566838181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000188.P7486858720566838181.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A011264.P11087742381931658999

`A356191(n+1)/A007913(n+1)`
-/

namespace A011264.P11087742381931658999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A011264.P11087742381931658999

noncomputable section

/-- A011264: In the prime factorization of n, increment even powers and decrement odd powers (multiplicative).

Offset 1, canonical program `A011264.P11087742381931658999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011264.P11087742381931658999.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015049.P304313966047543276

`A019554(A013929(n+1))`
-/

namespace A015049.P304313966047543276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A013929 (n + 1)).toNat

end

end A015049.P304313966047543276

noncomputable section

/-- A015049: Let m = A013929(n); then a(n) = smallest k such that m divides k^2.

Offset 1, canonical program `A015049.P304313966047543276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A015049 (n : ℕ) : ℤ :=
  A015049.P304313966047543276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A015049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028966.P4564524160118052881

`∪[A055040(n+1), comp[A189715(n+1)]]`
-/

namespace A028966.P4564524160118052881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A028966.P4564524160118052881

noncomputable section

/-- A028966: Norms of vectors in the a.c.c. lattice, divided by 2.

Offset 0, canonical program `A028966.P4564524160118052881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028966 (n : ℕ) : ℤ :=
  (A028966.P4564524160118052881.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033197.P13571610583292348820

`-A204993(record[A007913(n+1)])`
-/

namespace A033197.P13571610583292348820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033197.P13571610583292348820

noncomputable section

/-- A033197: Discriminants of quadratic number fields Q(sqrt -n) for n squarefree.

Offset 1, canonical program `A033197.P13571610583292348820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197 (n : ℕ) : ℤ :=
  A033197.P13571610583292348820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033198.P5089609670144749707

`A037449(A144338(n+1))`
-/

namespace A033198.P5089609670144749707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A144338 (n + 1)).toNat

end

end A033198.P5089609670144749707

noncomputable section

/-- A033198: Discriminants of real quadratic number fields.

Offset 1, canonical program `A033198.P5089609670144749707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6082 terms. -/
def A033198 (n : ℕ) : ℤ :=
  A033198.P5089609670144749707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6082 terms. -/
def A033198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049533.P347491331111619318

`record[floor(sqrt(A059591(n)))]`
-/

namespace A049533.P347491331111619318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049533.P347491331111619318

noncomputable section

/-- A049533: Numbers k such that k^2+1 is squarefree.

Offset 1, canonical program `A049533.P347491331111619318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. -/
def A049533 (n : ℕ) : ℤ :=
  A049533.P347491331111619318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. -/
def A049533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070755.P6719190543050349578

`record[A361671(n+1)]`
-/

namespace A070755.P6719190543050349578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070755.P6719190543050349578

noncomputable section

/-- A070755: Squarefree tetrahedral numbers.

Offset 1, canonical program `A070755.P6719190543050349578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A070755 (n : ℕ) : ℤ :=
  A070755.P6719190543050349578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A070755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071701.P18388032048899093452

`A071538(n+1)-A071702(n+1)`
-/

namespace A071701.P18388032048899093452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) - A071702 (n + 1)

end

end A071701.P18388032048899093452

noncomputable section

/-- A071701: Number of twin prime pairs <= n of form (4*k+1,4*k+3), k>0.

Offset 1, canonical program `A071701.P18388032048899093452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071701 (n : ℕ) : ℤ :=
  A071701.P18388032048899093452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071974.P9686884691264808123

`A071975(A003557(n+1))`
-/

namespace A071974.P9686884691264808123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A003557 (n + 1)).toNat

end

end A071974.P9686884691264808123

noncomputable section

/-- A071974: Numerator of rational number i/j such that Sagher map sends i/j to n.

Offset 1, canonical program `A071974.P9686884691264808123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071974 (n : ℕ) : ℤ :=
  A071974.P9686884691264808123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074385.P38186395155014522

`sqrt(A000203(A006532(n+1)))`
-/

namespace A074385.P38186395155014522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000203 (A006532 (n + 1)).toNat : ℝ)

end

end A074385.P38186395155014522

noncomputable section

/-- A074385: Square root of sum of divisors, when it is a square.

Offset 1, canonical program `A074385.P38186395155014522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006532, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074385.P38186395155014522.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006532, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085037.P17474095553337422885

`∑[n+1]*A361670(n+1)`
-/

namespace A085037.P17474095553337422885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A361670 (n + 1)

end

end A085037.P17474095553337422885

noncomputable section

/-- A085037: Smallest square divisible by the n-th triangular number (n(n+1)/2).

Offset 1, canonical program `A085037.P17474095553337422885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085037 (n : ℕ) : ℤ :=
  A085037.P17474095553337422885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085037.provenance : SequenceMachineLib.Provenance := .conjectured

