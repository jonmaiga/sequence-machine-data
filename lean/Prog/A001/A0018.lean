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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A001800: Coefficients of Legendre polynomials.

The programs for A001800, the canonical program `A001800.P4077882143259750461` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001800 has offset 0).

The definition of A001800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001800.P4077882143259750461

`(n+1)*C(2*n+2, n+1)/2^A000120(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001800

/-- `(n+1)*C(2*n+2, n+1)/2^A000120(n+2)` -/
def P4077882143259750461.Spec : Prop :=
  ∀ n, P4077882143259750461.a n = (A001800 n : ℚ)

end A001800

/-! ## A001800.P12194544619428647884

`lcm((2*n+1)*lcm(n, a(n-1))/n, ∑[n+1])` with `a(0)=1`
-/

namespace A001800.P12194544619428647884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) * ((Nat.lcm n (a (n - 1)) : ℚ) / (n : ℚ)))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001800.P12194544619428647884

namespace A001800

/-- `lcm((2*n+1)*lcm(n, a(n-1))/n, ∑[n+1])` -/
def P12194544619428647884.Spec : Prop :=
  ∀ n, (P12194544619428647884.a n : ℤ) = A001800 n

end A001800

/-! ## A001800.P4936818287454454946

`lcm(∑[n+1], A001803(n))`
-/

namespace A001800.P4936818287454454946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001803 n)

end

end A001800.P4936818287454454946

namespace A001800

/-- `lcm(∑[n+1], A001803(n))` -/
def P4936818287454454946.Spec : Prop :=
  ∀ n, (P4936818287454454946.a n : ℤ) = A001800 n

end A001800

/-! ## A001800.P3176822395584956765

`∑[n+1]*A098597(n+1)`
-/

namespace A001800.P3176822395584956765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A098597 (n + 1)

end

end A001800.P3176822395584956765

namespace A001800

/-- `∑[n+1]*A098597(n+1)` -/
def P3176822395584956765.Spec : Prop :=
  ∀ n, P3176822395584956765.a n = A001800 n

end A001800

/-! ## A001800.P1512263524294141367

`round((n+1)*A002461(n+2)/2)`
-/

namespace A001800.P1512263524294141367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * A002461 (n + 2) : ℚ) / 2)

end

end A001800.P1512263524294141367

namespace A001800

/-- `round((n+1)*A002461(n+2)/2)` -/
def P1512263524294141367.Spec : Prop :=
  ∀ n, P1512263524294141367.a n = A001800 n

end A001800

/-! ## A001800.P13024287628073368932

`∑[n+1]*A004732(2*n+1)`
-/

namespace A001800.P13024287628073368932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004732 (2 * n + 1)

end

end A001800.P13024287628073368932

namespace A001800

/-- `∑[n+1]*A004732(2*n+1)` -/
def P13024287628073368932.Spec : Prop :=
  ∀ n, P13024287628073368932.a n = A001800 n

end A001800

/-! ## A001800.P13860660119816902389

`lcm(A001803(n), A008619(n))`
-/

namespace A001800.P13860660119816902389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001803 n) (A008619 n)

end

end A001800.P13860660119816902389

namespace A001800

/-- `lcm(A001803(n), A008619(n))` -/
def P13860660119816902389.Spec : Prop :=
  ∀ n, (P13860660119816902389.a n : ℤ) = A001800 n

end A001800

/-! ## A001800.P125962193994018656

`A001803(n)*A006519(A003188(n+1))`
-/

namespace A001800.P125962193994018656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A006519 (A003188 (n + 1)).toNat

end

end A001800.P125962193994018656

namespace A001800

/-- `A001803(n)*A006519(A003188(n+1))` -/
def P125962193994018656.Spec : Prop :=
  ∀ n, P125962193994018656.a n = A001800 n

end A001800

/-! ## A001800.P7338963274536753361

`A001316(n)/A048896(n+1)*A001803(n)`
-/

namespace A001800.P7338963274536753361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A048896 (n + 1) : ℚ) * (A001803 n : ℚ)

end

end A001800.P7338963274536753361

namespace A001800

/-- `A001316(n)/A048896(n+1)*A001803(n)` -/
def P7338963274536753361.Spec : Prop :=
  ∀ n, P7338963274536753361.a n = (A001800 n : ℚ)

end A001800

/-! ## A001800.P17568653885412974162

`A002457(n)/A048896(n+1)`
-/

namespace A001800.P17568653885412974162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n : ℚ) / (A048896 (n + 1) : ℚ)

end

end A001800.P17568653885412974162

namespace A001800

/-- `A002457(n)/A048896(n+1)` -/
def P17568653885412974162.Spec : Prop :=
  ∀ n, P17568653885412974162.a n = (A001800 n : ℚ)

end A001800

/-! ## A001800.P1831228468034052799

`A005430(n+1)/A001316(n+2)`
-/

namespace A001800.P1831228468034052799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005430 (n + 1) : ℚ) / (A001316 (n + 2) : ℚ)

end

end A001800.P1831228468034052799

namespace A001800

/-- `A005430(n+1)/A001316(n+2)` -/
def P1831228468034052799.Spec : Prop :=
  ∀ n, P1831228468034052799.a n = (A001800 n : ℚ)

end A001800

/-! ## A001800.P13435237110247447701

`abs(A100258(∑[n+3]))`
-/

namespace A001800.P13435237110247447701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100258 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001800.P13435237110247447701

namespace A001800

/-- `abs(A100258(∑[n+3]))` -/
def P13435237110247447701.Spec : Prop :=
  ∀ n, P13435237110247447701.a n = A001800 n

end A001800

/-!
# A001801: Coefficients of Legendre polynomials.

The programs for A001801, there is no canonical definition to state claims against.
-/

/-! ## A001801.P9535564133182962875

`A100258(A052905(n+2))`
-/

namespace A001801.P9535564133182962875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (A052905 (n + 2)).toNat

end

end A001801.P9535564133182962875

/-! ## A001801.P2992387428734127276

`A100258(Δ[A055831(n+4)])`
-/

namespace A001801.P2992387428734127276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (f1 (n + 1) - f1 n).toNat

end

end A001801.P2992387428734127276

/-! ## A001801.P14548786312828008476

`A100258(A155212(n+1)+3)`
-/

namespace A001801.P14548786312828008476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (A155212 (n + 1) + 3).toNat

end

end A001801.P14548786312828008476

/-! ## A001801.P4284713458374802696

`A100258(A046691(n+3)-1)`
-/

namespace A001801.P4284713458374802696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (A046691 (n + 3) - 1).toNat

end

end A001801.P4284713458374802696

/-! ## A001801.P7439150641824352630

`A100258(A000096(n+4)-4)`
-/

namespace A001801.P7439150641824352630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (A000096 (n + 4) - 4).toNat

end

end A001801.P7439150641824352630

/-! ## A001801.P11710570379138207061

`A100258(2*n+A055999(n)+10)`
-/

namespace A001801.P11710570379138207061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 ((2 * n : ℤ) + (A055999 n + 10)).toNat

end

end A001801.P11710570379138207061

/-! ## A001801.P16952353883456861457

`A100258(2*n+Δ[A008778(n)]+6)`
-/

namespace A001801.P16952353883456861457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 6)).toNat

end

end A001801.P16952353883456861457

/-! ## A001801.P3048844661293053790

`record[A100258(A052905(A007599(n)))]`
-/

namespace A001801.P3048844661293053790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (A052905 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001801.P3048844661293053790

/-! ## A001801.P11930207486791400616

`record[A100258(A052905(A008616(n)))]`
-/

namespace A001801.P11930207486791400616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (A052905 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001801.P11930207486791400616

/-!
# A001802: Coefficients of Legendre polynomials.

The programs for A001802, there is no canonical definition to state claims against.
-/

/-! ## A001802.P2927852110523912280

`abs(A100258(A000217(n+7)-7))`
-/

namespace A001802.P2927852110523912280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100258 (A000217 (n + 7) - 7).toNat|

end

end A001802.P2927852110523912280

/-! ## A001802.P16476861259271641224

`A000007(n+1)-A100258(A000217(n+6)+n)`
-/

namespace A001802.P16476861259271641224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A100258 (A000217 (n + 6) + (n : ℤ)).toNat

end

end A001802.P16476861259271641224

/-! ## A001802.P7133716734735236578

`A100258(A000217(n+7)-7)/(A023443(n)-n)`
-/

namespace A001802.P7133716734735236578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100258 (A000217 (n + 7) - 7).toNat : ℚ) / (A023443 n - (n : ℤ) : ℚ)

end

end A001802.P7133716734735236578

/-! ## A001802.P6647535996525509785

`char[A106724(n+1)]-A100258(A000217(n+6)+n)`
-/

namespace A001802.P6647535996525509785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106724 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A100258 (A000217 (n + 6) + (n : ℤ)).toNat

end

end A001802.P6647535996525509785

/-! ## A001802.P721898575305228333

`A145649(2*(n+1))-A100258(A000217(n+7)-7)`
-/

namespace A001802.P721898575305228333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (2 * (n + 1)) - A100258 (A000217 (n + 7) - 7).toNat

end

end A001802.P721898575305228333

/-! ## A001802.P1693194259265320894

`A055671((n+1)²)-A100258(A000217(n+7)-7)`
-/

namespace A001802.P1693194259265320894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 ((n + 1) ^ 2) - A100258 (A000217 (n + 7) - 7).toNat

end

end A001802.P1693194259265320894

/-!
# A001803: Numerators in expansion of (1 - x)^(-3/2).

The programs for A001803, the canonical program `A001803.P12627378217154944539` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001803 has offset 0).

The definition of A001803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001803.P13716835157666507721

`A056040(2*n+1)/A060632(2*n)`
-/

namespace A001803.P13716835157666507721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n + 1) : ℚ) / (A060632 (2 * n) : ℚ)

end

end A001803.P13716835157666507721

namespace A001803

/-- `A056040(2*n+1)/A060632(2*n)` -/
def P13716835157666507721.Spec : Prop :=
  ∀ n, P13716835157666507721.a n = (A001803 n : ℚ)

end A001803

/-! ## A001803.P6160337827904933428

`(n+1)*C(2*n+2, n+1)/2^(A000120(n)+1)`
-/

namespace A001803.P6160337827904933428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (2 * n + 2) (n + 1) : ℚ) / (2 : ℚ) ^ (A000120 n + 1 : ℤ)

end

end A001803.P6160337827904933428

namespace A001803

/-- `(n+1)*C(2*n+2, n+1)/2^(A000120(n)+1)` -/
def P6160337827904933428.Spec : Prop :=
  ∀ n, P6160337827904933428.a n = (A001803 n : ℚ)

end A001803

/-! ## A001803.P12627378217154944539

`(2*n+1)!/(n!²*2^A000120(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001803

/-- `(2*n+1)!/(n!²*2^A000120(n))` -/
def P12627378217154944539.Spec : Prop :=
  ∀ n, P12627378217154944539.a n = (A001803 n : ℚ)

end A001803

/-! ## A001803.P9991802906435617226

`(2*n+1)*lcm(n, a(n-1))/n` with `a(0)=1`
-/

namespace A001803.P9991802906435617226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * ((Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ))

end

end A001803.P9991802906435617226

namespace A001803

/-- `(2*n+1)*lcm(n, a(n-1))/n` -/
def P9991802906435617226.Spec : Prop :=
  ∀ n, P9991802906435617226.a n = (A001803 n : ℚ)

end A001803

/-! ## A001803.P10454758959228432156

`(2*n+1)*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A001803.P10454758959228432156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A001803.P10454758959228432156

namespace A001803

/-- `(2*n+1)*a(n-1)/gcd(n, a(n-1))` -/
def P10454758959228432156.Spec : Prop :=
  ∀ n, P10454758959228432156.a n = (A001803 n : ℚ)

end A001803

/-! ## A001803.P206461286648512216

`record[A163590(n)]`
-/

namespace A001803.P206461286648512216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001803.P206461286648512216

namespace A001803

/-- `record[A163590(n)]` -/
def P206461286648512216.Spec : Prop :=
  ∀ n, P206461286648512216.a n = A001803 n

end A001803

/-! ## A001803.P1928813514177122798

`A086116(Δ[n²])`
-/

namespace A001803.P1928813514177122798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001803.P1928813514177122798

namespace A001803

/-- `A086116(Δ[n²])` -/
def P1928813514177122798.Spec : Prop :=
  ∀ n, P1928813514177122798.a n = A001803 n

end A001803

/-! ## A001803.P9038067674003510263

`A163590(Δ[n²])`
-/

namespace A001803.P9038067674003510263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001803.P9038067674003510263

namespace A001803

/-- `A163590(Δ[n²])` -/
def P9038067674003510263.Spec : Prop :=
  ∀ n, P9038067674003510263.a n = A001803 n

end A001803

/-! ## A001803.P11847362253967906669

`A380909(Δ[n²])`
-/

namespace A001803.P11847362253967906669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001803.P11847362253967906669

namespace A001803

/-- `A380909(Δ[n²])` -/
def P11847362253967906669.Spec : Prop :=
  ∀ n, P11847362253967906669.a n = A001803 n

end A001803

/-! ## A001803.P15762398564761791134

`A004731(2*(n+1))`
-/

namespace A001803.P15762398564761791134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * (n + 1))

end

end A001803.P15762398564761791134

namespace A001803

/-- `A004731(2*(n+1))` -/
def P15762398564761791134.Spec : Prop :=
  ∀ n, P15762398564761791134.a n = A001803 n

end A001803

/-! ## A001803.P11873731661222602155

`Δ[n²]*A001790(n)`
-/

namespace A001803.P11873731661222602155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001790 n

end

end A001803.P11873731661222602155

namespace A001803

/-- `Δ[n²]*A001790(n)` -/
def P11873731661222602155.Spec : Prop :=
  ∀ n, P11873731661222602155.a n = A001803 n

end A001803

/-! ## A001803.P10484499453612633266

`or(1, A163590(2*n+1))`
-/

namespace A001803.P10484499453612633266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163590 (2 * n + 1))

end

end A001803.P10484499453612633266

namespace A001803

/-- `or(1, A163590(2*n+1))` -/
def P10484499453612633266.Spec : Prop :=
  ∀ n, P10484499453612633266.a n = A001803 n

end A001803

/-! ## A001803.P15003926035943480563

`Δ[n²]*A036069(2*n)`
-/

namespace A001803.P15003926035943480563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A036069 (2 * n)

end

end A001803.P15003926035943480563

namespace A001803

/-- `Δ[n²]*A036069(2*n)` -/
def P15003926035943480563.Spec : Prop :=
  ∀ n, P15003926035943480563.a n = A001803 n

end A001803

/-! ## A001803.P1540815537710437118

`(2*n+1)*A163590(2*n)`
-/

namespace A001803.P1540815537710437118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A163590 (2 * n)

end

end A001803.P1540815537710437118

namespace A001803

/-- `(2*n+1)*A163590(2*n)` -/
def P1540815537710437118.Spec : Prop :=
  ∀ n, P1540815537710437118.a n = A001803 n

end A001803

/-! ## A001803.P9850836733840365853

`(2*n+1)*A380910(2*n)`
-/

namespace A001803.P9850836733840365853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A380910 (2 * n)

end

end A001803.P9850836733840365853

namespace A001803

/-- `(2*n+1)*A380910(2*n)` -/
def P9850836733840365853.Spec : Prop :=
  ∀ n, P9850836733840365853.a n = A001803 n

end A001803

/-! ## A001803.P16505113457690574024

`lcm(2*n+1, A086116(2*(n+1)))`
-/

namespace A001803.P16505113457690574024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A086116 (2 * (n + 1)))

end

end A001803.P16505113457690574024

namespace A001803

/-- `lcm(2*n+1, A086116(2*(n+1)))` -/
def P16505113457690574024.Spec : Prop :=
  ∀ n, (P16505113457690574024.a n : ℤ) = A001803 n

end A001803

/-! ## A001803.P14167801109293378027

`A004735(A004277(n))`
-/

namespace A001803.P14167801109293378027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004735 (A004277 n).toNat

end

end A001803.P14167801109293378027

namespace A001803

/-- `A004735(A004277(n))` -/
def P14167801109293378027.Spec : Prop :=
  ∀ n, P14167801109293378027.a n = A001803 n

end A001803

/-! ## A001803.P9944930359248525784

`A004735(A004275(n+1))`
-/

namespace A001803.P9944930359248525784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004735 (A004275 (n + 1)).toNat

end

end A001803.P9944930359248525784

namespace A001803

/-- `A004735(A004275(n+1))` -/
def P9944930359248525784.Spec : Prop :=
  ∀ n, P9944930359248525784.a n = A001803 n

end A001803

/-! ## A001803.P16040822979181302628

`A173384(n)+A046161(n)`
-/

namespace A001803.P16040822979181302628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173384 n + A046161 n

end

end A001803.P16040822979181302628

namespace A001803

/-- `A173384(n)+A046161(n)` -/
def P16040822979181302628.Spec : Prop :=
  ∀ n, P16040822979181302628.a n = A001803 n

end A001803

/-! ## A001803.P13545888065187631915

`A173396(n)-A046161(n)`
-/

namespace A001803.P13545888065187631915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 n - A046161 n

end

end A001803.P13545888065187631915

namespace A001803

/-- `A173396(n)-A046161(n)` -/
def P13545888065187631915.Spec : Prop :=
  ∀ n, P13545888065187631915.a n = A001803 n

end A001803

/-!
# A001804: a(n) = n! * C(n,2).

The programs for A001804, the canonical program `A001804.P10768050607619896607` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001804 has offset 2).

The definition of A001804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)!*C(n+2, 2)` (program `A001804.P10768050607619896607`, by `A001804.P10768050607619896607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001804.P10768050607619896607

`(n+2)!*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001804

/-- `(n+2)!*C(n+2, 2)` -/
def P10768050607619896607.Spec : Prop :=
  ∀ n, (P10768050607619896607.a n : ℤ) = A001804 (n + 2)

theorem P10768050607619896607.correct : P10768050607619896607.Spec := by
  intro n
  simp only [A001804, Nat.add_sub_cancel]

end A001804

/-! ## A001804.P14217549094994491146

`2*A001809(n+2)`
-/

namespace A001804.P14217549094994491146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001809 (n + 2)

end

end A001804.P14217549094994491146

namespace A001804

/-- `2*A001809(n+2)` -/
def P14217549094994491146.Spec : Prop :=
  ∀ n, P14217549094994491146.a n = A001804 (n + 2)

end A001804

/-! ## A001804.P7966704137598432183

`(n+2)!*∑[n+1]`
-/

namespace A001804.P7966704137598432183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001804.P7966704137598432183

namespace A001804

/-- `(n+2)!*∑[n+1]` -/
def P7966704137598432183.Spec : Prop :=
  ∀ n, (P7966704137598432183.a n : ℤ) = A001804 (n + 2)

end A001804

/-! ## A001804.P9582856278423565439

`∑[n+1]*∏[n+2]`
-/

namespace A001804.P9582856278423565439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A001804.P9582856278423565439

namespace A001804

/-- `∑[n+1]*∏[n+2]` -/
def P9582856278423565439.Spec : Prop :=
  ∀ n, (P9582856278423565439.a n : ℤ) = A001804 (n + 2)

end A001804

/-! ## A001804.P12772824530126726294

`(n+2)!+n*∏[n+3]`
-/

namespace A001804.P12772824530126726294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2) + n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001804.P12772824530126726294

namespace A001804

/-- `(n+2)!+n*∏[n+3]` -/
def P12772824530126726294.Spec : Prop :=
  ∀ n, (P12772824530126726294.a n : ℤ) = A001804 (n + 2)

end A001804

/-! ## A001804.P6540035671593943305

`abs((n+1)/2*Δ[(n+2)!])`
-/

namespace A001804.P6540035671593943305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)|

end

end A001804.P6540035671593943305

namespace A001804

/-- `abs((n+1)/2*Δ[(n+2)!])` -/
def P6540035671593943305.Spec : Prop :=
  ∀ n, P6540035671593943305.a n = (A001804 (n + 2) : ℚ)

end A001804

/-! ## A001804.P284147621700992633

`(n+1)/abs(2/Δ[(n+2)!])`
-/

namespace A001804.P284147621700992633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / |2 / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)|

end

end A001804.P284147621700992633

namespace A001804

/-- `(n+1)/abs(2/Δ[(n+2)!])` -/
def P284147621700992633.Spec : Prop :=
  ∀ n, P284147621700992633.a n = (A001804 (n + 2) : ℚ)

end A001804

/-! ## A001804.P3533160924246581782

`(n+2)!/Δ[-(2/(n+1))]`
-/

namespace A001804.P3533160924246581782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(2 / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (f1 (n + 1) - f1 n)

end

end A001804.P3533160924246581782

namespace A001804

/-- `(n+2)!/Δ[-(2/(n+1))]` -/
def P3533160924246581782.Spec : Prop :=
  ∀ n, P3533160924246581782.a n = (A001804 (n + 2) : ℚ)

theorem P3533160924246581782.correct : P3533160924246581782.Spec := by
  intro n
  simp only [A001804, Nat.add_sub_cancel, A001804.P3533160924246581782.f1, A001804.P3533160924246581782.a, A001804.P10768050607619896607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001804

/-! ## A001804.P2664800908438683242

`floor((n+1)/2*Δ[(n+2)!])`
-/

namespace A001804.P2664800908438683242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋

end

end A001804.P2664800908438683242

namespace A001804

/-- `floor((n+1)/2*Δ[(n+2)!])` -/
def P2664800908438683242.Spec : Prop :=
  ∀ n, P2664800908438683242.a n = A001804 (n + 2)

end A001804

/-! ## A001804.P10689173430960940843

`ceil((n+1)/2*Δ[(n+2)!])`
-/

namespace A001804.P10689173430960940843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌉

end

end A001804.P10689173430960940843

namespace A001804

/-- `ceil((n+1)/2*Δ[(n+2)!])` -/
def P10689173430960940843.Spec : Prop :=
  ∀ n, P10689173430960940843.a n = A001804 (n + 2)

end A001804

/-!
# A001805: a(n) = n! * binomial(n,3).

The programs for A001805, the canonical program `A001805.P4077111542445897176` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001805 has offset 3).

The definition of A001805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)!*C(n+3, 3)` (program `A001805.P4077111542445897176`, by `A001805.P4077111542445897176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001805.P4077111542445897176

`(n+3)!*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001805

/-- `(n+3)!*C(n+3, 3)` -/
def P4077111542445897176.Spec : Prop :=
  ∀ n, (P4077111542445897176.a n : ℤ) = A001805 (n + 3)

theorem P4077111542445897176.correct : P4077111542445897176.Spec := by
  intro n
  simp only [A001805, Nat.add_sub_cancel]

end A001805

/-! ## A001805.P8774025148026594344

`A000142(n+3)*A000292(n+1)`
-/

namespace A001805.P8774025148026594344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3) * A000292 (n + 1)

end

end A001805.P8774025148026594344

namespace A001805

/-- `A000142(n+3)*A000292(n+1)` -/
def P8774025148026594344.Spec : Prop :=
  ∀ n, P8774025148026594344.a n = A001805 (n + 3)

theorem P8774025148026594344.correct : P8774025148026594344.Spec := by
  intro n
  simp only [A001805, Nat.add_sub_cancel, A001805.P8774025148026594344.a, A001805.P4077111542445897176.a, A000142, A000142.P3272619076580183195.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001805

/-! ## A001805.P8363425160432681382

`(n+3)!*∑[∑[n+1]]`
-/

namespace A001805.P8363425160432681382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001805.P8363425160432681382

namespace A001805

/-- `(n+3)!*∑[∑[n+1]]` -/
def P8363425160432681382.Spec : Prop :=
  ∀ n, (P8363425160432681382.a n : ℤ) = A001805 (n + 3)

end A001805

/-! ## A001805.P639254107131213101

`2*C(n+3, 3)*∏[n+3]`
-/

namespace A001805.P639254107131213101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 3) 3 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A001805.P639254107131213101

namespace A001805

/-- `2*C(n+3, 3)*∏[n+3]` -/
def P639254107131213101.Spec : Prop :=
  ∀ n, (P639254107131213101.a n : ℤ) = A001805 (n + 3)

end A001805

/-! ## A001805.P11561636382092133783

`a(n-1)/n*(n+3)²` with `a(0)=6`
-/

namespace A001805.P11561636382092133783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / (n : ℚ) * ((n + 3) ^ 2 : ℚ)

end

end A001805.P11561636382092133783

namespace A001805

/-- `a(n-1)/n*(n+3)²` -/
def P11561636382092133783.Spec : Prop :=
  ∀ n, P11561636382092133783.a n = (A001805 (n + 3) : ℚ)

end A001805

/-! ## A001805.P5459301669697323772

`∑[∑[2*(n+1)]]*∏[n+3]`
-/

namespace A001805.P5459301669697323772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A001805.P5459301669697323772

namespace A001805

/-- `∑[∑[2*(n+1)]]*∏[n+3]` -/
def P5459301669697323772.Spec : Prop :=
  ∀ n, (P5459301669697323772.a n : ℤ) = A001805 (n + 3)

end A001805

/-! ## A001805.P14185458096526162671

`A000142(n)*A253285(n+1)-A001804(n+3)`
-/

namespace A001805.P14185458096526162671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A253285 (n + 1) - A001804 (n + 3)

end

end A001805.P14185458096526162671

namespace A001805

/-- `A000142(n)*A253285(n+1)-A001804(n+3)` -/
def P14185458096526162671.Spec : Prop :=
  ∀ n, P14185458096526162671.a n = A001805 (n + 3)

end A001805

/-! ## A001805.P7566219092100365906

`A196347(A167614(n+2))`
-/

namespace A001805.P7566219092100365906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (A167614 (n + 2)).toNat

end

end A001805.P7566219092100365906

namespace A001805

/-- `A196347(A167614(n+2))` -/
def P7566219092100365906.Spec : Prop :=
  ∀ n, P7566219092100365906.a n = A001805 (n + 3)

end A001805

/-! ## A001805.P17085186063099704788

`A196347(eq[2, A141169(n)])`
-/

namespace A001805.P17085186063099704788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001805.P17085186063099704788

namespace A001805

/-- `A196347(eq[2, A141169(n)])` -/
def P17085186063099704788.Spec : Prop :=
  ∀ n, P17085186063099704788.a n = A001805 (n + 3)

end A001805

/-!
# A001806: a(n) = n! * binomial(n,4).

The programs for A001806, the canonical program `A001806.P15157883652046244889` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001806 has offset 4).

The definition of A001806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)!*C(n+4, 4)` (program `A001806.P15157883652046244889`, by `A001806.P15157883652046244889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001806.P15157883652046244889

`(n+4)!*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001806

/-- `(n+4)!*C(n+4, 4)` -/
def P15157883652046244889.Spec : Prop :=
  ∀ n, (P15157883652046244889.a n : ℤ) = A001806 (n + 4)

theorem P15157883652046244889.correct : P15157883652046244889.Spec := by
  intro n
  simp only [A001806, Nat.add_sub_cancel]

end A001806

/-! ## A001806.P14786332945985491058

`A000142(n+4)*A000332(n+4)`
-/

namespace A001806.P14786332945985491058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 4) * A000332 (n + 4)

end

end A001806.P14786332945985491058

namespace A001806

/-- `A000142(n+4)*A000332(n+4)` -/
def P14786332945985491058.Spec : Prop :=
  ∀ n, P14786332945985491058.a n = A001806 (n + 4)

theorem P14786332945985491058.correct : P14786332945985491058.Spec := by
  intro n
  simp only [A001806, Nat.add_sub_cancel, A001806.P14786332945985491058.a, A001806.P15157883652046244889.a, A000142, A000142.P3272619076580183195.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001806

/-! ## A001806.P5959231310603281193

`(n+4)!*∑[∑[∑[n+1]]]`
-/

namespace A001806.P5959231310603281193
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 4) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001806.P5959231310603281193

namespace A001806

/-- `(n+4)!*∑[∑[∑[n+1]]]` -/
def P5959231310603281193.Spec : Prop :=
  ∀ n, (P5959231310603281193.a n : ℤ) = A001806 (n + 4)

end A001806

/-! ## A001806.P6173960336491535900

`24*A001811(n+4)`
-/

namespace A001806.P6173960336491535900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A001811 (n + 4)

end

end A001806.P6173960336491535900

namespace A001806

/-- `24*A001811(n+4)` -/
def P6173960336491535900.Spec : Prop :=
  ∀ n, P6173960336491535900.a n = A001806 (n + 4)

end A001806

/-! ## A001806.P8103749182460778975

`A000142(n+3)*A027764(n+3)`
-/

namespace A001806.P8103749182460778975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3) * A027764 (n + 3)

end

end A001806.P8103749182460778975

namespace A001806

/-- `A000142(n+3)*A027764(n+3)` -/
def P8103749182460778975.Spec : Prop :=
  ∀ n, P8103749182460778975.a n = A001806 (n + 4)

theorem P8103749182460778975.correct : P8103749182460778975.Spec := by
  intro n
  simp only [A001806, Nat.add_sub_cancel, A001806.P8103749182460778975.a, A001806.P15157883652046244889.a, A000142, A000142.P3272619076580183195.a, A027764, A027764.P14325653007751828854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001806

/-! ## A001806.P5260267953144367391

`Δ[A139174(n+4)]*A000292(n+1)`
-/

namespace A001806.P5260267953144367391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139174 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000292 (n + 1)

end

end A001806.P5260267953144367391

namespace A001806

/-- `Δ[A139174(n+4)]*A000292(n+1)` -/
def P5260267953144367391.Spec : Prop :=
  ∀ n, P5260267953144367391.a n = A001806 (n + 4)

end A001806

/-! ## A001806.P13327929558822680123

`A000096(n+1)*A105278(A167614(n+2))`
-/

namespace A001806.P13327929558822680123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A105278 (A167614 (n + 2)).toNat

end

end A001806.P13327929558822680123

namespace A001806

/-- `A000096(n+1)*A105278(A167614(n+2))` -/
def P13327929558822680123.Spec : Prop :=
  ∀ n, P13327929558822680123.a n = A001806 (n + 4)

end A001806

/-! ## A001806.P11983567181938181625

`A021012(eq[4, A002262(n)])`
-/

namespace A001806.P11983567181938181625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001806.P11983567181938181625

namespace A001806

/-- `A021012(eq[4, A002262(n)])` -/
def P11983567181938181625.Spec : Prop :=
  ∀ n, P11983567181938181625.a n = A001806 (n + 4)

end A001806

/-! ## A001806.P17526525757054771933

`(A167614(n+2)-3)*A055314(A167614(n+1))`
-/

namespace A001806.P17526525757054771933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167614 (n + 2) - 3) * A055314 (A167614 (n + 1)).toNat

end

end A001806.P17526525757054771933

namespace A001806

/-- `(A167614(n+2)-3)*A055314(A167614(n+1))` -/
def P17526525757054771933.Spec : Prop :=
  ∀ n, P17526525757054771933.a n = A001806 (n + 4)

end A001806

/-!
# A001807: a(n) = n! * binomial(n,5).

The programs for A001807, the canonical program `A001807.P1317356273489981350` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001807 has offset 5).

The definition of A001807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)!*C(n+5, 5)` (program `A001807.P1317356273489981350`, by `A001807.P1317356273489981350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001807.P4040773092563392199

`C(n+5, 5)*(n+5)!`
-/

namespace A001807.P4040773092563392199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 * Nat.factorial (n + 5)

end

end A001807.P4040773092563392199

namespace A001807

/-- `C(n+5, 5)*(n+5)!` -/
def P4040773092563392199.Spec : Prop :=
  ∀ n, (P4040773092563392199.a n : ℤ) = A001807 (n + 5)

theorem P4040773092563392199.correct : P4040773092563392199.Spec := by
  intro n
  simp only [A001807, Nat.add_sub_cancel, A001807.P4040773092563392199.a, A001807.P1317356273489981350.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001807

/-! ## A001807.P1317356273489981350

`(n+5)!*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001807

/-- `(n+5)!*C(n+5, 5)` -/
def P1317356273489981350.Spec : Prop :=
  ∀ n, (P1317356273489981350.a n : ℤ) = A001807 (n + 5)

theorem P1317356273489981350.correct : P1317356273489981350.Spec := by
  intro n
  simp only [A001807, Nat.add_sub_cancel]

end A001807

/-! ## A001807.P14533274525160630262

`A000142(n+5)*A000389(n+5)`
-/

namespace A001807.P14533274525160630262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 5) * A000389 (n + 5)

end

end A001807.P14533274525160630262

namespace A001807

/-- `A000142(n+5)*A000389(n+5)` -/
def P14533274525160630262.Spec : Prop :=
  ∀ n, P14533274525160630262.a n = A001807 (n + 5)

theorem P14533274525160630262.correct : P14533274525160630262.Spec := by
  intro n
  simp only [A001807, Nat.add_sub_cancel, A001807.P14533274525160630262.a, A001807.P1317356273489981350.a, A000142, A000142.P3272619076580183195.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001807

/-! ## A001807.P5639568347514855315

`(n+5)!*A213551(A000124(n))`
-/

namespace A001807.P5639568347514855315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 5) : ℤ) * A213551 (A000124 n).toNat

end

end A001807.P5639568347514855315

namespace A001807

/-- `(n+5)!*A213551(A000124(n))` -/
def P5639568347514855315.Spec : Prop :=
  ∀ n, P5639568347514855315.a n = A001807 (n + 5)

end A001807

/-! ## A001807.P5723211085057358204

`A196347(eq[5, A002262(n)])`
-/

namespace A001807.P5723211085057358204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001807.P5723211085057358204

namespace A001807

/-- `A196347(eq[5, A002262(n)])` -/
def P5723211085057358204.Spec : Prop :=
  ∀ n, P5723211085057358204.a n = A001807 (n + 5)

end A001807

/-! ## A001807.P12474979801735805237

`A196347(eq[5, A141169(n)])`
-/

namespace A001807.P12474979801735805237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001807.P12474979801735805237

namespace A001807

/-- `A196347(eq[5, A141169(n)])` -/
def P12474979801735805237.Spec : Prop :=
  ∀ n, P12474979801735805237.a n = A001807 (n + 5)

end A001807

/-! ## A001807.P17835652461218293092

`A196347(eq[5, A025581(n)])`
-/

namespace A001807.P17835652461218293092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001807.P17835652461218293092

namespace A001807

/-- `A196347(eq[5, A025581(n)])` -/
def P17835652461218293092.Spec : Prop :=
  ∀ n, P17835652461218293092.a n = A001807 (n + 5)

end A001807

/-! ## A001807.P7527426764592502481

`A196347(Δ[A026054(n+3)])`
-/

namespace A001807.P7527426764592502481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 (f1 (n + 1) - f1 n).toNat

end

end A001807.P7527426764592502481

namespace A001807

/-- `A196347(Δ[A026054(n+3)])` -/
def P7527426764592502481.Spec : Prop :=
  ∀ n, P7527426764592502481.a n = A001807 (n + 5)

end A001807

/-!
# A001808: Expansion of 1/((1+x)*(1-x)^12).

The programs for A001808, the canonical program `A001808.P10553639734372948907` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001808 has offset 0).

The definition of A001808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001808.P10553639734372948907

`C(n+11, 11)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001808

/-- `C(n+11, 11)-a(n-1)` -/
def P10553639734372948907.Spec : Prop :=
  ∀ n, P10553639734372948907.a n = A001808 n

theorem P10553639734372948907.correct : P10553639734372948907.Spec := by
  intro n
  simp only [A001808]

end A001808

/-! ## A001808.P17163743452721090841

`∑[(10/n+1)*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A001808.P17163743452721090841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (10 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A001808.P17163743452721090841

namespace A001808

/-- `∑[(10/n+1)*a(n-1)]-a(n-1)` -/
def P17163743452721090841.Spec : Prop :=
  ∀ n, P17163743452721090841.a n = (A001808 n : ℚ)

end A001808

/-! ## A001808.P12862648041779625605

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]]]-a(n-1)` with `a(0)=1`
-/

namespace A001808.P12862648041779625605
noncomputable section

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A001808.P12862648041779625605

namespace A001808

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]]]-a(n-1)` -/
def P12862648041779625605.Spec : Prop :=
  ∀ n, P12862648041779625605.a n = A001808 n

end A001808

/-! ## A001808.P17490261420395978729

`∑[A001786(n)]`
-/

namespace A001808.P17490261420395978729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001808.P17490261420395978729

namespace A001808

/-- `∑[A001786(n)]` -/
def P17490261420395978729.Spec : Prop :=
  ∀ n, P17490261420395978729.a n = A001808 n

end A001808

/-! ## A001808.P16201447776603181774

`∑[∑[A001781(n)]]`
-/

namespace A001808.P16201447776603181774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001808.P16201447776603181774

namespace A001808

/-- `∑[∑[A001781(n)]]` -/
def P16201447776603181774.Spec : Prop :=
  ∀ n, P16201447776603181774.a n = A001808 n

end A001808

/-! ## A001808.P15129602309795242798

`∑[∑[∑[A001780(n)]]]`
-/

namespace A001808.P15129602309795242798
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001808.P15129602309795242798

namespace A001808

/-- `∑[∑[∑[A001780(n)]]]` -/
def P15129602309795242798.Spec : Prop :=
  ∀ n, P15129602309795242798.a n = A001808 n

end A001808

/-! ## A001808.P2244415935960290794

`∑[A001287(n)-a(n-1)]` with `a(0)=1`
-/

namespace A001808.P2244415935960290794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001287 (n + 10) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001808.P2244415935960290794

namespace A001808

/-- `∑[A001287(n)-a(n-1)]` -/
def P2244415935960290794.Spec : Prop :=
  ∀ n, P2244415935960290794.a n = A001808 n

end A001808

/-!
# A001809: a(n) = n! * n(n-1)/4.

The programs for A001809, the canonical program `A001809.P5755811273244816864` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001809 has offset 0).

The definition of A001809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001809.P5755811273244816864

`n!*C(n, 2)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001809

/-- `n!*C(n, 2)/2` -/
def P5755811273244816864.Spec : Prop :=
  ∀ n, P5755811273244816864.a n = (A001809 n : ℚ)

end A001809

/-! ## A001809.P10986119045013552042

`n!*n*(n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001809.P10986119045013552042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * n : ℤ) * ((n : ℤ) - 1) : ℚ) / 4

end

end A001809.P10986119045013552042

namespace A001809

/-- `n!*n*(n-1)/4` -/
def P10986119045013552042.Spec : Prop :=
  ∀ n, P10986119045013552042.a n = (A001809 n : ℚ)

end A001809

/-! ## A001809.P5242015795187947971

`a(n-1)*n²/(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A001809.P5242015795187947971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) * (n ^ 2 : ℚ) / ((n : ℤ) - 2 : ℚ)

end

end A001809.P5242015795187947971

namespace A001809

/-- `a(n-1)*n²/(n-2)` -/
def P5242015795187947971.Spec : Prop :=
  ∀ n, P5242015795187947971.a n = (A001809 n : ℚ)

end A001809

/-! ## A001809.P16661668888265863670

`(n-1)/4*Δ[n!]`
-/

namespace A001809.P16661668888265863670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A001809.P16661668888265863670

namespace A001809

/-- `(n-1)/4*Δ[n!]` -/
def P16661668888265863670.Spec : Prop :=
  ∀ n, P16661668888265863670.a n = (A001809 n : ℚ)

end A001809

/-! ## A001809.P2642110264612710341

`(n²-n)/4*n!`
-/

namespace A001809.P2642110264612710341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4 * (Nat.factorial n : ℚ)

end

end A001809.P2642110264612710341

namespace A001809

/-- `(n²-n)/4*n!` -/
def P2642110264612710341.Spec : Prop :=
  ∀ n, P2642110264612710341.a n = (A001809 n : ℚ)

end A001809

/-! ## A001809.P9643989557208593868

`C(n, 2)*∏[gcd(n, C(2, n))]`
-/

namespace A001809.P9643989557208593868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001809.P9643989557208593868

namespace A001809

/-- `C(n, 2)*∏[gcd(n, C(2, n))]` -/
def P9643989557208593868.Spec : Prop :=
  ∀ n, (P9643989557208593868.a n : ℤ) = A001809 n

end A001809

/-! ## A001809.P16720921854376739441

`C(n, 2)²*∏[or(n-2, C(2, n))]`
-/

namespace A001809.P16720921854376739441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001809.P16720921854376739441

namespace A001809

/-- `C(n, 2)²*∏[or(n-2, C(2, n))]` -/
def P16720921854376739441.Spec : Prop :=
  ∀ n, P16720921854376739441.a n = A001809 n

end A001809

/-! ## A001809.P14129090784611935516

`n/(1-2/n)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A001809.P14129090784611935516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℚ) / (1 - 2 / (n : ℚ)) * a (n - 1)

end

end A001809.P14129090784611935516

namespace A001809

/-- `n/(1-2/n)*a(n-1)` -/
def P14129090784611935516.Spec : Prop :=
  ∀ n, P14129090784611935516.a n = (A001809 n : ℚ)

end A001809

/-! ## A001809.P14012775162889518297

`C(n, 2)*A001710(n)`
-/

namespace A001809.P14012775162889518297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A001710 n

end

end A001809.P14012775162889518297

namespace A001809

/-- `C(n, 2)*A001710(n)` -/
def P14012775162889518297.Spec : Prop :=
  ∀ n, P14012775162889518297.a n = A001809 n

end A001809

/-! ## A001809.P15692472917261776610

`A138772(n+1)-A001563(n)`
-/

namespace A001809.P15692472917261776610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - A001563 n

end

end A001809.P15692472917261776610

namespace A001809

/-- `A138772(n+1)-A001563(n)` -/
def P15692472917261776610.Spec : Prop :=
  ∀ n, P15692472917261776610.a n = A001809 n

end A001809

/-!
# A001810: a(n) = n!*n*(n-1)*(n-2)/36.

The programs for A001810, the canonical program `A001810.P2475113131822383250` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001810 has offset 0).

The definition of A001810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001810.P2475113131822383250

`n!*n*(n-1)*(n-2)/36`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001810

/-- `n!*n*(n-1)*(n-2)/36` -/
def P2475113131822383250.Spec : Prop :=
  ∀ n, P2475113131822383250.a n = (A001810 n : ℚ)

end A001810

/-! ## A001810.P8107076433028960455

`n!/6*C(n, 3)`
-/

namespace A001810.P8107076433028960455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 6 * (Nat.choose n 3 : ℚ)

end

end A001810.P8107076433028960455

namespace A001810

/-- `n!/6*C(n, 3)` -/
def P8107076433028960455.Spec : Prop :=
  ∀ n, P8107076433028960455.a n = (A001810 n : ℚ)

end A001810

/-! ## A001810.P18009406136066966911

`C(n, 3)²*abs(3-n)!`
-/

namespace A001810.P18009406136066966911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 ^ 2 * Nat.factorial |3 - (n : ℤ)|.toNat

end

end A001810.P18009406136066966911

namespace A001810

/-- `C(n, 3)²*abs(3-n)!` -/
def P18009406136066966911.Spec : Prop :=
  ∀ n, (P18009406136066966911.a n : ℤ) = A001810 n

end A001810

/-! ## A001810.P4092761913890644251

`A001754(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A001810.P4092761913890644251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001754 n + (n : ℤ) * a (n - 1)

end

end A001810.P4092761913890644251

namespace A001810

/-- `A001754(n)+n*a(n-1)` -/
def P4092761913890644251.Spec : Prop :=
  ∀ n, P4092761913890644251.a n = A001810 n

end A001810

/-! ## A001810.P12945559426886577574

`(A038507(n)-1)/3*C(n, 3)/2`
-/

namespace A001810.P12945559426886577574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038507 n - 1 : ℚ) / 3 * (Nat.choose n 3 : ℚ) / 2

end

end A001810.P12945559426886577574

namespace A001810

/-- `(A038507(n)-1)/3*C(n, 3)/2` -/
def P12945559426886577574.Spec : Prop :=
  ∀ n, P12945559426886577574.a n = (A001810 n : ℚ)

end A001810

/-! ## A001810.P15259431872017407512

`A140712(n+1)-A180119(n)`
-/

namespace A001810.P15259431872017407512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140712 (n + 1) - A180119 n

end

end A001810.P15259431872017407512

namespace A001810

/-- `A140712(n+1)-A180119(n)` -/
def P15259431872017407512.Spec : Prop :=
  ∀ n, P15259431872017407512.a n = A001810 n

end A001810

/-! ## A001810.P14120918892406935624

`(A005990(n+1)-A002775(n))/6`
-/

namespace A001810.P14120918892406935624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005990 (n + 1) - A002775 n : ℚ) / 6

end

end A001810.P14120918892406935624

namespace A001810

/-- `(A005990(n+1)-A002775(n))/6` -/
def P14120918892406935624.Spec : Prop :=
  ∀ n, P14120918892406935624.a n = (A001810 n : ℚ)

end A001810

/-! ## A001810.P4148825303759836808

`A140712(n+1)-A000142(n)*A000217(n)`
-/

namespace A001810.P4148825303759836808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140712 (n + 1) - A000142 n * A000217 n

end

end A001810.P4148825303759836808

namespace A001810

/-- `A140712(n+1)-A000142(n)*A000217(n)` -/
def P4148825303759836808.Spec : Prop :=
  ∀ n, P4148825303759836808.a n = A001810 n

end A001810

/-! ## A001810.P3552474053184473115

`A140712(n+1)-A131689(A034856(n+1))`
-/

namespace A001810.P3552474053184473115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140712 (n + 1) - A131689 (A034856 (n + 1)).toNat

end

end A001810.P3552474053184473115

namespace A001810

/-- `A140712(n+1)-A131689(A034856(n+1))` -/
def P3552474053184473115.Spec : Prop :=
  ∀ n, P3552474053184473115.a n = A001810 n

end A001810

/-!
# A001811: Coefficients of Laguerre polynomials.

The programs for A001811, there is no canonical definition to state claims against.
-/

/-! ## A001811.P5154996691176211865

`C(n+4, 4)²*n!`
-/

namespace A001811.P5154996691176211865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 ^ 2 * Nat.factorial n

end

end A001811.P5154996691176211865

/-! ## A001811.P10321781302262899321

`∑[∑[∑[n+1]]]²*n!`
-/

namespace A001811.P10321781302262899321
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.factorial n

end

end A001811.P10321781302262899321

/-! ## A001811.P9651366311567841232

`a(n-1)/n*(n+4)²` with `a(0)=1`
-/

namespace A001811.P9651366311567841232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * ((n + 4) ^ 2 : ℚ)

end

end A001811.P9651366311567841232

/-! ## A001811.P14739532665763519388

`n!*C(n+4, 4)*C(n+4, 4)`
-/

namespace A001811.P14739532665763519388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 4) 4 * Nat.choose (n + 4) 4

end

end A001811.P14739532665763519388

/-! ## A001811.P205066052445878134

`C(n+4, 4)²*∏[round(sqrt(n²+1))]`
-/

namespace A001811.P205066052445878134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001811.P205066052445878134

/-! ## A001811.P13964994679738791682

`n!*A288876(n)`
-/

namespace A001811.P13964994679738791682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A288876 n

end

end A001811.P13964994679738791682

/-! ## A001811.P9975466953751956403

`(A001720(n+4)/A000142(n))²*A000142(n)`
-/

namespace A001811.P9975466953751956403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001720 (n + 4) : ℚ) / (A000142 n : ℚ)) ^ 2 * (A000142 n : ℚ)

end

end A001811.P9975466953751956403

/-! ## A001811.P5452699377920293328

`A061206(n+1)/A001563(n+1)*A061206(n+1)`
-/

namespace A001811.P5452699377920293328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061206 (n + 1) : ℚ) / (A001563 (n + 1) : ℚ) * (A061206 (n + 1) : ℚ)

end

end A001811.P5452699377920293328

/-!
# A001812: Coefficients of Laguerre polynomials.

The programs for A001812, there is no canonical definition to state claims against.
-/

/-! ## A001812.P8489224132367840991

`∑[∑[∑[∑[n+1]]]]²*n!`
-/

namespace A001812.P8489224132367840991
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.factorial n

end

end A001812.P8489224132367840991

/-! ## A001812.P17625541473093041703

`a(n-1)/n*(n+5)²` with `a(0)=1`
-/

namespace A001812.P17625541473093041703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * ((n + 5) ^ 2 : ℚ)

end

end A001812.P17625541473093041703

/-! ## A001812.P3063415843053747879

`n!*C(n+5, 5)*C(n+5, 5)`
-/

namespace A001812.P3063415843053747879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5 * Nat.choose (n + 5) 5

end

end A001812.P3063415843053747879

/-! ## A001812.P3575308200999670272

`C(n+5, 5)²*A000142(n)`
-/

namespace A001812.P3575308200999670272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 ^ 2 : ℤ) * A000142 n

end

end A001812.P3575308200999670272

/-! ## A001812.P7575934022384581815

`A144084(A046691(n+4)-2)`
-/

namespace A001812.P7575934022384581815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 (A046691 (n + 4) - 2).toNat

end

end A001812.P7575934022384581815

/-! ## A001812.P1169293569922746341

`A007318(A056119(n)+15)*A001725(n+5)`
-/

namespace A001812.P1169293569922746341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056119 n + 15).toNat * A001725 (n + 5)

end

end A001812.P1169293569922746341

/-! ## A001812.P753014221442915877

`A062199(n)/A001563(n+1)*A062199(n)`
-/

namespace A001812.P753014221442915877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062199 n : ℚ) / (A001563 (n + 1) : ℚ) * (A062199 n : ℚ)

end

end A001812.P753014221442915877

/-! ## A001812.P16812510897978405758

`(A001725(n+5)/A000142(n))²*A000142(n)`
-/

namespace A001812.P16812510897978405758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001725 (n + 5) : ℚ) / (A000142 n : ℚ)) ^ 2 * (A000142 n : ℚ)

end

end A001812.P16812510897978405758

/-! ## A001812.P10614388710110586170

`A001777(n+5)/A001811(n+4)*A001777(n+5)`
-/

namespace A001812.P10614388710110586170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001777 (n + 5) : ℚ) / (A001811 (n + 4) : ℚ) * (A001777 (n + 5) : ℚ)

end

end A001812.P10614388710110586170

/-!
# A001813: Quadruple factorial numbers: a(n) = (2n)!/n!.

The programs for A001813, the canonical program `A001813.P1021000417690398378` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001813 has offset 0).

The definition of A001813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001813.P7086661830759902798

`C(2*n, n)*n!`
-/

namespace A001813.P7086661830759902798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.factorial n

end

end A001813.P7086661830759902798

namespace A001813

/-- `C(2*n, n)*n!` -/
def P7086661830759902798.Spec : Prop :=
  ∀ n, (P7086661830759902798.a n : ℤ) = A001813 n

end A001813

/-! ## A001813.P1021000417690398378

`(4*n-6)*a(n-2)+(4*n-3)*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001813

/-- `(4*n-6)*a(n-2)+(4*n-3)*a(n-1)` -/
def P1021000417690398378.Spec : Prop :=
  ∀ n, P1021000417690398378.a n = A001813 n

theorem P1021000417690398378.correct : P1021000417690398378.Spec := by
  intro n
  simp only [A001813]

end A001813

/-! ## A001813.P16510494931353972723

`A081125(2*n)`
-/

namespace A001813.P16510494931353972723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (2 * n)

end

end A001813.P16510494931353972723

namespace A001813

/-- `A081125(2*n)` -/
def P16510494931353972723.Spec : Prop :=
  ∀ n, P16510494931353972723.a n = A001813 n

end A001813

/-! ## A001813.P13353677208130036874

`(-1)^n*A097388(n)`
-/

namespace A001813.P13353677208130036874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097388 n

end

end A001813.P13353677208130036874

namespace A001813

/-- `(-1)^n*A097388(n)` -/
def P13353677208130036874.Spec : Prop :=
  ∀ n, P13353677208130036874.a n = A001813 n

end A001813

/-! ## A001813.P14734753486045873724

`(n+1)!*A000108(n)`
-/

namespace A001813.P14734753486045873724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A000108 n

end

end A001813.P14734753486045873724

namespace A001813

/-- `(n+1)!*A000108(n)` -/
def P14734753486045873724.Spec : Prop :=
  ∀ n, P14734753486045873724.a n = A001813 n

end A001813

/-! ## A001813.P438625020753370231

`A016825(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A001813.P438625020753370231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016825 (n - 1) * a (n - 1)

end

end A001813.P438625020753370231

namespace A001813

/-- `A016825(n-1)*a(n-1)` -/
def P438625020753370231.Spec : Prop :=
  ∀ n, P438625020753370231.a n = A001813 n

end A001813

/-! ## A001813.P5813371656283188970

`A000984(n)*A000142(n)`
-/

namespace A001813.P5813371656283188970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A000142 n

end

end A001813.P5813371656283188970

namespace A001813

/-- `A000984(n)*A000142(n)` -/
def P5813371656283188970.Spec : Prop :=
  ∀ n, P5813371656283188970.a n = A001813 n

end A001813

/-! ## A001813.P6618003664726949096

`(2*n)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001813.P6618003664726949096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A001813.P6618003664726949096

namespace A001813

/-- `(2*n)!/n!` -/
def P6618003664726949096.Spec : Prop :=
  ∀ n, P6618003664726949096.a n = (A001813 n : ℚ)

end A001813

/-! ## A001813.P11396166601859055660

`∏[a(n-1)+4]` with `a(0)=1, a(1)=2`
-/

namespace A001813.P11396166601859055660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001813.P11396166601859055660

namespace A001813

/-- `∏[a(n-1)+4]` -/
def P11396166601859055660.Spec : Prop :=
  ∀ n, (P11396166601859055660.a n : ℤ) = A001813 n

end A001813

/-! ## A001813.P7105343704445464878

`∏[lcm(2, 1-2*n)]/2`
-/

namespace A001813.P7105343704445464878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (2 * n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A001813.P7105343704445464878

namespace A001813

/-- `∏[lcm(2, 1-2*n)]/2` -/
def P7105343704445464878.Spec : Prop :=
  ∀ n, P7105343704445464878.a n = (A001813 n : ℚ)

end A001813

/-!
# A001814: Coefficient of H_2 when expressing x^{2n} in terms of Hermite polynomials H_m.

The programs for A001814, the canonical program `A001814.P15056049790321029746` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001814 has offset 1).

The definition of A001814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001814.P5491339283675974170

`(n+1)!/2*C(2*(n+1), n+1)*(n+1)`
-/

namespace A001814.P5491339283675974170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 2 * (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A001814.P5491339283675974170

namespace A001814

/-- `(n+1)!/2*C(2*(n+1), n+1)*(n+1)` -/
def P5491339283675974170.Spec : Prop :=
  ∀ n, P5491339283675974170.a n = (A001814 (n + 1) : ℚ)

end A001814

/-! ## A001814.P1637246038090707731

`A126804(n+1)/2`
-/

namespace A001814.P1637246038090707731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126804 (n + 1) : ℚ) / 2

end

end A001814.P1637246038090707731

namespace A001814

/-- `A126804(n+1)/2` -/
def P1637246038090707731.Spec : Prop :=
  ∀ n, P1637246038090707731.a n = (A001814 (n + 1) : ℚ)

end A001814

/-! ## A001814.P15056049790321029746

`(2*(n+1))!/(2*n!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001814

/-- `(2*(n+1))!/(2*n!)` -/
def P15056049790321029746.Spec : Prop :=
  ∀ n, P15056049790321029746.a n = (A001814 (n + 1) : ℚ)

end A001814

/-! ## A001814.P16705393320815821952

`(n+1)*∏[4*n+2]/2`
-/

namespace A001814.P16705393320815821952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A001814.P16705393320815821952

namespace A001814

/-- `(n+1)*∏[4*n+2]/2` -/
def P16705393320815821952.Spec : Prop :=
  ∀ n, P16705393320815821952.a n = (A001814 (n + 1) : ℚ)

end A001814

/-! ## A001814.P16185024609088675130

`lcm(2^n, ∏[Δ[n²]])+(4*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A001814.P16185024609088675130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (2 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j) + (4 * n + 2) * a (n - 1)

end

end A001814.P16185024609088675130

namespace A001814

/-- `lcm(2^n, ∏[Δ[n²]])+(4*n+2)*a(n-1)` -/
def P16185024609088675130.Spec : Prop :=
  ∀ n, (P16185024609088675130.a n : ℤ) = A001814 (n + 1)

end A001814

/-! ## A001814.P13978646340745237129

`∏[record[xor(3, n+1)]-1]+(4*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A001814.P13978646340745237129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (4 * n + 2 : ℤ) * a (n - 1)

end

end A001814.P13978646340745237129

namespace A001814

/-- `∏[record[xor(3, n+1)]-1]+(4*n+2)*a(n-1)` -/
def P13978646340745237129.Spec : Prop :=
  ∀ n, P13978646340745237129.a n = A001814 (n + 1)

end A001814

/-! ## A001814.P3993200660057833948

`2^n*∏[2*n+1]+(4*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A001814.P3993200660057833948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j) + (4 * n + 2) * a (n - 1)

end

end A001814.P3993200660057833948

namespace A001814

/-- `2^n*∏[2*n+1]+(4*n+2)*a(n-1)` -/
def P3993200660057833948.Spec : Prop :=
  ∀ n, (P3993200660057833948.a n : ℤ) = A001814 (n + 1)

end A001814

/-! ## A001814.P13220373730212993523

`(4*n+2)*a(n-1)+(n+1)!*C(Δ[n²], n)` with `a(0)=1`
-/

namespace A001814.P13220373730212993523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 2) * a (n - 1) + Nat.factorial (n + 1) * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A001814.P13220373730212993523

namespace A001814

/-- `(4*n+2)*a(n-1)+(n+1)!*C(Δ[n²], n)` -/
def P13220373730212993523.Spec : Prop :=
  ∀ n, (P13220373730212993523.a n : ℤ) = A001814 (n + 1)

end A001814

/-! ## A001814.P6188277646314063612

`A113025(∑[n+3])`
-/

namespace A001814.P6188277646314063612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001814.P6188277646314063612

namespace A001814

/-- `A113025(∑[n+3])` -/
def P6188277646314063612.Spec : Prop :=
  ∀ n, P6188277646314063612.a n = A001814 (n + 1)

end A001814

/-! ## A001814.P14889485394247182606

`abs(A303986(∑[n+3]))`
-/

namespace A001814.P14889485394247182606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303986 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001814.P14889485394247182606

namespace A001814

/-- `abs(A303986(∑[n+3]))` -/
def P14889485394247182606.Spec : Prop :=
  ∀ n, P14889485394247182606.a n = A001814 (n + 1)

end A001814

/-!
# A001815: a(n) = binomial(n,2) * 2^(n-1).

The programs for A001815, the canonical program `A001815.P12767641149835959275` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001815 has offset 0).

The definition of A001815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001815.P15229813711294773347

`C(n, 2)*2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001815.P15229813711294773347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A001815.P15229813711294773347

namespace A001815

/-- `C(n, 2)*2^(n-1)` -/
def P15229813711294773347.Spec : Prop :=
  ∀ n, P15229813711294773347.a n = (A001815 n : ℚ)

end A001815

/-! ## A001815.P5624262414593518651

`2^(n-2)*n*(n-1)`
-/

namespace A001815.P5624262414593518651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * ((n : ℤ) - 1 : ℚ)

end

end A001815.P5624262414593518651

namespace A001815

/-- `2^(n-2)*n*(n-1)` -/
def P5624262414593518651.Spec : Prop :=
  ∀ n, P5624262414593518651.a n = (A001815 n : ℚ)

theorem P5624262414593518651.correct : P5624262414593518651.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A001815, Nat.add_sub_cancel, A001815.P5624262414593518651.a, A001815.P12767641149835959275.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A001815, Nat.add_sub_cancel, A001815.P5624262414593518651.a, A001815.P12767641149835959275.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A001815

/-! ## A001815.P12767641149835959275

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001815

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P12767641149835959275.Spec : Prop :=
  ∀ n, P12767641149835959275.a n = A001815 n

theorem P12767641149835959275.correct : P12767641149835959275.Spec := by
  intro n
  simp only [A001815]

end A001815

/-! ## A001815.P2131993923463179499

`a(n-1)/(1/2-1/n)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A001815.P2131993923463179499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1 / (n : ℚ))

end

end A001815.P2131993923463179499

namespace A001815

/-- `a(n-1)/(1/2-1/n)` -/
def P2131993923463179499.Spec : Prop :=
  ∀ n, P2131993923463179499.a n = (A001815 n : ℚ)

end A001815

/-! ## A001815.P16887805864261953413

`A053730(n)-2^n`
-/

namespace A001815.P16887805864261953413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n - (2 ^ n : ℤ)

end

end A001815.P16887805864261953413

namespace A001815

/-- `A053730(n)-2^n` -/
def P16887805864261953413.Spec : Prop :=
  ∀ n, P16887805864261953413.a n = A001815 n

end A001815

/-! ## A001815.P16493926245043535933

`lcm(n-n², A274497(n))`
-/

namespace A001815.P16493926245043535933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (n ^ 2 : ℤ)) (A274497 n)

end

end A001815.P16493926245043535933

namespace A001815

/-- `lcm(n-n², A274497(n))` -/
def P16493926245043535933.Spec : Prop :=
  ∀ n, (P16493926245043535933.a n : ℤ) = A001815 n

end A001815

/-! ## A001815.P4725357810855422505

`A097064(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A001815.P4725357810855422505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A097064 n + 2 * a (n - 1)

end

end A001815.P4725357810855422505

namespace A001815

/-- `A097064(n)+2*a(n-1)` -/
def P4725357810855422505.Spec : Prop :=
  ∀ n, P4725357810855422505.a n = A001815 n

end A001815

/-! ## A001815.P12581097483549734098

`A330592(A004274(n+1))`
-/

namespace A001815.P12581097483549734098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A004274 (n + 1)).toNat

end

end A001815.P12581097483549734098

namespace A001815

/-- `A330592(A004274(n+1))` -/
def P12581097483549734098.Spec : Prop :=
  ∀ n, P12581097483549734098.a n = A001815 n

end A001815

/-! ## A001815.P16416736814519608987

`A330592(A004280(n+1))`
-/

namespace A001815.P16416736814519608987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A004280 (n + 1)).toNat

end

end A001815.P16416736814519608987

namespace A001815

/-- `A330592(A004280(n+1))` -/
def P16416736814519608987.Spec : Prop :=
  ∀ n, P16416736814519608987.a n = A001815 n

end A001815

/-! ## A001815.P763212919507392351

`A330592(A004275(n)+1)`
-/

namespace A001815.P763212919507392351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A004275 n + 1).toNat

end

end A001815.P763212919507392351

namespace A001815

/-- `A330592(A004275(n)+1)` -/
def P763212919507392351.Spec : Prop :=
  ∀ n, P763212919507392351.a n = A001815 n

end A001815

/-! ## A001815.P9948275999059675623

`A178987(n)+A001787(n)`
-/

namespace A001815.P9948275999059675623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A001787 n

end

end A001815.P9948275999059675623

namespace A001815

/-- `A178987(n)+A001787(n)` -/
def P9948275999059675623.Spec : Prop :=
  ∀ n, P9948275999059675623.a n = A001815 n

end A001815

/-! ## A001815.P11371346255199605369

`A001788(n)-A001787(n)`
-/

namespace A001815.P11371346255199605369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n - A001787 n

end

end A001815.P11371346255199605369

namespace A001815

/-- `A001788(n)-A001787(n)` -/
def P11371346255199605369.Spec : Prop :=
  ∀ n, P11371346255199605369.a n = A001815 n

end A001815

/-! ## A001815.P18383669568614996166

`A002999(n)-A004277(n)`
-/

namespace A001815.P18383669568614996166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002999 n - A004277 n

end

end A001815.P18383669568614996166

namespace A001815

/-- `A002999(n)-A004277(n)` -/
def P18383669568614996166.Spec : Prop :=
  ∀ n, P18383669568614996166.a n = A001815 n

theorem P18383669568614996166.correct : P18383669568614996166.Spec := by
  intro n
  simp only [A001815, Nat.add_sub_cancel, A001815.P18383669568614996166.a, A001815.P12767641149835959275.a, A002999, A002999.P3630414621016357249.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001815

/-! ## A001815.P9998888372552920132

`A003013(n)-A028310(n)`
-/

namespace A001815.P9998888372552920132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003013 n - A028310 n

end

end A001815.P9998888372552920132

namespace A001815

/-- `A003013(n)-A028310(n)` -/
def P9998888372552920132.Spec : Prop :=
  ∀ n, P9998888372552920132.a n = A001815 n

end A001815

/-! ## A001815.P17635630732849223205

`A048506(n)-A005183(n)`
-/

namespace A001815.P17635630732849223205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n - A005183 n

end

end A001815.P17635630732849223205

namespace A001815

/-- `A048506(n)-A005183(n)` -/
def P17635630732849223205.Spec : Prop :=
  ∀ n, P17635630732849223205.a n = A001815 n

end A001815

/-! ## A001815.P11097358729521296327

`A053545(n)-A000225(n)`
-/

namespace A001815.P11097358729521296327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n - A000225 n

end

end A001815.P11097358729521296327

namespace A001815

/-- `A053545(n)-A000225(n)` -/
def P11097358729521296327.Spec : Prop :=
  ∀ n, P11097358729521296327.a n = A001815 n

end A001815

/-! ## A001815.P17046940489390245282

`lcm(A057711(n), A097067(n))`
-/

namespace A001815.P17046940489390245282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057711 n) (A097067 n)

end

end A001815.P17046940489390245282

namespace A001815

/-- `lcm(A057711(n), A097067(n))` -/
def P17046940489390245282.Spec : Prop :=
  ∀ n, (P17046940489390245282.a n : ℤ) = A001815 n

end A001815

/-! ## A001815.P7618920823639042132

`lcm(A129952(n), A139756(n))`
-/

namespace A001815.P7618920823639042132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129952 n) (A139756 n)

end

end A001815.P7618920823639042132

namespace A001815

/-- `lcm(A129952(n), A139756(n))` -/
def P7618920823639042132.Spec : Prop :=
  ∀ n, (P7618920823639042132.a n : ℤ) = A001815 n

end A001815

/-! ## A001815.P5036305875693431345

`A330592(A300576(n+2)-1)`
-/

namespace A001815.P5036305875693431345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A300576 (n + 2) - 1).toNat

end

end A001815.P5036305875693431345

namespace A001815

/-- `A330592(A300576(n+2)-1)` -/
def P5036305875693431345.Spec : Prop :=
  ∀ n, P5036305875693431345.a n = A001815 n

end A001815

/-! ## A001815.P679600784171749140

`A330592(or(1, A004277(n)-1))`
-/

namespace A001815.P679600784171749140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (Int.lor 1 (A004277 n - 1)).toNat

end

end A001815.P679600784171749140

namespace A001815

/-- `A330592(or(1, A004277(n)-1))` -/
def P679600784171749140.Spec : Prop :=
  ∀ n, P679600784171749140.a n = A001815 n

end A001815

/-!
# A001816: Coefficients of x^n in Hermite polynomial H_{n+4}.

The programs for A001816, the canonical program `A001816.P881623879304099309` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001816 has offset 0).

The definition of A001816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001816.P881623879304099309

`12*A003472(n+4)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001816

/-- `12*A003472(n+4)` -/
def P881623879304099309.Spec : Prop :=
  ∀ n, P881623879304099309.a n = A001816 n

theorem P881623879304099309.correct : P881623879304099309.Spec := by
  intro n
  simp only [A001816]

end A001816

/-! ## A001816.P16799508825106924866

`3*4*2^n*∑[∑[∑[n+1]]]`
-/

namespace A001816.P16799508825106924866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (4 * (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A001816.P16799508825106924866

namespace A001816

/-- `3*4*2^n*∑[∑[∑[n+1]]]` -/
def P16799508825106924866.Spec : Prop :=
  ∀ n, (P16799508825106924866.a n : ℤ) = A001816 n

end A001816

/-! ## A001816.P12001676632977032763

`∑[12*A006974(n)]`
-/

namespace A001816.P12001676632977032763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A006974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001816.P12001676632977032763

namespace A001816

/-- `∑[12*A006974(n)]` -/
def P12001676632977032763.Spec : Prop :=
  ∀ n, P12001676632977032763.a n = A001816 n

end A001816

/-! ## A001816.P16183001677261061278

`A033486(n+1)/tan(acot(2^n))`
-/

namespace A001816.P16183001677261061278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033486 (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n : ℝ))

end

end A001816.P16183001677261061278

namespace A001816

/-- `A033486(n+1)/tan(acot(2^n))` -/
def P16183001677261061278.Spec : Prop :=
  ∀ n, P16183001677261061278.a n = (A001816 n : ℝ)

end A001816

/-! ## A001816.P17862572754712922562

`A344564(n)+3*A344564(n)`
-/

namespace A001816.P17862572754712922562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344564 n + 3 * A344564 n

end

end A001816.P17862572754712922562

namespace A001816

/-- `A344564(n)+3*A344564(n)` -/
def P17862572754712922562.Spec : Prop :=
  ∀ n, P17862572754712922562.a n = A001816 n

end A001816

/-! ## A001816.P7629435644848462407

`A000051(n+1)*A033487(n+1)-A033487(n+1)`
-/

namespace A001816.P7629435644848462407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A033487 (n + 1) - A033487 (n + 1)

end

end A001816.P7629435644848462407

namespace A001816

/-- `A000051(n+1)*A033487(n+1)-A033487(n+1)` -/
def P7629435644848462407.Spec : Prop :=
  ∀ n, P7629435644848462407.a n = A001816 n

theorem P7629435644848462407.correct : P7629435644848462407.Spec := by
  intro n
  simp only [A001816, Nat.add_sub_cancel, A001816.P7629435644848462407.a, A001816.P881623879304099309.a, A000051, A000051.P14067217022188782580.a, A003472, A003472.P4705505189328772541.a, A033487, A033487.P180010041112617206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001816

/-! ## A001816.P15841068107942131708

`A008574(A008574(n))*A344564(n)/A008574(n)`
-/

namespace A001816.P15841068107942131708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A008574 n).toNat * A344564 n : ℚ) / (A008574 n : ℚ)

end

end A001816.P15841068107942131708

namespace A001816

/-- `A008574(A008574(n))*A344564(n)/A008574(n)` -/
def P15841068107942131708.Spec : Prop :=
  ∀ n, P15841068107942131708.a n = (A001816 n : ℚ)

end A001816

/-! ## A001816.P6754319889224752659

`A185296(A000096(n+3)+n+3)`
-/

namespace A001816.P6754319889224752659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185296 (A000096 (n + 3) + (n + 3 : ℤ)).toNat

end

end A001816.P6754319889224752659

namespace A001816

/-- `A185296(A000096(n+3)+n+3)` -/
def P6754319889224752659.Spec : Prop :=
  ∀ n, P6754319889224752659.a n = A001816 n

end A001816

/-! ## A001816.P12337240973823937766

`A060821(eq[5, A004736(n+1)])`
-/

namespace A001816.P12337240973823937766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001816.P12337240973823937766

namespace A001816

/-- `A060821(eq[5, A004736(n+1)])` -/
def P12337240973823937766.Spec : Prop :=
  ∀ n, P12337240973823937766.a n = A001816 n

end A001816

/-! ## A001816.P14413116885716023177

`A060821(A000096(n+3)+n+1)`
-/

namespace A001816.P14413116885716023177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A001816.P14413116885716023177

namespace A001816

/-- `A060821(A000096(n+3)+n+1)` -/
def P14413116885716023177.Spec : Prop :=
  ∀ n, P14413116885716023177.a n = A001816 n

end A001816

/-!
# A001817: G.f.: Sum_{n>0} x^n/(1-x^(3n)) = Sum_{n>=0} x^(3n+1)/(1-x^(3n+1)).

The programs for A001817, the canonical program `A001817.P2839206695684961582` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001817 has offset 1).

The definition of A001817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001817.P12581030627950587634

`(A035191(n+1)+A002324(n+1))/2`
-/

namespace A001817.P12581030627950587634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035191 (n + 1) + A002324 (n + 1) : ℚ) / 2

end

end A001817.P12581030627950587634

namespace A001817

/-- `(A035191(n+1)+A002324(n+1))/2` -/
def P12581030627950587634.Spec : Prop :=
  ∀ n, P12581030627950587634.a n = (A001817 (n + 1) : ℚ)

end A001817

/-! ## A001817.P2839206695684961582

`∑{d}[n+1, (#%3)%2]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001817

/-- `∑{d}[n+1, (#%3)%2]` -/
def P2839206695684961582.Spec : Prop :=
  ∀ n, (P2839206695684961582.a n : ℤ) = A001817 (n + 1)

theorem P2839206695684961582.correct : P2839206695684961582.Spec := by
  intro n
  simp only [A001817, Nat.add_sub_cancel]

end A001817

/-! ## A001817.P14223075975587065228

`Δ[A218442(n)]`
-/

namespace A001817.P14223075975587065228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001817.P14223075975587065228

namespace A001817

/-- `Δ[A218442(n)]` -/
def P14223075975587065228.Spec : Prop :=
  ∀ n, P14223075975587065228.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P10038108220382207461

`val(A351081(n+1), 2)`
-/

namespace A001817.P10038108220382207461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351081 (n + 1)).toNat 2

end

end A001817.P10038108220382207461

namespace A001817

/-- `val(A351081(n+1), 2)` -/
def P10038108220382207461.Spec : Prop :=
  ∀ n, (P10038108220382207461.a n : ℤ) = A001817 (n + 1)

end A001817

/-! ## A001817.P14915493995694705465

`∑{d}[n+1, A079978(#-1)]`
-/

namespace A001817.P14915493995694705465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079978 (d - 1)

end

end A001817.P14915493995694705465

namespace A001817

/-- `∑{d}[n+1, A079978(#-1)]` -/
def P14915493995694705465.Spec : Prop :=
  ∀ n, P14915493995694705465.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P5476637726080482969

`∑{d}[n+1, A000217(#)%3]`
-/

namespace A001817.P5476637726080482969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000217 d) 3

end

end A001817.P5476637726080482969

namespace A001817

/-- `∑{d}[n+1, A000217(#)%3]` -/
def P5476637726080482969.Spec : Prop :=
  ∀ n, P5476637726080482969.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P9504241530719168729

`A326394((n+1)/3^val(n+1, 3))`
-/

namespace A001817.P9504241530719168729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A001817.P9504241530719168729

namespace A001817

/-- `A326394((n+1)/3^val(n+1, 3))` -/
def P9504241530719168729.Spec : Prop :=
  ∀ n, P9504241530719168729.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P5922381156828518587

`∑{d}[(n+1)/3^val(n+1, 3), A137893(#)]`
-/

namespace A001817.P5922381156828518587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A137893 d

end

end A001817.P5922381156828518587

namespace A001817

/-- `∑{d}[(n+1)/3^val(n+1, 3), A137893(#)]` -/
def P5922381156828518587.Spec : Prop :=
  ∀ n, P5922381156828518587.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P4662516699192827940

`A326394(A038502(n+1))`
-/

namespace A001817.P4662516699192827940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (A038502 (n + 1)).toNat

end

end A001817.P4662516699192827940

namespace A001817

/-- `A326394(A038502(n+1))` -/
def P4662516699192827940.Spec : Prop :=
  ∀ n, P4662516699192827940.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P5365185124382787488

`A293895(n+1)+A079978(n)`
-/

namespace A001817.P5365185124382787488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1) + A079978 n

end

end A001817.P5365185124382787488

namespace A001817

/-- `A293895(n+1)+A079978(n)` -/
def P5365185124382787488.Spec : Prop :=
  ∀ n, P5365185124382787488.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P17789594483728126893

`A218442(n+1)-A218442(n)`
-/

namespace A001817.P17789594483728126893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218442 (n + 1) - A218442 n

end

end A001817.P17789594483728126893

namespace A001817

/-- `A218442(n+1)-A218442(n)` -/
def P17789594483728126893.Spec : Prop :=
  ∀ n, P17789594483728126893.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P4000531916863480331

`A002324(n+1)+A001822(n+1)`
-/

namespace A001817.P4000531916863480331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) + A001822 (n + 1)

end

end A001817.P4000531916863480331

namespace A001817

/-- `A002324(n+1)+A001822(n+1)` -/
def P4000531916863480331.Spec : Prop :=
  ∀ n, P4000531916863480331.a n = A001817 (n + 1)

theorem P4000531916863480331.correct : P4000531916863480331.Spec := by
  intro n
  simp only [A001817, Nat.add_sub_cancel, A001817.P4000531916863480331.a, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A002324, A002324.P17421748272452344756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001817

/-! ## A001817.P12412002502382942

`A035191(n+1)-A001822(n+1)`
-/

namespace A001817.P12412002502382942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) - A001822 (n + 1)

end

end A001817.P12412002502382942

namespace A001817

/-- `A035191(n+1)-A001822(n+1)` -/
def P12412002502382942.Spec : Prop :=
  ∀ n, P12412002502382942.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P14274448279017764811

`A000005(n+1)-A326395(n+1)`
-/

namespace A001817.P14274448279017764811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A326395 (n + 1)

end

end A001817.P14274448279017764811

namespace A001817

/-- `A000005(n+1)-A326395(n+1)` -/
def P14274448279017764811.Spec : Prop :=
  ∀ n, P14274448279017764811.a n = A001817 (n + 1)

theorem P14274448279017764811.correct : P14274448279017764811.Spec := by
  intro n
  simp only [A001817, Nat.add_sub_cancel, A001817.P14274448279017764811.a, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A000005, A000005.P16091521709108585461.a, A326395, A326395.P13988097051787891098.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001817

/-! ## A001817.P10136423616779935443

`∑{d}[A038502(n+1), 2-A060236(#)]`
-/

namespace A001817.P10136423616779935443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (2 - A060236 d)

end

end A001817.P10136423616779935443

namespace A001817

/-- `∑{d}[A038502(n+1), 2-A060236(#)]` -/
def P10136423616779935443.Spec : Prop :=
  ∀ n, P10136423616779935443.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P3870146448117028285

`A082909(n+1)-2*A001822(n+1)`
-/

namespace A001817.P3870146448117028285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082909 (n + 1) - 2 * A001822 (n + 1)

end

end A001817.P3870146448117028285

namespace A001817

/-- `A082909(n+1)-2*A001822(n+1)` -/
def P3870146448117028285.Spec : Prop :=
  ∀ n, P3870146448117028285.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P2601259805760616540

`2*A035191(n+1)-A082909(n+1)`
-/

namespace A001817.P2601259805760616540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035191 (n + 1) - A082909 (n + 1)

end

end A001817.P2601259805760616540

namespace A001817

/-- `2*A035191(n+1)-A082909(n+1)` -/
def P2601259805760616540.Spec : Prop :=
  ∀ n, P2601259805760616540.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P6409643257473374876

`∑{d}[n+1, A023900(#)*A326399((n+1)/#)]`
-/

namespace A001817.P6409643257473374876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A326399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001817.P6409643257473374876

namespace A001817

/-- `∑{d}[n+1, A023900(#)*A326399((n+1)/#)]` -/
def P6409643257473374876.Spec : Prop :=
  ∀ n, P6409643257473374876.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P10272735864881800846

`∑{d}[n+1, A099894(#-1)*A364204((n+1)/#)]`
-/

namespace A001817.P10272735864881800846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A364204 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001817.P10272735864881800846

namespace A001817

/-- `∑{d}[n+1, A099894(#-1)*A364204((n+1)/#)]` -/
def P10272735864881800846.Spec : Prop :=
  ∀ n, P10272735864881800846.a n = A001817 (n + 1)

end A001817

/-! ## A001817.P13206202004470015556

`A002324(n+1)+A218443(n+1)-A218443(n)`
-/

namespace A001817.P13206202004470015556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) + (A218443 (n + 1) - A218443 n)

end

end A001817.P13206202004470015556

namespace A001817

/-- `A002324(n+1)+A218443(n+1)-A218443(n)` -/
def P13206202004470015556.Spec : Prop :=
  ∀ n, P13206202004470015556.a n = A001817 (n + 1)

end A001817

/-!
# A001818: Squares of double factorials: (1*3*5*...*(2n-1))^2 = ((2*n-1)!!)^2.

The programs for A001818, the canonical program `A001818.P13138089639630913110` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001818 has offset 0).

The definition of A001818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001818.P13138089639630913110

`(2*n-1)²*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001818

/-- `(2*n-1)²*a(n-1)` -/
def P13138089639630913110.Spec : Prop :=
  ∀ n, P13138089639630913110.a n = A001818 n

theorem P13138089639630913110.correct : P13138089639630913110.Spec := by
  intro n
  simp only [A001818]

end A001818

/-! ## A001818.P15443640164852893355

`A001147(n)²`
-/

namespace A001818.P15443640164852893355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n ^ 2

end

end A001818.P15443640164852893355

namespace A001818

/-- `A001147(n)²` -/
def P15443640164852893355.Spec : Prop :=
  ∀ n, P15443640164852893355.a n = A001818 n

end A001818

/-! ## A001818.P8809769107679326322

`((2*n)!/(n!*2^n))²`
-/

namespace A001818.P8809769107679326322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * 2 ^ n : ℚ)) ^ 2

end

end A001818.P8809769107679326322

namespace A001818

/-- `((2*n)!/(n!*2^n))²` -/
def P8809769107679326322.Spec : Prop :=
  ∀ n, P8809769107679326322.a n = (A001818 n : ℚ)

end A001818

/-! ## A001818.P14028341921434227297

`(2*n)!/4^n*C(2*n, n)`
-/

namespace A001818.P14028341921434227297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (4 ^ n : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A001818.P14028341921434227297

namespace A001818

/-- `(2*n)!/4^n*C(2*n, n)` -/
def P14028341921434227297.Spec : Prop :=
  ∀ n, P14028341921434227297.a n = (A001818 n : ℚ)

end A001818

/-!
# A001819: Central factorial numbers: second right-hand column of triangle A008955.

The programs for A001819, the canonical program `A001819.P2792134783126764898` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001819 has offset 0).

The definition of A001819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001819.P2792134783126764898

`a(n-1)*n²+A001044(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001819

/-- `a(n-1)*n²+A001044(n-1)` -/
def P2792134783126764898.Spec : Prop :=
  ∀ n, P2792134783126764898.a n = A001819 n

theorem P2792134783126764898.correct : P2792134783126764898.Spec := by
  intro n
  simp only [A001819]

end A001819

/-! ## A001819.P14608355856842043514

`A269944(∑[n+1]+2)`
-/

namespace A001819.P14608355856842043514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001819.P14608355856842043514

namespace A001819

/-- `A269944(∑[n+1]+2)` -/
def P14608355856842043514.Spec : Prop :=
  ∀ n, P14608355856842043514.a n = A001819 n

end A001819

/-! ## A001819.P17384066776842270407

`record[A269944(A080036(n))]`
-/

namespace A001819.P17384066776842270407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001819.P17384066776842270407

namespace A001819

/-- `record[A269944(A080036(n))]` -/
def P17384066776842270407.Spec : Prop :=
  ∀ n, P17384066776842270407.a n = A001819 n

end A001819

/-! ## A001819.P16964440242002160172

`record[lcm(A002262(n), A204579(n+1))]`
-/

namespace A001819.P16964440242002160172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 n) (A204579 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001819.P16964440242002160172

namespace A001819

/-- `record[lcm(A002262(n), A204579(n+1))]` -/
def P16964440242002160172.Spec : Prop :=
  ∀ n, (P16964440242002160172.a n : ℤ) = A001819 n

end A001819

/-! ## A001819.P12293649789343793921

`A002455(n)/(2^(n-1))²`
-/

namespace A001819.P12293649789343793921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002455 n : ℚ) / ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A001819.P12293649789343793921

namespace A001819

/-- `A002455(n)/(2^(n-1))²` -/
def P12293649789343793921.Spec : Prop :=
  ∀ n, P12293649789343793921.a n = (A001819 n : ℚ)

end A001819

/-!
# A001820: Central factorial numbers: 2nd subdiagonal of A008955.

The programs for A001820, there is no canonical definition to state claims against.
-/

/-! ## A001820.P12764589310284853367

`A008955(∑[n+3])`
-/

namespace A001820.P12764589310284853367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001820.P12764589310284853367

/-! ## A001820.P3965491183329341469

`A269944(A167614(n+2))`
-/

namespace A001820.P3965491183329341469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A167614 (n + 2)).toNat

end

end A001820.P3965491183329341469

/-! ## A001820.P16335229863267661398

`A269944(A052905(n)+8)`
-/

namespace A001820.P16335229863267661398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A052905 n + 8).toNat

end

end A001820.P16335229863267661398

/-! ## A001820.P5252743191343119099

`A269944(eq[3, A002262(n)])`
-/

namespace A001820.P5252743191343119099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001820.P5252743191343119099

/-! ## A001820.P7616802910162049256

`A269944(eq[4, A002260(n+1)])`
-/

namespace A001820.P7616802910162049256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001820.P7616802910162049256

/-!
# A001821: Central factorial numbers: 3rd subdiagonal of A008955.

The programs for A001821, there is no canonical definition to state claims against.
-/

/-! ## A001821.P10348674004493156542

`A008955(∑[n+3]+n+3)`
-/

namespace A001821.P10348674004493156542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001821.P10348674004493156542

/-! ## A001821.P7797955986606105722

`A269944(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A001821.P7797955986606105722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001821.P7797955986606105722

/-! ## A001821.P16618081794272647256

`A269944(A155212(n)+12)`
-/

namespace A001821.P16618081794272647256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A155212 n + 12).toNat

end

end A001821.P16618081794272647256

/-! ## A001821.P6795027296278749374

`A269944(eq[4, A002262(n)])`
-/

namespace A001821.P6795027296278749374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001821.P6795027296278749374

/-! ## A001821.P13073909460381318980

`A269944(eq[4, A144328(n+1)])`
-/

namespace A001821.P13073909460381318980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001821.P13073909460381318980

/-!
# A001822: Expansion of Sum_{n>=0} x^(3n+2)/(1-x^(3n+2)).

The programs for A001822, the canonical program `A001822.P18157722536970199446` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001822 has offset 1).

The definition of A001822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001822.P10415172184405778238

`(A035191(n+1)-A002324(n+1))/2`
-/

namespace A001822.P10415172184405778238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035191 (n + 1) - A002324 (n + 1) : ℚ) / 2

end

end A001822.P10415172184405778238

namespace A001822

/-- `(A035191(n+1)-A002324(n+1))/2` -/
def P10415172184405778238.Spec : Prop :=
  ∀ n, P10415172184405778238.a n = (A001822 (n + 1) : ℚ)

end A001822

/-! ## A001822.P18157722536970199446

`∑{d}[n+1, C(#, 2)%3]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001822

/-- `∑{d}[n+1, C(#, 2)%3]` -/
def P18157722536970199446.Spec : Prop :=
  ∀ n, (P18157722536970199446.a n : ℤ) = A001822 (n + 1)

theorem P18157722536970199446.correct : P18157722536970199446.Spec := by
  intro n
  simp only [A001822, Nat.add_sub_cancel]

end A001822

/-! ## A001822.P13231945772403263249

`Δ[A218443(n)]`
-/

namespace A001822.P13231945772403263249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001822.P13231945772403263249

namespace A001822

/-- `Δ[A218443(n)]` -/
def P13231945772403263249.Spec : Prop :=
  ∀ n, P13231945772403263249.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P12311483640990906033

`val(A351082(n+1), 2)`
-/

namespace A001822.P12311483640990906033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351082 (n + 1)).toNat 2

end

end A001822.P12311483640990906033

namespace A001822

/-- `val(A351082(n+1), 2)` -/
def P12311483640990906033.Spec : Prop :=
  ∀ n, (P12311483640990906033.a n : ℤ) = A001822 (n + 1)

end A001822

/-! ## A001822.P7411283072864430330

`∑{d}[n+1, A000217(#+2)%3]`
-/

namespace A001822.P7411283072864430330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000217 (d + 2)) 3

end

end A001822.P7411283072864430330

namespace A001822

/-- `∑{d}[n+1, A000217(#+2)%3]` -/
def P7411283072864430330.Spec : Prop :=
  ∀ n, P7411283072864430330.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P3408547683282464560

`∑{d}[(n+1)/3^val(n+1, 3), A080846(#)]`
-/

namespace A001822.P3408547683282464560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A080846 d

end

end A001822.P3408547683282464560

namespace A001822

/-- `∑{d}[(n+1)/3^val(n+1, 3), A080846(#)]` -/
def P3408547683282464560.Spec : Prop :=
  ∀ n, P3408547683282464560.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P11820079419062390863

`A326395(A038502(n+1))`
-/

namespace A001822.P11820079419062390863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326395 (A038502 (n + 1)).toNat

end

end A001822.P11820079419062390863

namespace A001822

/-- `A326395(A038502(n+1))` -/
def P11820079419062390863.Spec : Prop :=
  ∀ n, P11820079419062390863.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P11348187267129487051

`A218443(n+1)-A218443(n)`
-/

namespace A001822.P11348187267129487051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 (n + 1) - A218443 n

end

end A001822.P11348187267129487051

namespace A001822

/-- `A218443(n+1)-A218443(n)` -/
def P11348187267129487051.Spec : Prop :=
  ∀ n, P11348187267129487051.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P16610448562177612277

`A001817(n+1)-A002324(n+1)`
-/

namespace A001822.P16610448562177612277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) - A002324 (n + 1)

end

end A001822.P16610448562177612277

namespace A001822

/-- `A001817(n+1)-A002324(n+1)` -/
def P16610448562177612277.Spec : Prop :=
  ∀ n, P16610448562177612277.a n = A001822 (n + 1)

theorem P16610448562177612277.correct : P16610448562177612277.Spec := by
  intro n
  simp only [A001822, Nat.add_sub_cancel, A001822.P16610448562177612277.a, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A002324, A002324.P17421748272452344756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001822

/-! ## A001822.P12545941273186775857

`A035191(n+1)-A001817(n+1)`
-/

namespace A001822.P12545941273186775857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) - A001817 (n + 1)

end

end A001822.P12545941273186775857

namespace A001822

/-- `A035191(n+1)-A001817(n+1)` -/
def P12545941273186775857.Spec : Prop :=
  ∀ n, P12545941273186775857.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P10562621032161038264

`A082909(n+1)-A035191(n+1)`
-/

namespace A001822.P10562621032161038264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082909 (n + 1) - A035191 (n + 1)

end

end A001822.P10562621032161038264

namespace A001822

/-- `A082909(n+1)-A035191(n+1)` -/
def P10562621032161038264.Spec : Prop :=
  ∀ n, P10562621032161038264.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P12382154716438644084

`A000005(n+1)-A326394(n+1)`
-/

namespace A001822.P12382154716438644084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A326394 (n + 1)

end

end A001822.P12382154716438644084

namespace A001822

/-- `A000005(n+1)-A326394(n+1)` -/
def P12382154716438644084.Spec : Prop :=
  ∀ n, P12382154716438644084.a n = A001822 (n + 1)

theorem P12382154716438644084.correct : P12382154716438644084.Spec := by
  intro n
  simp only [A001822, Nat.add_sub_cancel, A001822.P12382154716438644084.a, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A000005, A000005.P16091521709108585461.a, A326394, A326394.P14432854135071990009.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001822

/-! ## A001822.P12792146163916803342

`A326395(n+1)%A035191(n+1)`
-/

namespace A001822.P12792146163916803342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326395 (n + 1)) (A035191 (n + 1))

end

end A001822.P12792146163916803342

namespace A001822

/-- `A326395(n+1)%A035191(n+1)` -/
def P12792146163916803342.Spec : Prop :=
  ∀ n, P12792146163916803342.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P5344623959303569184

`∑{d}[A038502(n+1), A060236(#)-1]`
-/

namespace A001822.P5344623959303569184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A060236 d - 1)

end

end A001822.P5344623959303569184

namespace A001822

/-- `∑{d}[A038502(n+1), A060236(#)-1]` -/
def P5344623959303569184.Spec : Prop :=
  ∀ n, P5344623959303569184.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P4495389733733468465

`∑{d}[n+1, A023900(#)*A326400((n+1)/#)]`
-/

namespace A001822.P4495389733733468465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A326400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001822.P4495389733733468465

namespace A001822

/-- `∑{d}[n+1, A023900(#)*A326400((n+1)/#)]` -/
def P4495389733733468465.Spec : Prop :=
  ∀ n, P4495389733733468465.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P9580063178071187750

`∑{d}[n+1, A099894(#-1)*A364205((n+1)/#)]`
-/

namespace A001822.P9580063178071187750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A364205 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001822.P9580063178071187750

namespace A001822

/-- `∑{d}[n+1, A099894(#-1)*A364205((n+1)/#)]` -/
def P9580063178071187750.Spec : Prop :=
  ∀ n, P9580063178071187750.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P15372435559334897955

`A293896(n+1)-A010872(n)*A049347(n)`
-/

namespace A001822.P15372435559334897955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (n + 1) - A010872 n * A049347 n

end

end A001822.P15372435559334897955

namespace A001822

/-- `A293896(n+1)-A010872(n)*A049347(n)` -/
def P15372435559334897955.Spec : Prop :=
  ∀ n, P15372435559334897955.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P14806378765900770323

`A218442(n+1)-(A218442(n)+A002324(n+1))`
-/

namespace A001822.P14806378765900770323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218442 (n + 1) - (A218442 n + A002324 (n + 1))

end

end A001822.P14806378765900770323

namespace A001822

/-- `A218442(n+1)-(A218442(n)+A002324(n+1))` -/
def P14806378765900770323.Spec : Prop :=
  ∀ n, P14806378765900770323.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P7902407971215332478

`A035191(n+1)+A326395(n+1)-A000005(n+1)`
-/

namespace A001822.P7902407971215332478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) + (A326395 (n + 1) - A000005 (n + 1))

end

end A001822.P7902407971215332478

namespace A001822

/-- `A035191(n+1)+A326395(n+1)-A000005(n+1)` -/
def P7902407971215332478.Spec : Prop :=
  ∀ n, P7902407971215332478.a n = A001822 (n + 1)

end A001822

/-! ## A001822.P14435496215218789250

`A001817(n+1)+A326395(n+1)-A326394(n+1)`
-/

namespace A001822.P14435496215218789250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + (A326395 (n + 1) - A326394 (n + 1))

end

end A001822.P14435496215218789250

namespace A001822

/-- `A001817(n+1)+A326395(n+1)-A326394(n+1)` -/
def P14435496215218789250.Spec : Prop :=
  ∀ n, P14435496215218789250.a n = A001822 (n + 1)

theorem P14435496215218789250.correct : P14435496215218789250.Spec := by
  intro n
  simp only [A001822, Nat.add_sub_cancel, A001822.P14435496215218789250.a, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A326394, A326394.P14432854135071990009.a, A326395, A326395.P13988097051787891098.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001822

/-!
# A001823: Central factorial numbers: column 2 in triangle A008956.

The programs for A001823, the canonical program `A001823.P11782959998394219781` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001823 has offset 1).

The definition of A001823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001823.P11782959998394219781

`(n+1)*n*(2*(n+1)+1)*(2*(n+1)-1)*(2*(n+1)-3)*(10*(n+1)+7)/90`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001823

/-- `(n+1)*n*(2*(n+1)+1)*(2*(n+1)-1)*(2*(n+1)-3)*(10*(n+1)+7)/90` -/
def P11782959998394219781.Spec : Prop :=
  ∀ n, P11782959998394219781.a n = (A001823 (n + 1) : ℚ)

end A001823

/-! ## A001823.P3695289278125388153

`∑[(2*n+1)²*C(2*n+1, 3)]`
-/

namespace A001823.P3695289278125388153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 * Nat.choose (2 * n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001823.P3695289278125388153

namespace A001823

/-- `∑[(2*n+1)²*C(2*n+1, 3)]` -/
def P3695289278125388153.Spec : Prop :=
  ∀ n, (P3695289278125388153.a n : ℤ) = A001823 (n + 1)

end A001823

/-! ## A001823.P14991485798921478446

`∑[(2*n+1)*(2*n+1)*C(2*n+1, 3)]`
-/

namespace A001823.P14991485798921478446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 1) * Nat.choose (2 * n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001823.P14991485798921478446

namespace A001823

/-- `∑[(2*n+1)*(2*n+1)*C(2*n+1, 3)]` -/
def P14991485798921478446.Spec : Prop :=
  ∀ n, (P14991485798921478446.a n : ℤ) = A001823 (n + 1)

end A001823

/-! ## A001823.P9629100990428756895

`∑[(2*n+1)²*A000447(n)]`
-/

namespace A001823.P9629100990428756895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A000447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001823.P9629100990428756895

namespace A001823

/-- `∑[(2*n+1)²*A000447(n)]` -/
def P9629100990428756895.Spec : Prop :=
  ∀ n, P9629100990428756895.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P5417969335532798437

`A000447(n+1)*A000447(n)-A185375(n+1)`
-/

namespace A001823.P5417969335532798437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) * A000447 n - A185375 (n + 1)

end

end A001823.P5417969335532798437

namespace A001823

/-- `A000447(n+1)*A000447(n)-A185375(n+1)` -/
def P5417969335532798437.Spec : Prop :=
  ∀ n, P5417969335532798437.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P7788743675374360860

`A181888(Δ[n²])`
-/

namespace A001823.P7788743675374360860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001823.P7788743675374360860

namespace A001823

/-- `A181888(Δ[n²])` -/
def P7788743675374360860.Spec : Prop :=
  ∀ n, P7788743675374360860.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P12964902738891131796

`record[A181888(A014681(n)+1)]`
-/

namespace A001823.P12964902738891131796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001823.P12964902738891131796

namespace A001823

/-- `record[A181888(A014681(n)+1)]` -/
def P12964902738891131796.Spec : Prop :=
  ∀ n, P12964902738891131796.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P3435399150575048452

`record[A181888(A026741(n+1))]`
-/

namespace A001823.P3435399150575048452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001823.P3435399150575048452

namespace A001823

/-- `record[A181888(A026741(n+1))]` -/
def P3435399150575048452.Spec : Prop :=
  ∀ n, P3435399150575048452.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P18344174812608779188

`record[A181888(A133265(n)-1)]`
-/

namespace A001823.P18344174812608779188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A133265 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001823.P18344174812608779188

namespace A001823

/-- `record[A181888(A133265(n)-1)]` -/
def P18344174812608779188.Spec : Prop :=
  ∀ n, P18344174812608779188.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P13997909306585895684

`A001249(2*n)-A050406(2*n)`
-/

namespace A001823.P13997909306585895684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (2 * n) - A050406 (2 * n)

end

end A001823.P13997909306585895684

namespace A001823

/-- `A001249(2*n)-A050406(2*n)` -/
def P13997909306585895684.Spec : Prop :=
  ∀ n, P13997909306585895684.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P4020322741713385857

`A108684(2*n)-A050405(2*n)`
-/

namespace A001823.P4020322741713385857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108684 (2 * n) - A050405 (2 * n)

end

end A001823.P4020322741713385857

namespace A001823

/-- `A108684(2*n)-A050405(2*n)` -/
def P4020322741713385857.Spec : Prop :=
  ∀ n, P4020322741713385857.a n = A001823 (n + 1)

end A001823

/-! ## A001823.P17765778367496797539

`record[A181888(n+1)/(1-A010673(n))]`
-/

namespace A001823.P17765778367496797539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181888 (n + 1) : ℚ) / (1 - A010673 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001823.P17765778367496797539

namespace A001823

/-- `record[A181888(n+1)/(1-A010673(n))]` -/
def P17765778367496797539.Spec : Prop :=
  ∀ n, P17765778367496797539.a n = (A001823 (n + 1) : ℚ)

end A001823

/-!
# A001824: Central factorial numbers: 1st subdiagonal of A008956.

The programs for A001824, the canonical program `A001824.P1490271075016304065` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001824 has offset 0).

The definition of A001824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001824.P1490271075016304065

`2*(4*n²+1)*a(n-1)-(2*n-1)^4*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001824

/-- `2*(4*n²+1)*a(n-1)-(2*n-1)^4*a(n-2)` -/
def P1490271075016304065.Spec : Prop :=
  ∀ n, P1490271075016304065.a n = A001824 n

theorem P1490271075016304065.correct : P1490271075016304065.Spec := by
  intro n
  simp only [A001824]

end A001824

/-! ## A001824.P14064283832578845133

`A160563(∑[n+1]+1)`
-/

namespace A001824.P14064283832578845133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001824.P14064283832578845133

namespace A001824

/-- `A160563(∑[n+1]+1)` -/
def P14064283832578845133.Spec : Prop :=
  ∀ n, P14064283832578845133.a n = A001824 n

end A001824

/-! ## A001824.P5445423351167125900

`A008956(∑[n+2]-1)`
-/

namespace A001824.P5445423351167125900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001824.P5445423351167125900

namespace A001824

/-- `A008956(∑[n+2]-1)` -/
def P5445423351167125900.Spec : Prop :=
  ∀ n, P5445423351167125900.a n = A001824 n

end A001824

/-! ## A001824.P9711740791349003495

`record[A008956(A069981(n)+1)]`
-/

namespace A001824.P9711740791349003495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A069981 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001824.P9711740791349003495

namespace A001824

/-- `record[A008956(A069981(n)+1)]` -/
def P9711740791349003495.Spec : Prop :=
  ∀ n, P9711740791349003495.a n = A001824 n

end A001824

/-! ## A001824.P7508384848967244583

`record[gcd(A008956(n), A187784(n))]`
-/

namespace A001824.P7508384848967244583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008956 n) (A187784 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001824.P7508384848967244583

namespace A001824

/-- `record[gcd(A008956(n), A187784(n))]` -/
def P7508384848967244583.Spec : Prop :=
  ∀ n, (P7508384848967244583.a n : ℤ) = A001824 n

end A001824

/-!
# A001825: Central factorial numbers: 2nd subdiagonal of A008956.

The programs for A001825, there is no canonical definition to state claims against.
-/

/-! ## A001825.P7732428541727658068

`A008956(∑[n+3])`
-/

namespace A001825.P7732428541727658068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001825.P7732428541727658068

/-! ## A001825.P17484603918899129242

`A160563(∑[n+2]+3)`
-/

namespace A001825.P17484603918899129242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001825.P17484603918899129242

/-! ## A001825.P6542581384279342186

`record[A008956(A069981(n))]`
-/

namespace A001825.P6542581384279342186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001825.P6542581384279342186

/-! ## A001825.P17152080439722175793

`record[A008956(n)/A008956(n+3)]`
-/

namespace A001825.P17152080439722175793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008956 n : ℚ) / (A008956 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001825.P17152080439722175793

/-! ## A001825.P3595461589951538491

`A008956(A055998(n+1))%A001824(n+1)`
-/

namespace A001825.P3595461589951538491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008956 (A055998 (n + 1)).toNat) (A001824 (n + 1))

end

end A001825.P3595461589951538491

/-!
# A001826: Number of divisors of n of the form 4k+1.

The programs for A001826, the canonical program `A001826.P1518250824516108745` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001826 has offset 1).

The definition of A001826 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001826.P16405628517319179139

`A293451(n+1)+A121262(n)`
-/

namespace A001826.P16405628517319179139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (n + 1) + A121262 n

end

end A001826.P16405628517319179139

namespace A001826

/-- `A293451(n+1)+A121262(n)` -/
def P16405628517319179139.Spec : Prop :=
  ∀ n, P16405628517319179139.a n = A001826 (n + 1)

theorem P16405628517319179139.correct : P16405628517319179139.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P16405628517319179139.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A121262, A121262.P5808261376347758400.a, A293451, A293451.P7933704041420674484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P9132712550950909171

`A002654(n+1)+A001842(n+1)`
-/

namespace A001826.P9132712550950909171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) + A001842 (n + 1)

end

end A001826.P9132712550950909171

namespace A001826

/-- `A002654(n+1)+A001842(n+1)` -/
def P9132712550950909171.Spec : Prop :=
  ∀ n, P9132712550950909171.a n = A001826 (n + 1)

theorem P9132712550950909171.correct : P9132712550950909171.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P9132712550950909171.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P11405840805978784674

`A188169(n+1)+A188171(n+1)`
-/

namespace A001826.P11405840805978784674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) + A188171 (n + 1)

end

end A001826.P11405840805978784674

namespace A001826

/-- `A188169(n+1)+A188171(n+1)` -/
def P11405840805978784674.Spec : Prop :=
  ∀ n, P11405840805978784674.a n = A001826 (n + 1)

theorem P11405840805978784674.correct : P11405840805978784674.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P11405840805978784674.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A002654, A002654.P11574922253888480122.a, A253513, A253513.P7768194327896133816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P1518250824516108745

`A001227(n+1)-A001842(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001826

/-- `A001227(n+1)-A001842(n+1)` -/
def P1518250824516108745.Spec : Prop :=
  ∀ n, P1518250824516108745.a n = A001826 (n + 1)

theorem P1518250824516108745.correct : P1518250824516108745.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel]

end A001826

/-! ## A001826.P12076061957941990385

`(A001227(n+1)+A002654(n+1))/2`
-/

namespace A001826.P12076061957941990385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) + A002654 (n + 1) : ℚ) / 2

end

end A001826.P12076061957941990385

namespace A001826

/-- `(A001227(n+1)+A002654(n+1))/2` -/
def P12076061957941990385.Spec : Prop :=
  ∀ n, P12076061957941990385.a n = (A001826 (n + 1) : ℚ)

theorem P12076061957941990385.correct : P12076061957941990385.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P12076061957941990385.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P3220096257165742899

`∑{d}[n+1, A121262(#-1)]`
-/

namespace A001826.P3220096257165742899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121262 (d - 1)

end

end A001826.P3220096257165742899

namespace A001826

/-- `∑{d}[n+1, A121262(#-1)]` -/
def P3220096257165742899.Spec : Prop :=
  ∀ n, P3220096257165742899.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P1039998228320629634

`∑{d}[n+1, and(1, A000292(#))]`
-/

namespace A001826.P1039998228320629634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A000292 d)

end

end A001826.P1039998228320629634

namespace A001826

/-- `∑{d}[n+1, and(1, A000292(#))]` -/
def P1039998228320629634.Spec : Prop :=
  ∀ n, P1039998228320629634.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P3274042389169253184

`A359289(A003602(n+1))`
-/

namespace A001826.P3274042389169253184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (A003602 (n + 1)).toNat

end

end A001826.P3274042389169253184

namespace A001826

/-- `A359289(A003602(n+1))` -/
def P3274042389169253184.Spec : Prop :=
  ∀ n, P3274042389169253184.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P5945532447695784078

`A145392(n+1)-A086670(n+1)`
-/

namespace A001826.P5945532447695784078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145392 (n + 1) - A086670 (n + 1)

end

end A001826.P5945532447695784078

namespace A001826

/-- `A145392(n+1)-A086670(n+1)` -/
def P5945532447695784078.Spec : Prop :=
  ∀ n, P5945532447695784078.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P8850878553669114688

`∑{d}[A000265(n+1), A014707(#+1)]`
-/

namespace A001826.P8850878553669114688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014707 (d + 1)

end

end A001826.P8850878553669114688

namespace A001826

/-- `∑{d}[A000265(n+1), A014707(#+1)]` -/
def P8850878553669114688.Spec : Prop :=
  ∀ n, P8850878553669114688.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P14606713653379619779

`A363037(n+1)+2*A188171(n+1)`
-/

namespace A001826.P14606713653379619779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) + 2 * A188171 (n + 1)

end

end A001826.P14606713653379619779

namespace A001826

/-- `A363037(n+1)+2*A188171(n+1)` -/
def P14606713653379619779.Spec : Prop :=
  ∀ n, P14606713653379619779.a n = A001826 (n + 1)

theorem P14606713653379619779.correct : P14606713653379619779.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P14606713653379619779.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A188171, A188171.P17289095504074848112.a, A363037, A363037.P17593486041959232839.a, A002654, A002654.P11574922253888480122.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A253513, A253513.P7768194327896133816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P12470934530430061457

`2*A188169(n+1)-A363037(n+1)`
-/

namespace A001826.P12470934530430061457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188169 (n + 1) - A363037 (n + 1)

end

end A001826.P12470934530430061457

namespace A001826

/-- `2*A188169(n+1)-A363037(n+1)` -/
def P12470934530430061457.Spec : Prop :=
  ∀ n, P12470934530430061457.a n = A001826 (n + 1)

theorem P12470934530430061457.correct : P12470934530430061457.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P12470934530430061457.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A363037, A363037.P17593486041959232839.a, A188171, A188171.P17289095504074848112.a, A253513, A253513.P7768194327896133816.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P3876864470441205810

`∑{d}[n+1, A023900(#)*A050460((n+1)/#)]`
-/

namespace A001826.P3876864470441205810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A050460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001826.P3876864470441205810

namespace A001826

/-- `∑{d}[n+1, A023900(#)*A050460((n+1)/#)]` -/
def P3876864470441205810.Spec : Prop :=
  ∀ n, P3876864470441205810.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P10252780937312161946

`∑{d}[n+1, A046970(#)*A050461((n+1)/#)]`
-/

namespace A001826.P10252780937312161946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A050461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001826.P10252780937312161946

namespace A001826

/-- `∑{d}[n+1, A046970(#)*A050461((n+1)/#)]` -/
def P10252780937312161946.Spec : Prop :=
  ∀ n, P10252780937312161946.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P4197224062104580863

`∑{d}[n+1, A050462(#)*A063453((n+1)/#)]`
-/

namespace A001826.P4197224062104580863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050462 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001826.P4197224062104580863

namespace A001826

/-- `∑{d}[n+1, A050462(#)*A063453((n+1)/#)]` -/
def P4197224062104580863.Spec : Prop :=
  ∀ n, P4197224062104580863.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P11020109189245055983

`∑{d}[n+1, A050463(#)*A189922((n+1)/#)]`
-/

namespace A001826.P11020109189245055983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050463 d * A189922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001826.P11020109189245055983

namespace A001826

/-- `∑{d}[n+1, A050463(#)*A189922((n+1)/#)]` -/
def P11020109189245055983.Spec : Prop :=
  ∀ n, P11020109189245055983.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P11156463260577755744

`∑{d}[n+1, A014577(#-1)*A059841((n+1)/#-1)]`
-/

namespace A001826.P11156463260577755744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014577 (d - 1) * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A001826.P11156463260577755744

namespace A001826

/-- `∑{d}[n+1, A014577(#-1)*A059841((n+1)/#-1)]` -/
def P11156463260577755744.Spec : Prop :=
  ∀ n, P11156463260577755744.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P3516075515913093134

`A091954(n+1)+A121262(n)-A293513(n+1)`
-/

namespace A001826.P3516075515913093134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + (A121262 n - A293513 (n + 1))

end

end A001826.P3516075515913093134

namespace A001826

/-- `A091954(n+1)+A121262(n)-A293513(n+1)` -/
def P3516075515913093134.Spec : Prop :=
  ∀ n, P3516075515913093134.a n = A001826 (n + 1)

theorem P3516075515913093134.correct : P3516075515913093134.Spec := by
  intro n
  simp only [A001826, Nat.add_sub_cancel, A001826.P3516075515913093134.a, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A091954, A091954.P3013811461556753393.a, A121262, A121262.P5808261376347758400.a, A293513, A293513.P2913360707613170259.a, A000035, A000035.P2023072528413494694.a, A293451, A293451.P7933704041420674484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001826

/-! ## A001826.P8227440010114328152

`A002654(n+1)+A188172(n+1)+A188170(n+1)`
-/

namespace A001826.P8227440010114328152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) + (A188172 (n + 1) + A188170 (n + 1))

end

end A001826.P8227440010114328152

namespace A001826

/-- `A002654(n+1)+A188172(n+1)+A188170(n+1)` -/
def P8227440010114328152.Spec : Prop :=
  ∀ n, P8227440010114328152.a n = A001826 (n + 1)

end A001826

/-! ## A001826.P2938156378536864767

`A001227(n+1)-(A188172(n+1)+A188170(n+1))`
-/

namespace A001826.P2938156378536864767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A188172 (n + 1) + A188170 (n + 1))

end

end A001826.P2938156378536864767

namespace A001826

/-- `A001227(n+1)-(A188172(n+1)+A188170(n+1))` -/
def P2938156378536864767.Spec : Prop :=
  ∀ n, P2938156378536864767.a n = A001826 (n + 1)

end A001826

/-!
# A001827: Related to graded partially ordered sets.

The programs for A001827, there is no canonical definition to state claims against.
-/

/-! ## A001827.P10698690944919689897

`A361950(∑[n+5]+5)`
-/

namespace A001827.P10698690944919689897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001827.P10698690944919689897

/-!
# A001828: Related to graded partially ordered sets.

The programs for A001828, there is no canonical definition to state claims against.
-/

/-! ## A001828.P9954067628659347468

`record[A361950(∑[n+4])]`
-/

namespace A001828.P9954067628659347468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001828.P9954067628659347468

/-! ## A001828.P3836612806062317466

`A361950(A055999(n+3))`
-/

namespace A001828.P3836612806062317466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (A055999 (n + 3)).toNat

end

end A001828.P3836612806062317466

/-! ## A001828.P10234954396649150945

`A361950(eq[5, A025581(n)])`
-/

namespace A001828.P10234954396649150945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001828.P10234954396649150945

/-! ## A001828.P12509548693438908684

`A361950(eq[6, A193739(n)])`
-/

namespace A001828.P12509548693438908684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001828.P12509548693438908684

/-! ## A001828.P15735356013818407934

`A361950(A052905(n+3)-1)`
-/

namespace A001828.P15735356013818407934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (A052905 (n + 3) - 1).toNat

end

end A001828.P15735356013818407934

/-!
# A001829: Related to graded partially ordered sets.

The programs for A001829, there is no canonical definition to state claims against.
-/

/-! ## A001829.P5917131330100266317

`A361950(eq[6, A025581(n)])`
-/

namespace A001829.P5917131330100266317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001829.P5917131330100266317

/-! ## A001829.P4208546656752653764

`A361950(eq[7, A193739(n)])`
-/

namespace A001829.P4208546656752653764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001829.P4208546656752653764

/-! ## A001829.P2445724869381912607

`record[A361950(A155212(n)+1)]`
-/

namespace A001829.P2445724869381912607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001829.P2445724869381912607

/-!
# A001830: Related to graded partially ordered sets.

The programs for A001830, there is no canonical definition to state claims against.
-/

/-! ## A001830.P4743535677732400558

`A361950(A155212(n+4))`
-/

namespace A001830.P4743535677732400558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (A155212 (n + 4)).toNat

end

end A001830.P4743535677732400558

/-! ## A001830.P17343846334118417009

`A361950(eq[7, A025581(n)])`
-/

namespace A001830.P17343846334118417009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001830.P17343846334118417009

/-! ## A001830.P6760281363269959600

`A361950(eq[8, A004736(n+1)])`
-/

namespace A001830.P6760281363269959600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001830.P6760281363269959600

/-! ## A001830.P8535367437435058262

`A361950(2*n+A000124(n+6)+6)`
-/

namespace A001830.P8535367437435058262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A001830.P8535367437435058262

/-!
# A001831: Number of labeled graded partially ordered sets with n elements of height at most 1.

The programs for A001831, there is no canonical definition to state claims against.
-/

/-! ## A001831.P4214312080643323558

`A360743(n)/(n+1)`
-/

namespace A001831.P4214312080643323558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360743 n : ℚ) / (n + 1 : ℚ)

end

end A001831.P4214312080643323558

/-! ## A001831.P9091823576841237893

`ceil(A360743(n)/A008619(2*n))`
-/

namespace A001831.P9091823576841237893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A360743 n : ℚ) / (A008619 (2 * n) : ℚ)⌉

end

end A001831.P9091823576841237893

/-! ## A001831.P1964669458043751650

`or(1, A342587(A238531(n)))`
-/

namespace A001831.P1964669458043751650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A342587 (A238531 n).toNat)

end

end A001831.P1964669458043751650

/-! ## A001831.P6566187812433308944

`A342587(A238531(n))+A307706(2^n)`
-/

namespace A001831.P6566187812433308944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (A238531 n).toNat + A307706 (2 ^ n)

end

end A001831.P6566187812433308944

/-! ## A001831.P12087633759982756322

`A342587(A238531(n))+A000120(A307706(n+1))`
-/

namespace A001831.P12087633759982756322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (A238531 n).toNat + A000120 (A307706 (n + 1)).toNat

end

end A001831.P12087633759982756322

/-!
# A001832: Number of labeled connected bipartite graphs on n nodes.

The programs for A001832, there is no canonical definition to state claims against.
-/

/-! ## A001832.P4655369712034313902

`A002027(n+1)/2`
-/

namespace A001832.P4655369712034313902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002027 (n + 1) : ℚ) / 2

end

end A001832.P4655369712034313902

/-! ## A001832.P14659578091704570194

`Δ[∑[A002027(n)]/2]`
-/

namespace A001832.P14659578091704570194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002027 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001832.P14659578091704570194

/-! ## A001832.P13061421585334584792

`A002031(A233583(n+2))/2`
-/

namespace A001832.P13061421585334584792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002031 (A233583 (n + 2)).toNat : ℚ) / 2

end

end A001832.P13061421585334584792

/-! ## A001832.P15780185070627256856

`A322279(A141214(n+1))/2`
-/

namespace A001832.P15780185070627256856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322279 (A141214 (n + 1)).toNat : ℚ) / 2

end

end A001832.P15780185070627256856

/-! ## A001832.P16828014308830827233

`A322278(A133263(n))`
-/

namespace A001832.P16828014308830827233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A133263 n).toNat

end

end A001832.P16828014308830827233

/-!
# A001833: Number of labeled graded partially ordered sets with n elements.

The programs for A001833, there is no canonical definition to state claims against.
-/

/-! ## A001833.P12172775378859963271

`or(1, A083920(A061640(n)))`
-/

namespace A001833.P12172775378859963271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083920 (A061640 n).toNat)

end

end A001833.P12172775378859963271

/-! ## A001833.P991066633450367221

`or(A093178(n), A202114(A181136(n)))`
-/

namespace A001833.P991066633450367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093178 n) (A202114 (A181136 n).toNat)

end

end A001833.P991066633450367221

/-!
# A001834: a(0) = 1, a(1) = 5, a(n) = 4*a(n-1) - a(n-2).

The programs for A001834, the canonical program `A001834.P9583742377851660408` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001834 has offset 0).

The definition of A001834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A001834.P9583742377851660408`, by `A001834.P9583742377851660408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001834.P9583742377851660408

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001834

/-- `4*a(n-1)-a(n-2)` -/
def P9583742377851660408.Spec : Prop :=
  ∀ n, P9583742377851660408.a n = A001834 n

theorem P9583742377851660408.correct : P9583742377851660408.Spec := by
  intro n
  simp only [A001834]

end A001834

/-! ## A001834.P18242063836306291697

`2*A001571(n)+1`
-/

namespace A001834.P18242063836306291697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001571 n + 1

end

end A001834.P18242063836306291697

namespace A001834

/-- `2*A001571(n)+1` -/
def P18242063836306291697.Spec : Prop :=
  ∀ n, P18242063836306291697.a n = A001834 n

end A001834

/-! ## A001834.P13864017956621437842

`(-1)^n*(5*A125905(n)+A125905(n+1))`
-/

namespace A001834.P13864017956621437842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (5 * A125905 n + A125905 (n + 1))

end

end A001834.P13864017956621437842

namespace A001834

/-- `(-1)^n*(5*A125905(n)+A125905(n+1))` -/
def P13864017956621437842.Spec : Prop :=
  ∀ n, P13864017956621437842.a n = A001834 n

end A001834

/-! ## A001834.P7430602358749086980

`((1+sqrt(3))^(2*n+1)+(1-sqrt(3))^(2*n+1))/2^(n+1)`
-/

namespace A001834.P7430602358749086980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) ^ (2 * n + 1) + (1 - Real.sqrt (3 : ℝ)) ^ (2 * n + 1)) / (2 ^ (n + 1) : ℝ)

end

end A001834.P7430602358749086980

namespace A001834

/-- `((1+sqrt(3))^(2*n+1)+(1-sqrt(3))^(2*n+1))/2^(n+1)` -/
def P7430602358749086980.Spec : Prop :=
  ∀ n, P7430602358749086980.a n = (A001834 n : ℝ)

theorem P7430602358749086980.correct : P7430602358749086980.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001834, Nat.add_sub_cancel, A001834.P7430602358749086980.a, A001834.P9583742377851660408.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001834, Nat.add_sub_cancel, A001834.P7430602358749086980.a, A001834.P9583742377851660408.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001834

/-! ## A001834.P606903180504030147

`sqrt(1+12*A061278(n)+12*A061278(n)²)`
-/

namespace A001834.P606903180504030147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 + 12 * A061278 n + 12 * A061278 n ^ 2 : ℝ)

end

end A001834.P606903180504030147

namespace A001834

/-- `sqrt(1+12*A061278(n)+12*A061278(n)²)` -/
def P606903180504030147.Spec : Prop :=
  ∀ n, P606903180504030147.a n = (A001834 n : ℝ)

end A001834

/-! ## A001834.P17290632436487110220

`ogf((1+x)/(1-4x+x^2))`
-/

namespace A001834.P17290632436487110220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 1] n

end

end A001834.P17290632436487110220

namespace A001834

/-- `ogf((1+x)/(1-4x+x^2))` -/
def P17290632436487110220.Spec : Prop :=
  ∀ n, P17290632436487110220.a n = A001834 n

end A001834

/-! ## A001834.P12457320914216696403

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A001834.P12457320914216696403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A001834.P12457320914216696403

namespace A001834

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P12457320914216696403.Spec : Prop :=
  ∀ n, P12457320914216696403.a n = A001834 n

end A001834

/-! ## A001834.P17714943458127206491

`round((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A001834.P17714943458127206491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A001834.P17714943458127206491

namespace A001834

/-- `round((sqrt(3)+2)*a(n-1))` -/
def P17714943458127206491.Spec : Prop :=
  ∀ n, P17714943458127206491.a n = A001834 n

end A001834

/-! ## A001834.P3232034316074965380

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=1, a(1)=5`
-/

namespace A001834.P3232034316074965380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A001834.P3232034316074965380

namespace A001834

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P3232034316074965380.Spec : Prop :=
  ∀ n, P3232034316074965380.a n = A001834 n

end A001834

/-! ## A001834.P11454871274299534014

`lcm(4, a(n-1))-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A001834.P11454871274299534014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - a (n - 2)

end

end A001834.P11454871274299534014

namespace A001834

/-- `lcm(4, a(n-1))-a(n-2)` -/
def P11454871274299534014.Spec : Prop :=
  ∀ n, P11454871274299534014.a n = A001834 n

end A001834

/-! ## A001834.P180314840515690654

`a(n-1)+floor((sqrt(3)+2)^n)+1` with `a(0)=1`
-/

namespace A001834.P180314840515690654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1)

end

end A001834.P180314840515690654

namespace A001834

/-- `a(n-1)+floor((sqrt(3)+2)^n)+1` -/
def P180314840515690654.Spec : Prop :=
  ∀ n, P180314840515690654.a n = A001834 n

end A001834

/-! ## A001834.P15658696183063800615

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A001834.P15658696183063800615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A001834.P15658696183063800615

namespace A001834

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P15658696183063800615.Spec : Prop :=
  ∀ n, P15658696183063800615.a n = (A001834 n : ℚ)

end A001834

/-! ## A001834.P2499145594470398084

`Δ[A001075(n)]`
-/

namespace A001834.P2499145594470398084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001834.P2499145594470398084

namespace A001834

/-- `Δ[A001075(n)]` -/
def P2499145594470398084.Spec : Prop :=
  ∀ n, P2499145594470398084.a n = A001834 n

end A001834

/-! ## A001834.P7372882830510885068

`Δ[A092184(n)]`
-/

namespace A001834.P7372882830510885068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001834.P7372882830510885068

namespace A001834

/-- `Δ[A092184(n)]` -/
def P7372882830510885068.Spec : Prop :=
  ∀ n, P7372882830510885068.a n = A001834 n

end A001834

/-! ## A001834.P8189020819341469121

`Δ[A121401(n)]`
-/

namespace A001834.P8189020819341469121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001834.P8189020819341469121

namespace A001834

/-- `Δ[A121401(n)]` -/
def P8189020819341469121.Spec : Prop :=
  ∀ n, P8189020819341469121.a n = A001834 n

end A001834

/-! ## A001834.P12802767994639467875

`record[A108412(n)]`
-/

namespace A001834.P12802767994639467875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001834.P12802767994639467875

namespace A001834

/-- `record[A108412(n)]` -/
def P12802767994639467875.Spec : Prop :=
  ∀ n, P12802767994639467875.a n = A001834 n

end A001834

/-! ## A001834.P17930085020298823370

`A108412(2*n)`
-/

namespace A001834.P17930085020298823370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108412 (2 * n)

end

end A001834.P17930085020298823370

namespace A001834

/-- `A108412(2*n)` -/
def P17930085020298823370.Spec : Prop :=
  ∀ n, P17930085020298823370.a n = A001834 n

end A001834

/-! ## A001834.P16395983495810559829

`A002531(Δ[n²])`
-/

namespace A001834.P16395983495810559829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001834.P16395983495810559829

namespace A001834

/-- `A002531(Δ[n²])` -/
def P16395983495810559829.Spec : Prop :=
  ∀ n, P16395983495810559829.a n = A001834 n

end A001834

/-! ## A001834.P14195421104688836510

`A082630(Δ[n²])`
-/

namespace A001834.P14195421104688836510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001834.P14195421104688836510

namespace A001834

/-- `A082630(Δ[n²])` -/
def P14195421104688836510.Spec : Prop :=
  ∀ n, P14195421104688836510.a n = A001834 n

end A001834

/-! ## A001834.P45200054229552930

`A143643(Δ[n²])`
-/

namespace A001834.P45200054229552930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001834.P45200054229552930

namespace A001834

/-- `A143643(Δ[n²])` -/
def P45200054229552930.Spec : Prop :=
  ∀ n, P45200054229552930.a n = A001834 n

end A001834

/-!
# A001835: a(n) = 4*a(n-1) - a(n-2), with a(0) = 1, a(1) = 1.

The programs for A001835, the canonical program `A001835.P17952656133348368422` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001835 has offset 0).

The definition of A001835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A001835.P17952656133348368422`, by `A001835.P17952656133348368422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001835.P1261217163141102138

`a(n-1)+2*A001353(n-1)` with `a(0)=1`
-/

namespace A001835.P1261217163141102138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A001353 (n - 1)

end

end A001835.P1261217163141102138

namespace A001835

/-- `a(n-1)+2*A001353(n-1)` -/
def P1261217163141102138.Spec : Prop :=
  ∀ n, P1261217163141102138.a n = A001835 n

end A001835

/-! ## A001835.P17952656133348368422

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001835

/-- `4*a(n-1)-a(n-2)` -/
def P17952656133348368422.Spec : Prop :=
  ∀ n, P17952656133348368422.a n = A001835 n

theorem P17952656133348368422.correct : P17952656133348368422.Spec := by
  intro n
  simp only [A001835]

end A001835

/-! ## A001835.P1313517376131352390

`A001353(n+1)-3*A001353(n)`
-/

namespace A001835.P1313517376131352390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) - 3 * A001353 n

end

end A001835.P1313517376131352390

namespace A001835

/-- `A001353(n+1)-3*A001353(n)` -/
def P1313517376131352390.Spec : Prop :=
  ∀ n, P1313517376131352390.a n = A001835 n

end A001835

/-! ## A001835.P12937949021912133435

`(a(n-1)²+2)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001835.P12937949021912133435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 2 + 2) / a (n - 2)

end

end A001835.P12937949021912133435

namespace A001835

/-- `(a(n-1)²+2)/a(n-2)` -/
def P12937949021912133435.Spec : Prop :=
  ∀ n, P12937949021912133435.a n = (A001835 n : ℚ)

end A001835

/-! ## A001835.P5300762801052411555

`((3+sqrt(3))^(2*n-1)+(3-sqrt(3))^(2*n-1))/6^n`
-/

namespace A001835.P5300762801052411555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) ^ ((2 * n : ℤ) - 1 : ℤ) + (3 - Real.sqrt (3 : ℝ)) ^ ((2 * n : ℤ) - 1 : ℤ)) / (6 ^ n : ℝ)

end

end A001835.P5300762801052411555

namespace A001835

/-- `((3+sqrt(3))^(2*n-1)+(3-sqrt(3))^(2*n-1))/6^n` -/
def P5300762801052411555.Spec : Prop :=
  ∀ n, P5300762801052411555.a n = (A001835 n : ℝ)

end A001835

/-! ## A001835.P14619358145139347184

`ogf((1-3x)/(1-4x+x^2))`
-/

namespace A001835.P14619358145139347184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -4, 1] n

end

end A001835.P14619358145139347184

namespace A001835

/-- `ogf((1-3x)/(1-4x+x^2))` -/
def P14619358145139347184.Spec : Prop :=
  ∀ n, P14619358145139347184.a n = A001835 n

end A001835

/-! ## A001835.P1624705221839515395

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001835.P1624705221839515395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A001835.P1624705221839515395

namespace A001835

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P1624705221839515395.Spec : Prop :=
  ∀ n, P1624705221839515395.a n = A001835 n

end A001835

/-! ## A001835.P16399613664072263880

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001835.P16399613664072263880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A001835.P16399613664072263880

namespace A001835

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P16399613664072263880.Spec : Prop :=
  ∀ n, P16399613664072263880.a n = A001835 n

end A001835

/-! ## A001835.P12212956977938746871

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001835.P12212956977938746871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A001835.P12212956977938746871

namespace A001835

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P12212956977938746871.Spec : Prop :=
  ∀ n, P12212956977938746871.a n = A001835 n

theorem P12212956977938746871.correct : P12212956977938746871.Spec := by
  intro n
  simp only [A001835, Nat.add_sub_cancel, A001835.P12212956977938746871.a, A001835.P17952656133348368422.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001835

/-! ## A001835.P273795267879116576

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001835.P273795267879116576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A001835.P273795267879116576

namespace A001835

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P273795267879116576.Spec : Prop :=
  ∀ n, P273795267879116576.a n = A001835 n

theorem P273795267879116576.correct : P273795267879116576.Spec := by
  intro n
  simp only [A001835, Nat.add_sub_cancel, A001835.P273795267879116576.a, A001835.P17952656133348368422.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001835

/-! ## A001835.P14109404069379325530

`A005246(2*n)`
-/

namespace A001835.P14109404069379325530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n)

end

end A001835.P14109404069379325530

namespace A001835

/-- `A005246(2*n)` -/
def P14109404069379325530.Spec : Prop :=
  ∀ n, P14109404069379325530.a n = A001835 n

end A001835

/-! ## A001835.P4746916506129730342

`A122573(Δ[n²])`
-/

namespace A001835.P4746916506129730342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001835.P4746916506129730342

namespace A001835

/-- `A122573(Δ[n²])` -/
def P4746916506129730342.Spec : Prop :=
  ∀ n, P4746916506129730342.a n = A001835 n

end A001835

/-! ## A001835.P3168670134776394967

`2*A101879(n)-1`
-/

namespace A001835.P3168670134776394967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101879 n - 1

end

end A001835.P3168670134776394967

namespace A001835

/-- `2*A101879(n)-1` -/
def P3168670134776394967.Spec : Prop :=
  ∀ n, P3168670134776394967.a n = A001835 n

end A001835

/-! ## A001835.P10474882031622098400

`A052530(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A001835.P10474882031622098400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052530 (n - 1) + a (n - 1)

end

end A001835.P10474882031622098400

namespace A001835

/-- `A052530(n-1)+a(n-1)` -/
def P10474882031622098400.Spec : Prop :=
  ∀ n, P10474882031622098400.a n = A001835 n

end A001835

/-! ## A001835.P12382802599909893884

`2*∑[A001353(abs(1-n))]-1`
-/

namespace A001835.P12382802599909893884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A001835.P12382802599909893884

namespace A001835

/-- `2*∑[A001353(abs(1-n))]-1` -/
def P12382802599909893884.Spec : Prop :=
  ∀ n, P12382802599909893884.a n = A001835 n

end A001835

/-! ## A001835.P16593900201338059236

`A079935(A028310(n))`
-/

namespace A001835.P16593900201338059236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (A028310 n).toNat

end

end A001835.P16593900201338059236

namespace A001835

/-- `A079935(A028310(n))` -/
def P16593900201338059236.Spec : Prop :=
  ∀ n, P16593900201338059236.a n = A001835 n

end A001835

/-! ## A001835.P18150842997139933182

`A002530(A004274(n+1))`
-/

namespace A001835.P18150842997139933182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004274 (n + 1)).toNat

end

end A001835.P18150842997139933182

namespace A001835

/-- `A002530(A004274(n+1))` -/
def P18150842997139933182.Spec : Prop :=
  ∀ n, P18150842997139933182.a n = A001835 n

end A001835

/-! ## A001835.P9164663489778387745

`A002530(A004280(n+1))`
-/

namespace A001835.P9164663489778387745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004280 (n + 1)).toNat

end

end A001835.P9164663489778387745

namespace A001835

/-- `A002530(A004280(n+1))` -/
def P9164663489778387745.Spec : Prop :=
  ∀ n, P9164663489778387745.a n = A001835 n

end A001835

/-! ## A001835.P3455441667017475111

`A002530(A004275(n)+1)`
-/

namespace A001835.P3455441667017475111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004275 n + 1).toNat

end

end A001835.P3455441667017475111

namespace A001835

/-- `A002530(A004275(n)+1)` -/
def P3455441667017475111.Spec : Prop :=
  ∀ n, P3455441667017475111.a n = A001835 n

end A001835

/-! ## A001835.P8423902446055028129

`A305491(A116921(2*(2*n+1)))`
-/

namespace A001835.P8423902446055028129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305491 (A116921 (2 * (2 * n + 1))).toNat

end

end A001835.P8423902446055028129

namespace A001835

/-- `A305491(A116921(2*(2*n+1)))` -/
def P8423902446055028129.Spec : Prop :=
  ∀ n, P8423902446055028129.a n = A001835 n

end A001835

/-!
# A001836: Numbers k such that phi(2k-1) < phi(2k), where phi is Euler's totient function A000010.

The programs for A001836, there is no canonical definition to state claims against.
-/

/-! ## A001836.P11766035256363203008

`ceil(A161962(n+1)/2)`
-/

namespace A001836.P11766035256363203008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161962 (n + 1) : ℚ) / 2⌉

end

end A001836.P11766035256363203008

/-! ## A001836.P8870790762303228958

`A318516(A161962(n+1)+1)`
-/

namespace A001836.P8870790762303228958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A161962 (n + 1) + 1).toNat

end

end A001836.P8870790762303228958

/-! ## A001836.P10723672706197238540

`A089389(A161962(n+1)-3)`
-/

namespace A001836.P10723672706197238540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (A161962 (n + 1) - 3).toNat

end

end A001836.P10723672706197238540

/-! ## A001836.P2497870243723289887

`A007494(A161962(n+1)/3)`
-/

namespace A001836.P2497870243723289887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (SequenceMachineLib.roundAway ((A161962 (n + 1) : ℚ) / 3)).toNat

end

end A001836.P2497870243723289887

/-! ## A001836.P11682857011843219690

`record[A000217(A078776(n+1))%A078776(n+1)]`
-/

namespace A001836.P11682857011843219690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A078776 (n + 1)).toNat) (A078776 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001836.P11682857011843219690

/-! ## A001836.P9220525048414050608

`A000463(A161962(n+1))`
-/

namespace A001836.P9220525048414050608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A161962 (n + 1)).toNat

end

end A001836.P9220525048414050608

/-! ## A001836.P11812331428311910777

`A004525(A161962(n+1)+1)`
-/

namespace A001836.P11812331428311910777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A161962 (n + 1) + 1).toNat

end

end A001836.P11812331428311910777

/-! ## A001836.P1352830356838513086

`A026741(A161962(n+1)+1)`
-/

namespace A001836.P1352830356838513086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A161962 (n + 1) + 1).toNat

end

end A001836.P1352830356838513086

/-! ## A001836.P9606155528294111120

`A029579(A161962(n+1)-1)`
-/

namespace A001836.P9606155528294111120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A161962 (n + 1) - 1).toNat

end

end A001836.P9606155528294111120

/-!
# A001837: Numbers k such that phi(2k+1) < phi(2k).

The programs for A001837, there is no canonical definition to state claims against.
-/

/-! ## A001837.P16291013007909624957

`A161963(n+1)/2`
-/

namespace A001837.P16291013007909624957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161963 (n + 1) : ℚ) / 2

end

end A001837.P16291013007909624957

/-! ## A001837.P17558462085007362891

`A273943(A161963(n+1))`
-/

namespace A001837.P17558462085007362891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A161963 (n + 1)).toNat

end

end A001837.P17558462085007362891

/-! ## A001837.P5265191858130468070

`A103391(A161963(n+1)-2)`
-/

namespace A001837.P5265191858130468070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A161963 (n + 1) - 2).toNat

end

end A001837.P5265191858130468070

/-! ## A001837.P1461683099550968080

`∑{d}[A161963(n+1), A300721(#)]`
-/

namespace A001837.P1461683099550968080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300721 d

end

end A001837.P1461683099550968080

/-! ## A001837.P15781306432162551581

`A328399(A161963(n+1)-1)`
-/

namespace A001837.P15781306432162551581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A161963 (n + 1) - 1).toNat

end

end A001837.P15781306432162551581

/-! ## A001837.P9883616979837537164

`A000217(A161963(n+1)-1)%A161963(n+1)`
-/

namespace A001837.P9883616979837537164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A161963 (n + 1) - 1).toNat) (A161963 (n + 1))

end

end A001837.P9883616979837537164

/-! ## A001837.P3094931744293572955

`A249122(A161963(n+1)+1)`
-/

namespace A001837.P3094931744293572955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A161963 (n + 1) + 1).toNat

end

end A001837.P3094931744293572955

/-! ## A001837.P7486797695680223849

`A001281(A161963(n+1)+2)-1`
-/

namespace A001837.P7486797695680223849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161963 (n + 1) + 2).toNat - 1

end

end A001837.P7486797695680223849

/-! ## A001837.P1532737367377560698

`A004525(A161963(n+1)+2)-1`
-/

namespace A001837.P1532737367377560698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A161963 (n + 1) + 2).toNat - 1

end

end A001837.P1532737367377560698

/-!
# A001838: Numbers k such that phi(k+2) = phi(k) + 2.

The programs for A001838, there is no canonical definition to state claims against.
-/

/-! ## A001838.P515737627143662624

`A056853(n+1)-1`
-/

namespace A001838.P515737627143662624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1) - 1

end

end A001838.P515737627143662624

/-! ## A001838.P3531020974080408083

`A320391(n+1)-2`
-/

namespace A001838.P3531020974080408083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1) - 2

end

end A001838.P3531020974080408083

/-! ## A001838.P2609571030876083139

`∪[A001359(n+1), A056774(n+1)]`
-/

namespace A001838.P2609571030876083139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001838.P2609571030876083139

/-! ## A001838.P3451202081646343371

`eq[A000010(n+1)+2, A000010(n+3)]+1`
-/

namespace A001838.P3451202081646343371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A001838.P3451202081646343371

/-! ## A001838.P13478530121332555009

`A023443(A056853(n+1))`
-/

namespace A001838.P13478530121332555009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056853 (n + 1)).toNat

end

end A001838.P13478530121332555009

/-! ## A001838.P4304493974516806619

`A023444(A320391(n+1))`
-/

namespace A001838.P4304493974516806619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A320391 (n + 1)).toNat

end

end A001838.P4304493974516806619

/-! ## A001838.P11165253467132329616

`eq[A023022(n+2), A055684(n+4)]+2`
-/

namespace A001838.P11165253467132329616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A001838.P11165253467132329616

/-! ## A001838.P9195521700845086301

`eq[A051953(n+2), A051953(A028310(n))]`
-/

namespace A001838.P9195521700845086301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001838.P9195521700845086301

/-! ## A001838.P16999647936047832620

`eq[A062830(n+2), A062830(A028310(n))]`
-/

namespace A001838.P16999647936047832620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001838.P16999647936047832620

/-! ## A001838.P9646459021395888634

`eq[A039649(A028310(n)), A109606(n+2)]`
-/

namespace A001838.P9646459021395888634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001838.P9646459021395888634

/-! ## A001838.P15311427244717858578

`eq[A219428(n+2), A219428(A028310(n))]`
-/

namespace A001838.P15311427244717858578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001838.P15311427244717858578

/-! ## A001838.P9712197085407969022

`A175068(eq[A051953(n+3), A051953(n+1)]+1)`
-/

namespace A001838.P9712197085407969022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A001838.P9712197085407969022

/-! ## A001838.P2926944186347251438

`eq[A051953(A065033(2*n)), A051953(n+2)]`
-/

namespace A001838.P2926944186347251438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001838.P2926944186347251438

/-!
# A001839: The coding-theoretic function A(n,4,3).

The programs for A001839, the canonical program `A001839.P17129698917504236910` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001839 has offset 1).

The definition of A001839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001839.P17129698917504236910

`A056827(n)+A008612(A141310(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001839

/-- `A056827(n)+A008612(A141310(n))` -/
def P17129698917504236910.Spec : Prop :=
  ∀ n, P17129698917504236910.a n = A001839 (n + 1)

theorem P17129698917504236910.correct : P17129698917504236910.Spec := by
  intro n
  simp only [A001839, Nat.add_sub_cancel]

end A001839

/-! ## A001839.P17402517241596596096

`A056827(n)+A008612(A086112(n+1))`
-/

namespace A001839.P17402517241596596096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n + A008612 (A086112 (n + 1)).toNat

end

end A001839.P17402517241596596096

namespace A001839

/-- `A056827(n)+A008612(A086112(n+1))` -/
def P17402517241596596096.Spec : Prop :=
  ∀ n, P17402517241596596096.a n = A001839 (n + 1)

end A001839

/-! ## A001839.P10040979585388412068

`A056827(n)-A008612(A141310(n))*A057428(n)`
-/

namespace A001839.P10040979585388412068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n - A008612 (A141310 n).toNat * A057428 n

end

end A001839.P10040979585388412068

namespace A001839

/-- `A056827(n)-A008612(A141310(n))*A057428(n)` -/
def P10040979585388412068.Spec : Prop :=
  ∀ n, P10040979585388412068.a n = A001839 (n + 1)

end A001839

/-! ## A001839.P15653333274854303560

`A182079(n+1)-(n+1)%A060865(2*n+1)`
-/

namespace A001839.P15653333274854303560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182079 (n + 1) - Int.tmod (n + 1 : ℤ) (A060865 (2 * n + 1))

end

end A001839.P15653333274854303560

namespace A001839

/-- `A182079(n+1)-(n+1)%A060865(2*n+1)` -/
def P15653333274854303560.Spec : Prop :=
  ∀ n, P15653333274854303560.a n = A001839 (n + 1)

end A001839

/-! ## A001839.P12134251667461861645

`A008612(A141310(n))+A004523(A002620(n))`
-/

namespace A001839.P12134251667461861645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A141310 n).toNat + A004523 (A002620 n).toNat

end

end A001839.P12134251667461861645

namespace A001839

/-- `A008612(A141310(n))+A004523(A002620(n))` -/
def P12134251667461861645.Spec : Prop :=
  ∀ n, P12134251667461861645.a n = A001839 (n + 1)

end A001839

/-! ## A001839.P18074824450225378125

`A008612(A141310(n))+A004526(A000212(n))`
-/

namespace A001839.P18074824450225378125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A141310 n).toNat + A004526 (A000212 n).toNat

end

end A001839.P18074824450225378125

namespace A001839

/-- `A008612(A141310(n))+A004526(A000212(n))` -/
def P18074824450225378125.Spec : Prop :=
  ∀ n, P18074824450225378125.a n = A001839 (n + 1)

end A001839

/-! ## A001839.P9439145175479836790

`A008612(A141310(n))+A002264(A004525(n²))`
-/

namespace A001839.P9439145175479836790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A141310 n).toNat + A002264 (A004525 (n ^ 2)).toNat

end

end A001839.P9439145175479836790

namespace A001839

/-- `A008612(A141310(n))+A002264(A004525(n²))` -/
def P9439145175479836790.Spec : Prop :=
  ∀ n, P9439145175479836790.a n = A001839 (n + 1)

end A001839

/-!
# A001840: Expansion of g.f. x/((1 - x)^2*(1 - x^3)).

The programs for A001840, the canonical program `A001840.P3786168868741047916` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001840 has offset 0).

The definition of A001840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x+x^2-x^3+2x^4-x^5))` (program `A001840.P3786168868741047916`, by `A001840.P3786168868741047916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001840.P5520714213819250957

`floor(C(n+2, 2)/3)`
-/

namespace A001840.P5520714213819250957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 3⌋

end

end A001840.P5520714213819250957

namespace A001840

/-- `floor(C(n+2, 2)/3)` -/
def P5520714213819250957.Spec : Prop :=
  ∀ n, P5520714213819250957.a n = A001840 n

end A001840

/-! ## A001840.P16374952016473323476

`a(n-3)+n` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A001840.P16374952016473323476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + n

end

end A001840.P16374952016473323476

namespace A001840

/-- `a(n-3)+n` -/
def P16374952016473323476.Spec : Prop :=
  ∀ n, (P16374952016473323476.a n : ℤ) = A001840 n

end A001840

/-! ## A001840.P5051056785677733652

`floor((n+1)*(n+2)/6)`
-/

namespace A001840.P5051056785677733652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * (n + 2) : ℚ) / 6⌋

end

end A001840.P5051056785677733652

namespace A001840

/-- `floor((n+1)*(n+2)/6)` -/
def P5051056785677733652.Spec : Prop :=
  ∀ n, P5051056785677733652.a n = A001840 n

end A001840

/-! ## A001840.P3786168868741047916

`ogf(x/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001840

/-- `ogf(x/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3786168868741047916.Spec : Prop :=
  ∀ n, P3786168868741047916.a n = A001840 n

theorem P3786168868741047916.correct : P3786168868741047916.Spec := by
  intro n
  simp only [A001840]

end A001840

/-! ## A001840.P955064906906203199

`A000217(n)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001840.P955064906906203199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000217 n - a (n - 1) - a (n - 2)

end

end A001840.P955064906906203199

namespace A001840

/-- `A000217(n)-a(n-1)-a(n-2)` -/
def P955064906906203199.Spec : Prop :=
  ∀ n, P955064906906203199.a n = A001840 n

end A001840

/-! ## A001840.P10840607734297588068

`round(∑[∑[n]]*acot(n))`
-/

namespace A001840.P10840607734297588068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ))

end

end A001840.P10840607734297588068

namespace A001840

/-- `round(∑[∑[n]]*acot(n))` -/
def P10840607734297588068.Spec : Prop :=
  ∀ n, P10840607734297588068.a n = A001840 n

end A001840

/-! ## A001840.P9201798082828485347

`round(C(n+2, 2)/3)`
-/

namespace A001840.P9201798082828485347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℚ) / 3)

end

end A001840.P9201798082828485347

namespace A001840

/-- `round(C(n+2, 2)/3)` -/
def P9201798082828485347.Spec : Prop :=
  ∀ n, P9201798082828485347.a n = A001840 n

end A001840

/-! ## A001840.P12199983014321429687

`round(∑[xor(1, n+1)/3])`
-/

namespace A001840.P12199983014321429687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001840.P12199983014321429687

namespace A001840

/-- `round(∑[xor(1, n+1)/3])` -/
def P12199983014321429687.Spec : Prop :=
  ∀ n, P12199983014321429687.a n = A001840 n

end A001840

/-! ## A001840.P13607083815905923654

`round((n+3)/(6*acot(n)))`
-/

namespace A001840.P13607083815905923654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / (6 * SequenceMachineLib.acot (n : ℝ)))

end

end A001840.P13607083815905923654

namespace A001840

/-- `round((n+3)/(6*acot(n)))` -/
def P13607083815905923654.Spec : Prop :=
  ∀ n, P13607083815905923654.a n = A001840 n

end A001840

/-! ## A001840.P4329453338936275409

`ceil((C(n+2, 2)-1)/3)`
-/

namespace A001840.P4329453338936275409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 2) 2 : ℤ) - 1 : ℚ) / 3⌉

end

end A001840.P4329453338936275409

namespace A001840

/-- `ceil((C(n+2, 2)-1)/3)` -/
def P4329453338936275409.Spec : Prop :=
  ∀ n, P4329453338936275409.a n = A001840 n

end A001840

/-! ## A001840.P11147800537849281960

`∑[∑[a(n-3)²]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A001840.P11147800537849281960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001840.P11147800537849281960

namespace A001840

/-- `∑[∑[a(n-3)²]]` -/
def P11147800537849281960.Spec : Prop :=
  ∀ n, (P11147800537849281960.a n : ℤ) = A001840 n

end A001840

/-! ## A001840.P3905981802483983720

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A001840.P3905981802483983720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001840.P3905981802483983720

namespace A001840

/-- `∑[∑[floor(a(n-3))]]` -/
def P3905981802483983720.Spec : Prop :=
  ∀ n, (P3905981802483983720.a n : ℤ) = A001840 n

end A001840

/-! ## A001840.P7488596500131702212

`∑[(2*n)%3+n]/3`
-/

namespace A001840.P7488596500131702212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A001840.P7488596500131702212

namespace A001840

/-- `∑[(2*n)%3+n]/3` -/
def P7488596500131702212.Spec : Prop :=
  ∀ n, P7488596500131702212.a n = (A001840 n : ℚ)

end A001840

/-! ## A001840.P18055978675722040774

`round(∑[∑[and(2, n+1)/3]])`
-/

namespace A001840.P18055978675722040774
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001840.P18055978675722040774

namespace A001840

/-- `round(∑[∑[and(2, n+1)/3]])` -/
def P18055978675722040774.Spec : Prop :=
  ∀ n, P18055978675722040774.a n = A001840 n

end A001840

/-! ## A001840.P1514684291413711721

`round(cos(2)+∑[(n+1)/3])`
-/

namespace A001840.P1514684291413711721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A001840.P1514684291413711721

namespace A001840

/-- `round(cos(2)+∑[(n+1)/3])` -/
def P1514684291413711721.Spec : Prop :=
  ∀ n, P1514684291413711721.a n = A001840 n

end A001840

/-! ## A001840.P16255360587134999884

`round((∑[n+1]-sin(1))/3)`
-/

namespace A001840.P16255360587134999884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.sin (1 : ℝ)) / 3)

end

end A001840.P16255360587134999884

namespace A001840

/-- `round((∑[n+1]-sin(1))/3)` -/
def P16255360587134999884.Spec : Prop :=
  ∀ n, P16255360587134999884.a n = A001840 n

end A001840

/-! ## A001840.P15626121113527515647

`∑[∑[∑[2*n]%3]]/2`
-/

namespace A001840.P15626121113527515647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A001840.P15626121113527515647

namespace A001840

/-- `∑[∑[∑[2*n]%3]]/2` -/
def P15626121113527515647.Spec : Prop :=
  ∀ n, P15626121113527515647.a n = (A001840 n : ℚ)

end A001840

/-! ## A001840.P97703319131235823

`round((∑[n+1]-atan(1))/3)`
-/

namespace A001840.P97703319131235823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.arctan (1 : ℝ)) / 3)

end

end A001840.P97703319131235823

namespace A001840

/-- `round((∑[n+1]-atan(1))/3)` -/
def P97703319131235823.Spec : Prop :=
  ∀ n, P97703319131235823.a n = A001840 n

end A001840

/-! ## A001840.P6112212095846059477

`round((∑[n+1]-acot(1))/3)`
-/

namespace A001840.P6112212095846059477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - SequenceMachineLib.acot (1 : ℝ)) / 3)

end

end A001840.P6112212095846059477

namespace A001840

/-- `round((∑[n+1]-acot(1))/3)` -/
def P6112212095846059477.Spec : Prop :=
  ∀ n, P6112212095846059477.a n = A001840 n

end A001840

/-! ## A001840.P766642219202103834

`∑[∑[a(n-3)^3]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A001840.P766642219202103834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001840.P766642219202103834

namespace A001840

/-- `∑[∑[a(n-3)^3]]` -/
def P766642219202103834.Spec : Prop :=
  ∀ n, (P766642219202103834.a n : ℤ) = A001840 n

end A001840

/-!
# A001841: Related to Zarankiewicz's problem.

The programs for A001841, the canonical program `A001841.P629893986257724125` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001841 has offset 3).

The definition of A001841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001841.P2832621179262788733

`∑[A168269(n+1)]-A260708(n)`
-/

namespace A001841.P2832621179262788733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A260708 n

end

end A001841.P2832621179262788733

namespace A001841

/-- `∑[A168269(n+1)]-A260708(n)` -/
def P2832621179262788733.Spec : Prop :=
  ∀ n, P2832621179262788733.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P629893986257724125

`A242112(n)+2*A087811(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001841

/-- `A242112(n)+2*A087811(n+1)` -/
def P629893986257724125.Spec : Prop :=
  ∀ n, P629893986257724125.a n = A001841 (n + 3)

theorem P629893986257724125.correct : P629893986257724125.Spec := by
  intro n
  simp only [A001841, Nat.add_sub_cancel]

end A001841

/-! ## A001841.P2487256805610173196

`A260307(n)+∑[A260307(A004442(n))]`
-/

namespace A001841.P2487256805610173196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260307 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260307 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001841.P2487256805610173196

namespace A001841

/-- `A260307(n)+∑[A260307(A004442(n))]` -/
def P2487256805610173196.Spec : Prop :=
  ∀ n, P2487256805610173196.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P7368294361641743136

`A263807(n+1)-A394246(n)`
-/

namespace A001841.P7368294361641743136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (n + 1) - A394246 n

end

end A001841.P7368294361641743136

namespace A001841

/-- `A263807(n+1)-A394246(n)` -/
def P7368294361641743136.Spec : Prop :=
  ∀ n, P7368294361641743136.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P6547698942509906257

`A260708(n+1)+A047212(∑[and(1, n+1)]+1)`
-/

namespace A001841.P6547698942509906257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 (n + 1) + A047212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001841.P6547698942509906257

namespace A001841

/-- `A260708(n+1)+A047212(∑[and(1, n+1)]+1)` -/
def P6547698942509906257.Spec : Prop :=
  ∀ n, P6547698942509906257.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P9157191691776699951

`A242112(n)+A007590(n+2)`
-/

namespace A001841.P9157191691776699951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n + A007590 (n + 2)

end

end A001841.P9157191691776699951

namespace A001841

/-- `A242112(n)+A007590(n+2)` -/
def P9157191691776699951.Spec : Prop :=
  ∀ n, P9157191691776699951.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P18119261658649376636

`A260699(n+3)-(n+3)`
-/

namespace A001841.P18119261658649376636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 (n + 3) - (n + 3 : ℤ)

end

end A001841.P18119261658649376636

namespace A001841

/-- `A260699(n+3)-(n+3)` -/
def P18119261658649376636.Spec : Prop :=
  ∀ n, P18119261658649376636.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P10278303475211415133

`A000124(n+2)-A008620(A142150(n+7))`
-/

namespace A001841.P10278303475211415133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 2) - A008620 (A142150 (n + 7)).toNat

end

end A001841.P10278303475211415133

namespace A001841

/-- `A000124(n+2)-A008620(A142150(n+7))` -/
def P10278303475211415133.Spec : Prop :=
  ∀ n, P10278303475211415133.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P6813307242021930338

`A000124(n+2)-A008620(A057979(n+8))`
-/

namespace A001841.P6813307242021930338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 2) - A008620 (A057979 (n + 8)).toNat

end

end A001841.P6813307242021930338

namespace A001841

/-- `A000124(n+2)-A008620(A057979(n+8))` -/
def P6813307242021930338.Spec : Prop :=
  ∀ n, P6813307242021930338.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P10424420051487851786

`A000124(n+2)-A057979(A008611(n+13))`
-/

namespace A001841.P10424420051487851786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 2) - A057979 (A008611 (n + 13)).toNat

end

end A001841.P10424420051487851786

namespace A001841

/-- `A000124(n+2)-A057979(A008611(n+13))` -/
def P10424420051487851786.Spec : Prop :=
  ∀ n, P10424420051487851786.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P16001314872877665955

`A242112(n)+∑[A018837(2*(n+1))]`
-/

namespace A001841.P16001314872877665955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001841.P16001314872877665955

namespace A001841

/-- `A242112(n)+∑[A018837(2*(n+1))]` -/
def P16001314872877665955.Spec : Prop :=
  ∀ n, P16001314872877665955.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P5425996129519122058

`A176222(n+4)-val(A282217(n+1), 8)`
-/

namespace A001841.P5425996129519122058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176222 (n + 4) - (SequenceMachineLib.valuation (A282217 (n + 1)).toNat 8 : ℤ)

end

end A001841.P5425996129519122058

namespace A001841

/-- `A176222(n+4)-val(A282217(n+1), 8)` -/
def P5425996129519122058.Spec : Prop :=
  ∀ n, P5425996129519122058.a n = A001841 (n + 3)

end A001841

/-! ## A001841.P8613617521653827909

`A242112(n)+A004277(A087811(n+1))`
-/

namespace A001841.P8613617521653827909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n + A004277 (A087811 (n + 1)).toNat

end

end A001841.P8613617521653827909

namespace A001841

/-- `A242112(n)+A004277(A087811(n+1))` -/
def P8613617521653827909.Spec : Prop :=
  ∀ n, P8613617521653827909.a n = A001841 (n + 3)

end A001841

/-!
# A001842: Number of divisors of n of the form 4*k+3.

The programs for A001842, the canonical program `A001842.P7208978678147038563` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001842 has offset 0).

The definition of A001842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001842.P7208978678147038563

`∑{d}[n, C(#, 3)%2]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001842

/-- `∑{d}[n, C(#, 3)%2]` -/
def P7208978678147038563.Spec : Prop :=
  ∀ n, (P7208978678147038563.a n : ℤ) = A001842 n

theorem P7208978678147038563.correct : P7208978678147038563.Spec := by
  intro n
  simp only [A001842]

end A001842

/-! ## A001842.P11731453438752150394

`∑{d}[n, and(1, C(#, 3))]`
-/

namespace A001842.P11731453438752150394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 (Nat.choose d 3)

end

end A001842.P11731453438752150394

namespace A001842

/-- `∑{d}[n, and(1, C(#, 3))]` -/
def P11731453438752150394.Spec : Prop :=
  ∀ n, (P11731453438752150394.a n : ℤ) = A001842 n

theorem P11731453438752150394.correct : P11731453438752150394.Spec := by
  intro n
  simp only [A001842, Nat.add_sub_cancel, A001842.P11731453438752150394.f1, A001842.P11731453438752150394.a, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, SequenceMachineLib.memo_apply]
  try simp

end A001842

/-! ## A001842.P16704659092765871398

`∑{d}[n, val(#, or(3, #))]`
-/

namespace A001842.P16704659092765871398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation d (Nat.lor 3 d)

end

end A001842.P16704659092765871398

namespace A001842

/-- `∑{d}[n, val(#, or(3, #))]` -/
def P16704659092765871398.Spec : Prop :=
  ∀ n, (P16704659092765871398.a n : ℤ) = A001842 n

end A001842

/-! ## A001842.P12870384679277621782

`∑{d}[n, C(#, or(3, #))]`
-/

namespace A001842.P12870384679277621782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d (Nat.lor 3 d)

end

end A001842.P12870384679277621782

namespace A001842

/-- `∑{d}[n, C(#, or(3, #))]` -/
def P12870384679277621782.Spec : Prop :=
  ∀ n, (P12870384679277621782.a n : ℤ) = A001842 n

end A001842

/-! ## A001842.P9959213329398611411

`∑{d}[n, floor(#%4/3)]`
-/

namespace A001842.P9959213329398611411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊((d % 4 : ℕ) : ℚ) / 3⌋

end

end A001842.P9959213329398611411

namespace A001842

/-- `∑{d}[n, floor(#%4/3)]` -/
def P9959213329398611411.Spec : Prop :=
  ∀ n, P9959213329398611411.a n = A001842 n

end A001842

/-! ## A001842.P12011309396438744338

`∑{d}[n, log2(A177704(#))]`
-/

namespace A001842.P12011309396438744338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (A177704 d : ℝ)

end

end A001842.P12011309396438744338

namespace A001842

/-- `∑{d}[n, log2(A177704(#))]` -/
def P12011309396438744338.Spec : Prop :=
  ∀ n, P12011309396438744338.a n = (A001842 n : ℝ)

end A001842

/-! ## A001842.P7139799935898262688

`∑{d}[n, A011765(#+1)]`
-/

namespace A001842.P7139799935898262688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011765 (d + 1)

end

end A001842.P7139799935898262688

namespace A001842

/-- `∑{d}[n, A011765(#+1)]` -/
def P7139799935898262688.Spec : Prop :=
  ∀ n, P7139799935898262688.a n = A001842 n

end A001842

/-! ## A001842.P7159875081872045936

`∑{d}[n, A121262(#+1)]`
-/

namespace A001842.P7159875081872045936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121262 (d + 1)

end

end A001842.P7159875081872045936

namespace A001842

/-- `∑{d}[n, A121262(#+1)]` -/
def P7159875081872045936.Spec : Prop :=
  ∀ n, P7159875081872045936.a n = A001842 n

end A001842

/-! ## A001842.P16398279703998662021

`∑{d}[n, A140201(#)-#]`
-/

namespace A001842.P16398279703998662021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A140201 d - (d : ℤ))

end

end A001842.P16398279703998662021

namespace A001842

/-- `∑{d}[n, A140201(#)-#]` -/
def P16398279703998662021.Spec : Prop :=
  ∀ n, P16398279703998662021.a n = A001842 n

end A001842

/-! ## A001842.P14022568273567829283

`A293513(A004277(n))`
-/

namespace A001842.P14022568273567829283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A004277 n).toNat

end

end A001842.P14022568273567829283

namespace A001842

/-- `A293513(A004277(n))` -/
def P14022568273567829283.Spec : Prop :=
  ∀ n, P14022568273567829283.a n = A001842 n

end A001842

/-! ## A001842.P8215980170333996768

`A293513(A004275(n+1))`
-/

namespace A001842.P8215980170333996768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A004275 (n + 1)).toNat

end

end A001842.P8215980170333996768

namespace A001842

/-- `A293513(A004275(n+1))` -/
def P8215980170333996768.Spec : Prop :=
  ∀ n, P8215980170333996768.a n = A001842 n

end A001842

/-! ## A001842.P1817998506242576837

`A293513(A092535(n+1))`
-/

namespace A001842.P1817998506242576837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A092535 (n + 1)).toNat

end

end A001842.P1817998506242576837

namespace A001842

/-- `A293513(A092535(n+1))` -/
def P1817998506242576837.Spec : Prop :=
  ∀ n, P1817998506242576837.a n = A001842 n

end A001842

/-! ## A001842.P4305081732576776013

`A293513(A316571(n+1))`
-/

namespace A001842.P4305081732576776013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A316571 (n + 1)).toNat

end

end A001842.P4305081732576776013

namespace A001842

/-- `A293513(A316571(n+1))` -/
def P4305081732576776013.Spec : Prop :=
  ∀ n, P4305081732576776013.a n = A001842 n

end A001842

/-! ## A001842.P2980244711021431782

`A293513(A004278(n+2))`
-/

namespace A001842.P2980244711021431782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A004278 (n + 2)).toNat

end

end A001842.P2980244711021431782

namespace A001842

/-- `A293513(A004278(n+2))` -/
def P2980244711021431782.Spec : Prop :=
  ∀ n, P2980244711021431782.a n = A001842 n

end A001842

/-! ## A001842.P17152154951115416652

`A293513(A058992(n+2))`
-/

namespace A001842.P17152154951115416652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A058992 (n + 2)).toNat

end

end A001842.P17152154951115416652

namespace A001842

/-- `A293513(A058992(n+2))` -/
def P17152154951115416652.Spec : Prop :=
  ∀ n, P17152154951115416652.a n = A001842 n

end A001842

/-! ## A001842.P12473257404725747062

`A293513(A300576(n+2))`
-/

namespace A001842.P12473257404725747062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A300576 (n + 2)).toNat

end

end A001842.P12473257404725747062

namespace A001842

/-- `A293513(A300576(n+2))` -/
def P12473257404725747062.Spec : Prop :=
  ∀ n, P12473257404725747062.a n = A001842 n

end A001842

/-! ## A001842.P3961963506696130259

`A293513(A000007(n)+2*n)`
-/

namespace A001842.P3961963506696130259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A000007 n + (2 * n : ℤ)).toNat

end

end A001842.P3961963506696130259

namespace A001842

/-- `A293513(A000007(n)+2*n)` -/
def P3961963506696130259.Spec : Prop :=
  ∀ n, P3961963506696130259.a n = A001842 n

end A001842

/-! ## A001842.P703274593797266803

`A293513(A008574(n)-2*n)`
-/

namespace A001842.P703274593797266803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A008574 n - (2 * n : ℤ)).toNat

end

end A001842.P703274593797266803

namespace A001842

/-- `A293513(A008574(n)-2*n)` -/
def P703274593797266803.Spec : Prop :=
  ∀ n, P703274593797266803.a n = A001842 n

end A001842

/-! ## A001842.P5531388552087937308

`A293513(A008574(n)-n-n)`
-/

namespace A001842.P5531388552087937308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A008574 n - (n : ℤ) - (n : ℤ)).toNat

end

end A001842.P5531388552087937308

namespace A001842

/-- `A293513(A008574(n)-n-n)` -/
def P5531388552087937308.Spec : Prop :=
  ∀ n, P5531388552087937308.a n = A001842 n

end A001842

/-! ## A001842.P10750393010535951535

`A293513(2*A123108(2*n))`
-/

namespace A001842.P10750393010535951535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (2 * A123108 (2 * n)).toNat

end

end A001842.P10750393010535951535

namespace A001842

/-- `A293513(2*A123108(2*n))` -/
def P10750393010535951535.Spec : Prop :=
  ∀ n, P10750393010535951535.a n = A001842 n

end A001842

/-!
# A001844: Centered square numbers: a(n) = 2*n*(n+1)+1. Sums of two consecutive squares. Also, consider all Pythagorean triples (X, Y, Z=Y+1) ordered by increasing Z; then sequence gives Z values.

The programs for A001844, the canonical program `A001844.P5037395199076350534` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001844 has offset 0).

The definition of A001844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)+1` (program `A001844.P5037395199076350534`, by `A001844.P5037395199076350534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001844.P16518666695634751507

`n²+(n+1)²`
-/

namespace A001844.P16518666695634751507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1) ^ 2

end

end A001844.P16518666695634751507

namespace A001844

/-- `n²+(n+1)²` -/
def P16518666695634751507.Spec : Prop :=
  ∀ n, (P16518666695634751507.a n : ℤ) = A001844 n

theorem P16518666695634751507.correct : P16518666695634751507.Spec := by
  intro n
  simp only [A001844, Nat.add_sub_cancel, A001844.P16518666695634751507.a, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001844

/-! ## A001844.P5037395199076350534

`2*n*(n+1)+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001844

/-- `2*n*(n+1)+1` -/
def P5037395199076350534.Spec : Prop :=
  ∀ n, (P5037395199076350534.a n : ℤ) = A001844 n

theorem P5037395199076350534.correct : P5037395199076350534.Spec := by
  intro n
  simp only [A001844]

end A001844

/-! ## A001844.P18017641710151327985

`A069894(n)/2`
-/

namespace A001844.P18017641710151327985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069894 n : ℚ) / 2

end

end A001844.P18017641710151327985

namespace A001844

/-- `A069894(n)/2` -/
def P18017641710151327985.Spec : Prop :=
  ∀ n, P18017641710151327985.a n = (A001844 n : ℚ)

theorem P18017641710151327985.correct : P18017641710151327985.Spec := by
  intro n
  simp only [A001844, Nat.add_sub_cancel, A001844.P18017641710151327985.a, A001844.P5037395199076350534.a, A069894, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001844

/-! ## A001844.P3756601378241413939

`(A016754(n)+1)/2`
-/

namespace A001844.P3756601378241413939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n + 1 : ℚ) / 2

end

end A001844.P3756601378241413939

namespace A001844

/-- `(A016754(n)+1)/2` -/
def P3756601378241413939.Spec : Prop :=
  ∀ n, P3756601378241413939.a n = (A001844 n : ℚ)

theorem P3756601378241413939.correct : P3756601378241413939.Spec := by
  intro n
  simp only [A001844, Nat.add_sub_cancel, A001844.P3756601378241413939.a, A001844.P5037395199076350534.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001844

/-! ## A001844.P15128075079871444040

`(2*A003215(n)+1)/3`
-/

namespace A001844.P15128075079871444040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A003215 n + 1 : ℚ) / 3

end

end A001844.P15128075079871444040

namespace A001844

/-- `(2*A003215(n)+1)/3` -/
def P15128075079871444040.Spec : Prop :=
  ∀ n, P15128075079871444040.a n = (A001844 n : ℚ)

theorem P15128075079871444040.correct : P15128075079871444040.Spec := by
  intro n
  simp only [A001844, Nat.add_sub_cancel, A001844.P15128075079871444040.a, A001844.P5037395199076350534.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001844

/-! ## A001844.P14024793030941887643

`A031878(2*(n+1))`
-/

namespace A001844.P14024793030941887643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (2 * (n + 1))

end

end A001844.P14024793030941887643

namespace A001844

/-- `A031878(2*(n+1))` -/
def P14024793030941887643.Spec : Prop :=
  ∀ n, P14024793030941887643.a n = A001844 n

end A001844

/-! ## A001844.P8064782010787235557

`A251599(3*n+1)`
-/

namespace A001844.P8064782010787235557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251599 (3 * n + 1)

end

end A001844.P8064782010787235557

namespace A001844

/-- `A251599(3*n+1)` -/
def P8064782010787235557.Spec : Prop :=
  ∀ n, P8064782010787235557.a n = A001844 n

end A001844

/-! ## A001844.P12944776197414618878

`or(1, ∑[4*n])`
-/

namespace A001844.P12944776197414618878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001844.P12944776197414618878

namespace A001844

/-- `or(1, ∑[4*n])` -/
def P12944776197414618878.Spec : Prop :=
  ∀ n, (P12944776197414618878.a n : ℤ) = A001844 n

end A001844

/-! ## A001844.P7254778095837378383

`xor(1, ∑[4*n])`
-/

namespace A001844.P7254778095837378383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001844.P7254778095837378383

namespace A001844

/-- `xor(1, ∑[4*n])` -/
def P7254778095837378383.Spec : Prop :=
  ∀ n, (P7254778095837378383.a n : ℤ) = A001844 n

end A001844

/-! ## A001844.P12660281238183977522

`ceil(cot(Δ[atan(2*n)]))`
-/

namespace A001844.P12660281238183977522
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (f1 (n + 1) - f1 n)⌉

end

end A001844.P12660281238183977522

namespace A001844

/-- `ceil(cot(Δ[atan(2*n)]))` -/
def P12660281238183977522.Spec : Prop :=
  ∀ n, P12660281238183977522.a n = A001844 n

end A001844

/-! ## A001844.P3395150227914101419

`∑[floor(4/sinh(acot(n)))]`
-/

namespace A001844.P3395150227914101419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001844.P3395150227914101419

namespace A001844

/-- `∑[floor(4/sinh(acot(n)))]` -/
def P3395150227914101419.Spec : Prop :=
  ∀ n, P3395150227914101419.a n = A001844 n

end A001844

/-! ## A001844.P16894016146800946792

`round(cosh(log(Δ[n²]²)))`
-/

namespace A001844.P16894016146800946792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℝ)))

end

end A001844.P16894016146800946792

namespace A001844

/-- `round(cosh(log(Δ[n²]²)))` -/
def P16894016146800946792.Spec : Prop :=
  ∀ n, P16894016146800946792.a n = A001844 n

end A001844

/-! ## A001844.P9818558754031762794

`xor(3, Δ[n²]²)/2`
-/

namespace A001844.P9818558754031762794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℚ) / 2

end

end A001844.P9818558754031762794

namespace A001844

/-- `xor(3, Δ[n²]²)/2` -/
def P9818558754031762794.Spec : Prop :=
  ∀ n, P9818558754031762794.a n = (A001844 n : ℚ)

end A001844

/-! ## A001844.P292495588448162266

`ceil(1/Δ[atan(2*n)])`
-/

namespace A001844.P292495588448162266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉

end

end A001844.P292495588448162266

namespace A001844

/-- `ceil(1/Δ[atan(2*n)])` -/
def P292495588448162266.Spec : Prop :=
  ∀ n, P292495588448162266.a n = A001844 n

end A001844

/-! ## A001844.P6068818977589050435

`round(1/Δ[atan(2*n)])`
-/

namespace A001844.P6068818977589050435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (f1 (n + 1) - f1 n))

end

end A001844.P6068818977589050435

namespace A001844

/-- `round(1/Δ[atan(2*n)])` -/
def P6068818977589050435.Spec : Prop :=
  ∀ n, P6068818977589050435.a n = A001844 n

end A001844

/-! ## A001844.P8140561935520555517

`∑[floor(2/acot(2*n))]`
-/

namespace A001844.P8140561935520555517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (2 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001844.P8140561935520555517

namespace A001844

/-- `∑[floor(2/acot(2*n))]` -/
def P8140561935520555517.Spec : Prop :=
  ∀ n, P8140561935520555517.a n = A001844 n

end A001844

/-! ## A001844.P13493668872020293939

`∑[round(2/acot(2*n))]`
-/

namespace A001844.P13493668872020293939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001844.P13493668872020293939

namespace A001844

/-- `∑[round(2/acot(2*n))]` -/
def P13493668872020293939.Spec : Prop :=
  ∀ n, P13493668872020293939.a n = A001844 n

end A001844

/-! ## A001844.P10312765024688420996

`∑[floor(3/acot(n)+n)]`
-/

namespace A001844.P10312765024688420996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001844.P10312765024688420996

namespace A001844

/-- `∑[floor(3/acot(n)+n)]` -/
def P10312765024688420996.Spec : Prop :=
  ∀ n, P10312765024688420996.a n = A001844 n

end A001844

/-! ## A001844.P11791970600420838456

`ceil(cosh(log(comp[2*n]²)))`
-/

namespace A001844.P11791970600420838456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℝ))⌉

end

end A001844.P11791970600420838456

namespace A001844

/-- `ceil(cosh(log(comp[2*n]²)))` -/
def P11791970600420838456.Spec : Prop :=
  ∀ n, P11791970600420838456.a n = A001844 n

end A001844

/-! ## A001844.P15806304695022770468

`abs(floor(cot(Δ[acot(2*n)])))`
-/

namespace A001844.P15806304695022770468
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cot (f1 (n + 1) - f1 n)⌋|

end

end A001844.P15806304695022770468

namespace A001844

/-- `abs(floor(cot(Δ[acot(2*n)])))` -/
def P15806304695022770468.Spec : Prop :=
  ∀ n, P15806304695022770468.a n = A001844 n

end A001844

/-!
# A001845: Centered octahedral numbers (crystal ball sequence for cubic lattice).

The programs for A001845, the canonical program `A001845.P9018449198624787926` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001845 has offset 0).

The definition of A001845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001845.P9018449198624787926

`a(n-1)+4*n²+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001845

/-- `a(n-1)+4*n²+2` -/
def P9018449198624787926.Spec : Prop :=
  ∀ n, (P9018449198624787926.a n : ℤ) = A001845 n

theorem P9018449198624787926.correct : P9018449198624787926.Spec := by
  intro n
  simp only [A001845]

end A001845

/-! ## A001845.P6859908088030106937

`(2*n+1)*(2*n²+2*n+3)/3`
-/

namespace A001845.P6859908088030106937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (2 * n ^ 2 + 2 * n + 3) : ℚ) / 3

end

end A001845.P6859908088030106937

namespace A001845

/-- `(2*n+1)*(2*n²+2*n+3)/3` -/
def P6859908088030106937.Spec : Prop :=
  ∀ n, P6859908088030106937.a n = (A001845 n : ℚ)

theorem P6859908088030106937.correct : P6859908088030106937.Spec := by
  intro n
  induction n with
  | zero => simp [A001845, A001845.P6859908088030106937.a, A001845.P9018449198624787926.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001845, Nat.add_sub_cancel, A001845.P6859908088030106937.a, A001845.P9018449198624787926.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001845

/-! ## A001845.P5092412006227900742

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=25, a(3)=63`
-/

namespace A001845.P5092412006227900742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 25, 63] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A001845.P5092412006227900742

namespace A001845

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5092412006227900742.Spec : Prop :=
  ∀ n, P5092412006227900742.a n = A001845 n

end A001845

/-! ## A001845.P453805607481988587

`A005900(n)+A005900(n+1)`
-/

namespace A001845.P453805607481988587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + A005900 (n + 1)

end

end A001845.P453805607481988587

namespace A001845

/-- `A005900(n)+A005900(n+1)` -/
def P453805607481988587.Spec : Prop :=
  ∀ n, P453805607481988587.a n = A001845 n

end A001845

/-! ## A001845.P41366095814310780

`∑[floor((2/acot(n))²)]`
-/

namespace A001845.P41366095814310780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001845.P41366095814310780

namespace A001845

/-- `∑[floor((2/acot(n))²)]` -/
def P41366095814310780.Spec : Prop :=
  ∀ n, P41366095814310780.a n = A001845 n

end A001845

/-! ## A001845.P14984834456510223250

`∑[or(2, (2*n)²)]-1`
-/

namespace A001845.P14984834456510223250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001845.P14984834456510223250

namespace A001845

/-- `∑[or(2, (2*n)²)]-1` -/
def P14984834456510223250.Spec : Prop :=
  ∀ n, P14984834456510223250.a n = A001845 n

end A001845

/-! ## A001845.P11331984880370665052

`∑[xor(2, (2*n)²)]-1`
-/

namespace A001845.P11331984880370665052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001845.P11331984880370665052

namespace A001845

/-- `∑[xor(2, (2*n)²)]-1` -/
def P11331984880370665052.Spec : Prop :=
  ∀ n, P11331984880370665052.a n = A001845 n

end A001845

/-! ## A001845.P10275167645845024067

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=5, a(2)=12`
-/

namespace A001845.P10275167645845024067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001845.P10275167645845024067

namespace A001845

/-- `∑[∑[a(n-1)+8]]` -/
def P10275167645845024067.Spec : Prop :=
  ∀ n, (P10275167645845024067.a n : ℤ) = A001845 n

end A001845

/-! ## A001845.P11511110258384790509

`∑[lcm(2, (2*n)²+2)]-1`
-/

namespace A001845.P11511110258384790509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001845.P11511110258384790509

namespace A001845

/-- `∑[lcm(2, (2*n)²+2)]-1` -/
def P11511110258384790509.Spec : Prop :=
  ∀ n, P11511110258384790509.a n = A001845 n

end A001845

/-! ## A001845.P17030042623907510541

`or(1, ∑[(2*n)²]+2*n)`
-/

namespace A001845.P17030042623907510541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A001845.P17030042623907510541

namespace A001845

/-- `or(1, ∑[(2*n)²]+2*n)` -/
def P17030042623907510541.Spec : Prop :=
  ∀ n, (P17030042623907510541.a n : ℤ) = A001845 n

end A001845

/-! ## A001845.P4057978139370891488

`xor(1, ∑[(2*n)²]+2*n)`
-/

namespace A001845.P4057978139370891488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A001845.P4057978139370891488

namespace A001845

/-- `xor(1, ∑[(2*n)²]+2*n)` -/
def P4057978139370891488.Spec : Prop :=
  ∀ n, (P4057978139370891488.a n : ℤ) = A001845 n

end A001845

/-! ## A001845.P12785723169320972274

`∑[lcm(n, (2*n)²)+1]+n`
-/

namespace A001845.P12785723169320972274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((2 * n) ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A001845.P12785723169320972274

namespace A001845

/-- `∑[lcm(n, (2*n)²)+1]+n` -/
def P12785723169320972274.Spec : Prop :=
  ∀ n, (P12785723169320972274.a n : ℤ) = A001845 n

end A001845

/-! ## A001845.P5179262186816384938

`∑[record[or(1, n)²-n]]-n²`
-/

namespace A001845.P5179262186816384938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A001845.P5179262186816384938

namespace A001845

/-- `∑[record[or(1, n)²-n]]-n²` -/
def P5179262186816384938.Spec : Prop :=
  ∀ n, P5179262186816384938.a n = A001845 n

end A001845

/-! ## A001845.P3132319401008772301

`C(2*(n+1), 3)+2*n+1`
-/

namespace A001845.P3132319401008772301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 3 + (2 * n + 1)

end

end A001845.P3132319401008772301

namespace A001845

/-- `C(2*(n+1), 3)+2*n+1` -/
def P3132319401008772301.Spec : Prop :=
  ∀ n, (P3132319401008772301.a n : ℤ) = A001845 n

end A001845

/-! ## A001845.P1747256008569698717

`a(n-1)+4*n*n+2` with `a(0)=1`
-/

namespace A001845.P1747256008569698717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (4 * (n * n) + 2)

end

end A001845.P1747256008569698717

namespace A001845

/-- `a(n-1)+4*n*n+2` -/
def P1747256008569698717.Spec : Prop :=
  ∀ n, (P1747256008569698717.a n : ℤ) = A001845 n

theorem P1747256008569698717.correct : P1747256008569698717.Spec := by
  intro n
  simp only [A001845, Nat.add_sub_cancel, A001845.P1747256008569698717.a, A001845.P9018449198624787926.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001845

/-! ## A001845.P8620832968962773717

`∑[gcd(2, 2*n)+(2*n)²]-1`
-/

namespace A001845.P8620832968962773717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001845.P8620832968962773717

namespace A001845

/-- `∑[gcd(2, 2*n)+(2*n)²]-1` -/
def P8620832968962773717.Spec : Prop :=
  ∀ n, P8620832968962773717.a n = A001845 n

end A001845

/-! ## A001845.P10119961318165581891

`∑[2-(C(n, 2*n)-(2*n)²)]`
-/

namespace A001845.P10119961318165581891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (2 * n) : ℤ) - ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001845.P10119961318165581891

namespace A001845

/-- `∑[2-(C(n, 2*n)-(2*n)²)]` -/
def P10119961318165581891.Spec : Prop :=
  ∀ n, P10119961318165581891.a n = A001845 n

end A001845

/-! ## A001845.P16906562596558858008

`∑[and(2*n, -2)²]+2*n+1`
-/

namespace A001845.P16906562596558858008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A001845.P16906562596558858008

namespace A001845

/-- `∑[and(2*n, -2)²]+2*n+1` -/
def P16906562596558858008.Spec : Prop :=
  ∀ n, P16906562596558858008.a n = A001845 n

end A001845

/-! ## A001845.P11515493160978930827

`∑[∩[(2*n)², n²]]+2*n+1`
-/

namespace A001845.P11515493160978930827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)

end

end A001845.P11515493160978930827

namespace A001845

/-- `∑[∩[(2*n)², n²]]+2*n+1` -/
def P11515493160978930827.Spec : Prop :=
  ∀ n, (P11515493160978930827.a n : ℤ) = A001845 n

end A001845

/-! ## A001845.P13785151823272728674

`∑[and(2*n+1, 2*n)²+2]-1`
-/

namespace A001845.P13785151823272728674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001845.P13785151823272728674

namespace A001845

/-- `∑[and(2*n+1, 2*n)²+2]-1` -/
def P13785151823272728674.Spec : Prop :=
  ∀ n, P13785151823272728674.a n = A001845 n

end A001845

/-!
# A001846: Centered 4-dimensional orthoplex numbers (crystal ball sequence for 4-dimensional cubic lattice).

The programs for A001846, the canonical program `A001846.P5049360766101268671` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001846 has offset 0).

The definition of A001846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001846.P5049360766101268671

`(((2*n+4)*n+10)*n+8)*n/3+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001846

/-- `(((2*n+4)*n+10)*n+8)*n/3+1` -/
def P5049360766101268671.Spec : Prop :=
  ∀ n, P5049360766101268671.a n = (A001846 n : ℚ)

end A001846

/-! ## A001846.P17187845748564243071

`∑[A008412(n)]`
-/

namespace A001846.P17187845748564243071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001846.P17187845748564243071

namespace A001846

/-- `∑[A008412(n)]` -/
def P17187845748564243071.Spec : Prop :=
  ∀ n, P17187845748564243071.a n = A001846 n

end A001846

/-! ## A001846.P14432256689327165704

`Δ[A069038(n)]`
-/

namespace A001846.P14432256689327165704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001846.P14432256689327165704

namespace A001846

/-- `Δ[A069038(n)]` -/
def P14432256689327165704.Spec : Prop :=
  ∀ n, P14432256689327165704.a n = A001846 n

end A001846

/-! ## A001846.P1189163554161391065

`Δ[A035599(n)/2]`
-/

namespace A001846.P1189163554161391065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035599 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001846.P1189163554161391065

namespace A001846

/-- `Δ[A035599(n)/2]` -/
def P1189163554161391065.Spec : Prop :=
  ∀ n, P1189163554161391065.a n = (A001846 n : ℚ)

end A001846

/-! ## A001846.P168879866388668658

`∑[A287324(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A001846.P168879866388668658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A287324 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001846.P168879866388668658

namespace A001846

/-- `∑[A287324(n+1)-a(n-1)]` -/
def P168879866388668658.Spec : Prop :=
  ∀ n, P168879866388668658.a n = A001846 n

end A001846

/-! ## A001846.P4425076314147080526

`A184883(∑[n+3])`
-/

namespace A001846.P4425076314147080526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001846.P4425076314147080526

namespace A001846

/-- `A184883(∑[n+3])` -/
def P4425076314147080526.Spec : Prop :=
  ∀ n, P4425076314147080526.a n = A001846 n

end A001846

/-!
# A001847: Crystal ball sequence for 5-dimensional cubic lattice.

The programs for A001847, the canonical program `A001847.P15825488994024725866` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001847 has offset 0).

The definition of A001847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001847.P15825488994024725866

`((((4*n+10)*n+40)*n+50)*n+46)*n/15+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001847

/-- `((((4*n+10)*n+40)*n+50)*n+46)*n/15+1` -/
def P15825488994024725866.Spec : Prop :=
  ∀ n, P15825488994024725866.a n = (A001847 n : ℚ)

end A001847

/-! ## A001847.P1180180267159092692

`∑[A008413(n)]`
-/

namespace A001847.P1180180267159092692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001847.P1180180267159092692

namespace A001847

/-- `∑[A008413(n)]` -/
def P1180180267159092692.Spec : Prop :=
  ∀ n, P1180180267159092692.a n = A001847 n

end A001847

/-! ## A001847.P1546915659457793295

`Δ[A069039(n)]`
-/

namespace A001847.P1546915659457793295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001847.P1546915659457793295

namespace A001847

/-- `Δ[A069039(n)]` -/
def P1546915659457793295.Spec : Prop :=
  ∀ n, P1546915659457793295.a n = A001847 n

end A001847

/-! ## A001847.P7640091683558061982

`∑[∑[∑[A115293(n)]]]`
-/

namespace A001847.P7640091683558061982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001847.P7640091683558061982

namespace A001847

/-- `∑[∑[∑[A115293(n)]]]` -/
def P7640091683558061982.Spec : Prop :=
  ∀ n, P7640091683558061982.a n = A001847 n

end A001847

/-! ## A001847.P2650286093578917338

`(A008414(n)+A008413(n))/2`
-/

namespace A001847.P2650286093578917338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n + A008413 n : ℚ) / 2

end

end A001847.P2650286093578917338

namespace A001847

/-- `(A008414(n)+A008413(n))/2` -/
def P2650286093578917338.Spec : Prop :=
  ∀ n, P2650286093578917338.a n = (A001847 n : ℚ)

end A001847

/-! ## A001847.P15389790618489988855

`Δ[A035600(n)/2]`
-/

namespace A001847.P15389790618489988855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035600 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001847.P15389790618489988855

namespace A001847

/-- `Δ[A035600(n)/2]` -/
def P15389790618489988855.Spec : Prop :=
  ∀ n, P15389790618489988855.a n = (A001847 n : ℚ)

end A001847

/-! ## A001847.P4486625412783173233

`∑[∑[A287324(n+1)]]`
-/

namespace A001847.P4486625412783173233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001847.P4486625412783173233

namespace A001847

/-- `∑[∑[A287324(n+1)]]` -/
def P4486625412783173233.Spec : Prop :=
  ∀ n, P4486625412783173233.a n = A001847 n

end A001847

/-! ## A001847.P13939935357861580431

`A216182(∑[n+2]+3)`
-/

namespace A001847.P13939935357861580431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001847.P13939935357861580431

namespace A001847

/-- `A216182(∑[n+2]+3)` -/
def P13939935357861580431.Spec : Prop :=
  ∀ n, P13939935357861580431.a n = A001847 n

end A001847

/-! ## A001847.P12481776324631298735

`A008288(A052905(n+3)-1)`
-/

namespace A001847.P12481776324631298735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A052905 (n + 3) - 1).toNat

end

end A001847.P12481776324631298735

namespace A001847

/-- `A008288(A052905(n+3)-1)` -/
def P12481776324631298735.Spec : Prop :=
  ∀ n, P12481776324631298735.a n = A001847 n

end A001847

/-!
# A001848: Crystal ball sequence for 6-dimensional cubic lattice.

The programs for A001848, the canonical program `A001848.P10444171994025901737` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001848 has offset 0).

The definition of A001848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001848.P6038820091031038948

`∑[A008414(n)]`
-/

namespace A001848.P6038820091031038948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001848.P6038820091031038948

namespace A001848

/-- `∑[A008414(n)]` -/
def P6038820091031038948.Spec : Prop :=
  ∀ n, P6038820091031038948.a n = A001848 n

end A001848

/-! ## A001848.P10444171994025901737

`Δ[A099193(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001848

/-- `Δ[A099193(n)]` -/
def P10444171994025901737.Spec : Prop :=
  ∀ n, P10444171994025901737.a n = A001848 n

theorem P10444171994025901737.correct : P10444171994025901737.Spec := by
  intro n
  simp only [A001848]

end A001848

/-! ## A001848.P6085770725423404506

`A008415(n)-a(n-1)` with `a(0)=1`
-/

namespace A001848.P6085770725423404506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008415 n - a (n - 1)

end

end A001848.P6085770725423404506

namespace A001848

/-- `A008415(n)-a(n-1)` -/
def P6085770725423404506.Spec : Prop :=
  ∀ n, P6085770725423404506.a n = A001848 n

end A001848

/-! ## A001848.P9297744262344396807

`A035600(n)+A001847(n)`
-/

namespace A001848.P9297744262344396807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035600 n + A001847 n

end

end A001848.P9297744262344396807

namespace A001848

/-- `A035600(n)+A001847(n)` -/
def P9297744262344396807.Spec : Prop :=
  ∀ n, P9297744262344396807.a n = A001848 n

end A001848

/-! ## A001848.P4078259067079612525

`A001849(n)-A035601(n)`
-/

namespace A001848.P4078259067079612525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n - A035601 n

end

end A001848.P4078259067079612525

namespace A001848

/-- `A001849(n)-A035601(n)` -/
def P4078259067079612525.Spec : Prop :=
  ∀ n, P4078259067079612525.a n = A001848 n

end A001848

/-! ## A001848.P17805510445623518695

`A069039(n+1)+A069039(n)`
-/

namespace A001848.P17805510445623518695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (n + 1) + A069039 n

end

end A001848.P17805510445623518695

namespace A001848

/-- `A069039(n+1)+A069039(n)` -/
def P17805510445623518695.Spec : Prop :=
  ∀ n, P17805510445623518695.a n = A001848 n

end A001848

/-! ## A001848.P8475001162267099986

`A099193(n+1)-A099193(n)`
-/

namespace A001848.P8475001162267099986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (n + 1) - A099193 n

end

end A001848.P8475001162267099986

namespace A001848

/-- `A099193(n+1)-A099193(n)` -/
def P8475001162267099986.Spec : Prop :=
  ∀ n, P8475001162267099986.a n = A001848 n

theorem P8475001162267099986.correct : P8475001162267099986.Spec := by
  intro n
  simp only [A001848, Nat.add_sub_cancel, A001848.P8475001162267099986.a, A001848.P10444171994025901737.f1, A001848.P10444171994025901737.a, SequenceMachineLib.memo_apply]

end A001848

/-! ## A001848.P9871932545380703942

`(A008415(n)+A008414(n))/2`
-/

namespace A001848.P9871932545380703942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008415 n + A008414 n : ℚ) / 2

end

end A001848.P9871932545380703942

namespace A001848

/-- `(A008415(n)+A008414(n))/2` -/
def P9871932545380703942.Spec : Prop :=
  ∀ n, P9871932545380703942.a n = (A001848 n : ℚ)

end A001848

/-! ## A001848.P14185811216552837917

`A001849(n)-2*A099193(n)`
-/

namespace A001848.P14185811216552837917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n - 2 * A099193 n

end

end A001848.P14185811216552837917

namespace A001848

/-- `A001849(n)-2*A099193(n)` -/
def P14185811216552837917.Spec : Prop :=
  ∀ n, P14185811216552837917.a n = A001848 n

end A001848

/-! ## A001848.P15259990951197964081

`∑[A008412(n)+4*A069038(n)]`
-/

namespace A001848.P15259990951197964081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + 4 * A069038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001848.P15259990951197964081

namespace A001848

/-- `∑[A008412(n)+4*A069038(n)]` -/
def P15259990951197964081.Spec : Prop :=
  ∀ n, P15259990951197964081.a n = A001848 n

end A001848

/-! ## A001848.P2730395835880964702

`A099195(n+1)-(A099195(n)+A035601(n))`
-/

namespace A001848.P2730395835880964702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (n + 1) - (A099195 n + A035601 n)

end

end A001848.P2730395835880964702

namespace A001848

/-- `A099195(n+1)-(A099195(n)+A035601(n))` -/
def P2730395835880964702.Spec : Prop :=
  ∀ n, P2730395835880964702.a n = A001848 n

end A001848

/-! ## A001848.P7313409903977249315

`A114123(A167614(n+2))`
-/

namespace A001848.P7313409903977249315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A167614 (n + 2)).toNat

end

end A001848.P7313409903977249315

namespace A001848

/-- `A114123(A167614(n+2))` -/
def P7313409903977249315.Spec : Prop :=
  ∀ n, P7313409903977249315.a n = A001848 n

end A001848

/-! ## A001848.P12438424020391942565

`A114123(eq[3, A002262(n)])`
-/

namespace A001848.P12438424020391942565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001848.P12438424020391942565

namespace A001848

/-- `A114123(eq[3, A002262(n)])` -/
def P12438424020391942565.Spec : Prop :=
  ∀ n, P12438424020391942565.a n = A001848 n

end A001848

/-! ## A001848.P2305485259389755476

`A114123(eq[2, A002260(n+1)-2])`
-/

namespace A001848.P2305485259389755476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001848.P2305485259389755476

namespace A001848

/-- `A114123(eq[2, A002260(n+1)-2])` -/
def P2305485259389755476.Spec : Prop :=
  ∀ n, P2305485259389755476.a n = A001848 n

end A001848

/-! ## A001848.P1734839866907370418

`A114123(eq[2, A002260(n+1)/2])`
-/

namespace A001848.P1734839866907370418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A001848.P1734839866907370418

namespace A001848

/-- `A114123(eq[2, A002260(n+1)/2])` -/
def P1734839866907370418.Spec : Prop :=
  ∀ n, P1734839866907370418.a n = A001848 n

end A001848

/-! ## A001848.P10747139019891376072

`A184883(∑[n+3]+n+3)`
-/

namespace A001848.P10747139019891376072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001848.P10747139019891376072

namespace A001848

/-- `A184883(∑[n+3]+n+3)` -/
def P10747139019891376072.Spec : Prop :=
  ∀ n, P10747139019891376072.a n = A001848 n

end A001848

/-!
# A001849: Crystal ball sequence for 7-dimensional cubic lattice.

The programs for A001849, the canonical program `A001849.P12742369539019337686` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001849 has offset 0).

The definition of A001849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001849.P3240374400920469478

`∑[A008415(n)]`
-/

namespace A001849.P3240374400920469478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001849.P3240374400920469478

namespace A001849

/-- `∑[A008415(n)]` -/
def P3240374400920469478.Spec : Prop :=
  ∀ n, P3240374400920469478.a n = A001849 n

end A001849

/-! ## A001849.P12742369539019337686

`Δ[A099195(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001849

/-- `Δ[A099195(n)]` -/
def P12742369539019337686.Spec : Prop :=
  ∀ n, P12742369539019337686.a n = A001849 n

theorem P12742369539019337686.correct : P12742369539019337686.Spec := by
  intro n
  simp only [A001849]

end A001849

/-! ## A001849.P14469538433394050419

`A008416(n)-a(n-1)` with `a(0)=1`
-/

namespace A001849.P14469538433394050419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008416 n - a (n - 1)

end

end A001849.P14469538433394050419

namespace A001849

/-- `A008416(n)-a(n-1)` -/
def P14469538433394050419.Spec : Prop :=
  ∀ n, P14469538433394050419.a n = A001849 n

end A001849

/-! ## A001849.P8329069348912173552

`A035601(n)+A001848(n)`
-/

namespace A001849.P8329069348912173552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035601 n + A001848 n

end

end A001849.P8329069348912173552

namespace A001849

/-- `A035601(n)+A001848(n)` -/
def P8329069348912173552.Spec : Prop :=
  ∀ n, P8329069348912173552.a n = A001849 n

end A001849

/-! ## A001849.P1680746627991691393

`A008417(n)-A035602(n)`
-/

namespace A001849.P1680746627991691393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n - A035602 n

end

end A001849.P1680746627991691393

namespace A001849

/-- `A008417(n)-A035602(n)` -/
def P1680746627991691393.Spec : Prop :=
  ∀ n, P1680746627991691393.a n = A001849 n

end A001849

/-! ## A001849.P11747059287725920808

`A099193(n)+∑[A001848(n)]`
-/

namespace A001849.P11747059287725920808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001849.P11747059287725920808

namespace A001849

/-- `A099193(n)+∑[A001848(n)]` -/
def P11747059287725920808.Spec : Prop :=
  ∀ n, P11747059287725920808.a n = A001849 n

end A001849

/-! ## A001849.P9829066496798894680

`A099193(n+1)+A099193(n)`
-/

namespace A001849.P9829066496798894680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (n + 1) + A099193 n

end

end A001849.P9829066496798894680

namespace A001849

/-- `A099193(n+1)+A099193(n)` -/
def P9829066496798894680.Spec : Prop :=
  ∀ n, P9829066496798894680.a n = A001849 n

end A001849

/-! ## A001849.P15216543715684766756

`A099195(n+1)-A099195(n)`
-/

namespace A001849.P15216543715684766756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (n + 1) - A099195 n

end

end A001849.P15216543715684766756

namespace A001849

/-- `A099195(n+1)-A099195(n)` -/
def P15216543715684766756.Spec : Prop :=
  ∀ n, P15216543715684766756.a n = A001849 n

theorem P15216543715684766756.correct : P15216543715684766756.Spec := by
  intro n
  simp only [A001849, Nat.add_sub_cancel, A001849.P15216543715684766756.a, A001849.P12742369539019337686.f1, A001849.P12742369539019337686.a, SequenceMachineLib.memo_apply]

end A001849

/-! ## A001849.P11131977209126725019

`A008417(n)-2*A099195(n)`
-/

namespace A001849.P11131977209126725019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n - 2 * A099195 n

end

end A001849.P11131977209126725019

namespace A001849

/-- `A008417(n)-2*A099195(n)` -/
def P11131977209126725019.Spec : Prop :=
  ∀ n, P11131977209126725019.a n = A001849 n

end A001849

/-! ## A001849.P84984787207671511

`∑[∑[2*A008414(n)]-A008414(n)]`
-/

namespace A001849.P84984787207671511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001849.P84984787207671511

namespace A001849

/-- `∑[∑[2*A008414(n)]-A008414(n)]` -/
def P84984787207671511.Spec : Prop :=
  ∀ n, P84984787207671511.a n = A001849 n

end A001849

/-! ## A001849.P8172452909253790283

`A069039(n+1)+A069039(n)+A035601(n)`
-/

namespace A001849.P8172452909253790283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (n + 1) + (A069039 n + A035601 n)

end

end A001849.P8172452909253790283

namespace A001849

/-- `A069039(n+1)+A069039(n)+A035601(n)` -/
def P8172452909253790283.Spec : Prop :=
  ∀ n, P8172452909253790283.a n = A001849 n

end A001849

/-! ## A001849.P6783742929132171834

`A099196(n+1)-(A099196(n)+A035602(n))`
-/

namespace A001849.P6783742929132171834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) - (A099196 n + A035602 n)

end

end A001849.P6783742929132171834

namespace A001849

/-- `A099196(n+1)-(A099196(n)+A035602(n))` -/
def P6783742929132171834.Spec : Prop :=
  ∀ n, P6783742929132171834.a n = A001849 n

end A001849

/-! ## A001849.P14404894039883742293

`A216182(A167614(n+2))`
-/

namespace A001849.P14404894039883742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 (A167614 (n + 2)).toNat

end

end A001849.P14404894039883742293

namespace A001849

/-- `A216182(A167614(n+2))` -/
def P14404894039883742293.Spec : Prop :=
  ∀ n, P14404894039883742293.a n = A001849 n

end A001849

/-! ## A001849.P12053113707274032677

`A216182(A000124(n+3)+2)`
-/

namespace A001849.P12053113707274032677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 (A000124 (n + 3) + 2).toNat

end

end A001849.P12053113707274032677

namespace A001849

/-- `A216182(A000124(n+3)+2)` -/
def P12053113707274032677.Spec : Prop :=
  ∀ n, P12053113707274032677.a n = A001849 n

end A001849

/-!
# A001850: Central Delannoy numbers: a(n) = Sum_{k=0..n} C(n,k)*C(n+k,k).

The programs for A001850, the canonical program `A001850.P8225243896153059034` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001850 has offset 0).

The definition of A001850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001850.P17286761705012503444

`a(n-1)+2*A002002(n)` with `a(0)=1`
-/

namespace A001850.P17286761705012503444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A002002 n

end

end A001850.P17286761705012503444

namespace A001850

/-- `a(n-1)+2*A002002(n)` -/
def P17286761705012503444.Spec : Prop :=
  ∀ n, P17286761705012503444.a n = A001850 n

end A001850

/-! ## A001850.P8225243896153059034

`(3*(2*n-1)*a(n-1)-(n-1)*a(n-2))/n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001850

/-- `(3*(2*n-1)*a(n-1)-(n-1)*a(n-2))/n` -/
def P8225243896153059034.Spec : Prop :=
  ∀ n, P8225243896153059034.a n = (A001850 n : ℚ)

end A001850

/-! ## A001850.P11484787316092359340

`A008288(A046092(n))`
-/

namespace A001850.P11484787316092359340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A046092 n).toNat

end

end A001850.P11484787316092359340

namespace A001850

/-- `A008288(A046092(n))` -/
def P11484787316092359340.Spec : Prop :=
  ∀ n, P11484787316092359340.a n = A001850 n

end A001850

/-! ## A001850.P16370271473584793772

`∑[A110170(n)]`
-/

namespace A001850.P16370271473584793772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001850.P16370271473584793772

namespace A001850

/-- `∑[A110170(n)]` -/
def P16370271473584793772.Spec : Prop :=
  ∀ n, P16370271473584793772.a n = A001850 n

end A001850

/-! ## A001850.P635936543851133550

`A118384(∑[n])`
-/

namespace A001850.P635936543851133550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001850.P635936543851133550

namespace A001850

/-- `A118384(∑[n])` -/
def P635936543851133550.Spec : Prop :=
  ∀ n, P635936543851133550.a n = A001850 n

end A001850

/-! ## A001850.P10854000932483836928

`record[A118384(n)]`
-/

namespace A001850.P10854000932483836928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001850.P10854000932483836928

namespace A001850

/-- `record[A118384(n)]` -/
def P10854000932483836928.Spec : Prop :=
  ∀ n, P10854000932483836928.a n = A001850 n

end A001850

/-! ## A001850.P13827476740613632737

`A026003(2*n)`
-/

namespace A001850.P13827476740613632737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n)

end

end A001850.P13827476740613632737

namespace A001850

/-- `A026003(2*n)` -/
def P13827476740613632737.Spec : Prop :=
  ∀ n, P13827476740613632737.a n = A001850 n

end A001850

/-! ## A001850.P7727163489636795452

`∑[A110169(∑[n])]`
-/

namespace A001850.P7727163489636795452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110169 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001850.P7727163489636795452

namespace A001850

/-- `∑[A110169(∑[n])]` -/
def P7727163489636795452.Spec : Prop :=
  ∀ n, P7727163489636795452.a n = A001850 n

end A001850

/-! ## A001850.P8545747171103614552

`∑[A247630(2*n)]`
-/

namespace A001850.P8545747171103614552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001850.P8545747171103614552

namespace A001850

/-- `∑[A247630(2*n)]` -/
def P8545747171103614552.Spec : Prop :=
  ∀ n, P8545747171103614552.a n = A001850 n

end A001850

/-! ## A001850.P13129298014424796670

`2*A047665(n)+1`
-/

namespace A001850.P13129298014424796670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047665 n + 1

end

end A001850.P13129298014424796670

namespace A001850

/-- `2*A047665(n)+1` -/
def P13129298014424796670.Spec : Prop :=
  ∀ n, P13129298014424796670.a n = A001850 n

end A001850

/-! ## A001850.P7402442350947061785

`2*A226994(n)-1`
-/

namespace A001850.P7402442350947061785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226994 n - 1

end

end A001850.P7402442350947061785

namespace A001850

/-- `2*A226994(n)-1` -/
def P7402442350947061785.Spec : Prop :=
  ∀ n, P7402442350947061785.a n = A001850 n

end A001850

/-! ## A001850.P17221986841619315665

`∑[2*A002002(n)]+1`
-/

namespace A001850.P17221986841619315665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A001850.P17221986841619315665

namespace A001850

/-- `∑[2*A002002(n)]+1` -/
def P17221986841619315665.Spec : Prop :=
  ∀ n, P17221986841619315665.a n = A001850 n

end A001850

/-! ## A001850.P10204146761936757772

`A241023(n)-a(n-1)` with `a(0)=1`
-/

namespace A001850.P10204146761936757772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241023 n - a (n - 1)

end

end A001850.P10204146761936757772

namespace A001850

/-- `A241023(n)-a(n-1)` -/
def P10204146761936757772.Spec : Prop :=
  ∀ n, P10204146761936757772.a n = A001850 n

end A001850

/-! ## A001850.P5966697127613609452

`2*A123164(n)-a(n-1)` with `a(0)=1`
-/

namespace A001850.P5966697127613609452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A123164 n - a (n - 1)

end

end A001850.P5966697127613609452

namespace A001850

/-- `2*A123164(n)-a(n-1)` -/
def P5966697127613609452.Spec : Prop :=
  ∀ n, P5966697127613609452.a n = A001850 n

end A001850

/-! ## A001850.P7908946678293586084

`4*A047781(n)-a(n-1)` with `a(0)=1`
-/

namespace A001850.P7908946678293586084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A047781 n - a (n - 1)

end

end A001850.P7908946678293586084

namespace A001850

/-- `4*A047781(n)-a(n-1)` -/
def P7908946678293586084.Spec : Prop :=
  ∀ n, P7908946678293586084.a n = A001850 n

end A001850

/-! ## A001850.P2512284509919983582

`A123164(n)+A002002(n)`
-/

namespace A001850.P2512284509919983582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + A002002 n

end

end A001850.P2512284509919983582

namespace A001850

/-- `A123164(n)+A002002(n)` -/
def P2512284509919983582.Spec : Prop :=
  ∀ n, P2512284509919983582.a n = A001850 n

end A001850

/-! ## A001850.P13832806811807936826

`A176479(n)+A047781(n)`
-/

namespace A001850.P13832806811807936826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176479 n + A047781 n

end

end A001850.P13832806811807936826

namespace A001850

/-- `A176479(n)+A047781(n)` -/
def P13832806811807936826.Spec : Prop :=
  ∀ n, P13832806811807936826.a n = A001850 n

end A001850

/-! ## A001850.P5247700402599334032

`A226994(n)+A047665(n)`
-/

namespace A001850.P5247700402599334032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + A047665 n

end

end A001850.P5247700402599334032

namespace A001850

/-- `A226994(n)+A047665(n)` -/
def P5247700402599334032.Spec : Prop :=
  ∀ n, P5247700402599334032.a n = A001850 n

end A001850

/-! ## A001850.P13649923112472589276

`A027618(n)-A047665(n)`
-/

namespace A001850.P13649923112472589276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027618 n - A047665 n

end

end A001850.P13649923112472589276

namespace A001850

/-- `A027618(n)-A047665(n)` -/
def P13649923112472589276.Spec : Prop :=
  ∀ n, P13649923112472589276.a n = A001850 n

end A001850

/-! ## A001850.P8091875916000144868

`A226994(n)+∑[A002002(n)]`
-/

namespace A001850.P8091875916000144868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001850.P8091875916000144868

namespace A001850

/-- `A226994(n)+∑[A002002(n)]` -/
def P8091875916000144868.Spec : Prop :=
  ∀ n, P8091875916000144868.a n = A001850 n

end A001850

/-!
# A001851: Total diameter of unlabeled trees with n nodes.

The programs for A001851, there is no canonical definition to state claims against.
-/

/-! ## A001851.P13237917767369479619

`A000055(n+3)-A043542(A001930(n))`
-/

namespace A001851.P13237917767369479619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 3) - A043542 (A001930 n).toNat

end

end A001851.P13237917767369479619

/-! ## A001851.P979844549400808816

`A345167(A152046(n))+n`
-/

namespace A001851.P979844549400808816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A152046 n).toNat + (n : ℤ)

end

end A001851.P979844549400808816

/-! ## A001851.P5520478305122100169

`A069352(or(A007727(n), A186188(n+1)))`
-/

namespace A001851.P5520478305122100169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (Int.lor (A007727 n) (A186188 (n + 1))).toNat

end

end A001851.P5520478305122100169

/-!
# A001852: Total diameter of labeled trees with n nodes.

The programs for A001852, there is no canonical definition to state claims against.
-/

/-! ## A001852.P17969808881939388214

`lcm(3^C(a(n-1), 68)+n, ceil(4^n/3))` with `a(0)=0, a(1)=1`
-/

namespace A001852.P17969808881939388214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (3 ^ Nat.choose (a (n - 1)) 68 + n : ℤ) ⌈(4 ^ n : ℚ) / 3⌉

end

end A001852.P17969808881939388214

/-!
# A001853: Total height of trees with n nodes.

The programs for A001853, there is no canonical definition to state claims against.
-/

/-! ## A001853.P16356506600415187849

`A217898(n)-A025469(A001862(n))`
-/

namespace A001853.P16356506600415187849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217898 n - A025469 (A001862 n).toNat

end

end A001853.P16356506600415187849

/-! ## A001853.P11034339643311349507

`A217898(n)-A093492(A099487(n))`
-/

namespace A001853.P11034339643311349507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217898 n - A093492 (A099487 n).toNat

end

end A001853.P11034339643311349507

/-! ## A001853.P622697550437560001

`A217898(n)-A185294(A045680(n))`
-/

namespace A001853.P622697550437560001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217898 n - A185294 (A045680 n).toNat

end

end A001853.P622697550437560001

/-! ## A001853.P8467981390966125359

`A217898(n)-A337546(A119374(n))`
-/

namespace A001853.P8467981390966125359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217898 n - A337546 (A119374 n).toNat

end

end A001853.P8467981390966125359

/-!
# A001854: Total height of all rooted trees on n labeled nodes.

The programs for A001854, there is no canonical definition to state claims against.
-/

/-! ## A001854.P15658839431609087212

`(n+1)*A234953(n+1)`
-/

namespace A001854.P15658839431609087212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A234953 (n + 1)

end

end A001854.P15658839431609087212

/-! ## A001854.P2244551363439716950

`lcm(A000005(A000420(n)), A234953(n+1))`
-/

namespace A001854.P2244551363439716950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A000420 n).toNat) (A234953 (n + 1))

end

end A001854.P2244551363439716950

/-!
# A001855: Sorting numbers: maximal number of comparisons for sorting n elements by binary insertion.

The programs for A001855, the canonical program `A001855.P10537031409435003354` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001855 has offset 1).

The definition of A001855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001855.P15047472047101856202

`a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+n+1-1` with `a(0)=0`
-/

namespace A001855.P15047472047101856202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat + (n + 1 : ℤ) - 1

end

end A001855.P15047472047101856202

namespace A001855

/-- `a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+n+1-1` -/
def P15047472047101856202.Spec : Prop :=
  ∀ n, P15047472047101856202.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P10537031409435003354

`A123753(n)-(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001855

/-- `A123753(n)-(n+1)` -/
def P10537031409435003354.Spec : Prop :=
  ∀ n, P10537031409435003354.a n = A001855 (n + 1)

theorem P10537031409435003354.correct : P10537031409435003354.Spec := by
  intro n
  simp only [A001855, Nat.add_sub_cancel]

end A001855

/-! ## A001855.P6209130884460851827

`∑[ceil(log2(n+1))]`
-/

namespace A001855.P6209130884460851827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001855.P6209130884460851827

namespace A001855

/-- `∑[ceil(log2(n+1))]` -/
def P6209130884460851827.Spec : Prop :=
  ∀ n, P6209130884460851827.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P17278267642396619398

`abs(∑[floor(log2(acot(n)))])`
-/

namespace A001855.P17278267642396619398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A001855.P17278267642396619398

namespace A001855

/-- `abs(∑[floor(log2(acot(n)))])` -/
def P17278267642396619398.Spec : Prop :=
  ∀ n, P17278267642396619398.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P18382325909927307369

`-∑[floor(log2(acot(n)))]`
-/

namespace A001855.P18382325909927307369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001855.P18382325909927307369

namespace A001855

/-- `-∑[floor(log2(acot(n)))]` -/
def P18382325909927307369.Spec : Prop :=
  ∀ n, P18382325909927307369.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P6872119769585992581

`∑[ceil(abs(log2(acot(n))))]-1`
-/

namespace A001855.P6872119769585992581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (n : ℝ))|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001855.P6872119769585992581

namespace A001855

/-- `∑[ceil(abs(log2(acot(n))))]-1` -/
def P6872119769585992581.Spec : Prop :=
  ∀ n, P6872119769585992581.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P6636489952901406298

`∑[floor(log2(or(1, n)))+1]-1`
-/

namespace A001855.P6636489952901406298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 1 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001855.P6636489952901406298

namespace A001855

/-- `∑[floor(log2(or(1, n)))+1]-1` -/
def P6636489952901406298.Spec : Prop :=
  ∀ n, P6636489952901406298.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P12685324017768397132

`∑[∑[char[and(n, 1-n)]]]-1`
-/

namespace A001855.P12685324017768397132
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001855.P12685324017768397132

namespace A001855

/-- `∑[∑[char[and(n, 1-n)]]]-1` -/
def P12685324017768397132.Spec : Prop :=
  ∀ n, P12685324017768397132.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P13329963473573674282

`ceil(a(n-1)+log2(n+1))` with `a(0)=0`
-/

namespace A001855.P13329963473573674282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌉

end

end A001855.P13329963473573674282

namespace A001855

/-- `ceil(a(n-1)+log2(n+1))` -/
def P13329963473573674282.Spec : Prop :=
  ∀ n, P13329963473573674282.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P9084551668246379957

`floor(a(n-1)+log2(2*n))` with `a(0)=0`
-/

namespace A001855.P9084551668246379957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.logb 2 (2 * n : ℝ)⌋

end

end A001855.P9084551668246379957

namespace A001855

/-- `floor(a(n-1)+log2(2*n))` -/
def P9084551668246379957.Spec : Prop :=
  ∀ n, P9084551668246379957.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P5451211013173182650

`∑[char[2^n]]+a(n-1)` with `a(0)=0`
-/

namespace A001855.P5451211013173182650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A001855.P5451211013173182650

namespace A001855

/-- `∑[char[2^n]]+a(n-1)` -/
def P5451211013173182650.Spec : Prop :=
  ∀ n, (P5451211013173182650.a n : ℤ) = A001855 (n + 1)

end A001855

/-! ## A001855.P5336032398118368027

`∑[∑[∏{p}[n, val(#, 2)]]]-(n+1)`
-/

namespace A001855.P5336032398118368027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A001855.P5336032398118368027

namespace A001855

/-- `∑[∑[∏{p}[n, val(#, 2)]]]-(n+1)` -/
def P5336032398118368027.Spec : Prop :=
  ∀ n, P5336032398118368027.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P2248476939540775953

`∑[∑[∏{p}[n, val(#, 2)]]]-1-n`
-/

namespace A001855.P2248476939540775953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)

end

end A001855.P2248476939540775953

namespace A001855

/-- `∑[∑[∏{p}[n, val(#, 2)]]]-1-n` -/
def P2248476939540775953.Spec : Prop :=
  ∀ n, P2248476939540775953.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P15175913105264913357

`∑[a(floor(n/2))+1]-1` with `a(0)=1, a(1)=1`
-/

namespace A001855.P15175913105264913357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001855.P15175913105264913357

namespace A001855

/-- `∑[a(floor(n/2))+1]-1` -/
def P15175913105264913357.Spec : Prop :=
  ∀ n, P15175913105264913357.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P2413934976558469460

`floor((a(n-1)-1)/n+a(n-1)+2)` with `a(0)=0`
-/

namespace A001855.P2413934976558469460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) - 1 : ℚ) / (n : ℚ) + (a (n - 1) + 2 : ℚ)⌋

end

end A001855.P2413934976558469460

namespace A001855

/-- `floor((a(n-1)-1)/n+a(n-1)+2)` -/
def P2413934976558469460.Spec : Prop :=
  ∀ n, P2413934976558469460.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P3305000246318124898

`2-floor(1-a(n-1)/n-a(n-1))` with `a(0)=0`
-/

namespace A001855.P3305000246318124898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ⌊1 - (a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A001855.P3305000246318124898

namespace A001855

/-- `2-floor(1-a(n-1)/n-a(n-1))` -/
def P3305000246318124898.Spec : Prop :=
  ∀ n, P3305000246318124898.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P13770357981516700742

`A083652(n)-1`
-/

namespace A001855.P13770357981516700742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - 1

end

end A001855.P13770357981516700742

namespace A001855

/-- `A083652(n)-1` -/
def P13770357981516700742.Spec : Prop :=
  ∀ n, P13770357981516700742.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P200310107444777732

`∑[A070939(n)]-1`
-/

namespace A001855.P200310107444777732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001855.P200310107444777732

namespace A001855

/-- `∑[A070939(n)]-1` -/
def P200310107444777732.Spec : Prop :=
  ∀ n, P200310107444777732.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P16216580500527045804

`A296349(n+1)-1`
-/

namespace A001855.P16216580500527045804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 (n + 1) - 1

end

end A001855.P16216580500527045804

namespace A001855

/-- `A296349(n+1)-1` -/
def P16216580500527045804.Spec : Prop :=
  ∀ n, P16216580500527045804.a n = A001855 (n + 1)

end A001855

/-! ## A001855.P10983858770422355615

`A003314(n+1)-n`
-/

namespace A001855.P10983858770422355615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (n + 1) - (n : ℤ)

end

end A001855.P10983858770422355615

namespace A001855

/-- `A003314(n+1)-n` -/
def P10983858770422355615.Spec : Prop :=
  ∀ n, P10983858770422355615.a n = A001855 (n + 1)

theorem P10983858770422355615.correct : P10983858770422355615.Spec := by
  intro n
  simp only [A001855, Nat.add_sub_cancel, A001855.P10983858770422355615.a, A001855.P10537031409435003354.a, A003314, A003314.P7289667830618378766.a, A123753, A123753.P15676585840177218925.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001855

/-!
# A001857: a(1)=2, a(2)=3; for n >= 3, a(n) is smallest number that is uniquely of the form a(j) + a(k) with 1 <= j < k < n.

The programs for A001857, there is no canonical definition to state claims against.
-/

/-! ## A001857.P7257166321952066699

`A135737(∑[n]+1)`
-/

namespace A001857.P7257166321952066699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001857.P7257166321952066699

/-! ## A001857.P3824535625703729596

`record[A135737(A286234(n+1))]`
-/

namespace A001857.P3824535625703729596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135737 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001857.P3824535625703729596

/-! ## A001857.P1798354216582253219

`record[A135737(n+1)-A014473(n)]`
-/

namespace A001857.P1798354216582253219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135737 (n + 1) - A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001857.P1798354216582253219

/-! ## A001857.P2117658141480732208

`record[A010054(n)*A135737(n+1)]`
-/

namespace A001857.P2117658141480732208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A135737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001857.P2117658141480732208

/-! ## A001857.P4446508247242319539

`record[A135737(n+1)/A157147(n)]`
-/

namespace A001857.P4446508247242319539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135737 (n + 1) : ℚ) / (A157147 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001857.P4446508247242319539

/-!
# A001858: Number of forests of trees on n labeled nodes.

The programs for A001858, there is no canonical definition to state claims against.
-/

/-! ## A001858.P14389530865573681049

`A144304(∑[n]+n)`
-/

namespace A001858.P14389530865573681049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001858.P14389530865573681049

/-! ## A001858.P5758933466448981985

`gcd(A000038(n), A144304(A000096(n)))`
-/

namespace A001858.P5758933466448981985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144304 (A000096 n).toNat)

end

end A001858.P5758933466448981985

/-! ## A001858.P16694724500405857019

`lcm(A033999(n), A144304(A000096(n)))`
-/

namespace A001858.P16694724500405857019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A144304 (A000096 n).toNat)

end

end A001858.P16694724500405857019

/-! ## A001858.P14171153886518132510

`or(A000007(n), A144304(A000096(n)))`
-/

namespace A001858.P14171153886518132510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144304 (A000096 n).toNat)

end

end A001858.P14171153886518132510

/-! ## A001858.P6874102958693620074

`or(A000035(n), A144304(A000096(n)))`
-/

namespace A001858.P6874102958693620074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A144304 (A000096 n).toNat)

end

end A001858.P6874102958693620074

/-! ## A001858.P13266893393581569027

`A014963(A000132(n))*A144304(A000096(n))`
-/

namespace A001858.P13266893393581569027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000132 n).toNat * A144304 (A000096 n).toNat

end

end A001858.P13266893393581569027

/-!
# A001859: Triangular numbers plus quarter-squares: n*(n+1)/2 + floor((n+1)^2/4) (i.e., A000217(n) + A002620(n+1)).

The programs for A001859, the canonical program `A001859.P2663720322851164108` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001859 has offset 0).

The definition of A001859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)/2+floor((n+1)²/4)` (program `A001859.P5668569233744486311`, by `A001859.P5668569233744486311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001859.P16895687213437443548

`n+floor((3*n²+1)/4)`
-/

namespace A001859.P16895687213437443548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(3 * n ^ 2 + 1 : ℚ) / 4⌋

end

end A001859.P16895687213437443548

namespace A001859

/-- `n+floor((3*n²+1)/4)` -/
def P16895687213437443548.Spec : Prop :=
  ∀ n, P16895687213437443548.a n = A001859 n

end A001859

/-! ## A001859.P5668569233744486311

`n*(n+1)/2+floor((n+1)²/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001859.P5668569233744486311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 + (⌊((n + 1) ^ 2 : ℚ) / 4⌋ : ℚ)

end

end A001859.P5668569233744486311

namespace A001859

/-- `n*(n+1)/2+floor((n+1)²/4)` -/
def P5668569233744486311.Spec : Prop :=
  ∀ n, P5668569233744486311.a n = (A001859 n : ℚ)

theorem P5668569233744486311.correct : P5668569233744486311.Spec := by
  intro n
  simp only [A001859, Nat.add_sub_cancel, A001859.P5668569233744486311.a, A001859.P2663720322851164108.a, A000217, A000217.P10269402890581615239.a, A002620, A002620.P9002536657626793813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001859

/-! ## A001859.P2663720322851164108

`A000217(n)+A002620(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001859

/-- `A000217(n)+A002620(n+1)` -/
def P2663720322851164108.Spec : Prop :=
  ∀ n, P2663720322851164108.a n = A001859 n

theorem P2663720322851164108.correct : P2663720322851164108.Spec := by
  intro n
  simp only [A001859]

end A001859

/-! ## A001859.P8416238084221302982

`∑[comp[n^dr(n^3)]]`
-/

namespace A001859.P8416238084221302982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001859.P8416238084221302982

namespace A001859

/-- `∑[comp[n^dr(n^3)]]` -/
def P8416238084221302982.Spec : Prop :=
  ∀ n, (P8416238084221302982.a n : ℤ) = A001859 n

end A001859

/-! ## A001859.P16157352400534410667

`round(∑[∑[sin(n)²]+n])`
-/

namespace A001859.P16157352400534410667
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001859.P16157352400534410667

namespace A001859

/-- `round(∑[∑[sin(n)²]+n])` -/
def P16157352400534410667.Spec : Prop :=
  ∀ n, P16157352400534410667.a n = A001859 n

end A001859

/-! ## A001859.P11546234390272535489

`∑[a(n-2)+3]` with `a(0)=0, a(1)=2`
-/

namespace A001859.P11546234390272535489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001859.P11546234390272535489

namespace A001859

/-- `∑[a(n-2)+3]` -/
def P11546234390272535489.Spec : Prop :=
  ∀ n, (P11546234390272535489.a n : ℤ) = A001859 n

end A001859

/-! ## A001859.P1448699652038739955

`∑[∑[3-a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A001859.P1448699652038739955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001859.P1448699652038739955

namespace A001859

/-- `∑[∑[3-a(n-1)]]` -/
def P1448699652038739955.Spec : Prop :=
  ∀ n, P1448699652038739955.a n = A001859 n

end A001859

/-! ## A001859.P3292301471184857995

`∑[(3*n+n%2)/2]`
-/

namespace A001859.P3292301471184857995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + n % 2 : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001859.P3292301471184857995

namespace A001859

/-- `∑[(3*n+n%2)/2]` -/
def P3292301471184857995.Spec : Prop :=
  ∀ n, P3292301471184857995.a n = (A001859 n : ℚ)

end A001859

/-! ## A001859.P7777148720968300566

`abs(∑[1-∑[gcd(2, n+1)]])`
-/

namespace A001859.P7777148720968300566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A001859.P7777148720968300566

namespace A001859

/-- `abs(∑[1-∑[gcd(2, n+1)]])` -/
def P7777148720968300566.Spec : Prop :=
  ∀ n, P7777148720968300566.a n = A001859 n

end A001859

/-! ## A001859.P15911147176787045651

`round(∑[∑[cos(n+1)²]+n])`
-/

namespace A001859.P15911147176787045651
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001859.P15911147176787045651

namespace A001859

/-- `round(∑[∑[cos(n+1)²]+n])` -/
def P15911147176787045651.Spec : Prop :=
  ∀ n, P15911147176787045651.a n = A001859 n

end A001859

/-! ## A001859.P10547636978088217386

`∑[∑[∑[ogf((2x+x^2)/(1+x))]]]`
-/

namespace A001859.P10547636978088217386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001859.P10547636978088217386

namespace A001859

/-- `∑[∑[∑[ogf((2x+x^2)/(1+x))]]]` -/
def P10547636978088217386.Spec : Prop :=
  ∀ n, P10547636978088217386.a n = A001859 n

end A001859

/-! ## A001859.P6838782510623901137

`ogf((2x+x^2)/(1-2x+2x^3-x^4))`
-/

namespace A001859.P6838782510623901137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -2, 0, 2, -1] n

end

end A001859.P6838782510623901137

namespace A001859

/-- `ogf((2x+x^2)/(1-2x+2x^3-x^4))` -/
def P6838782510623901137.Spec : Prop :=
  ∀ n, P6838782510623901137.a n = A001859 n

end A001859

/-! ## A001859.P14295953350837265839

`Δ[n*C(n, 2)-a(n-1)]` with `a(0)=0`
-/

namespace A001859.P14295953350837265839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n * Nat.choose n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001859.P14295953350837265839

namespace A001859

/-- `Δ[n*C(n, 2)-a(n-1)]` -/
def P14295953350837265839.Spec : Prop :=
  ∀ n, P14295953350837265839.a n = A001859 n

end A001859

/-! ## A001859.P2048533522562427872

`∑[∑[2*and(1, n)]+2*n]/2`
-/

namespace A001859.P2048533522562427872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A001859.P2048533522562427872

namespace A001859

/-- `∑[∑[2*and(1, n)]+2*n]/2` -/
def P2048533522562427872.Spec : Prop :=
  ∀ n, P2048533522562427872.a n = (A001859 n : ℚ)

end A001859

/-! ## A001859.P9044260384091750105

`3*(n-(1-a(n-2))/3)` with `a(0)=0, a(1)=2`
-/

namespace A001859.P9044260384091750105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * ((n : ℚ) - (1 - a (n - 2)) / 3)

end

end A001859.P9044260384091750105

namespace A001859

/-- `3*(n-(1-a(n-2))/3)` -/
def P9044260384091750105.Spec : Prop :=
  ∀ n, P9044260384091750105.a n = (A001859 n : ℚ)

end A001859

/-! ## A001859.P14367577352268173505

`∑[or(1, n-1)+2*n+1]/2`
-/

namespace A001859.P14367577352268173505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A001859.P14367577352268173505

namespace A001859

/-- `∑[or(1, n-1)+2*n+1]/2` -/
def P14367577352268173505.Spec : Prop :=
  ∀ n, P14367577352268173505.a n = (A001859 n : ℚ)

end A001859

/-! ## A001859.P2086096238607897313

`floor(n+1+a(n-1)+(n-1)/2)` with `a(0)=0`
-/

namespace A001859.P2086096238607897313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) + ((a (n - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) / 2)⌋

end

end A001859.P2086096238607897313

namespace A001859

/-- `floor(n+1+a(n-1)+(n-1)/2)` -/
def P2086096238607897313.Spec : Prop :=
  ∀ n, P2086096238607897313.a n = A001859 n

end A001859

/-! ## A001859.P10004287107060330270

`∑[A007494(n)]`
-/

namespace A001859.P10004287107060330270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001859.P10004287107060330270

namespace A001859

/-- `∑[A007494(n)]` -/
def P10004287107060330270.Spec : Prop :=
  ∀ n, P10004287107060330270.a n = A001859 n

end A001859

/-! ## A001859.P11230921243375409746

`Δ[A045947(n)]`
-/

namespace A001859.P11230921243375409746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001859.P11230921243375409746

namespace A001859

/-- `Δ[A045947(n)]` -/
def P11230921243375409746.Spec : Prop :=
  ∀ n, P11230921243375409746.a n = A001859 n

end A001859

/-!
# A001860: Number of series-reduced planted trees with n+9 nodes and 4 internal nodes.

The programs for A001860, the canonical program `A001860.P6909138946016602621` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001860 has offset 0).

The definition of A001860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001860.P6909138946016602621

`∑[∑[ceil(8*n/3)]]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001860

/-- `∑[∑[ceil(8*n/3)]]` -/
def P6909138946016602621.Spec : Prop :=
  ∀ n, P6909138946016602621.a n = A001860 n

theorem P6909138946016602621.correct : P6909138946016602621.Spec := by
  intro n
  simp only [A001860]

end A001860

/-! ## A001860.P8886253969170012227

`abs(∑[∑[a(n-3)+8]])` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A001860.P8886253969170012227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f2 =>
  f2 (n - 3) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001860.P8886253969170012227

namespace A001860

/-- `abs(∑[∑[a(n-3)+8]])` -/
def P8886253969170012227.Spec : Prop :=
  ∀ n, (P8886253969170012227.a n : ℤ) = A001860 n

end A001860

/-! ## A001860.P16947527518756081796

`floor(∑[∑[a(n-3)+8]])` with `a(0)=0, a(1)=3, a(2)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A001860.P16947527518756081796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f2 =>
  f2 (n - 3) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001860.P16947527518756081796

namespace A001860

/-- `floor(∑[∑[a(n-3)+8]])` -/
def P16947527518756081796.Spec : Prop :=
  ∀ n, (P16947527518756081796.a n : ℤ) = A001860 n

end A001860

/-! ## A001860.P11259314297842683540

`ceil(∑[∑[a(n-3)+8]])` with `a(0)=0, a(1)=3, a(2)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A001860.P11259314297842683540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f2 =>
  f2 (n - 3) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001860.P11259314297842683540

namespace A001860

/-- `ceil(∑[∑[a(n-3)+8]])` -/
def P11259314297842683540.Spec : Prop :=
  ∀ n, (P11259314297842683540.a n : ℤ) = A001860 n

end A001860

/-! ## A001860.P11160395576064407913

`round(∑[∑[a(n-3)+8]])` with `a(0)=0, a(1)=3, a(2)=6`

`round` is left out, it is the identity on integers.
-/

namespace A001860.P11160395576064407913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f2 =>
  f2 (n - 3) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001860.P11160395576064407913

namespace A001860

/-- `round(∑[∑[a(n-3)+8]])` -/
def P11160395576064407913.Spec : Prop :=
  ∀ n, (P11160395576064407913.a n : ℤ) = A001860 n

end A001860

/-! ## A001860.P12282066722473185704

`A370349(n)-∑[n+1]`
-/

namespace A001860.P12282066722473185704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370349 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001860.P12282066722473185704

namespace A001860

/-- `A370349(n)-∑[n+1]` -/
def P12282066722473185704.Spec : Prop :=
  ∀ n, P12282066722473185704.a n = A001860 n

end A001860

/-! ## A001860.P5180861882571404585

`∑[∑[A016777(n)]]-A014125(n)`
-/

namespace A001860.P5180861882571404585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014125 n

end

end A001860.P5180861882571404585

namespace A001860

/-- `∑[∑[A016777(n)]]-A014125(n)` -/
def P5180861882571404585.Spec : Prop :=
  ∀ n, P5180861882571404585.a n = A001860 n

end A001860

/-! ## A001860.P4309059920020956900

`A238340(n+1)-A211004(n+1)`
-/

namespace A001860.P4309059920020956900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1) - A211004 (n + 1)

end

end A001860.P4309059920020956900

namespace A001860

/-- `A238340(n+1)-A211004(n+1)` -/
def P4309059920020956900.Spec : Prop :=
  ∀ n, P4309059920020956900.a n = A001860 n

end A001860

/-! ## A001860.P11762404115108062171

`A051462(n+1)-A034856(n+2)`
-/

namespace A001860.P11762404115108062171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051462 (n + 1) - A034856 (n + 2)

end

end A001860.P11762404115108062171

namespace A001860

/-- `A051462(n+1)-A034856(n+2)` -/
def P11762404115108062171.Spec : Prop :=
  ∀ n, P11762404115108062171.a n = A001860 n

end A001860

/-! ## A001860.P694651405460407934

`A014125(2*n)-∑[n+1]`
-/

namespace A001860.P694651405460407934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001860.P694651405460407934

namespace A001860

/-- `A014125(2*n)-∑[n+1]` -/
def P694651405460407934.Spec : Prop :=
  ∀ n, P694651405460407934.a n = A001860 n

end A001860

/-! ## A001860.P14032292581587887080

`A014126(2*n)-A001840(n+1)`
-/

namespace A001860.P14032292581587887080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * n) - A001840 (n + 1)

end

end A001860.P14032292581587887080

namespace A001860

/-- `A014126(2*n)-A001840(n+1)` -/
def P14032292581587887080.Spec : Prop :=
  ∀ n, P14032292581587887080.a n = A001860 n

end A001860

/-! ## A001860.P1828402235143082284

`A005993(2*n+1)-A000601(2*n+1)`
-/

namespace A001860.P1828402235143082284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (2 * n + 1) - A000601 (2 * n + 1)

end

end A001860.P1828402235143082284

namespace A001860

/-- `A005993(2*n+1)-A000601(2*n+1)` -/
def P1828402235143082284.Spec : Prop :=
  ∀ n, P1828402235143082284.a n = A001860 n

end A001860

/-! ## A001860.P7685350286568695064

`2*A006918(2*n+1)-A000601(2*n+1)`
-/

namespace A001860.P7685350286568695064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006918 (2 * n + 1) - A000601 (2 * n + 1)

end

end A001860.P7685350286568695064

namespace A001860

/-- `2*A006918(2*n+1)-A000601(2*n+1)` -/
def P7685350286568695064.Spec : Prop :=
  ∀ n, P7685350286568695064.a n = A001860 n

end A001860

/-! ## A001860.P16297541313687824413

`A301739(2*n+5)-2*A000601(2*n+1)`
-/

namespace A001860.P16297541313687824413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301739 (2 * n + 5) - 2 * A000601 (2 * n + 1)

end

end A001860.P16297541313687824413

namespace A001860

/-- `A301739(2*n+5)-2*A000601(2*n+1)` -/
def P16297541313687824413.Spec : Prop :=
  ∀ n, P16297541313687824413.a n = A001860 n

end A001860

/-! ## A001860.P13788149017899113863

`2*A005993(2*n+1)-A301739(2*n+5)`
-/

namespace A001860.P13788149017899113863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005993 (2 * n + 1) - A301739 (2 * n + 5)

end

end A001860.P13788149017899113863

namespace A001860

/-- `2*A005993(2*n+1)-A301739(2*n+5)` -/
def P13788149017899113863.Spec : Prop :=
  ∀ n, P13788149017899113863.a n = A001860 n

end A001860

/-! ## A001860.P3278393971956775309

`A000217(n+1)*(n+1)-A001400(2*n+1)`
-/

namespace A001860.P3278393971956775309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * (n + 1 : ℤ) - A001400 (2 * n + 1)

end

end A001860.P3278393971956775309

namespace A001860

/-- `A000217(n+1)*(n+1)-A001400(2*n+1)` -/
def P3278393971956775309.Spec : Prop :=
  ∀ n, P3278393971956775309.a n = A001860 n

end A001860

/-! ## A001860.P9823867153145032698

`A006918(2*n)+A014125(2*n)-A006918(2*n+1)`
-/

namespace A001860.P9823867153145032698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (2 * n) + (A014125 (2 * n) - A006918 (2 * n + 1))

end

end A001860.P9823867153145032698

namespace A001860

/-- `A006918(2*n)+A014125(2*n)-A006918(2*n+1)` -/
def P9823867153145032698.Spec : Prop :=
  ∀ n, P9823867153145032698.a n = A001860 n

end A001860

/-!
# A001861: Expansion of e.g.f. exp(2*(exp(x) - 1)).

The programs for A001861, there is no canonical definition to state claims against.
-/

/-! ## A001861.P10709262356415417549

`A078937(∑[n])`
-/

namespace A001861.P10709262356415417549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001861.P10709262356415417549

/-! ## A001861.P4028160901739030414

`record[A336345(n)]`
-/

namespace A001861.P4028160901739030414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001861.P4028160901739030414

/-! ## A001861.P6839374114700789387

`A336345(∑[n]+n)`
-/

namespace A001861.P6839374114700789387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001861.P6839374114700789387

/-! ## A001861.P7189618749292476316

`ceil(cosh(sin(n)))*A035009(n)`
-/

namespace A001861.P7189618749292476316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A035009 n

end

end A001861.P7189618749292476316

/-! ## A001861.P7942458758217006717

`A035009(n)*A036453(n+1)`
-/

namespace A001861.P7942458758217006717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035009 n * A036453 (n + 1)

end

end A001861.P7942458758217006717

/-! ## A001861.P4555159658161364575

`2*A065143(n)-A213170(n)`
-/

namespace A001861.P4555159658161364575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065143 n - A213170 n

end

end A001861.P4555159658161364575

/-! ## A001861.P16376328855915538121

`A020639(A001316(n))*A035009(n)`
-/

namespace A001861.P16376328855915538121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A035009 n

end

end A001861.P16376328855915538121

/-! ## A001861.P8535601334879078032

`A020639(A005899(n))*A035009(n)`
-/

namespace A001861.P8535601334879078032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005899 n).toNat * A035009 n

end

end A001861.P8535601334879078032

/-! ## A001861.P2098152603707662916

`A020639(A008574(n))*A035009(n)`
-/

namespace A001861.P2098152603707662916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A035009 n

end

end A001861.P2098152603707662916

/-!
# A001862: Number of forests of least height with n nodes.

The programs for A001862, there is no canonical definition to state claims against.
-/

/-! ## A001862.P380345636746369465

`A289497(or(n, A047098(n)))`
-/

namespace A001862.P380345636746369465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (Int.lor (n : ℤ) (A047098 n)).toNat

end

end A001862.P380345636746369465

/-! ## A001862.P17458003532281334089

`A034973(A152393(n)+A001349(n))`
-/

namespace A001862.P17458003532281334089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A152393 n + A001349 n).toNat

end

end A001862.P17458003532281334089

/-!
# A001863: Normalized total height of rooted trees with n nodes.

The programs for A001863, there is no canonical definition to state claims against.
-/

/-! ## A001863.P6690491597517933535

`A000435(n+1)/round(sqrt(n²+1))`
-/

namespace A001863.P6690491597517933535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

end

end A001863.P6690491597517933535

/-! ## A001863.P7566181563720775496

`floor(A000435(n+1)/A028310(n))`
-/

namespace A001863.P7566181563720775496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000435 (n + 1) : ℚ) / (A028310 n : ℚ)⌋

end

end A001863.P7566181563720775496

/-! ## A001863.P3802880343005565528

`1/(1-A057427(n)+n)*A000435(n+1)`
-/

namespace A001863.P3802880343005565528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (1 - A057427 n + (n : ℤ) : ℚ) * (A000435 (n + 1) : ℚ)

end

end A001863.P3802880343005565528

/-! ## A001863.P18434061178375155477

`(A001865(n+1)-A000169(n+1))/A028310(n)`
-/

namespace A001863.P18434061178375155477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001865 (n + 1) - A000169 (n + 1) : ℚ) / (A028310 n : ℚ)

end

end A001863.P18434061178375155477

/-! ## A001863.P16250233144726596848

`(A001865(n+1)-(n+1)^n)/A003056(A000124(n))`
-/

namespace A001863.P16250233144726596848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001865 (n + 1) - ((n + 1) ^ n : ℤ) : ℚ) / (A003056 (A000124 n).toNat : ℚ)

end

end A001863.P16250233144726596848

/-! ## A001863.P3776875686924497705

`(A053506(n+1)+2*A057500(n+1))/A003056(A000124(n))`
-/

namespace A001863.P3776875686924497705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053506 (n + 1) + 2 * A057500 (n + 1) : ℚ) / (A003056 (A000124 n).toNat : ℚ)

end

end A001863.P3776875686924497705

/-! ## A001863.P5223747637491446377

`A036276(n)/A179865(n+1)`
-/

namespace A001863.P5223747637491446377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036276 n : ℚ) / (A179865 (n + 1) : ℚ)

end

end A001863.P5223747637491446377

/-! ## A001863.P18190309118315578619

`A036276(n)/A028310(A000217(n))`
-/

namespace A001863.P18190309118315578619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036276 n : ℚ) / (A028310 (A000217 n).toNat : ℚ)

end

end A001863.P18190309118315578619

/-!
# A001864: Total height of rooted trees with n labeled nodes.

The programs for A001864, there is no canonical definition to state claims against.
-/

/-! ## A001864.P11925752199295575364

`(n+1)*A000435(n+1)`
-/

namespace A001864.P11925752199295575364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000435 (n + 1)

end

end A001864.P11925752199295575364

/-! ## A001864.P10867540415898210791

`2*A036276(n)`
-/

namespace A001864.P10867540415898210791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036276 n

end

end A001864.P10867540415898210791

/-! ## A001864.P5161417094262430474

`2*A001863(n+1)*∑[n]`
-/

namespace A001864.P5161417094262430474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001863 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001864.P5161417094262430474

/-! ## A001864.P197955995085785649

`A001863(n+1)*A002378(n)`
-/

namespace A001864.P197955995085785649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (n + 1) * A002378 n

end

end A001864.P197955995085785649

/-! ## A001864.P12371975687229443434

`A063169(n+1)-A000312(n+1)`
-/

namespace A001864.P12371975687229443434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063169 (n + 1) - A000312 (n + 1)

end

end A001864.P12371975687229443434

/-! ## A001864.P10394431553795057573

`A007778(n+1)-A369071(n+1)`
-/

namespace A001864.P10394431553795057573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 1) - A369071 (n + 1)

end

end A001864.P10394431553795057573

/-! ## A001864.P1314493794222747852

`2*A000217(n)*A001863(n+1)`
-/

namespace A001864.P1314493794222747852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 n * A001863 (n + 1))

end

end A001864.P1314493794222747852

/-! ## A001864.P7980110718774451566

`A063170(n+1)-2*A000312(n+1)`
-/

namespace A001864.P7980110718774451566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063170 (n + 1) - 2 * A000312 (n + 1)

end

end A001864.P7980110718774451566

/-! ## A001864.P12779760004657696297

`n*A000312(n+1)-A219706(n+1)`
-/

namespace A001864.P12779760004657696297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000312 (n + 1) - A219706 (n + 1)

end

end A001864.P12779760004657696297

/-! ## A001864.P4392912837723891911

`A063169(n+1)-(A185391(n)+A001865(n+1))`
-/

namespace A001864.P4392912837723891911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063169 (n + 1) - (A185391 n + A001865 (n + 1))

end

end A001864.P4392912837723891911

/-!
# A001865: Number of connected functions on n labeled nodes.

The programs for A001865, there is no canonical definition to state claims against.
-/

/-! ## A001865.P4185376063271352542

`record[A350078(n)]`
-/

namespace A001865.P4185376063271352542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001865.P4185376063271352542

/-! ## A001865.P14599899277885358707

`record[A350079(n)]`
-/

namespace A001865.P14599899277885358707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001865.P14599899277885358707

/-! ## A001865.P1562699773424935849

`A060281(∑[n]+1)`
-/

namespace A001865.P1562699773424935849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001865.P1562699773424935849

/-! ## A001865.P325919619871278142

`A209324(∑[n+1])`
-/

namespace A001865.P325919619871278142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001865.P325919619871278142

/-! ## A001865.P14303908405308776381

`A225723(∑[n+1])`
-/

namespace A001865.P14303908405308776381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001865.P14303908405308776381

/-! ## A001865.P13792374508254566251

`A350079(∑[n]+1)`
-/

namespace A001865.P13792374508254566251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350079 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001865.P13792374508254566251

/-! ## A001865.P12331783946997044286

`A347999(∑[n+2])`
-/

namespace A001865.P12331783946997044286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001865.P12331783946997044286

/-! ## A001865.P14684654592926736666

`A394081(∑[n]+n)`
-/

namespace A001865.P14684654592926736666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394081 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001865.P14684654592926736666

/-! ## A001865.P8835930414157595695

`A350078(∑[floor(n/2)+1])`
-/

namespace A001865.P8835930414157595695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350078 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001865.P8835930414157595695

/-! ## A001865.P12108894069272862493

`A000435(n+1)+A000169(n+1)`
-/

namespace A001865.P12108894069272862493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000435 (n + 1) + A000169 (n + 1)

end

end A001865.P12108894069272862493

/-!
# A001866: Number of connected graphs with n nodes and n edges.

The programs for A001866, there is no canonical definition to state claims against.
-/

/-! ## A001866.P4273977406059986974

`A000435(round(sqrt(n²+1)))/2*n!`
-/

namespace A001866.P4273977406059986974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A001866.P4273977406059986974

/-! ## A001866.P10898883012794297111

`A000435(A028310(n))*A001710(n)`
-/

namespace A001866.P10898883012794297111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000435 (A028310 n).toNat * A001710 n

end

end A001866.P10898883012794297111

/-!
# A001867: Number of n-bead necklaces with 3 colors.

The programs for A001867, there is no canonical definition to state claims against.
-/

/-! ## A001867.P8713074793357240313

`A278663(n)+A027376(n)`
-/

namespace A001867.P8713074793357240313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278663 n + A027376 n

end

end A001867.P8713074793357240313

/-! ## A001867.P3800454747048616941

`A278639(n)+A027671(n)`
-/

namespace A001867.P3800454747048616941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278639 n + A027671 n

end

end A001867.P3800454747048616941

/-! ## A001867.P15463014336613452241

`A182751(n+1)+2*A278639(n)`
-/

namespace A001867.P15463014336613452241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (n + 1) + 2 * A278639 n

end

end A001867.P15463014336613452241

/-! ## A001867.P18325944340490091067

`2*A027671(n)-A182751(n+1)`
-/

namespace A001867.P18325944340490091067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027671 n - A182751 (n + 1)

end

end A001867.P18325944340490091067

/-! ## A001867.P13656244712036465878

`A027375(n)+A303117(n)+A278663(n)`
-/

namespace A001867.P13656244712036465878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 n + (A303117 n + A278663 n)

end

end A001867.P13656244712036465878

/-! ## A001867.P8684248560764415618

`A027671(n)+A027671(n)-A182522(2%(n+2)+n)`
-/

namespace A001867.P8684248560764415618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 n + (A027671 n - A182522 (2 % (n + 2) + n))

end

end A001867.P8684248560764415618

/-! ## A001867.P9518870547720144730

`A278663(n)+A054718(n)/A028310(n)`
-/

namespace A001867.P9518870547720144730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278663 n : ℚ) + (A054718 n : ℚ) / (A028310 n : ℚ)

end

end A001867.P9518870547720144730

/-! ## A001867.P16840419840018916743

`A278663(n)+A054718(n)/A065033(2*n)`
-/

namespace A001867.P16840419840018916743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278663 n : ℚ) + (A054718 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A001867.P16840419840018916743

/-! ## A001867.P14420725346672874407

`A051137(A167614(n+1)-1)+A027671(n)-A182751(n+1)`
-/

namespace A001867.P14420725346672874407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A167614 (n + 1) - 1).toNat + (A027671 n - A182751 (n + 1))

end

end A001867.P14420725346672874407

/-! ## A001867.P14813828591439755067

`A051137(A000217(n+2)+2)+A027671(n)-A182751(n+1)`
-/

namespace A001867.P14813828591439755067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A000217 (n + 2) + 2).toNat + (A027671 n - A182751 (n + 1))

end

end A001867.P14813828591439755067

/-!
# A001868: Number of n-bead necklaces with 4 colors.

The programs for A001868, there is no canonical definition to state claims against.
-/

/-! ## A001868.P13512455131475862758

`A075195(∑[n+3])`
-/

namespace A001868.P13512455131475862758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001868.P13512455131475862758

/-! ## A001868.P17187087526692530818

`A075195(A141214(n))%A225548(n+1)`
-/

namespace A001868.P17187087526692530818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075195 (A141214 n).toNat) (A225548 (n + 1))

end

end A001868.P17187087526692530818

/-! ## A001868.P13312719436829092125

`A000079(n)+A278640(n)+A123045(n)`
-/

namespace A001868.P13312719436829092125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A278640 n + A123045 n)

end

end A001868.P13312719436829092125

/-! ## A001868.P6299330029642644002

`∑[A011782(n)]+A278640(n)+A123045(n)`
-/

namespace A001868.P6299330029642644002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A278640 n + A123045 n)

end

end A001868.P6299330029642644002

/-! ## A001868.P9827183132078799056

`Δ[A000051(n)]+A278640(n)+A123045(n)`
-/

namespace A001868.P9827183132078799056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A278640 n + A123045 n)

end

end A001868.P9827183132078799056

/-!
# A001869: Number of n-bead necklaces with 5 colors.

The programs for A001869, there is no canonical definition to state claims against.
-/

/-! ## A001869.P15571605310930317163

`A075195(∑[n+3]+n+3)`
-/

namespace A001869.P15571605310930317163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001869.P15571605310930317163

/-! ## A001869.P14157032273981362279

`A075195(A046691(n+2))*A266724(2*n+3)`
-/

namespace A001869.P14157032273981362279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A046691 (n + 2)).toNat * A266724 (2 * n + 3)

end

end A001869.P14157032273981362279

/-! ## A001869.P8638001118267722584

`A075195(A046691(n+2))%A099975(n)`
-/

namespace A001869.P8638001118267722584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075195 (A046691 (n + 2)).toNat) (A099975 n)

end

end A001869.P8638001118267722584

/-! ## A001869.P14867696677526407737

`gcd(A000038(n), A184288(A152947(n+1)))`
-/

namespace A001869.P14867696677526407737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184288 (A152947 (n + 1)).toNat)

end

end A001869.P14867696677526407737

/-! ## A001869.P3913704546022035976

`and(A184288(A152947(n+1)), A260196(n))`
-/

namespace A001869.P3913704546022035976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184288 (A152947 (n + 1)).toNat) (A260196 n)

end

end A001869.P3913704546022035976

/-!
# A001870: Expansion of (1-x)/(1 - 3*x + x^2)^2.

The programs for A001870, the canonical program `A001870.P8517268419378659254` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001870 has offset 0).

The definition of A001870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-6x+11x^2-6x^3+x^4))` (program `A001870.P8517268419378659254`, by `A001870.P8517268419378659254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001870.P8517268419378659254

`ogf((1-x)/(1-6x+11x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001870

/-- `ogf((1-x)/(1-6x+11x^2-6x^3+x^4))` -/
def P8517268419378659254.Spec : Prop :=
  ∀ n, P8517268419378659254.a n = A001870 n

theorem P8517268419378659254.correct : P8517268419378659254.Spec := by
  intro n
  simp only [A001870]

end A001870

/-! ## A001870.P8420655363282021489

`(A238846(n)+A001871(n))/2`
-/

namespace A001870.P8420655363282021489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238846 n + A001871 n : ℚ) / 2

end

end A001870.P8420655363282021489

namespace A001870

/-- `(A238846(n)+A001871(n))/2` -/
def P8420655363282021489.Spec : Prop :=
  ∀ n, P8420655363282021489.a n = (A001870 n : ℚ)

end A001870

/-! ## A001870.P14391860505363206613

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=65`
-/

namespace A001870.P14391860505363206613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 19, 65] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A001870.P14391860505363206613

namespace A001870

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P14391860505363206613.Spec : Prop :=
  ∀ n, P14391860505363206613.a n = A001870 n

end A001870

/-! ## A001870.P7530698414878484918

`A025078(Δ[n²])`
-/

namespace A001870.P7530698414878484918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001870.P7530698414878484918

namespace A001870

/-- `A025078(Δ[n²])` -/
def P7530698414878484918.Spec : Prop :=
  ∀ n, P7530698414878484918.a n = A001870 n

end A001870

/-! ## A001870.P15258078887664887479

`∑[∑[A038731(n)]]`
-/

namespace A001870.P15258078887664887479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P15258078887664887479

namespace A001870

/-- `∑[∑[A038731(n)]]` -/
def P15258078887664887479.Spec : Prop :=
  ∀ n, P15258078887664887479.a n = A001870 n

end A001870

/-! ## A001870.P12784745313008045649

`∑[A030267(n+1)]`
-/

namespace A001870.P12784745313008045649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P12784745313008045649

namespace A001870

/-- `∑[A030267(n+1)]` -/
def P12784745313008045649.Spec : Prop :=
  ∀ n, P12784745313008045649.a n = A001870 n

end A001870

/-! ## A001870.P2607677882867472189

`∑[A134512(Δ[n²])]`
-/

namespace A001870.P2607677882867472189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P2607677882867472189

namespace A001870

/-- `∑[A134512(Δ[n²])]` -/
def P2607677882867472189.Spec : Prop :=
  ∀ n, P2607677882867472189.a n = A001870 n

end A001870

/-! ## A001870.P8880177289843076592

`Δ[A129722(Δ[n²])]`
-/

namespace A001870.P8880177289843076592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001870.P8880177289843076592

namespace A001870

/-- `Δ[A129722(Δ[n²])]` -/
def P8880177289843076592.Spec : Prop :=
  ∀ n, P8880177289843076592.a n = A001870 n

end A001870

/-! ## A001870.P9071920306464600792

`A024458(2*(n+1))`
-/

namespace A001870.P9071920306464600792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * (n + 1))

end

end A001870.P9071920306464600792

namespace A001870

/-- `A024458(2*(n+1))` -/
def P9071920306464600792.Spec : Prop :=
  ∀ n, P9071920306464600792.a n = A001870 n

end A001870

/-! ## A001870.P2283921660816090743

`A089089(2*(n+1))`
-/

namespace A001870.P2283921660816090743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (2 * (n + 1))

end

end A001870.P2283921660816090743

namespace A001870

/-- `A089089(2*(n+1))` -/
def P2283921660816090743.Spec : Prop :=
  ∀ n, P2283921660816090743.a n = A001870 n

end A001870

/-! ## A001870.P7322262294745720518

`A089098(2*(n+1))`
-/

namespace A001870.P7322262294745720518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (2 * (n + 1))

end

end A001870.P7322262294745720518

namespace A001870

/-- `A089098(2*(n+1))` -/
def P7322262294745720518.Spec : Prop :=
  ∀ n, P7322262294745720518.a n = A001870 n

end A001870

/-! ## A001870.P11690662658238388720

`A129720(2*(n+1))`
-/

namespace A001870.P11690662658238388720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * (n + 1))

end

end A001870.P11690662658238388720

namespace A001870

/-- `A129720(2*(n+1))` -/
def P11690662658238388720.Spec : Prop :=
  ∀ n, P11690662658238388720.a n = A001870 n

end A001870

/-! ## A001870.P6009470360798349711

`A129722(2*(n+1))`
-/

namespace A001870.P6009470360798349711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * (n + 1))

end

end A001870.P6009470360798349711

namespace A001870

/-- `A129722(2*(n+1))` -/
def P6009470360798349711.Spec : Prop :=
  ∀ n, P6009470360798349711.a n = A001870 n

end A001870

/-! ## A001870.P12973832835925663934

`A281199(n+2)/2`
-/

namespace A001870.P12973832835925663934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281199 (n + 2) : ℚ) / 2

end

end A001870.P12973832835925663934

namespace A001870

/-- `A281199(n+2)/2` -/
def P12973832835925663934.Spec : Prop :=
  ∀ n, P12973832835925663934.a n = (A001870 n : ℚ)

end A001870

/-! ## A001870.P1977157415670480626

`∑[∑[A134512(2*n)]]`
-/

namespace A001870.P1977157415670480626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P1977157415670480626

namespace A001870

/-- `∑[∑[A134512(2*n)]]` -/
def P1977157415670480626.Spec : Prop :=
  ∀ n, P1977157415670480626.a n = A001870 n

end A001870

/-! ## A001870.P6343649496751459059

`∑[∑[A291241(2*n)]]`
-/

namespace A001870.P6343649496751459059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P6343649496751459059

namespace A001870

/-- `∑[∑[A291241(2*n)]]` -/
def P6343649496751459059.Spec : Prop :=
  ∀ n, P6343649496751459059.a n = A001870 n

end A001870

/-! ## A001870.P3929290169158507608

`∑[Δ[A166336(n)]/2]`
-/

namespace A001870.P3929290169158507608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166336 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P3929290169158507608

namespace A001870

/-- `∑[Δ[A166336(n)]/2]` -/
def P3929290169158507608.Spec : Prop :=
  ∀ n, P3929290169158507608.a n = (A001870 n : ℚ)

end A001870

/-! ## A001870.P14701448004444263601

`∑[A129720(n+1+n)]`
-/

namespace A001870.P14701448004444263601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001870.P14701448004444263601

namespace A001870

/-- `∑[A129720(n+1+n)]` -/
def P14701448004444263601.Spec : Prop :=
  ∀ n, P14701448004444263601.a n = A001870 n

end A001870

/-! ## A001870.P12508688758090633388

`(A166336(n+1)-1)/2`
-/

namespace A001870.P12508688758090633388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166336 (n + 1) - 1 : ℚ) / 2

end

end A001870.P12508688758090633388

namespace A001870

/-- `(A166336(n+1)-1)/2` -/
def P12508688758090633388.Spec : Prop :=
  ∀ n, P12508688758090633388.a n = (A001870 n : ℚ)

end A001870

/-! ## A001870.P4588478816909447846

`A001629(2*n+3)/2`
-/

namespace A001870.P4588478816909447846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001629 (2 * n + 3) : ℚ) / 2

end

end A001870.P4588478816909447846

namespace A001870

/-- `A001629(2*n+3)/2` -/
def P4588478816909447846.Spec : Prop :=
  ∀ n, P4588478816909447846.a n = (A001870 n : ℚ)

end A001870

/-!
# A001871: Expansion of 1/(1 - 3*x + x^2)^2.

The programs for A001871, the canonical program `A001871.P11548629244035987798` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001871 has offset 0).

The definition of A001871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+11x^2-6x^3+x^4))` (program `A001871.P11548629244035987798`, by `A001871.P11548629244035987798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001871.P17988129535436279682

`2*A001870(n)-A238846(n)`
-/

namespace A001871.P17988129535436279682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001870 n - A238846 n

end

end A001871.P17988129535436279682

namespace A001871

/-- `2*A001870(n)-A238846(n)` -/
def P17988129535436279682.Spec : Prop :=
  ∀ n, P17988129535436279682.a n = A001871 n

end A001871

/-! ## A001871.P11548629244035987798

`ogf(1/(1-6x+11x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001871

/-- `ogf(1/(1-6x+11x^2-6x^3+x^4))` -/
def P11548629244035987798.Spec : Prop :=
  ∀ n, P11548629244035987798.a n = A001871 n

theorem P11548629244035987798.correct : P11548629244035987798.Spec := by
  intro n
  simp only [A001871]

end A001871

/-! ## A001871.P929011435673522556

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=25, a(3)=90`
-/

namespace A001871.P929011435673522556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 25, 90] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A001871.P929011435673522556

namespace A001871

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P929011435673522556.Spec : Prop :=
  ∀ n, P929011435673522556.a n = A001871 n

end A001871

/-! ## A001871.P15299108536641131771

`∑[A001870(n)]`
-/

namespace A001871.P15299108536641131771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P15299108536641131771

namespace A001871

/-- `∑[A001870(n)]` -/
def P15299108536641131771.Spec : Prop :=
  ∀ n, P15299108536641131771.a n = A001871 n

end A001871

/-! ## A001871.P6701944827683166963

`∑[A025078(Δ[n²])]`
-/

namespace A001871.P6701944827683166963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025078 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P6701944827683166963

namespace A001871

/-- `∑[A025078(Δ[n²])]` -/
def P6701944827683166963.Spec : Prop :=
  ∀ n, P6701944827683166963.a n = A001871 n

end A001871

/-! ## A001871.P12069557891733646408

`∑[∑[∑[A038731(n)]]]`
-/

namespace A001871.P12069557891733646408
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P12069557891733646408

namespace A001871

/-- `∑[∑[∑[A038731(n)]]]` -/
def P12069557891733646408.Spec : Prop :=
  ∀ n, P12069557891733646408.a n = A001871 n

end A001871

/-! ## A001871.P16744691357274773761

`A129722(2*n+3)`
-/

namespace A001871.P16744691357274773761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 3)

end

end A001871.P16744691357274773761

namespace A001871

/-- `A129722(2*n+3)` -/
def P16744691357274773761.Spec : Prop :=
  ∀ n, P16744691357274773761.a n = A001871 n

end A001871

/-! ## A001871.P12755812673452714874

`∑[∑[A030267(n+1)]]`
-/

namespace A001871.P12755812673452714874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P12755812673452714874

namespace A001871

/-- `∑[∑[A030267(n+1)]]` -/
def P12755812673452714874.Spec : Prop :=
  ∀ n, P12755812673452714874.a n = A001871 n

end A001871

/-! ## A001871.P10088163300234262526

`∑[A024458(2*(n+1))]`
-/

namespace A001871.P10088163300234262526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P10088163300234262526

namespace A001871

/-- `∑[A024458(2*(n+1))]` -/
def P10088163300234262526.Spec : Prop :=
  ∀ n, P10088163300234262526.a n = A001871 n

end A001871

/-! ## A001871.P12927040126875870344

`∑[A089089(2*(n+1))]`
-/

namespace A001871.P12927040126875870344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P12927040126875870344

namespace A001871

/-- `∑[A089089(2*(n+1))]` -/
def P12927040126875870344.Spec : Prop :=
  ∀ n, P12927040126875870344.a n = A001871 n

end A001871

/-! ## A001871.P8831478138345266885

`∑[A089098(2*(n+1))]`
-/

namespace A001871.P8831478138345266885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P8831478138345266885

namespace A001871

/-- `∑[A089098(2*(n+1))]` -/
def P8831478138345266885.Spec : Prop :=
  ∀ n, P8831478138345266885.a n = A001871 n

end A001871

/-! ## A001871.P16925254284484406026

`∑[A129720(2*(n+1))]`
-/

namespace A001871.P16925254284484406026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P16925254284484406026

namespace A001871

/-- `∑[A129720(2*(n+1))]` -/
def P16925254284484406026.Spec : Prop :=
  ∀ n, P16925254284484406026.a n = A001871 n

end A001871

/-! ## A001871.P3948031404209168739

`∑[A281199(n+2)/2]`
-/

namespace A001871.P3948031404209168739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281199 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P3948031404209168739

namespace A001871

/-- `∑[A281199(n+2)/2]` -/
def P3948031404209168739.Spec : Prop :=
  ∀ n, P3948031404209168739.a n = (A001871 n : ℚ)

end A001871

/-! ## A001871.P2859389436349530142

`∑[A129722(n+2+n)]`
-/

namespace A001871.P2859389436349530142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P2859389436349530142

namespace A001871

/-- `∑[A129722(n+2+n)]` -/
def P2859389436349530142.Spec : Prop :=
  ∀ n, P2859389436349530142.a n = A001871 n

end A001871

/-! ## A001871.P10022234979896875575

`∑[∑[∑[A134512(2*n)]]]`
-/

namespace A001871.P10022234979896875575
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P10022234979896875575

namespace A001871

/-- `∑[∑[∑[A134512(2*n)]]]` -/
def P10022234979896875575.Spec : Prop :=
  ∀ n, P10022234979896875575.a n = A001871 n

end A001871

/-! ## A001871.P12153627876839699883

`∑[∑[∑[A291241(2*n)]]]`
-/

namespace A001871.P12153627876839699883
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P12153627876839699883

namespace A001871

/-- `∑[∑[∑[A291241(2*n)]]]` -/
def P12153627876839699883.Spec : Prop :=
  ∀ n, P12153627876839699883.a n = A001871 n

end A001871

/-! ## A001871.P6333060386757961103

`∑[∑[A029907(2*(n+1))]/2]`
-/

namespace A001871.P6333060386757961103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * (n + 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P6333060386757961103

namespace A001871

/-- `∑[∑[A029907(2*(n+1))]/2]` -/
def P6333060386757961103.Spec : Prop :=
  ∀ n, P6333060386757961103.a n = (A001871 n : ℚ)

end A001871

/-! ## A001871.P15009062875994172440

`∑[abs(Δ[a(n-2)+n*A000045(2*n)])]` with `a(0)=0, a(1)=1`
-/

namespace A001871.P15009062875994172440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + (n : ℤ) * A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P15009062875994172440

namespace A001871

/-- `∑[abs(Δ[a(n-2)+n*A000045(2*n)])]` -/
def P15009062875994172440.Spec : Prop :=
  ∀ n, P15009062875994172440.a n = A001871 n

end A001871

/-! ## A001871.P2217439286572190294

`∑[(n+1)*A000045(2*(n+1))-a(n-1)]` with `a(0)=1`
-/

namespace A001871.P2217439286572190294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * A000045 (2 * (n + 1)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001871.P2217439286572190294

namespace A001871

/-- `∑[(n+1)*A000045(2*(n+1))-a(n-1)]` -/
def P2217439286572190294.Spec : Prop :=
  ∀ n, P2217439286572190294.a n = A001871 n

end A001871

/-! ## A001871.P11386645772599890185

`A317408(n)+A059509(n+1)`
-/

namespace A001871.P11386645772599890185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 n + A059509 (n + 1)

end

end A001871.P11386645772599890185

namespace A001871

/-- `A317408(n)+A059509(n+1)` -/
def P11386645772599890185.Spec : Prop :=
  ∀ n, P11386645772599890185.a n = A001871 n

end A001871

/-!
# A001872: Convolved Fibonacci numbers.

The programs for A001872, there is no canonical definition to state claims against.
-/

/-! ## A001872.P12523305899472518074

`A036682(n)-2*A001628(n)`
-/

namespace A001872.P12523305899472518074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036682 n - 2 * A001628 n

end

end A001872.P12523305899472518074

/-! ## A001872.P8384118750310182783

`A038137(∑[n+4]+2)`
-/

namespace A001872.P8384118750310182783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001872.P8384118750310182783

/-! ## A001872.P15089979073321444626

`A037027(∑[n+3]+6)`
-/

namespace A001872.P15089979073321444626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A001872.P15089979073321444626

/-! ## A001872.P13997875338045240123

`A037027(A167614(n+2))%A007484(n)`
-/

namespace A001872.P13997875338045240123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037027 (A167614 (n + 2)).toNat) (A007484 n)

end

end A001872.P13997875338045240123

/-! ## A001872.P10311857973205425979

`lcm(A037027(A167614(n+2)), A056594(2*n))`
-/

namespace A001872.P10311857973205425979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037027 (A167614 (n + 2)).toNat) (A056594 (2 * n))

end

end A001872.P10311857973205425979

/-! ## A001872.P7868552642264855600

`A008288(C(2, n+2))*A037027(A167614(n+2))`
-/

namespace A001872.P7868552642264855600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (Nat.choose 2 (n + 2)) * A037027 (A167614 (n + 2)).toNat

end

end A001872.P7868552642264855600

/-! ## A001872.P16242632119278254790

`A037027(A167614(n+2))+A000038(A014574(n+1))`
-/

namespace A001872.P16242632119278254790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A167614 (n + 2)).toNat + A000038 (A014574 (n + 1)).toNat

end

end A001872.P16242632119278254790

/-! ## A001872.P14064926278769789650

`A038137(A000217(n+3)+n)*A057427(A050320(n+1)²)`
-/

namespace A001872.P14064926278769789650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A000217 (n + 3) + (n : ℤ)).toNat * A057427 (A050320 (n + 1) ^ 2).toNat

end

end A001872.P14064926278769789650

/-! ## A001872.P16284855546260284208

`∑[∑[A076791(A055999(n)+10)]]`
-/

namespace A001872.P16284855546260284208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076791 (A055999 n + 10).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001872.P16284855546260284208

/-! ## A001872.P6274290150820281762

`A238241(∑[n+1]+1)`
-/

namespace A001872.P6274290150820281762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238241 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001872.P6274290150820281762

/-! ## A001872.P8671383295048146987

`A155161(A155212(n)+12)`
-/

namespace A001872.P8671383295048146987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A155212 n + 12).toNat

end

end A001872.P8671383295048146987

/-! ## A001872.P11131441817727065026

`A155161(A055999(n+3)-(2*n+1))`
-/

namespace A001872.P11131441817727065026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A055999 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A001872.P11131441817727065026

/-! ## A001872.P13329251225669713499

`A111006(A000217(n+7)-4)`
-/

namespace A001872.P13329251225669713499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111006 (A000217 (n + 7) - 4).toNat

end

end A001872.P13329251225669713499

/-! ## A001872.P5765618002146873217

`record[A111006(A034856(n+2)-2)]`
-/

namespace A001872.P5765618002146873217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111006 (A034856 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001872.P5765618002146873217

/-!
# A001873: Convolved Fibonacci numbers.

The programs for A001873, the canonical program `A001873.P17274951507973493228` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001873 has offset 0).

The definition of A001873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001873.P17274951507973493228

`(4/n+1)*a(n-1)+(8/n+1)*a(n-2)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=65`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001873

/-- `(4/n+1)*a(n-1)+(8/n+1)*a(n-2)` -/
def P17274951507973493228.Spec : Prop :=
  ∀ n, P17274951507973493228.a n = (A001873 n : ℚ)

end A001873

/-! ## A001873.P1757967631742365028

`∪[A061180(n), A061184(n)]`
-/

namespace A001873.P1757967631742365028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061184 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001873.P1757967631742365028

namespace A001873

/-- `∪[A061180(n), A061184(n)]` -/
def P1757967631742365028.Spec : Prop :=
  ∀ n, (P1757967631742365028.a n : ℤ) = A001873 n

end A001873

/-! ## A001873.P12975907933665698061

`A038137(∑[n+5]+5)`
-/

namespace A001873.P12975907933665698061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001873.P12975907933665698061

namespace A001873

/-- `A038137(∑[n+5]+5)` -/
def P12975907933665698061.Spec : Prop :=
  ∀ n, P12975907933665698061.a n = A001873 n

end A001873

/-! ## A001873.P13934254129837204293

`record[A037027(∑[n+1]+4)]`
-/

namespace A001873.P13934254129837204293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001873.P13934254129837204293

namespace A001873

/-- `record[A037027(∑[n+1]+4)]` -/
def P13934254129837204293.Spec : Prop :=
  ∀ n, P13934254129837204293.a n = A001873 n

end A001873

/-! ## A001873.P17713751665790697558

`A037027(A155212(n)+12)`
-/

namespace A001873.P17713751665790697558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A155212 n + 12).toNat

end

end A001873.P17713751665790697558

namespace A001873

/-- `A037027(A155212(n)+12)` -/
def P17713751665790697558.Spec : Prop :=
  ∀ n, P17713751665790697558.a n = A001873 n

end A001873

/-! ## A001873.P2141282181176039820

`A037027(A167614(n+3)+1)`
-/

namespace A001873.P2141282181176039820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A167614 (n + 3) + 1).toNat

end

end A001873.P2141282181176039820

namespace A001873

/-- `A037027(A167614(n+3)+1)` -/
def P2141282181176039820.Spec : Prop :=
  ∀ n, P2141282181176039820.a n = A001873 n

end A001873

/-! ## A001873.P5727789088348582822

`A037027(A027379(n+2)+7)`
-/

namespace A001873.P5727789088348582822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A027379 (n + 2) + 7).toNat

end

end A001873.P5727789088348582822

namespace A001873

/-- `A037027(A027379(n+2)+7)` -/
def P5727789088348582822.Spec : Prop :=
  ∀ n, P5727789088348582822.a n = A001873 n

end A001873

/-! ## A001873.P6126361615208490310

`A037027(A000217(n+5)-(n+1))`
-/

namespace A001873.P6126361615208490310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A001873.P6126361615208490310

namespace A001873

/-- `A037027(A000217(n+5)-(n+1))` -/
def P6126361615208490310.Spec : Prop :=
  ∀ n, P6126361615208490310.a n = A001873 n

end A001873

/-! ## A001873.P4233471865599922324

`A152440(∑[n+2]+3)`
-/

namespace A001873.P4233471865599922324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152440 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001873.P4233471865599922324

namespace A001873

/-- `A152440(∑[n+2]+3)` -/
def P4233471865599922324.Spec : Prop :=
  ∀ n, P4233471865599922324.a n = A001873 n

end A001873

/-! ## A001873.P14885280572657122911

`A155161(Δ[A023545(n+1)]+9)`
-/

namespace A001873.P14885280572657122911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (f1 (n + 1) - f1 n + 9).toNat

end

end A001873.P14885280572657122911

namespace A001873

/-- `A155161(Δ[A023545(n+1)]+9)` -/
def P14885280572657122911.Spec : Prop :=
  ∀ n, P14885280572657122911.a n = A001873 n

end A001873

/-!
# A001874: Convolved Fibonacci numbers.

The programs for A001874, there is no canonical definition to state claims against.
-/

/-! ## A001874.P15521270161370233978

`A038137((n+4)²-∑[n+1])`
-/

namespace A001874.P15521270161370233978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001874.P15521270161370233978

/-! ## A001874.P7257588493951945498

`A037027(A167499(n+4))`
-/

namespace A001874.P7257588493951945498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A167499 (n + 4)).toNat

end

end A001874.P7257588493951945498

/-! ## A001874.P3841853945518652482

`A037027(Δ[A264443(n)]+9)`
-/

namespace A001874.P3841853945518652482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (f1 (n + 1) - f1 n + 9).toNat

end

end A001874.P3841853945518652482

/-! ## A001874.P12611402859504253815

`A037027(A253145(n+4)+5)`
-/

namespace A001874.P12611402859504253815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A253145 (n + 4) + 5).toNat

end

end A001874.P12611402859504253815

/-! ## A001874.P14023752555459533520

`A037027(Δ[A055831(n+4)]+10)`
-/

namespace A001874.P14023752555459533520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (f1 (n + 1) - f1 n + 10).toNat

end

end A001874.P14023752555459533520

/-! ## A001874.P12029167040294041778

`A037027(A000217(n+6)-(n+1))`
-/

namespace A001874.P12029167040294041778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A001874.P12029167040294041778

/-! ## A001874.P4872027085018931567

`A037027(A000124(n+6)-(n+2))`
-/

namespace A001874.P4872027085018931567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A001874.P4872027085018931567

/-! ## A001874.P2077877545148515315

`A037027(eq[6, A002260(n+1)])`
-/

namespace A001874.P2077877545148515315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001874.P2077877545148515315

/-! ## A001874.P7664384358947393143

`A238241(∑[n+2]+3)`
-/

namespace A001874.P7664384358947393143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238241 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001874.P7664384358947393143

/-!
# A001875: Convolved Fibonacci numbers.

The programs for A001875, there is no canonical definition to state claims against.
-/

/-! ## A001875.P10027090886134185033

`A037027(A000096(n+5)+7)`
-/

namespace A001875.P10027090886134185033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000096 (n + 5) + 7).toNat

end

end A001875.P10027090886134185033

/-! ## A001875.P5544160433129929675

`A037027(A000217(n+6)+6)`
-/

namespace A001875.P5544160433129929675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 (n + 6) + 6).toNat

end

end A001875.P5544160433129929675

/-! ## A001875.P3451863922443502444

`A038137(A000217(n+7)-7)`
-/

namespace A001875.P3451863922443502444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A000217 (n + 7) - 7).toNat

end

end A001875.P3451863922443502444

/-! ## A001875.P2154839300500214460

`A038137(Δ[Δ[A055832(n+5)]])`
-/

namespace A001875.P2154839300500214460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (f1 (n + 1) - f1 n).toNat

end

end A001875.P2154839300500214460

/-! ## A001875.P16910633553159587055

`A038137(Δ[A023551(n+2)]-1)`
-/

namespace A001875.P16910633553159587055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (f1 (n + 1) - f1 n - 1).toNat

end

end A001875.P16910633553159587055

/-! ## A001875.P6613097389470080927

`A038137(A000096(n+5)+n+1)`
-/

namespace A001875.P6613097389470080927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A001875.P6613097389470080927

/-! ## A001875.P4925826287858769612

`A037027(A167487(n+7)-A005843(n+8))`
-/

namespace A001875.P4925826287858769612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A167487 (n + 7) - A005843 (n + 8)).toNat

end

end A001875.P4925826287858769612

/-! ## A001875.P1891685696541571456

`A152440(A167614(n+2))`
-/

namespace A001875.P1891685696541571456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152440 (A167614 (n + 2)).toNat

end

end A001875.P1891685696541571456

/-! ## A001875.P11740645594114639378

`A155161(A000096(n+6)+8)`
-/

namespace A001875.P11740645594114639378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A000096 (n + 6) + 8).toNat

end

end A001875.P11740645594114639378

/-!
# A001876: Number of divisors of n of the form 5k+1; a(0)=0.

The programs for A001876, the canonical program `A001876.P1528332183595955459` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001876 has offset 0).

The definition of A001876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001876.P1528332183595955459

`∑{d}[n, A079998(#-1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001876

/-- `∑{d}[n, A079998(#-1)]` -/
def P1528332183595955459.Spec : Prop :=
  ∀ n, P1528332183595955459.a n = A001876 n

theorem P1528332183595955459.correct : P1528332183595955459.Spec := by
  intro n
  simp only [A001876]

end A001876

/-! ## A001876.P7065924704693026958

`∑{d}[n, val(A028387(#), 5)]`
-/

namespace A001876.P7065924704693026958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A028387 d).toNat 5

end

end A001876.P7065924704693026958

namespace A001876

/-- `∑{d}[n, val(A028387(#), 5)]` -/
def P7065924704693026958.Spec : Prop :=
  ∀ n, (P7065924704693026958.a n : ℤ) = A001876 n

end A001876

/-! ## A001876.P9543864996011369236

`∑{d}[n, and(1, A047486(#)+1)]`
-/

namespace A001876.P9543864996011369236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A047486 d + 1)

end

end A001876.P9543864996011369236

namespace A001876

/-- `∑{d}[n, and(1, A047486(#)+1)]` -/
def P9543864996011369236.Spec : Prop :=
  ∀ n, P9543864996011369236.a n = A001876 n

end A001876

/-! ## A001876.P3456028514004103320

`A083912(comp[2*(n+1)]+1)`
-/

namespace A001876.P3456028514004103320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A001876.P3456028514004103320

namespace A001876

/-- `A083912(comp[2*(n+1)]+1)` -/
def P3456028514004103320.Spec : Prop :=
  ∀ n, P3456028514004103320.a n = A001876 n

end A001876

/-! ## A001876.P5896839033564793670

`∑{d}[n, (A173267(#+1)%5)%2]`
-/

namespace A001876.P5896839033564793670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod (A173267 (d + 1)) 5) 2

end

end A001876.P5896839033564793670

namespace A001876

/-- `∑{d}[n, (A173267(#+1)%5)%2]` -/
def P5896839033564793670.Spec : Prop :=
  ∀ n, P5896839033564793670.a n = A001876 n

end A001876

/-! ## A001876.P16104611171719800424

`A083912(2*(abs(1-n)+1))%(n+1)`
-/

namespace A001876.P16104611171719800424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083912 (2 * (|1 - (n : ℤ)| + 1)).toNat) (n + 1 : ℤ)

end

end A001876.P16104611171719800424

namespace A001876

/-- `A083912(2*(abs(1-n)+1))%(n+1)` -/
def P16104611171719800424.Spec : Prop :=
  ∀ n, P16104611171719800424.a n = A001876 n

end A001876

/-!
# A001877: Number of divisors of n of the form 5k+2; a(0) = 0.

The programs for A001877, the canonical program `A001877.P11806035189121010381` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001877 has offset 0).

The definition of A001877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001877.P2041509593426673647

`Δ[A218445(abs(1-n))]`
-/

namespace A001877.P2041509593426673647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218445 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001877.P2041509593426673647

namespace A001877

/-- `Δ[A218445(abs(1-n))]` -/
def P2041509593426673647.Spec : Prop :=
  ∀ n, P2041509593426673647.a n = A001877 n

end A001877

/-! ## A001877.P11806035189121010381

`∑{d}[n, and(1, A047412(#))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001877

/-- `∑{d}[n, and(1, A047412(#))]` -/
def P11806035189121010381.Spec : Prop :=
  ∀ n, P11806035189121010381.a n = A001877 n

theorem P11806035189121010381.correct : P11806035189121010381.Spec := by
  intro n
  simp only [A001877]

end A001877

/-! ## A001877.P7495728420238353684

`∑{d}[n, val(A000217(#)+2, 5)]`
-/

namespace A001877.P7495728420238353684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A000217 d + 2).toNat 5

end

end A001877.P7495728420238353684

namespace A001877

/-- `∑{d}[n, val(A000217(#)+2, 5)]` -/
def P7495728420238353684.Spec : Prop :=
  ∀ n, (P7495728420238353684.a n : ℤ) = A001877 n

end A001877

/-! ## A001877.P11758688408305452495

`∑{d}[n, (A173267(#)%5)%2]`
-/

namespace A001877.P11758688408305452495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod (A173267 d) 5) 2

end

end A001877.P11758688408305452495

namespace A001877

/-- `∑{d}[n, (A173267(#)%5)%2]` -/
def P11758688408305452495.Spec : Prop :=
  ∀ n, P11758688408305452495.a n = A001877 n

end A001877

/-! ## A001877.P15358794272814780860

`∑{d}[n, (A157112(#+1)%10)%3]`
-/

namespace A001877.P15358794272814780860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod (A157112 (d + 1)) 10) 3

end

end A001877.P15358794272814780860

namespace A001877

/-- `∑{d}[n, (A157112(#+1)%10)%3]` -/
def P15358794272814780860.Spec : Prop :=
  ∀ n, P15358794272814780860.a n = A001877 n

end A001877

/-! ## A001877.P9355117700809148000

`A083914(comp[2*(n+1)]+1)`
-/

namespace A001877.P9355117700809148000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A001877.P9355117700809148000

namespace A001877

/-- `A083914(comp[2*(n+1)]+1)` -/
def P9355117700809148000.Spec : Prop :=
  ∀ n, P9355117700809148000.a n = A001877 n

end A001877

/-! ## A001877.P7462663275473005578

`A083914(2*n+1)+A083914(A092535(n+1))`
-/

namespace A001877.P7462663275473005578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * n + 1) + A083914 (A092535 (n + 1)).toNat

end

end A001877.P7462663275473005578

namespace A001877

/-- `A083914(2*n+1)+A083914(A092535(n+1))` -/
def P7462663275473005578.Spec : Prop :=
  ∀ n, P7462663275473005578.a n = A001877 n

end A001877

/-! ## A001877.P7410606773000215845

`A083914(2*n+1)+A083914(A300576(n+2))`
-/

namespace A001877.P7410606773000215845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * n + 1) + A083914 (A300576 (n + 2)).toNat

end

end A001877.P7410606773000215845

namespace A001877

/-- `A083914(2*n+1)+A083914(A300576(n+2))` -/
def P7410606773000215845.Spec : Prop :=
  ∀ n, P7410606773000215845.a n = A001877 n

end A001877

/-! ## A001877.P18107342920798791657

`∑{d}[n, A079998(A017293(n)-#)]`
-/

namespace A001877.P18107342920798791657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (A017293 n - (d : ℤ)).toNat

end

end A001877.P18107342920798791657

namespace A001877

/-- `∑{d}[n, A079998(A017293(n)-#)]` -/
def P18107342920798791657.Spec : Prop :=
  ∀ n, P18107342920798791657.a n = A001877 n

end A001877

/-!
# A001878: Number of divisors of n of the form 5k+3; a(0) = 0.

The programs for A001878, the canonical program `A001878.P13516976986806296717` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001878 has offset 0).

The definition of A001878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001878.P15275276949604051912

`Δ[A218446(abs(1-n))]`
-/

namespace A001878.P15275276949604051912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218446 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001878.P15275276949604051912

namespace A001878

/-- `Δ[A218446(abs(1-n))]` -/
def P15275276949604051912.Spec : Prop :=
  ∀ n, P15275276949604051912.a n = A001878 n

end A001878

/-! ## A001878.P13516976986806296717

`∑{d}[n, A079998(#+2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001878

/-- `∑{d}[n, A079998(#+2)]` -/
def P13516976986806296717.Spec : Prop :=
  ∀ n, P13516976986806296717.a n = A001878 n

theorem P13516976986806296717.correct : P13516976986806296717.Spec := by
  intro n
  simp only [A001878]

end A001878

/-! ## A001878.P16086224758331598878

`∑{d}[n, A050782(val(#+2, 5))]`
-/

namespace A001878.P16086224758331598878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050782 (SequenceMachineLib.valuation (d + 2) 5)

end

end A001878.P16086224758331598878

namespace A001878

/-- `∑{d}[n, A050782(val(#+2, 5))]` -/
def P16086224758331598878.Spec : Prop :=
  ∀ n, P16086224758331598878.a n = A001878 n

end A001878

/-! ## A001878.P96898393691104239

`∑{d}[n, (A157112(#)%10)%3]`
-/

namespace A001878.P96898393691104239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod (A157112 d) 10) 3

end

end A001878.P96898393691104239

namespace A001878

/-- `∑{d}[n, (A157112(#)%10)%3]` -/
def P96898393691104239.Spec : Prop :=
  ∀ n, P96898393691104239.a n = A001878 n

end A001878

/-! ## A001878.P14351686726126580798

`∑{d}[n, gcd(2, A259754(#+1))-1]`
-/

namespace A001878.P14351686726126580798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Int.gcd 2 (A259754 (d + 1)) : ℤ) - 1)

end

end A001878.P14351686726126580798

namespace A001878

/-- `∑{d}[n, gcd(2, A259754(#+1))-1]` -/
def P14351686726126580798.Spec : Prop :=
  ∀ n, P14351686726126580798.a n = A001878 n

end A001878

/-! ## A001878.P4561614652145022770

`A083916(A004277(n))`
-/

namespace A001878.P4561614652145022770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A004277 n).toNat

end

end A001878.P4561614652145022770

namespace A001878

/-- `A083916(A004277(n))` -/
def P4561614652145022770.Spec : Prop :=
  ∀ n, P4561614652145022770.a n = A001878 n

end A001878

/-! ## A001878.P9744740464279670344

`A083916(A004275(n+1))`
-/

namespace A001878.P9744740464279670344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A004275 (n + 1)).toNat

end

end A001878.P9744740464279670344

namespace A001878

/-- `A083916(A004275(n+1))` -/
def P9744740464279670344.Spec : Prop :=
  ∀ n, P9744740464279670344.a n = A001878 n

end A001878

/-! ## A001878.P16673818570918679532

`A083916(A092535(n+1))`
-/

namespace A001878.P16673818570918679532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A092535 (n + 1)).toNat

end

end A001878.P16673818570918679532

namespace A001878

/-- `A083916(A092535(n+1))` -/
def P16673818570918679532.Spec : Prop :=
  ∀ n, P16673818570918679532.a n = A001878 n

end A001878

/-! ## A001878.P16603234591566595832

`A083916(A316571(n+1))`
-/

namespace A001878.P16603234591566595832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A316571 (n + 1)).toNat

end

end A001878.P16603234591566595832

namespace A001878

/-- `A083916(A316571(n+1))` -/
def P16603234591566595832.Spec : Prop :=
  ∀ n, P16603234591566595832.a n = A001878 n

end A001878

/-! ## A001878.P8557861900246357315

`A083916(A004278(n+2))`
-/

namespace A001878.P8557861900246357315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A004278 (n + 2)).toNat

end

end A001878.P8557861900246357315

namespace A001878

/-- `A083916(A004278(n+2))` -/
def P8557861900246357315.Spec : Prop :=
  ∀ n, P8557861900246357315.a n = A001878 n

end A001878

/-! ## A001878.P13334245997343373819

`A083916(A058992(n+2))`
-/

namespace A001878.P13334245997343373819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A058992 (n + 2)).toNat

end

end A001878.P13334245997343373819

namespace A001878

/-- `A083916(A058992(n+2))` -/
def P13334245997343373819.Spec : Prop :=
  ∀ n, P13334245997343373819.a n = A001878 n

end A001878

/-! ## A001878.P8487336205915634819

`A083916(A300576(n+2))`
-/

namespace A001878.P8487336205915634819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A300576 (n + 2)).toNat

end

end A001878.P8487336205915634819

namespace A001878

/-- `A083916(A300576(n+2))` -/
def P8487336205915634819.Spec : Prop :=
  ∀ n, P8487336205915634819.a n = A001878 n

end A001878

/-! ## A001878.P10859940513080854173

`A083916(A028310(2*n))`
-/

namespace A001878.P10859940513080854173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A028310 (2 * n)).toNat

end

end A001878.P10859940513080854173

namespace A001878

/-- `A083916(A028310(2*n))` -/
def P10859940513080854173.Spec : Prop :=
  ∀ n, P10859940513080854173.a n = A001878 n

end A001878

/-! ## A001878.P6138629563776625746

`A083916(A028310(n)+n)`
-/

namespace A001878.P6138629563776625746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A028310 n + (n : ℤ)).toNat

end

end A001878.P6138629563776625746

namespace A001878

/-- `A083916(A028310(n)+n)` -/
def P6138629563776625746.Spec : Prop :=
  ∀ n, P6138629563776625746.a n = A001878 n

end A001878

/-! ## A001878.P6681101710839549691

`A083916(A000007(n)+2*n)`
-/

namespace A001878.P6681101710839549691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A000007 n + (2 * n : ℤ)).toNat

end

end A001878.P6681101710839549691

namespace A001878

/-- `A083916(A000007(n)+2*n)` -/
def P6681101710839549691.Spec : Prop :=
  ∀ n, P6681101710839549691.a n = A001878 n

end A001878

/-! ## A001878.P6763886988350656925

`A083916(A370532(n+2))`
-/

namespace A001878.P6763886988350656925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A370532 (n + 2)).toNat

end

end A001878.P6763886988350656925

namespace A001878

/-- `A083916(A370532(n+2))` -/
def P6763886988350656925.Spec : Prop :=
  ∀ n, P6763886988350656925.a n = A001878 n

end A001878

/-!
# A001879: a(n) = (2n+2)!/(n!*2^(n+1)).

The programs for A001879, the canonical program `A001879.P2431875205417418785` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001879 has offset 0).

The definition of A001879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001879.P2431875205417418785

`6*a(n-1)+(2*n-1)²*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001879

/-- `6*a(n-1)+(2*n-1)²*a(n-2)` -/
def P2431875205417418785.Spec : Prop :=
  ∀ n, P2431875205417418785.a n = A001879 n

theorem P2431875205417418785.correct : P2431875205417418785.Spec := by
  intro n
  simp only [A001879]

end A001879

/-! ## A001879.P11561671003489818504

`a(n-1)*(2*n+4)-a(n-2)*(2*n-1)` with `a(0)=1, a(1)=6`
-/

namespace A001879.P11561671003489818504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) * (2 * n + 4 : ℤ) - a (n - 2) * ((2 * n : ℤ) - 1)

end

end A001879.P11561671003489818504

namespace A001879

/-- `a(n-1)*(2*n+4)-a(n-2)*(2*n-1)` -/
def P11561671003489818504.Spec : Prop :=
  ∀ n, P11561671003489818504.a n = A001879 n

end A001879

/-! ## A001879.P14450073840820697244

`(2*n+2)!/(n!*2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001879.P14450073840820697244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 2) : ℚ) / (Nat.factorial n * 2 ^ (n + 1) : ℚ)

end

end A001879.P14450073840820697244

namespace A001879

/-- `(2*n+2)!/(n!*2^(n+1))` -/
def P14450073840820697244.Spec : Prop :=
  ∀ n, P14450073840820697244.a n = (A001879 n : ℚ)

end A001879

/-! ## A001879.P10725151457526223601

`Δ[∏[Δ[n²]]/2]`
-/

namespace A001879.P10725151457526223601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001879.P10725151457526223601

namespace A001879

/-- `Δ[∏[Δ[n²]]/2]` -/
def P10725151457526223601.Spec : Prop :=
  ∀ n, P10725151457526223601.a n = (A001879 n : ℚ)

end A001879

/-! ## A001879.P15866566984471015910

`(n+1)*∏[record[xor(1, n)]]`
-/

namespace A001879.P15866566984471015910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001879.P15866566984471015910

namespace A001879

/-- `(n+1)*∏[record[xor(1, n)]]` -/
def P15866566984471015910.Spec : Prop :=
  ∀ n, (P15866566984471015910.a n : ℤ) = A001879 n

end A001879

/-! ## A001879.P3782614283724818162

`(n+1)*∏[or(1, 2*n)]`
-/

namespace A001879.P3782614283724818162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001879.P3782614283724818162

namespace A001879

/-- `(n+1)*∏[or(1, 2*n)]` -/
def P3782614283724818162.Spec : Prop :=
  ∀ n, (P3782614283724818162.a n : ℤ) = A001879 n

end A001879

/-! ## A001879.P9444976497510683894

`(n+1)*∏[xor(1, 2*n)]`
-/

namespace A001879.P9444976497510683894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001879.P9444976497510683894

namespace A001879

/-- `(n+1)*∏[xor(1, 2*n)]` -/
def P9444976497510683894.Spec : Prop :=
  ∀ n, (P9444976497510683894.a n : ℤ) = A001879 n

end A001879

/-! ## A001879.P7767898505628600489

`(n+1)*∏[lcm(2, 2*n)+1]`
-/

namespace A001879.P7767898505628600489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001879.P7767898505628600489

namespace A001879

/-- `(n+1)*∏[lcm(2, 2*n)+1]` -/
def P7767898505628600489.Spec : Prop :=
  ∀ n, (P7767898505628600489.a n : ℤ) = A001879 n

end A001879

/-! ## A001879.P6894556788543633002

`(n+1)*∏[a(n-1)+2]` with `a(0)=1`
-/

namespace A001879.P6894556788543633002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001879.P6894556788543633002

namespace A001879

/-- `(n+1)*∏[a(n-1)+2]` -/
def P6894556788543633002.Spec : Prop :=
  ∀ n, (P6894556788543633002.a n : ℤ) = A001879 n

end A001879

/-! ## A001879.P858191786119678065

`C(n+1, n)*∏[2*n+1]`
-/

namespace A001879.P858191786119678065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001879.P858191786119678065

namespace A001879

/-- `C(n+1, n)*∏[2*n+1]` -/
def P858191786119678065.Spec : Prop :=
  ∀ n, (P858191786119678065.a n : ℤ) = A001879 n

end A001879

/-!
# A001880: Coefficients of Bessel polynomials y_n (x).

The programs for A001880, there is no canonical definition to state claims against.
-/

/-! ## A001880.P13842102313164935443

`∑[(n+1)²]*∏[Δ[n²]]`
-/

namespace A001880.P13842102313164935443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A001880.P13842102313164935443

/-! ## A001880.P3754424358326506905

`(2*n+3)*a(n-1)+(n+1)*∏[2*n+3]/3` with `a(0)=1`
-/

namespace A001880.P3754424358326506905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 3 : ℚ) * a (n - 1) + (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)

end

end A001880.P3754424358326506905

/-! ## A001880.P18162163942269483392

`A049403((n+1)²+(n+3)²)`
-/

namespace A001880.P18162163942269483392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A001880.P18162163942269483392

/-! ## A001880.P7326326785263778909

`A000457(n)+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001880.P7326326785263778909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000457 n + (2 * n + 3 : ℤ) * a (n - 1)

end

end A001880.P7326326785263778909

/-! ## A001880.P9726606714662469650

`A100861(∑[2*(n+2)])+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001880.P9726606714662469650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100861 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 3 : ℤ) * a (n - 1)

end

end A001880.P9726606714662469650

/-! ## A001880.P14984348656949971130

`A065931(∑[n+2])/3+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001880.P14984348656949971130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A065931 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3 + (2 * n + 3 : ℚ) * a (n - 1)

end

end A001880.P14984348656949971130

/-! ## A001880.P7377083229532580294

`A001498(∑[n+3]+n+3)+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001880.P7377083229532580294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001498 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) + (2 * n + 3 : ℤ) * a (n - 1)

end

end A001880.P7377083229532580294

/-! ## A001880.P5674773009491074487

`A144299(2*(n+1)*(n+3))+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001880.P5674773009491074487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144299 (2 * ((n + 1) * (n + 3))) + (2 * n + 3 : ℤ) * a (n - 1)

end

end A001880.P5674773009491074487

/-! ## A001880.P11215396102568618778

`A001498(A052905(n+2))`
-/

namespace A001880.P11215396102568618778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A052905 (n + 2)).toNat

end

end A001880.P11215396102568618778

/-! ## A001880.P9814161232983643498

`A001498(eq[4, A025581(n)])`
-/

namespace A001880.P9814161232983643498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001880.P9814161232983643498

/-!
# A001881: Coefficients of Bessel polynomials y_n (x).

The programs for A001881, the canonical program `A001881.P1949476523208783186` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001881 has offset 5).

The definition of A001881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001881.P1949476523208783186

`(2*(n+5)-5)!/(120*n!*2^n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001881

/-- `(2*(n+5)-5)!/(120*n!*2^n)` -/
def P1949476523208783186.Spec : Prop :=
  ∀ n, P1949476523208783186.a n = (A001881 (n + 5) : ℚ)

end A001881

/-! ## A001881.P12818728826355346057

`A130757(∑[n+2]+3)`
-/

namespace A001881.P12818728826355346057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130757 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001881.P12818728826355346057

namespace A001881

/-- `A130757(∑[n+2]+3)` -/
def P12818728826355346057.Spec : Prop :=
  ∀ n, P12818728826355346057.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P1181093110813845099

`A100861((n+3)²+n)`
-/

namespace A001881.P1181093110813845099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 ((n + 3) ^ 2 + n)

end

end A001881.P1181093110813845099

namespace A001881

/-- `A100861((n+3)²+n)` -/
def P1181093110813845099.Spec : Prop :=
  ∀ n, P1181093110813845099.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P4493780453132759299

`∑[n+1]*A051579(n)`
-/

namespace A001881.P4493780453132759299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051579 n

end

end A001881.P4493780453132759299

namespace A001881

/-- `∑[n+1]*A051579(n)` -/
def P4493780453132759299.Spec : Prop :=
  ∀ n, P4493780453132759299.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P18001240358977893634

`∑[n+1]*∏[record[A197916(2*n+1)]]`
-/

namespace A001881.P18001240358977893634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197916 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A001881.P18001240358977893634

namespace A001881

/-- `∑[n+1]*∏[record[A197916(2*n+1)]]` -/
def P18001240358977893634.Spec : Prop :=
  ∀ n, P18001240358977893634.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P4238221824508703576

`A000217(2*(n+2))/n*a(n-1)` with `a(0)=1`
-/

namespace A001881.P4238221824508703576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000217 (2 * (n + 2)) : ℚ) / (n : ℚ) * a (n - 1)

end

end A001881.P4238221824508703576

namespace A001881

/-- `A000217(2*(n+2))/n*a(n-1)` -/
def P4238221824508703576.Spec : Prop :=
  ∀ n, P4238221824508703576.a n = (A001881 (n + 5) : ℚ)

end A001881

/-! ## A001881.P11526819630395597521

`A144299(A268581(n+1))`
-/

namespace A001881.P11526819630395597521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A268581 (n + 1)).toNat

end

end A001881.P11526819630395597521

namespace A001881

/-- `A144299(A268581(n+1))` -/
def P11526819630395597521.Spec : Prop :=
  ∀ n, P11526819630395597521.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P823517683451654792

`A001498(eq[5, A025581(n)])`
-/

namespace A001881.P823517683451654792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001881.P823517683451654792

namespace A001881

/-- `A001498(eq[5, A025581(n)])` -/
def P823517683451654792.Spec : Prop :=
  ∀ n, P823517683451654792.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P9236152689815843208

`A001498(eq[11, A099375(n)])`
-/

namespace A001881.P9236152689815843208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001881.P9236152689815843208

namespace A001881

/-- `A001498(eq[11, A099375(n)])` -/
def P9236152689815843208.Spec : Prop :=
  ∀ n, P9236152689815843208.a n = A001881 (n + 5)

end A001881

/-! ## A001881.P5698787421586129027

`A001498(eq[6, A004736(n+1)])`
-/

namespace A001881.P5698787421586129027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001881.P5698787421586129027

namespace A001881

/-- `A001498(eq[6, A004736(n+1)])` -/
def P5698787421586129027.Spec : Prop :=
  ∀ n, P5698787421586129027.a n = A001881 (n + 5)

end A001881

/-!
# A001882: a(2n) = a(2n-1) + 2a(2n-2), a(2n+1) = a(2n) + a(2n-1), with a(1) = 2 and a(2) = 3.

The programs for A001882, the canonical program `A001882.P9494161293497391473` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001882 has offset 1).

The definition of A001882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001882.P2143820425762026234

`ogf((2+3x-3x^2-x^3)/(1-4x^2+2x^4))`
-/

namespace A001882.P2143820425762026234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -3, -1] [1, 0, -4, 0, 2] n

end

end A001882.P2143820425762026234

namespace A001882

/-- `ogf((2+3x-3x^2-x^3)/(1-4x^2+2x^4))` -/
def P2143820425762026234.Spec : Prop :=
  ∀ n, P2143820425762026234.a n = A001882 (n + 1)

end A001882

/-! ## A001882.P9494161293497391473

`a(n-1)+(n%2+1)*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001882

/-- `a(n-1)+(n%2+1)*a(n-2)` -/
def P9494161293497391473.Spec : Prop :=
  ∀ n, (P9494161293497391473.a n : ℤ) = A001882 (n + 1)

theorem P9494161293497391473.correct : P9494161293497391473.Spec := by
  intro n
  simp only [A001882, Nat.add_sub_cancel]

end A001882

/-! ## A001882.P935237858378951039

`a(n-1)+gcd(2, n+1)*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A001882.P935237858378951039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + Nat.gcd 2 (n + 1) * a (n - 2)

end

end A001882.P935237858378951039

namespace A001882

/-- `a(n-1)+gcd(2, n+1)*a(n-2)` -/
def P935237858378951039.Spec : Prop :=
  ∀ n, (P935237858378951039.a n : ℤ) = A001882 (n + 1)

end A001882

/-! ## A001882.P6735041474543733335

`a(n-1)+lcm(2, n)/n*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A001882.P6735041474543733335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (Nat.lcm 2 n : ℚ) / (n : ℚ) * a (n - 2)

end

end A001882.P6735041474543733335

namespace A001882

/-- `a(n-1)+lcm(2, n)/n*a(n-2)` -/
def P6735041474543733335.Spec : Prop :=
  ∀ n, P6735041474543733335.a n = (A001882 (n + 1) : ℚ)

end A001882

/-! ## A001882.P8700839798515977804

`A062113(n)+A062112(n+1)`
-/

namespace A001882.P8700839798515977804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 n + A062112 (n + 1)

end

end A001882.P8700839798515977804

namespace A001882

/-- `A062113(n)+A062112(n+1)` -/
def P8700839798515977804.Spec : Prop :=
  ∀ n, P8700839798515977804.a n = A001882 (n + 1)

end A001882

/-! ## A001882.P4481081088839619621

`A062112(n+3)-A121720(n+1)`
-/

namespace A001882.P4481081088839619621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 3) - A121720 (n + 1)

end

end A001882.P4481081088839619621

namespace A001882

/-- `A062112(n+3)-A121720(n+1)` -/
def P4481081088839619621.Spec : Prop :=
  ∀ n, P4481081088839619621.a n = A001882 (n + 1)

end A001882

/-! ## A001882.P4223736404191222870

`2*A062113(n)-A121720(n+1)`
-/

namespace A001882.P4223736404191222870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062113 n - A121720 (n + 1)

end

end A001882.P4223736404191222870

namespace A001882

/-- `2*A062113(n)-A121720(n+1)` -/
def P4223736404191222870.Spec : Prop :=
  ∀ n, P4223736404191222870.a n = A001882 (n + 1)

end A001882

/-! ## A001882.P11223552656044552961

`A062112(n+1)+A121720(n+1)+A062112(n+1)`
-/

namespace A001882.P11223552656044552961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 1) + (A121720 (n + 1) + A062112 (n + 1))

end

end A001882.P11223552656044552961

namespace A001882

/-- `A062112(n+1)+A121720(n+1)+A062112(n+1)` -/
def P11223552656044552961.Spec : Prop :=
  ∀ n, P11223552656044552961.a n = A001882 (n + 1)

end A001882

/-! ## A001882.P6511656624860469633

`3*A062113(n)-A007068(n+1)`
-/

namespace A001882.P6511656624860469633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062113 n - A007068 (n + 1)

end

end A001882.P6511656624860469633

namespace A001882

/-- `3*A062113(n)-A007068(n+1)` -/
def P6511656624860469633.Spec : Prop :=
  ∀ n, P6511656624860469633.a n = A001882 (n + 1)

end A001882

/-! ## A001882.P13235975251803653581

`A062112(n+1)+A217730(n+1)-A217730(n)`
-/

namespace A001882.P13235975251803653581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 1) + (A217730 (n + 1) - A217730 n)

end

end A001882.P13235975251803653581

namespace A001882

/-- `A062112(n+1)+A217730(n+1)-A217730(n)` -/
def P13235975251803653581.Spec : Prop :=
  ∀ n, P13235975251803653581.a n = A001882 (n + 1)

end A001882

/-!
# A001883: Number of permutations s of {1,2,...,n} such that |s(i)-i|>1 for each i=1,2,...,n.

The programs for A001883, there is no canonical definition to state claims against.
-/

/-! ## A001883.P7461146841078617442

`A000166(n)-A296050(n)`
-/

namespace A001883.P7461146841078617442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A296050 n

end

end A001883.P7461146841078617442

/-! ## A001883.P17176122486324337671

`abs(A182386(n))-A296050(n)`
-/

namespace A001883.P17176122486324337671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A296050 n

end

end A001883.P17176122486324337671

/-! ## A001883.P14527496707419642779

`A068106(∑[n])-A296050(n)`
-/

namespace A001883.P14527496707419642779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A296050 n

end

end A001883.P14527496707419642779

/-! ## A001883.P6297760380804143031

`A060475(A000096(n))-A296050(n)`
-/

namespace A001883.P6297760380804143031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat - A296050 n

end

end A001883.P6297760380804143031

/-! ## A001883.P10343825599226777981

`A000142(n)-(A296050(n)+A002467(n))`
-/

namespace A001883.P10343825599226777981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A296050 n + A002467 n)

end

end A001883.P10343825599226777981

/-! ## A001883.P13328534255397372250

`A047920(A000096(n))-A296050(A028310(n))`
-/

namespace A001883.P13328534255397372250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000096 n).toNat - A296050 (A028310 n).toNat

end

end A001883.P13328534255397372250

/-!
# A001884: Hit polynomials.

The programs for A001884, there is no canonical definition to state claims against.
-/

/-! ## A001884.P15019722004695392583

`A080018(∑[n+1]+1)`
-/

namespace A001884.P15019722004695392583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001884.P15019722004695392583

/-! ## A001884.P16503113086463991732

`A080018(A134869(n+1))+A000007(n)`
-/

namespace A001884.P16503113086463991732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (A134869 (n + 1)).toNat + A000007 n

end

end A001884.P16503113086463991732

/-! ## A001884.P6018867698391893610

`A151878(n)+A080018(A134869(n+1))`
-/

namespace A001884.P6018867698391893610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A080018 (A134869 (n + 1)).toNat

end

end A001884.P6018867698391893610

/-! ## A001884.P186870588951091401

`A054977(n+1)*A080018(A000124(n+1))`
-/

namespace A001884.P186870588951091401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A080018 (A000124 (n + 1)).toNat

end

end A001884.P186870588951091401

/-! ## A001884.P1489990148818025010

`A159075(2*n)+A080018(A000124(n+1))`
-/

namespace A001884.P1489990148818025010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (2 * n) + A080018 (A000124 (n + 1)).toNat

end

end A001884.P1489990148818025010

/-!
# A001885: Hit polynomials.

The programs for A001885, there is no canonical definition to state claims against.
-/

/-! ## A001885.P2143709532282549534

`A080018(∑[n+2]+3)`
-/

namespace A001885.P2143709532282549534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001885.P2143709532282549534

/-!
# A001886: Hit polynomials.

The programs for A001886, there is no canonical definition to state claims against.
-/

/-! ## A001886.P5792911922565922094

`A080018(A167614(n+2))`
-/

namespace A001886.P5792911922565922094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (A167614 (n + 2)).toNat

end

end A001886.P5792911922565922094

/-! ## A001886.P13137652208951798918

`A080018(A141214(n)+6)`
-/

namespace A001886.P13137652208951798918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (A141214 n + 6).toNat

end

end A001886.P13137652208951798918

/-! ## A001886.P5349926584766300471

`A080018(A052905(n)+8)`
-/

namespace A001886.P5349926584766300471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (A052905 n + 8).toNat

end

end A001886.P5349926584766300471

/-! ## A001886.P14339457792223803136

`A080018(eq[2, A141169(n)])`
-/

namespace A001886.P14339457792223803136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001886.P14339457792223803136

/-! ## A001886.P17739204469614730466

`A080018(eq[3, A002262(n)])`
-/

namespace A001886.P17739204469614730466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001886.P17739204469614730466

/-!
# A001887: Number of permutations p of {1,2,...,n} such that p(i) - i < 0 or p(i) - i > 2 for all i.

The programs for A001887, there is no canonical definition to state claims against.
-/

/-! ## A001887.P17745069455336295825

`A080061(∑[n])`
-/

namespace A001887.P17745069455336295825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001887.P17745069455336295825

/-! ## A001887.P11102521939324366858

`and(-1, A080061(A000217(n)))`
-/

namespace A001887.P11102521939324366858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A080061 (A000217 n).toNat)

end

end A001887.P11102521939324366858

/-! ## A001887.P10893057172078370495

`A080061(A000217(n))+A025469(n)`
-/

namespace A001887.P10893057172078370495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A000217 n).toNat + A025469 n

end

end A001887.P10893057172078370495

/-! ## A001887.P4570776313712567157

`A016126(n)*A080061(A000217(n))`
-/

namespace A001887.P4570776313712567157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016126 n * A080061 (A000217 n).toNat

end

end A001887.P4570776313712567157

/-! ## A001887.P1885524883947664163

`A080061(A000217(n))*A326307(n)`
-/

namespace A001887.P1885524883947664163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A000217 n).toNat * A326307 n

end

end A001887.P1885524883947664163

/-!
# A001888: Hit polynomials.

The programs for A001888, there is no canonical definition to state claims against.
-/

/-! ## A001888.P10130151058931409422

`A080061(∑[n+1]+1)`
-/

namespace A001888.P10130151058931409422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001888.P10130151058931409422

/-! ## A001888.P2582812317639760922

`A080061(A134869(n+1))+A000007(n)`
-/

namespace A001888.P2582812317639760922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A134869 (n + 1)).toNat + A000007 n

end

end A001888.P2582812317639760922

/-! ## A001888.P12223155237117134661

`A151933(n)+A080061(A134869(n+1))`
-/

namespace A001888.P12223155237117134661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A080061 (A134869 (n + 1)).toNat

end

end A001888.P12223155237117134661

/-! ## A001888.P17062406133397876400

`or(A010057(n), A080061(A134869(n+1)))`
-/

namespace A001888.P17062406133397876400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 n) (A080061 (A134869 (n + 1)).toNat)

end

end A001888.P17062406133397876400

/-! ## A001888.P15964341356814968294

`A290079((4*n)²)+A080061(A134869(n+1))`
-/

namespace A001888.P15964341356814968294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 ((4 * n) ^ 2) + A080061 (A134869 (n + 1)).toNat

end

end A001888.P15964341356814968294

/-!
# A001889: Hit polynomials.

The programs for A001889, there is no canonical definition to state claims against.
-/

/-! ## A001889.P3677235409999758125

`A080061(∑[n+2]+3)`
-/

namespace A001889.P3677235409999758125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001889.P3677235409999758125

/-! ## A001889.P12136913564351022115

`record[A080061(C(n+1, 2)+2)]`
-/

namespace A001889.P12136913564351022115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (Nat.choose (n + 1) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001889.P12136913564351022115

/-! ## A001889.P17969788141273966666

`record[A080061(floor((2*n+1)²/8)+2)]`
-/

namespace A001889.P17969788141273966666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001889.P17969788141273966666

/-! ## A001889.P5519354083187125235

`record[A010054(n)*A080061(n+2)]`
-/

namespace A001889.P5519354083187125235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A080061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001889.P5519354083187125235

/-! ## A001889.P7823843238340163401

`record[A080061(n+2)/A183244(n+1)]`
-/

namespace A001889.P7823843238340163401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080061 (n + 2) : ℚ) / (A183244 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001889.P7823843238340163401

/-!
# A001890: Hit polynomials.

The programs for A001890, there is no canonical definition to state claims against.
-/

/-! ## A001890.P9505467484629941025

`A080061(A167614(n+2))`
-/

namespace A001890.P9505467484629941025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A167614 (n + 2)).toNat

end

end A001890.P9505467484629941025

/-! ## A001890.P17784893896037661982

`A080061(A055999(n)+9)`
-/

namespace A001890.P17784893896037661982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A055999 n + 9).toNat

end

end A001890.P17784893896037661982

/-! ## A001890.P2765591154381680346

`A080061(eq[3, A002262(n)])`
-/

namespace A001890.P2765591154381680346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001890.P2765591154381680346

/-! ## A001890.P12911667059395881547

`record[A080061(A133263(n)+1)]`
-/

namespace A001890.P12911667059395881547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001890.P12911667059395881547

/-! ## A001890.P4361070389800404932

`record[A080061(A167499(n)-2)]`
-/

namespace A001890.P4361070389800404932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A167499 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001890.P4361070389800404932

/-!
# A001891: Hit polynomials; convolution of natural numbers with Fibonacci numbers F(2), F(3), F(4), ....

The programs for A001891, the canonical program `A001891.P1203612219658713837` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001891 has offset 0).

The definition of A001891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001891.P1203612219658713837

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001891

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P1203612219658713837.Spec : Prop :=
  ∀ n, P1203612219658713837.a n = A001891 n

theorem P1203612219658713837.correct : P1203612219658713837.Spec := by
  intro n
  simp only [A001891]

end A001891

/-! ## A001891.P9681464405451907023

`∑[ogf((x+x^2)/(1-2x+x^3))]`
-/

namespace A001891.P9681464405451907023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P9681464405451907023

namespace A001891

/-- `∑[ogf((x+x^2)/(1-2x+x^3))]` -/
def P9681464405451907023.Spec : Prop :=
  ∀ n, P9681464405451907023.a n = A001891 n

end A001891

/-! ## A001891.P9036386300422049514

`ogf((x+x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A001891.P9036386300422049514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -3, 2, 1, -1] n

end

end A001891.P9036386300422049514

namespace A001891

/-- `ogf((x+x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P9036386300422049514.Spec : Prop :=
  ∀ n, P9036386300422049514.a n = A001891 n

end A001891

/-! ## A001891.P17933654177786330573

`∑[floor(ϕ*(a(n-1)+1))]` with `a(0)=0`
-/

namespace A001891.P17933654177786330573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P17933654177786330573

namespace A001891

/-- `∑[floor(ϕ*(a(n-1)+1))]` -/
def P17933654177786330573.Spec : Prop :=
  ∀ n, P17933654177786330573.a n = A001891 n

end A001891

/-! ## A001891.P15756156607730634031

`∑[ceil(ϕ*a(n-1))+1]` with `a(0)=0`
-/

namespace A001891.P15756156607730634031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P15756156607730634031

namespace A001891

/-- `∑[ceil(ϕ*a(n-1))+1]` -/
def P15756156607730634031.Spec : Prop :=
  ∀ n, P15756156607730634031.a n = A001891 n

end A001891

/-! ## A001891.P6536379684245432826

`∑[round(ϕ*a(n-1))+1]` with `a(0)=0`
-/

namespace A001891.P6536379684245432826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P6536379684245432826

namespace A001891

/-- `∑[round(ϕ*a(n-1))+1]` -/
def P6536379684245432826.Spec : Prop :=
  ∀ n, P6536379684245432826.a n = A001891 n

end A001891

/-! ## A001891.P502907424217468705

`∑[a(n-1)+a(n-2)+2]` with `a(0)=0, a(1)=1`
-/

namespace A001891.P502907424217468705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P502907424217468705

namespace A001891

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P502907424217468705.Spec : Prop :=
  ∀ n, (P502907424217468705.a n : ℤ) = A001891 n

end A001891

/-! ## A001891.P14839854835306752184

`floor(2*n/ϕ+ϕ*a(n-1))` with `a(0)=0`
-/

namespace A001891.P14839854835306752184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * n : ℝ) / Real.goldenRatio + Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A001891.P14839854835306752184

namespace A001891

/-- `floor(2*n/ϕ+ϕ*a(n-1))` -/
def P14839854835306752184.Spec : Prop :=
  ∀ n, P14839854835306752184.a n = A001891 n

end A001891

/-! ## A001891.P18006020699536515702

`∑[2*a(n-1)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A001891.P18006020699536515702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P18006020699536515702

namespace A001891

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P18006020699536515702.Spec : Prop :=
  ∀ n, P18006020699536515702.a n = A001891 n

end A001891

/-! ## A001891.P2256459177609083216

`floor(ϕ*(a(n-1)+2*n)-2*n)` with `a(0)=0`
-/

namespace A001891.P2256459177609083216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + (2 * n : ℤ) : ℝ) - (2 * n : ℝ)⌋

end

end A001891.P2256459177609083216

namespace A001891

/-- `floor(ϕ*(a(n-1)+2*n)-2*n)` -/
def P2256459177609083216.Spec : Prop :=
  ∀ n, P2256459177609083216.a n = A001891 n

end A001891

/-! ## A001891.P5668253054789240610

`2*n-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001891.P5668253054789240610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A001891.P5668253054789240610

namespace A001891

/-- `2*n-1+a(n-1)+a(n-2)` -/
def P5668253054789240610.Spec : Prop :=
  ∀ n, P5668253054789240610.a n = A001891 n

end A001891

/-! ## A001891.P6358703317566866777

`2*n-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001891.P6358703317566866777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A001891.P6358703317566866777

namespace A001891

/-- `2*n-(1-a(n-1)-a(n-2))` -/
def P6358703317566866777.Spec : Prop :=
  ∀ n, P6358703317566866777.a n = A001891 n

end A001891

/-! ## A001891.P5420263955627832685

`n-1+a(n-1)+a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A001891.P5420263955627832685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 2) + (n : ℤ)))

end

end A001891.P5420263955627832685

namespace A001891

/-- `n-1+a(n-1)+a(n-2)+n` -/
def P5420263955627832685.Spec : Prop :=
  ∀ n, P5420263955627832685.a n = A001891 n

end A001891

/-! ## A001891.P17339995695131835236

`n-(1-a(n-1)-a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A001891.P17339995695131835236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2) - (n : ℤ))

end

end A001891.P17339995695131835236

namespace A001891

/-- `n-(1-a(n-1)-a(n-2)-n)` -/
def P17339995695131835236.Spec : Prop :=
  ∀ n, P17339995695131835236.a n = A001891 n

end A001891

/-! ## A001891.P7201225077530313865

`∑[A001911(n)]`
-/

namespace A001891.P7201225077530313865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P7201225077530313865

namespace A001891

/-- `∑[A001911(n)]` -/
def P7201225077530313865.Spec : Prop :=
  ∀ n, P7201225077530313865.a n = A001891 n

end A001891

/-! ## A001891.P5531418276127926047

`∑[A020695(n)-2]`
-/

namespace A001891.P5531418276127926047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P5531418276127926047

namespace A001891

/-- `∑[A020695(n)-2]` -/
def P5531418276127926047.Spec : Prop :=
  ∀ n, P5531418276127926047.a n = A001891 n

end A001891

/-! ## A001891.P9474745693110056407

`∑[A048577(n)-3]`
-/

namespace A001891.P9474745693110056407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P9474745693110056407

namespace A001891

/-- `∑[A048577(n)-3]` -/
def P9474745693110056407.Spec : Prop :=
  ∀ n, P9474745693110056407.a n = A001891 n

end A001891

/-! ## A001891.P15103182118989939697

`∑[A094707(2*n)]`
-/

namespace A001891.P15103182118989939697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P15103182118989939697

namespace A001891

/-- `∑[A094707(2*n)]` -/
def P15103182118989939697.Spec : Prop :=
  ∀ n, P15103182118989939697.a n = A001891 n

end A001891

/-! ## A001891.P9376455021931023629

`∑[A018910(n)-4]`
-/

namespace A001891.P9376455021931023629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P9376455021931023629

namespace A001891

/-- `∑[A018910(n)-4]` -/
def P9376455021931023629.Spec : Prop :=
  ∀ n, P9376455021931023629.a n = A001891 n

end A001891

/-! ## A001891.P15328515387774216359

`∑[A168193(n)/2]`
-/

namespace A001891.P15328515387774216359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168193 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001891.P15328515387774216359

namespace A001891

/-- `∑[A168193(n)/2]` -/
def P15328515387774216359.Spec : Prop :=
  ∀ n, P15328515387774216359.a n = (A001891 n : ℚ)

end A001891

/-!
# A001892: Number of permutations of (1,...,n) having n-2 inversions (n>=2).

The programs for A001892, there is no canonical definition to state claims against.
-/

/-! ## A001892.P16320229143354441475

`A000707(n+2)-A128566(n+1)`
-/

namespace A001892.P16320229143354441475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000707 (n + 2) - A128566 (n + 1)

end

end A001892.P16320229143354441475

/-! ## A001892.P3305736333352610659

`record[A177517(A334320(n)+1)]`
-/

namespace A001892.P3305736333352610659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A334320 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001892.P3305736333352610659

/-! ## A001892.P14134408449235396330

`A177517(A001844(n+1)+1)`
-/

namespace A001892.P14134408449235396330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A001844 (n + 1) + 1).toNat

end

end A001892.P14134408449235396330

/-! ## A001892.P14660632874730813519

`A177517(A099776(n+1)+1)`
-/

namespace A001892.P14660632874730813519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A099776 (n + 1) + 1).toNat

end

end A001892.P14660632874730813519

/-! ## A001892.P7055880837814464352

`A177517(A046092(n+1)+2)`
-/

namespace A001892.P7055880837814464352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A046092 (n + 1) + 2).toNat

end

end A001892.P7055880837814464352

/-! ## A001892.P2347993442817163889

`A177517(A008574(∑[n+1])+2)`
-/

namespace A001892.P2347993442817163889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A001892.P2347993442817163889

/-! ## A001892.P9441983943897864338

`A177517(∑[2*A051755(n+2)])`
-/

namespace A001892.P9441983943897864338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001892.P9441983943897864338

/-! ## A001892.P1091087615998408797

`A177517(∑[A005843(A051755(n+2))])`
-/

namespace A001892.P1091087615998408797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001892.P1091087615998408797

/-! ## A001892.P17500011079511751473

`A060701(2*(n+1)²)`
-/

namespace A001892.P17500011079511751473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (2 * (n + 1) ^ 2)

end

end A001892.P17500011079511751473

/-! ## A001892.P3883925525700279547

`A161169(A180415(n+1))`
-/

namespace A001892.P3883925525700279547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161169 (A180415 (n + 1)).toNat

end

end A001892.P3883925525700279547

/-!
# A001893: Number of permutations of (1,...,n) having n-3 inversions (n>=3).

The programs for A001893, there is no canonical definition to state claims against.
-/

/-! ## A001893.P10617675120350731470

`A001892(n+3)-A000707(n+2)`
-/

namespace A001893.P10617675120350731470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001892 (n + 3) - A000707 (n + 2)

end

end A001893.P10617675120350731470

/-! ## A001893.P685701950420269538

`A177517((n+1)²+(n+3)²)`
-/

namespace A001893.P685701950420269538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A001893.P685701950420269538

/-! ## A001893.P7322632790536041130

`record[A177517(A005893(n))]`
-/

namespace A001893.P7322632790536041130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A005893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001893.P7322632790536041130

/-! ## A001893.P6641499476815642038

`A060701(A001844(n+1))`
-/

namespace A001893.P6641499476815642038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (A001844 (n + 1)).toNat

end

end A001893.P6641499476815642038

/-! ## A001893.P18131901700346040718

`A060701(A099776(n+1))`
-/

namespace A001893.P18131901700346040718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (A099776 (n + 1)).toNat

end

end A001893.P18131901700346040718

/-!
# A001894: Number of permutations of {1,...,n} having n-4 inversions (n>=4).

The programs for A001894, there is no canonical definition to state claims against.
-/

/-! ## A001894.P12468262749532819817

`A001893(n+4)-A001892(n+3)`
-/

namespace A001894.P12468262749532819817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001893 (n + 4) - A001892 (n + 3)

end

end A001894.P12468262749532819817

/-! ## A001894.P5047636063315980496

`Δ[A001893(n+3)-∑[A000707(n+1)]]`
-/

namespace A001894.P5047636063315980496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001893 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001894.P5047636063315980496

/-! ## A001894.P7747065442766068658

`A001893(n+4)-(A001893(n+3)+A000707(n+2))`
-/

namespace A001894.P7747065442766068658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001893 (n + 4) - (A001893 (n + 3) + A000707 (n + 2))

end

end A001894.P7747065442766068658

/-! ## A001894.P6007289447762821148

`record[A177517(2*(n²+1+n)+1)]`
-/

namespace A001894.P6007289447762821148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (2 * (n ^ 2 + 1 + n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001894.P6007289447762821148

/-! ## A001894.P4362384342709824787

`A177517(A099776(n+2)+2)`
-/

namespace A001894.P4362384342709824787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A099776 (n + 2) + 2).toNat

end

end A001894.P4362384342709824787

/-!
# A001895: Number of rooted planar 2-trees with n nodes.

The programs for A001895, there is no canonical definition to state claims against.
-/

/-! ## A001895.P15834878717908723087

`A050181(n)+A000207(n+1)`
-/

namespace A001895.P15834878717908723087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050181 n + A000207 (n + 1)

end

end A001895.P15834878717908723087

/-! ## A001895.P10019350483425248167

`A380237(n+1)-A384966(n+1)`
-/

namespace A001895.P10019350483425248167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380237 (n + 1) - A384966 (n + 1)

end

end A001895.P10019350483425248167

/-! ## A001895.P18100267514854733075

`A000207(n+1)+A051196(n)/(2*n+3)`
-/

namespace A001895.P18100267514854733075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000207 (n + 1) : ℚ) + (A051196 n : ℚ) / (2 * n + 3 : ℚ)

end

end A001895.P18100267514854733075

/-! ## A001895.P2379776241261033166

`A051168(2*(n+1)*(n+3))+A000207(n+1)`
-/

namespace A001895.P2379776241261033166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (2 * ((n + 1) * (n + 3))) + A000207 (n + 1)

end

end A001895.P2379776241261033166

/-! ## A001895.P8334652035829060387

`A169808(∑[n])+A050181(n)`
-/

namespace A001895.P8334652035829060387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j) + A050181 n

end

end A001895.P8334652035829060387

/-! ## A001895.P9076968783659442423

`A295260(record[A038722(n+1)])+A050181(n)`
-/

namespace A001895.P9076968783659442423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A050181 n

end

end A001895.P9076968783659442423

/-! ## A001895.P17291275021772847302

`A295634(A243427(n+1)+A000217(n))+A050181(n)`
-/

namespace A001895.P17291275021772847302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295634 (A243427 (n + 1) + A000217 n).toNat + A050181 n

end

end A001895.P17291275021772847302

/-!
# A001896: Numerators of cosecant numbers -2*(2^(2*n - 1) - 1)*Bernoulli(2*n); also of Bernoulli(2*n, 1/2) and Bernoulli(2*n, 1/4).

The programs for A001896, there is no canonical definition to state claims against.
-/

/-! ## A001896.P9952064601138907938

`A157779(2*n)`
-/

namespace A001896.P9952064601138907938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157779 (2 * n)

end

end A001896.P9952064601138907938

/-! ## A001896.P14172229863277101978

`or(1, A157779(A005843(n)))`
-/

namespace A001896.P14172229863277101978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157779 (A005843 n).toNat)

end

end A001896.P14172229863277101978

/-! ## A001896.P2585655641382314261

`(1-A131577(2*n))*A027641(2*n)`
-/

namespace A001896.P2585655641382314261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131577 (2 * n)) * A027641 (2 * n)

end

end A001896.P2585655641382314261

/-! ## A001896.P9175364360248889698

`(1-A131577(2*n))*A164555(2*n)`
-/

namespace A001896.P9175364360248889698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131577 (2 * n)) * A164555 (2 * n)

end

end A001896.P9175364360248889698

/-! ## A001896.P1614673595895650096

`(2-A094373(2*n))*A027641(2*n)`
-/

namespace A001896.P1614673595895650096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A094373 (2 * n)) * A027641 (2 * n)

end

end A001896.P1614673595895650096

/-!
# A001897: Denominators of cosecant numbers: -2*(2^(2*n-1)-1)*Bernoulli(2*n).

The programs for A001897, the canonical program `A001897.P8927680472579916553` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001897 has offset 0).

The definition of A001897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033469, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001897.P8927680472579916553

`A033469(n)/4^n`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A001897

/-- `A033469(n)/4^n` -/
def P8927680472579916553.Spec : Prop :=
  ∀ n, P8927680472579916553.a n = (A001897 n : ℚ)

end A001897

/-! ## A001897.P16392845183684384492

`A141459(2*n)`
-/

namespace A001897.P16392845183684384492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (2 * n)

end

end A001897.P16392845183684384492

namespace A001897

/-- `A141459(2*n)` -/
def P16392845183684384492.Spec : Prop :=
  ∀ n, P16392845183684384492.a n = A001897 n

end A001897

/-! ## A001897.P16077976074073081600

`A172087(2*n)`
-/

namespace A001897.P16077976074073081600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172087 (2 * n)

end

end A001897.P16077976074073081600

namespace A001897

/-- `A172087(2*n)` -/
def P16077976074073081600.Spec : Prop :=
  ∀ n, P16077976074073081600.a n = A001897 n

end A001897

/-! ## A001897.P13412053331433071691

`floor(A140814(n)/2)`
-/

namespace A001897.P13412053331433071691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140814 n : ℚ) / 2⌋

end

end A001897.P13412053331433071691

namespace A001897

/-- `floor(A140814(n)/2)` -/
def P13412053331433071691.Spec : Prop :=
  ∀ n, P13412053331433071691.a n = A001897 n

end A001897

/-! ## A001897.P4570193250933391799

`ceil(A002445(n)/2)`
-/

namespace A001897.P4570193250933391799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002445 n : ℚ) / 2⌉

end

end A001897.P4570193250933391799

namespace A001897

/-- `ceil(A002445(n)/2)` -/
def P4570193250933391799.Spec : Prop :=
  ∀ n, P4570193250933391799.a n = A001897 n

end A001897

/-! ## A001897.P6388501020691787638

`ceil(A140812(n)/4)`
-/

namespace A001897.P6388501020691787638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140812 n : ℚ) / 4⌉

end

end A001897.P6388501020691787638

namespace A001897

/-- `ceil(A140812(n)/4)` -/
def P6388501020691787638.Spec : Prop :=
  ∀ n, P6388501020691787638.a n = A001897 n

end A001897

/-! ## A001897.P14283685094623538871

`A051717(Δ[n²])/2`
-/

namespace A001897.P14283685094623538871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A001897.P14283685094623538871

namespace A001897

/-- `A051717(Δ[n²])/2` -/
def P14283685094623538871.Spec : Prop :=
  ∀ n, P14283685094623538871.a n = (A001897 n : ℚ)

end A001897

/-! ## A001897.P15961958249282723558

`∏{d}[2*n, A090585(#)]`
-/

namespace A001897.P15961958249282723558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A090585 d

end

end A001897.P15961958249282723558

namespace A001897

/-- `∏{d}[2*n, A090585(#)]` -/
def P15961958249282723558.Spec : Prop :=
  ∀ n, P15961958249282723558.a n = A001897 n

end A001897

/-! ## A001897.P7013499623881419615

`ceil(A027642(2*n)/2)`
-/

namespace A001897.P7013499623881419615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027642 (2 * n) : ℚ) / 2⌉

end

end A001897.P7013499623881419615

namespace A001897

/-- `ceil(A027642(2*n)/2)` -/
def P7013499623881419615.Spec : Prop :=
  ∀ n, P7013499623881419615.a n = A001897 n

end A001897

/-! ## A001897.P4316205378439910032

`ceil(A106458(2*n)/2)`
-/

namespace A001897.P4316205378439910032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106458 (2 * n) : ℚ) / 2⌉

end

end A001897.P4316205378439910032

namespace A001897

/-- `ceil(A106458(2*n)/2)` -/
def P4316205378439910032.Spec : Prop :=
  ∀ n, P4316205378439910032.a n = A001897 n

end A001897

/-! ## A001897.P5354442612231418993

`ceil(A141056(2*n)/2)`
-/

namespace A001897.P5354442612231418993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141056 (2 * n) : ℚ) / 2⌉

end

end A001897.P5354442612231418993

namespace A001897

/-- `ceil(A141056(2*n)/2)` -/
def P5354442612231418993.Spec : Prop :=
  ∀ n, P5354442612231418993.a n = A001897 n

end A001897

/-! ## A001897.P8102216873640931668

`ceil(A176289(2*n)/2)`
-/

namespace A001897.P8102216873640931668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176289 (2 * n) : ℚ) / 2⌉

end

end A001897.P8102216873640931668

namespace A001897

/-- `ceil(A176289(2*n)/2)` -/
def P8102216873640931668.Spec : Prop :=
  ∀ n, P8102216873640931668.a n = A001897 n

end A001897

/-! ## A001897.P5223304189946773731

`ceil(A176591(2*n)/2)`
-/

namespace A001897.P5223304189946773731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176591 (2 * n) : ℚ) / 2⌉

end

end A001897.P5223304189946773731

namespace A001897

/-- `ceil(A176591(2*n)/2)` -/
def P5223304189946773731.Spec : Prop :=
  ∀ n, P5223304189946773731.a n = A001897 n

end A001897

/-! ## A001897.P15314059874958210773

`A027642(A004277(n))/2`
-/

namespace A001897.P15314059874958210773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (A004277 n).toNat : ℚ) / 2

end

end A001897.P15314059874958210773

namespace A001897

/-- `A027642(A004277(n))/2` -/
def P15314059874958210773.Spec : Prop :=
  ∀ n, P15314059874958210773.a n = (A001897 n : ℚ)

end A001897

/-! ## A001897.P9758212427013866145

`A122553(n)*A177735(n)`
-/

namespace A001897.P9758212427013866145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A177735 n

end

end A001897.P9758212427013866145

namespace A001897

/-- `A122553(n)*A177735(n)` -/
def P9758212427013866145.Spec : Prop :=
  ∀ n, P9758212427013866145.a n = A001897 n

end A001897

/-! ## A001897.P1711609763475176174

`A027642(record[A005131(n)])/2`
-/

namespace A001897.P1711609763475176174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A001897.P1711609763475176174

namespace A001897

/-- `A027642(record[A005131(n)])/2` -/
def P1711609763475176174.Spec : Prop :=
  ∀ n, P1711609763475176174.a n = (A001897 n : ℚ)

end A001897

/-! ## A001897.P1402758585177177991

`A002445(n)/A036453(n+1)`
-/

namespace A001897.P1402758585177177991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A001897.P1402758585177177991

namespace A001897

/-- `A002445(n)/A036453(n+1)` -/
def P1402758585177177991.Spec : Prop :=
  ∀ n, P1402758585177177991.a n = (A001897 n : ℚ)

end A001897

/-!
# A001898: Denominators of Bernoulli polynomials B(n)(x).

The programs for A001898, there is no canonical definition to state claims against.
-/

/-! ## A001898.P8831656208489049481

`lcm(2^n, A290030(n))`
-/

namespace A001898.P8831656208489049481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A290030 n)

end

end A001898.P8831656208489049481

/-! ## A001898.P115997667396356511

`(n+1)*A163176(n+1)`
-/

namespace A001898.P115997667396356511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A163176 (n + 1)

end

end A001898.P115997667396356511

/-! ## A001898.P6338019515723638913

`a(n-1)*A185633(n)/n` with `a(0)=1`
-/

namespace A001898.P6338019515723638913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A185633 n : ℚ) / (n : ℚ)

end

end A001898.P6338019515723638913

/-! ## A001898.P9991384030215673288

`A122803(n)*A290030(n)`
-/

namespace A001898.P9991384030215673288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A290030 n

end

end A001898.P9991384030215673288

/-! ## A001898.P9715717475112853702

`A144845(n)*A341109(n)`
-/

namespace A001898.P9715717475112853702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144845 n * A341109 n

end

end A001898.P9715717475112853702

/-! ## A001898.P14927090592381689430

`Δ[A084247(n)]*A290030(n)`
-/

namespace A001898.P14927090592381689430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A290030 n

end

end A001898.P14927090592381689430

/-! ## A001898.P1565636977768834457

`A007947(n+1)*A341108(n)`
-/

namespace A001898.P1565636977768834457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A341108 n

end

end A001898.P1565636977768834457

/-! ## A001898.P9119601558451779334

`A015052(A015052(n+1))*A341108(n)`
-/

namespace A001898.P9119601558451779334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A341108 n

end

end A001898.P9119601558451779334

/-! ## A001898.P10857517696360963156

`A015053(A015053(n+1))*A341108(n)`
-/

namespace A001898.P10857517696360963156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A341108 n

end

end A001898.P10857517696360963156

/-! ## A001898.P6577272099796369938

`A053166(A053166(n+1))*A341108(n)`
-/

namespace A001898.P6577272099796369938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat * A341108 n

end

end A001898.P6577272099796369938

/-! ## A001898.P4245781525288437180

`lcm(A000079(n)*A290030(n), A000079(n))`
-/

namespace A001898.P4245781525288437180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n * A290030 n) (A000079 n)

end

end A001898.P4245781525288437180

/-!
# A001899: Number of divisors of n of the form 5k+4; a(0) = 0.

The programs for A001899, the canonical program `A001899.P11284131779432279770` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001899 has offset 0).

The definition of A001899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001899.P11284131779432279770

`∑{d}[n, C(#, 4)%5]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001899

/-- `∑{d}[n, C(#, 4)%5]` -/
def P11284131779432279770.Spec : Prop :=
  ∀ n, (P11284131779432279770.a n : ℤ) = A001899 n

theorem P11284131779432279770.correct : P11284131779432279770.Spec := by
  intro n
  simp only [A001899]

end A001899

/-! ## A001899.P16522086317169348072

`∑{d}[n, floor(#%5/4)]`
-/

namespace A001899.P16522086317169348072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊((d % 5 : ℕ) : ℚ) / 4⌋

end

end A001899.P16522086317169348072

namespace A001899

/-- `∑{d}[n, floor(#%5/4)]` -/
def P16522086317169348072.Spec : Prop :=
  ∀ n, P16522086317169348072.a n = A001899 n

end A001899

/-! ## A001899.P17825021962204722919

`Δ[A218447(abs(1-n))]`
-/

namespace A001899.P17825021962204722919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218447 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001899.P17825021962204722919

namespace A001899

/-- `Δ[A218447(abs(1-n))]` -/
def P17825021962204722919.Spec : Prop :=
  ∀ n, P17825021962204722919.a n = A001899 n

end A001899

/-! ## A001899.P4624590899143859679

`∑{d}[n, A079998(#+1)]`
-/

namespace A001899.P4624590899143859679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d + 1)

end

end A001899.P4624590899143859679

namespace A001899

/-- `∑{d}[n, A079998(#+1)]` -/
def P4624590899143859679.Spec : Prop :=
  ∀ n, P4624590899143859679.a n = A001899 n

end A001899

/-! ## A001899.P6361821085926138406

`∑{d}[n, and(1, A011925(#))]`
-/

namespace A001899.P6361821085926138406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A011925 d)

end

end A001899.P6361821085926138406

namespace A001899

/-- `∑{d}[n, and(1, A011925(#))]` -/
def P6361821085926138406.Spec : Prop :=
  ∀ n, P6361821085926138406.a n = A001899 n

end A001899

/-! ## A001899.P2233598629338544643

`∑{d}[n, gcd(2, A259754(#))-1]`
-/

namespace A001899.P2233598629338544643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Int.gcd 2 (A259754 d) : ℤ) - 1)

end

end A001899.P2233598629338544643

namespace A001899

/-- `∑{d}[n, gcd(2, A259754(#))-1]` -/
def P2233598629338544643.Spec : Prop :=
  ∀ n, P2233598629338544643.a n = A001899 n

end A001899

/-! ## A001899.P11495392272425770474

`∑{d}[n, (A136016(#+1)%5)%3]`
-/

namespace A001899.P11495392272425770474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod (A136016 (d + 1)) 5) 3

end

end A001899.P11495392272425770474

namespace A001899

/-- `∑{d}[n, (A136016(#+1)%5)%3]` -/
def P11495392272425770474.Spec : Prop :=
  ∀ n, P11495392272425770474.a n = A001899 n

end A001899

/-! ## A001899.P14716582832719237223

`A083918(A004277(n))`
-/

namespace A001899.P14716582832719237223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A004277 n).toNat

end

end A001899.P14716582832719237223

namespace A001899

/-- `A083918(A004277(n))` -/
def P14716582832719237223.Spec : Prop :=
  ∀ n, P14716582832719237223.a n = A001899 n

end A001899

/-! ## A001899.P10509449226343980651

`A083918(A057543(n))`
-/

namespace A001899.P10509449226343980651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A057543 n).toNat

end

end A001899.P10509449226343980651

namespace A001899

/-- `A083918(A057543(n))` -/
def P10509449226343980651.Spec : Prop :=
  ∀ n, P10509449226343980651.a n = A001899 n

end A001899

/-! ## A001899.P1243411866959192789

`A083918(A004275(n+1))`
-/

namespace A001899.P1243411866959192789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A004275 (n + 1)).toNat

end

end A001899.P1243411866959192789

namespace A001899

/-- `A083918(A004275(n+1))` -/
def P1243411866959192789.Spec : Prop :=
  ∀ n, P1243411866959192789.a n = A001899 n

end A001899

/-! ## A001899.P3556701505167479265

`A083918(A092535(n+1))`
-/

namespace A001899.P3556701505167479265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A092535 (n + 1)).toNat

end

end A001899.P3556701505167479265

namespace A001899

/-- `A083918(A092535(n+1))` -/
def P3556701505167479265.Spec : Prop :=
  ∀ n, P3556701505167479265.a n = A001899 n

end A001899

/-! ## A001899.P9545101309600484091

`A083918(A316571(n+1))`
-/

namespace A001899.P9545101309600484091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A316571 (n + 1)).toNat

end

end A001899.P9545101309600484091

namespace A001899

/-- `A083918(A316571(n+1))` -/
def P9545101309600484091.Spec : Prop :=
  ∀ n, P9545101309600484091.a n = A001899 n

end A001899

/-! ## A001899.P18410874572005229593

`A083918(A004278(n+2))`
-/

namespace A001899.P18410874572005229593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A004278 (n + 2)).toNat

end

end A001899.P18410874572005229593

namespace A001899

/-- `A083918(A004278(n+2))` -/
def P18410874572005229593.Spec : Prop :=
  ∀ n, P18410874572005229593.a n = A001899 n

end A001899

/-! ## A001899.P5112308992964237178

`A083918(A058992(n+2))`
-/

namespace A001899.P5112308992964237178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A058992 (n + 2)).toNat

end

end A001899.P5112308992964237178

namespace A001899

/-- `A083918(A058992(n+2))` -/
def P5112308992964237178.Spec : Prop :=
  ∀ n, P5112308992964237178.a n = A001899 n

end A001899

/-! ## A001899.P7749679603894045839

`A083918(A300576(n+2))`
-/

namespace A001899.P7749679603894045839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A300576 (n + 2)).toNat

end

end A001899.P7749679603894045839

namespace A001899

/-- `A083918(A300576(n+2))` -/
def P7749679603894045839.Spec : Prop :=
  ∀ n, P7749679603894045839.a n = A001899 n

end A001899

/-! ## A001899.P16361748104056199779

`A083918(2*(A000007(n)+n))`
-/

namespace A001899.P16361748104056199779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (2 * (A000007 n + (n : ℤ))).toNat

end

end A001899.P16361748104056199779

namespace A001899

/-- `A083918(2*(A000007(n)+n))` -/
def P16361748104056199779.Spec : Prop :=
  ∀ n, P16361748104056199779.a n = A001899 n

end A001899

/-! ## A001899.P6720770082381700038

`A083918(A000007(n)+n+n)`
-/

namespace A001899.P6720770082381700038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A001899.P6720770082381700038

namespace A001899

/-- `A083918(A000007(n)+n+n)` -/
def P6720770082381700038.Spec : Prop :=
  ∀ n, P6720770082381700038.a n = A001899 n

end A001899

/-! ## A001899.P5036953431620048577

`A083918(A370532(n+2))`
-/

namespace A001899.P5036953431620048577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A370532 (n + 2)).toNat

end

end A001899.P5036953431620048577

namespace A001899

/-- `A083918(A370532(n+2))` -/
def P5036953431620048577.Spec : Prop :=
  ∀ n, P5036953431620048577.a n = A001899 n

end A001899

