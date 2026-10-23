import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A299501: Expansion of (1 - 6*x + 7*x^2 - 2*x^3 + x^4)^(-1/2).

The programs for A299501, there is no canonical definition to state claims against.
-/

/-! ## A299501.P11343310730798896507

`∑[∑[A249946(n)]]`
-/

namespace A299501.P11343310730798896507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299501.P11343310730798896507

/-! ## A299501.P15358296857237761390

`A028310(A052961(n)+A000045(2*n))`
-/

namespace A299501.P15358296857237761390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052961 n + A000045 (2 * n)).toNat

end

end A299501.P15358296857237761390

/-! ## A299501.P6279132214172834268

`A088462(A100953(2*(n+1))+A000032(3*n))`
-/

namespace A299501.P6279132214172834268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A100953 (2 * (n + 1)) + A000032 (3 * n)).toNat

end

end A299501.P6279132214172834268

/-!
# A299502: Expansion of (1 - 6*x + x^2 + 8*x^3 + 16*x^4)^(-1/2).

The programs for A299502, there is no canonical definition to state claims against.
-/

/-! ## A299502.P6113799953644770970

`A008611((5^n-2*3^n+1)/4+2*n+3^n+5^n)`
-/

namespace A299502.P6113799953644770970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + 1 : ℚ) / 4 + (2 * n + (3 ^ n + 5 ^ n) : ℚ))).toNat

end

end A299502.P6113799953644770970

/-! ## A299502.P7362192214158393380

`A276796(2*A055835(n))`
-/

namespace A299502.P7362192214158393380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (2 * A055835 n).toNat

end

end A299502.P7362192214158393380

/-!
# A299503: a(n) = (1/12) * Sum_{d|n} d * A288851(d).

The programs for A299503, there is no canonical definition to state claims against.
-/

/-! ## A299503.P12343241979984050402

`A289637(n+1)/12`
-/

namespace A299503.P12343241979984050402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289637 (n + 1) : ℚ) / 12

end

end A299503.P12343241979984050402

/-!
# A299504: Triangle read by rows, T(n,k) = (k+1)^(n-k)*k! for 0 <= k <= n.

The programs for A299504, the canonical program `A299504.P7690026812954744828` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299504 has offset 0).

The definition of A299504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299504.P7690026812954744828

`A009998(n)*A233543(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A299504

/-- `A009998(n)*A233543(n)` -/
def P7690026812954744828.Spec : Prop :=
  ∀ n, P7690026812954744828.a n = A299504 n

theorem P7690026812954744828.correct : P7690026812954744828.Spec := by
  intro n
  simp only [A299504]

end A299504

/-! ## A299504.P7103106572770821457

`A152818(n)/A007318(n)`
-/

namespace A299504.P7103106572770821457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152818 n : ℚ) / (A007318 n : ℚ)

end

end A299504.P7103106572770821457

namespace A299504

/-- `A152818(n)/A007318(n)` -/
def P7103106572770821457.Spec : Prop :=
  ∀ n, P7103106572770821457.a n = (A299504 n : ℚ)

end A299504

/-! ## A299504.P18125127610729429834

`A002262(n)!*A009998(n)`
-/

namespace A299504.P18125127610729429834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A009998 n

end

end A299504.P18125127610729429834

namespace A299504

/-- `A002262(n)!*A009998(n)` -/
def P18125127610729429834.Spec : Prop :=
  ∀ n, P18125127610729429834.a n = A299504 n

end A299504

/-! ## A299504.P1259022827892459506

`A199673(n+1)/A003506(n+1)`
-/

namespace A299504.P1259022827892459506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A003506 (n + 1) : ℚ)

end

end A299504.P1259022827892459506

namespace A299504

/-- `A199673(n+1)/A003506(n+1)` -/
def P1259022827892459506.Spec : Prop :=
  ∀ n, P1259022827892459506.a n = (A299504 n : ℚ)

end A299504

/-! ## A299504.P11751418230243076562

`A025581(A061579(n))!*A009998(n)`
-/

namespace A299504.P11751418230243076562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 (A061579 n).toNat).toNat : ℤ) * A009998 n

end

end A299504.P11751418230243076562

namespace A299504

/-- `A025581(A061579(n))!*A009998(n)` -/
def P11751418230243076562.Spec : Prop :=
  ∀ n, P11751418230243076562.a n = A299504 n

end A299504

/-! ## A299504.P6155067428718906135

`A008279(n)/A007318(n)*A009998(n)`
-/

namespace A299504.P6155067428718906135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A009998 n : ℚ)

end

end A299504.P6155067428718906135

namespace A299504

/-- `A008279(n)/A007318(n)*A009998(n)` -/
def P6155067428718906135.Spec : Prop :=
  ∀ n, P6155067428718906135.a n = (A299504 n : ℚ)

end A299504

/-! ## A299504.P14745254540843684561

`A154120(n)/A094587(n)`
-/

namespace A299504.P14745254540843684561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154120 n : ℚ) / (A094587 n : ℚ)

end

end A299504.P14745254540843684561

namespace A299504

/-- `A154120(n)/A094587(n)` -/
def P14745254540843684561.Spec : Prop :=
  ∀ n, P14745254540843684561.a n = (A299504 n : ℚ)

end A299504

/-!
# A299506: a(n) = hypergeom([-n, n - 1/2], [1], -4).

The programs for A299506, there is no canonical definition to state claims against.
-/

/-! ## A299506.P8463078228011910444

`A300945(∑[n+2]-1)`
-/

namespace A299506.P8463078228011910444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300945 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A299506.P8463078228011910444

/-! ## A299506.P16472798618487707175

`record[A300945(A300997(n+1))]`
-/

namespace A299506.P16472798618487707175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300945 (A300997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299506.P16472798618487707175

/-! ## A299506.P579609819136758198

`record[A300945(gcd(n, A049310(n)))]`
-/

namespace A299506.P579609819136758198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300945 (Int.gcd (n : ℤ) (A049310 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299506.P579609819136758198

/-! ## A299506.P13860115473213259703

`record[gcd(A053117(n), A300945(n))]`
-/

namespace A299506.P13860115473213259703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053117 n) (A300945 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299506.P13860115473213259703

/-!
# A299507: a(n) = (-1)^n*hypergeom([-n, n], [1], 4).

The programs for A299507, there is no canonical definition to state claims against.
-/

/-! ## A299507.P1493779148818700765

`A300946(∑[n+2]-1)`
-/

namespace A299507.P1493779148818700765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A299507.P1493779148818700765

/-! ## A299507.P7983339575066564497

`record[A300946(A300997(n+1))]`
-/

namespace A299507.P7983339575066564497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (A300997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299507.P7983339575066564497

/-! ## A299507.P9046853457826131957

`record[A300946(gcd(n, A049310(n)))]`
-/

namespace A299507.P9046853457826131957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (Int.gcd (n : ℤ) (A049310 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299507.P9046853457826131957

/-! ## A299507.P1101787296743316784

`record[gcd(A053117(n), A300946(n))]`
-/

namespace A299507.P1101787296743316784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053117 n) (A300946 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299507.P1101787296743316784

/-!
# A299508: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299508, there is no canonical definition to state claims against.
-/

/-! ## A299508.P2649224852832815321

`A299514(∑[4*n]+1)`
-/

namespace A299508.P2649224852832815321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299508.P2649224852832815321

/-! ## A299508.P5432689501148286121

`record[A299514(A330613(n+1))]`
-/

namespace A299508.P5432689501148286121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299508.P5432689501148286121

/-! ## A299508.P12336530424540075532

`A299514(A001844(n))+char[9]`
-/

namespace A299508.P12336530424540075532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299508.P12336530424540075532

/-! ## A299508.P2446920372821762008

`record[A299514(Δ[A079824(n+1)])]`
-/

namespace A299508.P2446920372821762008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299508.P2446920372821762008

/-! ## A299508.P7214660637614846294

`A299514(A001844(n))*A329314(n)`
-/

namespace A299508.P7214660637614846294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A001844 n).toNat * A329314 n

end

end A299508.P7214660637614846294

/-!
# A299509: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299509, there is no canonical definition to state claims against.
-/

/-! ## A299509.P14075659154229462394

`A299514(∑[n+2]+4)`
-/

namespace A299509.P14075659154229462394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299509.P14075659154229462394

/-! ## A299509.P18142628443781350840

`or(1, A299514(A167614(n+1)))`
-/

namespace A299509.P18142628443781350840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299514 (A167614 (n + 1)).toNat)

end

end A299509.P18142628443781350840

/-! ## A299509.P6704544797155956235

`record[gcd(A299514(n+1), A303913(n))]`
-/

namespace A299509.P6704544797155956235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299514 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299509.P6704544797155956235

/-! ## A299509.P2715721768066857669

`record[gcd(A173018(n), A299514(n+4))]`
-/

namespace A299509.P2715721768066857669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173018 n) (A299514 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299509.P2715721768066857669

/-! ## A299509.P14638165639911843515

`or(1, A299514(A000096(n+1)+4))`
-/

namespace A299509.P14638165639911843515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299514 (A000096 (n + 1) + 4).toNat)

end

end A299509.P14638165639911843515

/-!
# A299510: Number of n X 4 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299510, there is no canonical definition to state claims against.
-/

/-! ## A299510.P9443273198899309912

`A299514(∑[n+3]+7)`
-/

namespace A299510.P9443273198899309912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299510.P9443273198899309912

/-! ## A299510.P9903014364806545362

`A299514(Δ[A005286(n)]+5)+char[25]`
-/

namespace A299510.P9903014364806545362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299510.P9903014364806545362

/-! ## A299510.P13297924660948150204

`A299514(A034856(n+2)+6)+char[16]`
-/

namespace A299510.P13297924660948150204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299510.P13297924660948150204

/-! ## A299510.P7151216475222397980

`A299514(Δ[A005286(n)]+5)%A000108(n+8)`
-/

namespace A299510.P7151216475222397980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299514 (f1 (n + 1) - f1 n + 5).toNat) (A000108 (n + 8))

end

end A299510.P7151216475222397980

/-! ## A299510.P12229549388118958205

`A007318(C(n, 2))*A299514(A034856(n+2)+6)`
-/

namespace A299510.P12229549388118958205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A299514 (A034856 (n + 2) + 6).toNat

end

end A299510.P12229549388118958205

/-!
# A299511: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299511, there is no canonical definition to state claims against.
-/

/-! ## A299511.P13949938740593875813

`A299514(A374005(n+1))`
-/

namespace A299511.P13949938740593875813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A374005 (n + 1)).toNat

end

end A299511.P13949938740593875813

/-! ## A299511.P9465969517068161733

`A299514(A167499(n+3))`
-/

namespace A299511.P9465969517068161733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A167499 (n + 3)).toNat

end

end A299511.P9465969517068161733

/-! ## A299511.P12509031457248362981

`A299514(A155212(n)+13)`
-/

namespace A299511.P12509031457248362981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A155212 n + 13).toNat

end

end A299511.P12509031457248362981

/-! ## A299511.P12436366185687067789

`A299514(A056000(n)+15)`
-/

namespace A299511.P12436366185687067789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A056000 n + 15).toNat

end

end A299511.P12436366185687067789

/-! ## A299511.P16161824940299901596

`A299514(eq[7, A066657(n)])`
-/

namespace A299511.P16161824940299901596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299511.P16161824940299901596

/-!
# A299512: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299512, there is no canonical definition to state claims against.
-/

/-! ## A299512.P16472929091694225145

`A299514(A374007(n+1))`
-/

namespace A299512.P16472929091694225145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A374007 (n + 1)).toNat

end

end A299512.P16472929091694225145

/-! ## A299512.P10334002164524559506

`A299514(A056115(n)+21)`
-/

namespace A299512.P10334002164524559506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A056115 n + 21).toNat

end

end A299512.P10334002164524559506

/-! ## A299512.P10074806534159300896

`A299514(A167499(n+4)+1)`
-/

namespace A299512.P10074806534159300896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A167499 (n + 4) + 1).toNat

end

end A299512.P10074806534159300896

/-! ## A299512.P1792300388709366531

`A299514(eq[7, A131818(n+1)])`
-/

namespace A299512.P1792300388709366531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299512.P1792300388709366531

/-! ## A299512.P3226368243814226282

`A299514(A000217(n+4)+11+n)`
-/

namespace A299512.P3226368243814226282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A000217 (n + 4) + 11 + (n : ℤ)).toNat

end

end A299512.P3226368243814226282

/-!
# A299513: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299513, there is no canonical definition to state claims against.
-/

/-! ## A299513.P11769391498513995355

`A299514(A374008(n+1))`
-/

namespace A299513.P11769391498513995355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A374008 (n + 1)).toNat

end

end A299513.P11769391498513995355

/-! ## A299513.P12467070242390373497

`A299514(A167487(n+5))`
-/

namespace A299513.P12467070242390373497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A167487 (n + 5)).toNat

end

end A299513.P12467070242390373497

/-! ## A299513.P13211804639279547487

`A299514(A056119(n)+28)`
-/

namespace A299513.P13211804639279547487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A056119 n + 28).toNat

end

end A299513.P13211804639279547487

/-! ## A299513.P17290067596353391114

`A299514(eq[11, A066657(n)])`
-/

namespace A299513.P17290067596353391114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299513.P17290067596353391114

/-! ## A299513.P8654388256273982687

`A299514(A167614(n+5)+4)`
-/

namespace A299513.P8654388256273982687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A167614 (n + 5) + 4).toNat

end

end A299513.P8654388256273982687

/-!
# A299515: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299515, there is no canonical definition to state claims against.
-/

/-! ## A299515.P14528741663884672290

`A299521(∑[4*n]+1)`
-/

namespace A299515.P14528741663884672290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299515.P14528741663884672290

/-! ## A299515.P311605088771191449

`and(-1, A299521(A001844(n)))`
-/

namespace A299515.P311605088771191449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299521 (A001844 n).toNat)

end

end A299515.P311605088771191449

/-! ## A299515.P12512507950251056578

`A299521(n+1)*A299521(n²+(n+1)²)`
-/

namespace A299515.P12512507950251056578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (n + 1) * A299521 (n ^ 2 + (n + 1) ^ 2)

end

end A299515.P12512507950251056578

/-! ## A299515.P13217077689311114828

`A299521(A001844(n))+A025439(n)`
-/

namespace A299515.P13217077689311114828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A001844 n).toNat + A025439 n

end

end A299515.P13217077689311114828

/-! ## A299515.P15009502235065636450

`A342845(n)+A299521(A001844(n))`
-/

namespace A299515.P15009502235065636450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A299521 (A001844 n).toNat

end

end A299515.P15009502235065636450

/-!
# A299516: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299516, there is no canonical definition to state claims against.
-/

/-! ## A299516.P12270978430544998490

`A299521(∑[n+2]+4)`
-/

namespace A299516.P12270978430544998490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299516.P12270978430544998490

/-! ## A299516.P17048375549199255164

`and(-1, A299521(A167614(n+1)))`
-/

namespace A299516.P17048375549199255164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299521 (A167614 (n + 1)).toNat)

end

end A299516.P17048375549199255164

/-! ## A299516.P13572014865389244167

`A299521(A046691(n)+7)+char[18]`
-/

namespace A299516.P13572014865389244167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299516.P13572014865389244167

/-! ## A299516.P7451495773087232064

`A299521(A167614(n+1))+A025469(n)`
-/

namespace A299516.P7451495773087232064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A167614 (n + 1)).toNat + A025469 n

end

end A299516.P7451495773087232064

/-! ## A299516.P6958431451418116559

`gcd(A000038(n), A299521(A167614(n+1)))`
-/

namespace A299516.P6958431451418116559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A299521 (A167614 (n + 1)).toNat)

end

end A299516.P6958431451418116559

/-!
# A299517: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299517, there is no canonical definition to state claims against.
-/

/-! ## A299517.P2345900796332410636

`A299521(∑[n+3]+7)`
-/

namespace A299517.P2345900796332410636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299517.P2345900796332410636

/-! ## A299517.P4055996505791230206

`record[A299521(A256910(n)+4)]`
-/

namespace A299517.P4055996505791230206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A256910 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299517.P4055996505791230206

/-! ## A299517.P15954960329783964706

`record[A299521(n+4)/A299504(n)]`
-/

namespace A299517.P15954960329783964706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299521 (n + 4) : ℚ) / (A299504 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299517.P15954960329783964706

/-! ## A299517.P11415784807302159816

`record[gcd(A299521(n+2), A303913(n))]`
-/

namespace A299517.P11415784807302159816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299521 (n + 2)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299517.P11415784807302159816

/-! ## A299517.P12937939717321847078

`A299521(A034856(n+2)+6)+char[20]`
-/

namespace A299517.P12937939717321847078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299517.P12937939717321847078

/-!
# A299518: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299518, there is no canonical definition to state claims against.
-/

/-! ## A299518.P5268110172415515567

`A299521(A167499(n+3))`
-/

namespace A299518.P5268110172415515567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A167499 (n + 3)).toNat

end

end A299518.P5268110172415515567

/-! ## A299518.P7630597282415997402

`A299521(A155212(n)+13)`
-/

namespace A299518.P7630597282415997402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A155212 n + 13).toNat

end

end A299518.P7630597282415997402

/-! ## A299518.P4505833193123853617

`A299521(A056000(n)+15)`
-/

namespace A299518.P4505833193123853617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A056000 n + 15).toNat

end

end A299518.P4505833193123853617

/-! ## A299518.P7064315764631387566

`A299521(eq[7, A066657(n)])`
-/

namespace A299518.P7064315764631387566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299518.P7064315764631387566

/-! ## A299518.P12977176152843466005

`record[A299521(A256910(n)+5)]`
-/

namespace A299518.P12977176152843466005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A256910 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299518.P12977176152843466005

/-!
# A299519: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299519, there is no canonical definition to state claims against.
-/

/-! ## A299519.P7994791998404857695

`A299521(A166136(n+4))`
-/

namespace A299519.P7994791998404857695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A166136 (n + 4)).toNat

end

end A299519.P7994791998404857695

/-! ## A299519.P11739252255094149481

`A299521(A056115(n)+21)`
-/

namespace A299519.P11739252255094149481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A056115 n + 21).toNat

end

end A299519.P11739252255094149481

/-! ## A299519.P513019002142754095

`A299521(eq[6, A256910(n)])`
-/

namespace A299519.P513019002142754095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299519.P513019002142754095

/-! ## A299519.P1382801910761013363

`A299521(A167499(n+4)+1)`
-/

namespace A299519.P1382801910761013363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A167499 (n + 4) + 1).toNat

end

end A299519.P1382801910761013363

/-! ## A299519.P13313144167164380448

`A299521(A000124(n+5)+5)`
-/

namespace A299519.P13313144167164380448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A000124 (n + 5) + 5).toNat

end

end A299519.P13313144167164380448

/-!
# A299520: Number of n X 7 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299520, there is no canonical definition to state claims against.
-/

/-! ## A299520.P16207356190625035852

`A299521(∑[n+6]+22)`
-/

namespace A299520.P16207356190625035852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A299520.P16207356190625035852

/-! ## A299520.P12337679262228574783

`A299521(A167614(n+5)+4)-A264668(n)`
-/

namespace A299520.P12337679262228574783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299521 (A167614 (n + 5) + 4).toNat - A264668 n

end

end A299520.P12337679262228574783

/-!
# A299522: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299522, there is no canonical definition to state claims against.
-/

/-! ## A299522.P4815531101029903653

`A299528(∑[4*n]+1)`
-/

namespace A299522.P4815531101029903653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299522.P4815531101029903653

/-! ## A299522.P3715929224267230938

`∑{digits}[n, A299528(A001844(#))]`
-/

namespace A299522.P3715929224267230938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A299528 (A001844 x).toNat).sum

end

end A299522.P3715929224267230938

/-! ## A299522.P8951250151237849969

`and(-1, A299528(A001844(n)))`
-/

namespace A299522.P8951250151237849969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299528 (A001844 n).toNat)

end

end A299522.P8951250151237849969

/-! ## A299522.P3568449788480785187

`A299528(A001844(n))+A011731(n)`
-/

namespace A299522.P3568449788480785187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A001844 n).toNat + A011731 n

end

end A299522.P3568449788480785187

/-! ## A299522.P11519009251715575829

`A299528(A001844(n))+A180472(n)`
-/

namespace A299522.P11519009251715575829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A001844 n).toNat + A180472 n

end

end A299522.P11519009251715575829

/-!
# A299523: Number of n X 3 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299523, there is no canonical definition to state claims against.
-/

/-! ## A299523.P7502646623010702119

`A299528(∑[n+2]+4)`
-/

namespace A299523.P7502646623010702119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299523.P7502646623010702119

/-! ## A299523.P10073729170134412056

`lcm((-1)^n, A299528(A167614(n+1)))`
-/

namespace A299523.P10073729170134412056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A299528 (A167614 (n + 1)).toNat)

end

end A299523.P10073729170134412056

/-! ## A299523.P13189885173981471881

`A299528(A167614(n+1))+A011738(n)`
-/

namespace A299523.P13189885173981471881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A167614 (n + 1)).toNat + A011738 n

end

end A299523.P13189885173981471881

/-! ## A299523.P13383866360467896840

`A057427(n)*A299528(A167614(n+1))`
-/

namespace A299523.P13383866360467896840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A299528 (A167614 (n + 1)).toNat

end

end A299523.P13383866360467896840

/-! ## A299523.P17177751536696181371

`A299528(A167614(n+1))%A017057(n)`
-/

namespace A299523.P17177751536696181371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299528 (A167614 (n + 1)).toNat) (A017057 n)

end

end A299523.P17177751536696181371

/-!
# A299524: Number of n X 4 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299524, there is no canonical definition to state claims against.
-/

/-! ## A299524.P8653515524367160056

`A299528(A374004(n+1))`
-/

namespace A299524.P8653515524367160056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A374004 (n + 1)).toNat

end

end A299524.P8653515524367160056

/-! ## A299524.P11275665791850286578

`A299528(A052905(n)+9)`
-/

namespace A299524.P11275665791850286578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A052905 n + 9).toNat

end

end A299524.P11275665791850286578

/-! ## A299524.P3633484854318119942

`A299528(A055999(n)+10)`
-/

namespace A299524.P3633484854318119942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A055999 n + 10).toNat

end

end A299524.P3633484854318119942

/-! ## A299524.P6446394234429390286

`A299528(A167614(n+2)+1)`
-/

namespace A299524.P6446394234429390286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A167614 (n + 2) + 1).toNat

end

end A299524.P6446394234429390286

/-! ## A299524.P10328794306412052506

`A299528(A166136(n+2)-2)`
-/

namespace A299524.P10328794306412052506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A166136 (n + 2) - 2).toNat

end

end A299524.P10328794306412052506

/-!
# A299525: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299525, there is no canonical definition to state claims against.
-/

/-! ## A299525.P7235382506346504655

`A299528(A374005(n+1))`
-/

namespace A299525.P7235382506346504655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A374005 (n + 1)).toNat

end

end A299525.P7235382506346504655

/-! ## A299525.P12359714955928548528

`A299528(A155212(n)+13)`
-/

namespace A299525.P12359714955928548528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A155212 n + 13).toNat

end

end A299525.P12359714955928548528

/-! ## A299525.P14464560500385416737

`A299528(A056000(n)+15)`
-/

namespace A299525.P14464560500385416737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A056000 n + 15).toNat

end

end A299525.P14464560500385416737

/-! ## A299525.P10319104198192706676

`A299528(eq[7, A066657(n)])`
-/

namespace A299525.P10319104198192706676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299525.P10319104198192706676

/-! ## A299525.P674510029614201519

`A299528(eq[6, A131818(n+1)])`
-/

namespace A299525.P674510029614201519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299525.P674510029614201519

/-!
# A299526: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299526, there is no canonical definition to state claims against.
-/

/-! ## A299526.P13844545709792833070

`A299528(A374007(n+1))`
-/

namespace A299526.P13844545709792833070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A374007 (n + 1)).toNat

end

end A299526.P13844545709792833070

/-! ## A299526.P14933614742216846348

`A299528(A166136(n+4))`
-/

namespace A299526.P14933614742216846348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A166136 (n + 4)).toNat

end

end A299526.P14933614742216846348

/-! ## A299526.P4711280164466248387

`A299528(A056115(n)+21)`
-/

namespace A299526.P4711280164466248387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A056115 n + 21).toNat

end

end A299526.P4711280164466248387

/-! ## A299526.P15500758776350021462

`A299528(A167499(n+4)+1)`
-/

namespace A299526.P15500758776350021462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A167499 (n + 4) + 1).toNat

end

end A299526.P15500758776350021462

/-! ## A299526.P9312624054749588575

`A299528(eq[6, A130270(n+1)])`
-/

namespace A299526.P9312624054749588575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299526.P9312624054749588575

/-!
# A299527: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299527, there is no canonical definition to state claims against.
-/

/-! ## A299527.P3705309953996270577

`A299528(A374008(n+1))`
-/

namespace A299527.P3705309953996270577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A374008 (n + 1)).toNat

end

end A299527.P3705309953996270577

/-! ## A299527.P13367343225559670229

`A299528(eq[11, A066657(n)])`
-/

namespace A299527.P13367343225559670229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299527.P13367343225559670229

/-! ## A299527.P18252322528912404056

`A299528(A167614(n+5)+4)`
-/

namespace A299527.P18252322528912404056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A167614 (n + 5) + 4).toNat

end

end A299527.P18252322528912404056

/-! ## A299527.P5709446866710369480

`A299528(eq[8, A131818(n+1)])`
-/

namespace A299527.P5709446866710369480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299527.P5709446866710369480

/-! ## A299527.P10259809307592504577

`A299528(A055999(n+4))`
-/

namespace A299527.P10259809307592504577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A055999 (n + 4)).toNat

end

end A299527.P10259809307592504577

/-!
# A299528: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299528, there is no canonical definition to state claims against.
-/

/-! ## A299528.P11133946654017102349

`A298622(n+1)+A082858(A174116(n))`
-/

namespace A299528.P11133946654017102349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (n + 1) + A082858 (A174116 n).toNat

end

end A299528.P11133946654017102349

/-! ## A299528.P8968491301087870672

`A298454(n+1)+A082858(A289481(n))`
-/

namespace A299528.P8968491301087870672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (n + 1) + A082858 (A289481 n).toNat

end

end A299528.P8968491301087870672

/-! ## A299528.P4116477613948575529

`A298834(n+1)*A327103(A174116(n))`
-/

namespace A299528.P4116477613948575529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (n + 1) * A327103 (A174116 n).toNat

end

end A299528.P4116477613948575529

/-! ## A299528.P12688571207869321280

`A298834(n+1)*A327103(A174545(n))`
-/

namespace A299528.P12688571207869321280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (n + 1) * A327103 (A174545 n).toNat

end

end A299528.P12688571207869321280

/-! ## A299528.P6169980031824219746

`or(A299588(n+1), A321936(A174116(n)))`
-/

namespace A299528.P6169980031824219746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299588 (n + 1)) (A321936 (A174116 n).toNat)

end

end A299528.P6169980031824219746

/-!
# A299529: Number of Johnson solids with exactly n types of faces.

The programs for A299529, the canonical program `A299529.P13841698802648857615` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299529 has offset 1).

The definition of A299529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299529.P13841698802648857615

`a(n-1)` with `a(0)=5, a(1)=35, a(2)=35, a(3)=17, a(4)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299529

/-- `a(n-1)` -/
def P13841698802648857615.Spec : Prop :=
  ∀ n, (P13841698802648857615.a n : ℤ) = A299529 (n + 1)

theorem P13841698802648857615.correct : P13841698802648857615.Spec := by
  intro n
  simp only [A299529, Nat.add_sub_cancel]

end A299529

/-!
# A299530: Number of regular-faced convex polyhedra (excluding prisms and antiprisms) with exactly n types of faces.

The programs for A299530, the canonical program `A299530.P13017631852621485250` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299530 has offset 1).

The definition of A299530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299530.P13017631852621485250

`a(n-1)` with `a(0)=10, a(1)=45, a(2)=38, a(3)=17, a(4)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299530

/-- `a(n-1)` -/
def P13017631852621485250.Spec : Prop :=
  ∀ n, (P13017631852621485250.a n : ℤ) = A299530 (n + 1)

theorem P13017631852621485250.correct : P13017631852621485250.Spec := by
  intro n
  simp only [A299530, Nat.add_sub_cancel]

end A299530

/-!
# A299531: Solution a( ) of the complementary equation a(n) = 2*b(n-1) + b(n-2), where a(0) = 1, a(1) = 2; see Comments.

The programs for A299531, there is no canonical definition to state claims against.
-/

/-! ## A299531.P1731227905478133861

`eq[char[A299532(n)], A000007(n)]`
-/

namespace A299531.P1731227905478133861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299531.P1731227905478133861

/-! ## A299531.P7450300123720172709

`eq[char[A299532(n)], A000038(n)]`
-/

namespace A299531.P7450300123720172709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299531.P7450300123720172709

/-! ## A299531.P8683754300246826337

`eq[A137688(n)%2, char[A299532(n)]]`
-/

namespace A299531.P8683754300246826337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299532 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299531.P8683754300246826337

/-! ## A299531.P15810721781731185775

`eq[char[A299532(n)], A061397(2*(n+1))]`
-/

namespace A299531.P15810721781731185775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299531.P15810721781731185775

/-! ## A299531.P4397966527247527849

`eq[char[A299532(n)], A151933(n)]`
-/

namespace A299531.P4397966527247527849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299531.P4397966527247527849

/-!
# A299532: Solution b( ) of the complementary equation a(n) = 2*b(n-1) + b(n-2), where a(0) = 1, a(1) = 2; see Comments.

The programs for A299532, there is no canonical definition to state claims against.
-/

/-! ## A299532.P3459827363127458350

`lt[A017785(A333807(n+1)), A161146(n+1)]`
-/

namespace A299532.P3459827363127458350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017785 (A333807 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299532.P3459827363127458350

/-! ## A299532.P3369137732929838297

`lt[A008000(A347172(n+1)), A268448(n+1)]`
-/

namespace A299532.P3369137732929838297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (A347172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299532.P3369137732929838297

/-! ## A299532.P16384876591613555404

`lt[A007954(A355529(2*n+1)), A355529(n+1)]`
-/

namespace A299532.P16384876591613555404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A355529 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299532.P16384876591613555404

/-! ## A299532.P795428612959491622

`A340008(A173634(n+2))`
-/

namespace A299532.P795428612959491622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (A173634 (n + 2)).toNat

end

end A299532.P795428612959491622

/-! ## A299532.P3334898715297788192

`lt[A153687(A003417(n)), n]`
-/

namespace A299532.P3334898715297788192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153687 (A003417 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A299532.P3334898715297788192

/-!
# A299533: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A299533, there is no canonical definition to state claims against.
-/

/-! ## A299533.P9322193334778695760

`A080513(A299423(n)+n)`
-/

namespace A299533.P9322193334778695760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A299423 n + (n : ℤ)).toNat

end

end A299533.P9322193334778695760

/-! ## A299533.P9351140215372251233

`A008619(A299423(n)+1+n)`
-/

namespace A299533.P9351140215372251233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A299423 n + 1 + (n : ℤ)).toNat

end

end A299533.P9351140215372251233

/-! ## A299533.P11551834752346214073

`A065033(A299423(n)+n)+1`
-/

namespace A299533.P11551834752346214073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A299423 n + (n : ℤ)).toNat + 1

end

end A299533.P11551834752346214073

/-! ## A299533.P4471386797099770183

`A110654(A299423(n)+n)+1`
-/

namespace A299533.P4471386797099770183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A299423 n + (n : ℤ)).toNat + 1

end

end A299533.P4471386797099770183

/-! ## A299533.P4080988021535213226

`A123108(A299423(n)+3+n)`
-/

namespace A299533.P4080988021535213226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A299423 n + 3 + (n : ℤ)).toNat

end

end A299533.P4080988021535213226

/-!
# A299534: Solution b( ) of the complementary equation a(n) = b(n-1) + 2*b(n-2), where a(0) = 1, a(1) = 2; see Comments.

The programs for A299534, there is no canonical definition to state claims against.
-/

/-! ## A299534.P5717186986215222320

`eq[char[A296220(n)], A322583(2*n+1)]`
-/

namespace A299534.P5717186986215222320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296220 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299534.P5717186986215222320

/-! ## A299534.P517592311330259164

`A042968(A296220(n+2))-A296220(n+2)`
-/

namespace A299534.P517592311330259164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A296220 (n + 2)).toNat - A296220 (n + 2)

end

end A299534.P517592311330259164

/-! ## A299534.P7577525812798741545

`comp[A001065(3*n+5)%A250120(n)]%A179151(n+3)`
-/

namespace A299534.P7577525812798741545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (3 * n + 5)) (A250120 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A179151 (n + 3))

end

end A299534.P7577525812798741545

/-! ## A299534.P14421045517436621356

`A036042(A089483(n))+2`
-/

namespace A299534.P14421045517436621356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A089483 n).toNat + 2

end

end A299534.P14421045517436621356

/-! ## A299534.P2924643061082402645

`lt[A062666(A333807(n+2)), n]`
-/

namespace A299534.P2924643061082402645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062666 (A333807 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A299534.P2924643061082402645

/-!
# A299535: Solutions to A000010(x) + A000010(x-1) = A000010(2*x).

The programs for A299535, there is no canonical definition to state claims against.
-/

/-! ## A299535.P3595467354888708870

`2*(A308378(n+1)+1)`
-/

namespace A299535.P3595467354888708870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A308378 (n + 1) + 1)

end

end A299535.P3595467354888708870

/-! ## A299535.P2413169378740471106

`(A308378(n+1)+1)/(A065357(n)²-1/2)`
-/

namespace A299535.P2413169378740471106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308378 (n + 1) + 1 : ℚ) / ((A065357 n ^ 2 : ℚ) - (1 : ℚ) / 2)

end

end A299535.P2413169378740471106

/-! ## A299535.P6196706700380825415

`A308378(A000027(n+1))+A308378(n+1)+2`
-/

namespace A299535.P6196706700380825415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308378 (A000027 (n + 1)).toNat + (A308378 (n + 1) + 2)

end

end A299535.P6196706700380825415

/-! ## A299535.P4936308286014429150

`2/(A308378(n+1)+1)^A008683(A020484(n))`
-/

namespace A299535.P4936308286014429150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A308378 (n + 1) + 1 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A299535.P4936308286014429150

/-! ## A299535.P9469566841148219961

`A005408(A308378(n+1))+1`
-/

namespace A299535.P9469566841148219961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A308378 (n + 1)).toNat + 1

end

end A299535.P9469566841148219961

/-!
# A299536: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299536, there is no canonical definition to state claims against.
-/

/-! ## A299536.P16766110374120328093

`comp[A022427(n)-1]+1`
-/

namespace A299536.P16766110374120328093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299536.P16766110374120328093

/-! ## A299536.P11021115236214894480

`comp[A022427(n-a(2%n))]` with `a(0)=0`
-/

namespace A299536.P11021115236214894480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A022427 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299536.P11021115236214894480

/-! ## A299536.P9852090802779362799

`eq[char[A022427(n)], A000007(n)]`
-/

namespace A299536.P9852090802779362799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299536.P9852090802779362799

/-! ## A299536.P17188574525488108255

`eq[char[A022427(n)], A000038(n)]`
-/

namespace A299536.P17188574525488108255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299536.P17188574525488108255

/-! ## A299536.P466696332223180633

`eq[char[A022427(n)], A169585(n)]`
-/

namespace A299536.P466696332223180633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299536.P466696332223180633

/-! ## A299536.P3566026975452343414

`eq[char[A022427(n)], A036987(2*n)]`
-/

namespace A299536.P3566026975452343414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299536.P3566026975452343414

/-! ## A299536.P985176759942086826

`eq[char[A022427(n)], A267050(n²)]`
-/

namespace A299536.P985176759942086826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299536.P985176759942086826

/-! ## A299536.P5575554291782613173

`eq[char[A022427(n)], A151933(n)]`
-/

namespace A299536.P5575554291782613173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299536.P5575554291782613173

/-!
# A299537: Number of ways to write n^2 as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and z <= w such that x or y is a power of 4 (including 4^0 = 1) and x + 3*y is also a power of 4.

The programs for A299537, there is no canonical definition to state claims against.
-/

/-! ## A299537.P9644127473916531006

`gcd(A188416(n+4), A190250(A088274(n+1)))`
-/

namespace A299537.P9644127473916531006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188416 (n + 4)) (A190250 (A088274 (n + 1)).toNat)

end

end A299537.P9644127473916531006

/-! ## A299537.P15272202296286356024

`A001222(A104491(n+1)+A104451(3*n+4))`
-/

namespace A299537.P15272202296286356024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104491 (n + 1) + A104451 (3 * n + 4)).toNat

end

end A299537.P15272202296286356024

/-!
# A299538: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-3), where a(0) = 2, a(1) = 3, a(2) = 4; see Comments.

The programs for A299538, there is no canonical definition to state claims against.
-/

/-! ## A299538.P11603957339578582262

`comp[A022437(n)-1]+1`
-/

namespace A299538.P11603957339578582262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022437 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299538.P11603957339578582262

/-! ## A299538.P2677347179253520300

`eq[char[A022437(n)], A000007(n)]`
-/

namespace A299538.P2677347179253520300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022437 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299538.P2677347179253520300

/-! ## A299538.P16696173095900589540

`eq[char[A022437(n)], A000038(n)]`
-/

namespace A299538.P16696173095900589540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022437 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299538.P16696173095900589540

/-! ## A299538.P18433891372771421506

`eq[A028310(n)-n, char[A022437(n)]]`
-/

namespace A299538.P18433891372771421506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022437 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299538.P18433891372771421506

/-! ## A299538.P6041902441841458595

`eq[char[A022437(n)], A084099(2*n)]`
-/

namespace A299538.P6041902441841458595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022437 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299538.P6041902441841458595

/-! ## A299538.P14403114157096159521

`eq[char[A022437(n)], A130123(n²)]`
-/

namespace A299538.P14403114157096159521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022437 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299538.P14403114157096159521

/-!
# A299539: Numbers n = d_1 d_2 ... d_k (in base 10) such that d_i + d_{k+1-i} = 10 for i = 1..k.

The programs for A299539, there is no canonical definition to state claims against.
-/

/-! ## A299539.P14060759289382210829

`eq[A109910(n), A235049(n)]`
-/

namespace A299539.P14060759289382210829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299539.P14060759289382210829

/-! ## A299539.P2100233365125262216

`eq[A235049(n), A267193(n)]`
-/

namespace A299539.P2100233365125262216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299539.P2100233365125262216

/-! ## A299539.P3755036668853264893

`∩[A061388(n+1), A185440(n)]`
-/

namespace A299539.P3755036668853264893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299539.P3755036668853264893

/-! ## A299539.P12579539376492761608

`eq[A061601(A004086(n)), A235049(n)]`
-/

namespace A299539.P12579539376492761608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299539.P12579539376492761608

/-! ## A299539.P2897920663634847471

`filter[A332155(n+1), A168046(#)]`
-/

namespace A299539.P2897920663634847471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A299539.P2897920663634847471

/-!
# A299540: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-3), where a(0) = 2, a(1) = 3, a(2) = 5; see Comments.

The programs for A299540, there is no canonical definition to state claims against.
-/

/-! ## A299540.P6221663772514119569

`eq[char[A022438(n)], A000007(n)]`
-/

namespace A299540.P6221663772514119569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022438 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299540.P6221663772514119569

/-! ## A299540.P10129195576575336022

`eq[char[A022438(n)], A000038(n)]`
-/

namespace A299540.P10129195576575336022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022438 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299540.P10129195576575336022

/-! ## A299540.P12388203208700749418

`eq[char[A022438(n)], A255308(2*n+1)]`
-/

namespace A299540.P12388203208700749418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022438 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299540.P12388203208700749418

/-! ## A299540.P1371881178210575394

`eq[A011782(n+1)%2, char[A022438(n)]]`
-/

namespace A299540.P1371881178210575394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022438 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299540.P1371881178210575394

/-! ## A299540.P1516570539220398043

`eq[char[A022438(n)], A151933(n)]`
-/

namespace A299540.P1516570539220398043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022438 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299540.P1516570539220398043

/-!
# A299542: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-3), where a(0) = 2, a(1) = 4, a(2) = 6; see Comments.

The programs for A299542, there is no canonical definition to state claims against.
-/

/-! ## A299542.P8722014643470297043

`comp[A299541(n)-1]+1`
-/

namespace A299542.P8722014643470297043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299541 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299542.P8722014643470297043

/-! ## A299542.P17003026753874583729

`∑[∑[A003661(n+1)]%2]+n`
-/

namespace A299542.P17003026753874583729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003661 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A299542.P17003026753874583729

/-! ## A299542.P7778892101619468646

`comp[A299541(n)%A299541(n+1)]`
-/

namespace A299542.P7778892101619468646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299541 n) (A299541 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299542.P7778892101619468646

/-! ## A299542.P2400715015430986520

`eq[char[A299541(n)], A000007(n)]`
-/

namespace A299542.P2400715015430986520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299542.P2400715015430986520

/-! ## A299542.P7676024876361829903

`eq[char[A299541(n)], A000038(n)]`
-/

namespace A299542.P7676024876361829903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299542.P7676024876361829903

/-! ## A299542.P11216538143908456115

`eq[A007899(n)%2, char[A299541(n)]]`
-/

namespace A299542.P11216538143908456115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007899 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299541 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299542.P11216538143908456115

/-! ## A299542.P9560314118256499751

`eq[char[A299541(n)], A151933(n)]`
-/

namespace A299542.P9560314118256499751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299542.P9560314118256499751

/-!
# A299543: Solution a( ) of the complementary equation a(n) = 2*b(n-1) + b(n-2) - b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299543, there is no canonical definition to state claims against.
-/

/-! ## A299543.P4173370215061297199

`eq[char[A299544(n)], A151933(n)]`
-/

namespace A299543.P4173370215061297199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299544 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299543.P4173370215061297199

/-! ## A299543.P11351437071080591375

`eq[char[A299544(n)], A157830(n)]`
-/

namespace A299543.P11351437071080591375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299544 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299543.P11351437071080591375

/-!
# A299544: Solution b( ) of the complementary equation a(n) = 2*b(n-1) + b(n-2) - b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299544, there is no canonical definition to state claims against.
-/

/-! ## A299544.P17925284265820500287

`comp[A299543(n)-1]+1`
-/

namespace A299544.P17925284265820500287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299544.P17925284265820500287

/-! ## A299544.P1702282721163855017

`A000124(n)-(∑[n]-comp[A299543(n)-1])`
-/

namespace A299544.P1702282721163855017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ))

end

end A299544.P1702282721163855017

/-! ## A299544.P13623175505213034025

`1-A001478(comp[A299543(n)-1])`
-/

namespace A299544.P13623175505213034025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A299544.P13623175505213034025

/-! ## A299544.P12393587203524521280

`abs(A131738(comp[A299543(n)-1]))`
-/

namespace A299544.P12393587203524521280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A299544.P12393587203524521280

/-! ## A299544.P5383635692037208147

`A008619(2*comp[A299543(n)-1])`
-/

namespace A299544.P5383635692037208147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A299544.P5383635692037208147

/-! ## A299544.P12902284947586793120

`A008611(3*comp[A299543(n)-1])`
-/

namespace A299544.P12902284947586793120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A299544.P12902284947586793120

/-! ## A299544.P8630614024142894621

`A008620(3*comp[A299543(n)-1])`
-/

namespace A299544.P8630614024142894621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A299544.P8630614024142894621

/-! ## A299544.P11896428227987206573

`A008621(4*comp[A299543(n)-1])`
-/

namespace A299544.P11896428227987206573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A299544.P11896428227987206573

/-! ## A299544.P3305437996844480978

`A008612(6*comp[A299543(n)-1])`
-/

namespace A299544.P3305437996844480978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299543 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A299544.P3305437996844480978

/-!
# A299545: Solution a( ) of the complementary equation a(n) = b(n-1) + 2*b(n-2) - b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299545, there is no canonical definition to state claims against.
-/

/-! ## A299545.P3488665535028043843

`eq[char[A299546(n)], A151878(n)]`
-/

namespace A299545.P3488665535028043843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299546 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299545.P3488665535028043843

/-! ## A299545.P16154830853490336557

`eq[char[A299546(n)], A151909(n)]`
-/

namespace A299545.P16154830853490336557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299546 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299545.P16154830853490336557

/-! ## A299545.P6231766548219430156

`eq[char[A299546(n)], A151933(n)]`
-/

namespace A299545.P6231766548219430156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299546 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299545.P6231766548219430156

/-! ## A299545.P9843300425446246789

`eq[char[A299546(n)], A111332(n)]`
-/

namespace A299545.P9843300425446246789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299546 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299545.P9843300425446246789

/-!
# A299546: Solution b( ) of the complementary equation a(n) = b(n-1) + 2*b(n-2) - b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299546, there is no canonical definition to state claims against.
-/

/-! ## A299546.P10711668636047434250

`comp[A299545(n)-1]+1`
-/

namespace A299546.P10711668636047434250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299545 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299546.P10711668636047434250

/-! ## A299546.P8418062434393573637

`comp[A299545(n-a(2%n))]` with `a(0)=0`
-/

namespace A299546.P8418062434393573637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A299545 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299546.P8418062434393573637

/-! ## A299546.P13126112218903499478

`eq[char[A299545(n)], A000007(n)]`
-/

namespace A299546.P13126112218903499478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299545 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299546.P13126112218903499478

/-! ## A299546.P14262825635481752337

`eq[char[A299545(n)], A000038(n)]`
-/

namespace A299546.P14262825635481752337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299545 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299546.P14262825635481752337

/-! ## A299546.P16164896419675848552

`eq[char[A299545(n)], A299529(n+1)]`
-/

namespace A299546.P16164896419675848552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299545 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299546.P16164896419675848552

/-! ## A299546.P13549852844928570626

`eq[char[A299545(n)], A299530(n+1)]`
-/

namespace A299546.P13549852844928570626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299545 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299546.P13549852844928570626

/-! ## A299546.P8072845154148975016

`eq[char[A299545(n)], A151933(n)]`
-/

namespace A299546.P8072845154148975016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299545 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299546.P8072845154148975016

/-!
# A299547: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2) + ... + b(0), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299547, there is no canonical definition to state claims against.
-/

/-! ## A299547.P201048585480532239

`A000196(A281865(2*(n+4))%A281870(n+2))`
-/

namespace A299547.P201048585480532239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A281865 (2 * (n + 4))) (A281870 (n + 2 + 10))).toNat

end

end A299547.P201048585480532239

/-! ## A299547.P18054620193400056468

`A161179(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A299547.P18054620193400056468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161179 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A299547.P18054620193400056468

/-! ## A299547.P1408485403221985491

`A164529(A060577(n+1)+1)`
-/

namespace A299547.P1408485403221985491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A060577 (n + 1) + 1).toNat

end

end A299547.P1408485403221985491

/-! ## A299547.P3869127806596108066

`A194038(A095869(n+1)-1)`
-/

namespace A299547.P3869127806596108066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194038 (A095869 (n + 1) - 1).toNat

end

end A299547.P3869127806596108066

/-! ## A299547.P14676906975240623953

`eq[A115361(n), A320079(n+2)]`
-/

namespace A299547.P14676906975240623953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299547.P14676906975240623953

/-!
# A299548: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299548, there is no canonical definition to state claims against.
-/

/-! ## A299548.P11328892277257670560

`A299554(∑[4*n]+1)`
-/

namespace A299548.P11328892277257670560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299548.P11328892277257670560

/-! ## A299548.P7122198936181329944

`A007318(∑[n])*A299554(A001844(n))`
-/

namespace A299548.P7122198936181329944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A299554 (A001844 n).toNat

end

end A299548.P7122198936181329944

/-! ## A299548.P2072796536849127706

`A007318(C(n, 2))²*A299554(A001844(n))`
-/

namespace A299548.P2072796536849127706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A299554 (A001844 n).toNat

end

end A299548.P2072796536849127706

/-! ## A299548.P11466106604338512424

`A014963(12*(n+1))*A299554(A001844(n))`
-/

namespace A299548.P11466106604338512424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A299554 (A001844 n).toNat

end

end A299548.P11466106604338512424

/-! ## A299548.P10487760705858418096

`A000040(n+1)%2*A299554(A001844(n))`
-/

namespace A299548.P10487760705858418096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A299554 (A001844 n).toNat

end

end A299548.P10487760705858418096

/-!
# A299549: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299549, there is no canonical definition to state claims against.
-/

/-! ## A299549.P7799418315330067170

`A299554(∑[n+2]+4)`
-/

namespace A299549.P7799418315330067170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299549.P7799418315330067170

/-! ## A299549.P14631824229585841162

`A299554(A167614(n+1))%(10^n)`
-/

namespace A299549.P14631824229585841162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299554 (A167614 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A299549.P14631824229585841162

/-! ## A299549.P15752866622476606763

`A299554(A167614(n+1))+A185255(n)`
-/

namespace A299549.P15752866622476606763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A167614 (n + 1)).toNat + A185255 n

end

end A299549.P15752866622476606763

/-! ## A299549.P14114361032898590710

`A299554(A167614(n+1))+A185264(n)`
-/

namespace A299549.P14114361032898590710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A167614 (n + 1)).toNat + A185264 n

end

end A299549.P14114361032898590710

/-! ## A299549.P2369772134761217327

`A299554(A167614(n+1))+A185284(n)`
-/

namespace A299549.P2369772134761217327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A167614 (n + 1)).toNat + A185284 n

end

end A299549.P2369772134761217327

/-!
# A299550: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299550, there is no canonical definition to state claims against.
-/

/-! ## A299550.P9783865174186713454

`A299554(A374004(n+1))`
-/

namespace A299550.P9783865174186713454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A374004 (n + 1)).toNat

end

end A299550.P9783865174186713454

/-! ## A299550.P7217797502655679837

`A299554(A052905(n)+9)`
-/

namespace A299550.P7217797502655679837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A052905 n + 9).toNat

end

end A299550.P7217797502655679837

/-! ## A299550.P5525075842145966804

`A299554(A055999(n)+10)`
-/

namespace A299550.P5525075842145966804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A055999 n + 10).toNat

end

end A299550.P5525075842145966804

/-! ## A299550.P811518937997515833

`A299554(A167614(n+2)+1)`
-/

namespace A299550.P811518937997515833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A167614 (n + 2) + 1).toNat

end

end A299550.P811518937997515833

/-! ## A299550.P5946009732889884873

`A299554(eq[5, A131818(n+1)])`
-/

namespace A299550.P5946009732889884873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299550.P5946009732889884873

/-!
# A299551: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299551, there is no canonical definition to state claims against.
-/

/-! ## A299551.P4700097666702170217

`A299554(A374005(n+1))`
-/

namespace A299551.P4700097666702170217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A374005 (n + 1)).toNat

end

end A299551.P4700097666702170217

/-! ## A299551.P16173987996525053263

`A299554(eq[6, A131818(n+1)])`
-/

namespace A299551.P16173987996525053263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299551.P16173987996525053263

/-! ## A299551.P2745797120243190570

`A299554(Δ[A264443(n)])`
-/

namespace A299551.P2745797120243190570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (f1 (n + 1) - f1 n).toNat

end

end A299551.P2745797120243190570

/-! ## A299551.P8794040351674876663

`A299554(A056115(n)+11)`
-/

namespace A299551.P8794040351674876663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A056115 n + 11).toNat

end

end A299551.P8794040351674876663

/-! ## A299551.P17570575436174366991

`A299554(eq[4, A193592(n)])`
-/

namespace A299551.P17570575436174366991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299551.P17570575436174366991

/-!
# A299552: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299552, there is no canonical definition to state claims against.
-/

/-! ## A299552.P13846700499718818783

`A299554(A374007(n+1))`
-/

namespace A299552.P13846700499718818783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A374007 (n + 1)).toNat

end

end A299552.P13846700499718818783

/-! ## A299552.P14691632573500041904

`A299554(A000124(n+5)+5)`
-/

namespace A299552.P14691632573500041904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A000124 (n + 5) + 5).toNat

end

end A299552.P14691632573500041904

/-! ## A299552.P3011869825549500451

`A299554(eq[6, A130270(n+1)])`
-/

namespace A299552.P3011869825549500451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299552.P3011869825549500451

/-! ## A299552.P12023582508665510300

`A299554(eq[7, A131818(n+1)])`
-/

namespace A299552.P12023582508665510300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299552.P12023582508665510300

/-! ## A299552.P17001921103759588644

`A299554(A052905(n+3))`
-/

namespace A299552.P17001921103759588644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A052905 (n + 3)).toNat

end

end A299552.P17001921103759588644

/-!
# A299553: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299553, there is no canonical definition to state claims against.
-/

/-! ## A299553.P14105786822492114489

`A299554(A374008(n+1))`
-/

namespace A299553.P14105786822492114489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A374008 (n + 1)).toNat

end

end A299553.P14105786822492114489

/-! ## A299553.P16300248047756084115

`A299554(eq[8, A131818(n+1)])`
-/

namespace A299553.P16300248047756084115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299553.P16300248047756084115

/-! ## A299553.P14479664363369328739

`A299554(A055999(n+4))`
-/

namespace A299553.P14479664363369328739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (A055999 (n + 4)).toNat

end

end A299553.P14479664363369328739

/-! ## A299553.P15911448864003616139

`A299554(eq[4, A219347(n)])`
-/

namespace A299553.P15911448864003616139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299553.P15911448864003616139

/-! ## A299553.P9313750104446217511

`A299554(eq[6, A193592(n)])`
-/

namespace A299553.P9313750104446217511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299553.P9313750104446217511

/-!
# A299554: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299554, there is no canonical definition to state claims against.
-/

/-! ## A299554.P573843370731129996

`A298461(n+1)+A121262(A228900(n))`
-/

namespace A299554.P573843370731129996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (n + 1) + A121262 (A228900 n).toNat

end

end A299554.P573843370731129996

/-! ## A299554.P4884594455662614485

`A299602(n+1)+A065040(A296548(n))`
-/

namespace A299554.P4884594455662614485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) + A065040 (A296548 n).toNat

end

end A299554.P4884594455662614485

/-! ## A299554.P2248642218313586064

`A127288(or(A065040(n), A298461(n+1)))`
-/

namespace A299554.P2248642218313586064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (Int.lor (A065040 n) (A298461 (n + 1))).toNat

end

end A299554.P2248642218313586064

/-! ## A299554.P7818789436851679437

`A298841(n+1)+A235943(A297978(n+1))`
-/

namespace A299554.P7818789436851679437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (n + 1) + A235943 (A297978 (n + 1)).toNat

end

end A299554.P7818789436851679437

/-! ## A299554.P5546943122916488034

`A000196(A299602(n+1)*A300175(n+1))`
-/

namespace A299554.P5546943122916488034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A299602 (n + 1) * A300175 (n + 1)).toNat

end

end A299554.P5546943122916488034

/-!
# A299555: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299555, there is no canonical definition to state claims against.
-/

/-! ## A299555.P1494985031494985108

`A299561(∑[4*n]+1)`
-/

namespace A299555.P1494985031494985108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299555.P1494985031494985108

/-! ## A299555.P2093897467257232878

`A299561(A001844(n))+char[10]`
-/

namespace A299555.P2093897467257232878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299555.P2093897467257232878

/-! ## A299555.P6587103138052600863

`A133880(n)*A299561(A001844(n))`
-/

namespace A299555.P6587103138052600863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 n * A299561 (A001844 n).toNat

end

end A299555.P6587103138052600863

/-! ## A299555.P15535729706617007865

`A220054(n)*A299561(A001844(n))`
-/

namespace A299555.P15535729706617007865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 n * A299561 (A001844 n).toNat

end

end A299555.P15535729706617007865

/-! ## A299555.P2021469984922620727

`A299561(A001844(n))*A303694(n)`
-/

namespace A299555.P2021469984922620727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A001844 n).toNat * A303694 n

end

end A299555.P2021469984922620727

/-!
# A299556: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299556, there is no canonical definition to state claims against.
-/

/-! ## A299556.P11037798199392967001

`A299561(∑[n+2]+4)`
-/

namespace A299556.P11037798199392967001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299556.P11037798199392967001

/-! ## A299556.P15173127053656194692

`or(1, A299561(A167614(n+1)))`
-/

namespace A299556.P15173127053656194692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299561 (A167614 (n + 1)).toNat)

end

end A299556.P15173127053656194692

/-! ## A299556.P1776182028282970875

`or(1, A299561(A046691(n)+7))`
-/

namespace A299556.P1776182028282970875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299561 (A046691 n + 7).toNat)

end

end A299556.P1776182028282970875

/-! ## A299556.P11949236341715595068

`or(1, A299561(A034856(n+1)+5))`
-/

namespace A299556.P11949236341715595068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299561 (A034856 (n + 1) + 5).toNat)

end

end A299556.P11949236341715595068

/-! ## A299556.P7386241747693750696

`A299561(A167614(n+1))+A025466(n)`
-/

namespace A299556.P7386241747693750696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A167614 (n + 1)).toNat + A025466 n

end

end A299556.P7386241747693750696

/-!
# A299557: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299557, there is no canonical definition to state claims against.
-/

/-! ## A299557.P16375453577432817610

`A299561(∑[n+3]+7)`
-/

namespace A299557.P16375453577432817610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299557.P16375453577432817610

/-! ## A299557.P10674957714840439477

`A299561(A052905(n)+9)+char[18]`
-/

namespace A299557.P10674957714840439477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299557.P10674957714840439477

/-! ## A299557.P9823034698557495504

`A299561(A167614(n+2)+1)+char[21]`
-/

namespace A299557.P9823034698557495504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299557.P9823034698557495504

/-! ## A299557.P5799242239663780938

`A299561(A000096(n+2)+5)+C(n, 64)`
-/

namespace A299557.P5799242239663780938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A000096 (n + 2) + 5).toNat + (Nat.choose n 64 : ℤ)

end

end A299557.P5799242239663780938

/-! ## A299557.P7994021891416623967

`A007318(C(2, n))*A299561(A167614(n+2)+1)`
-/

namespace A299557.P7994021891416623967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299561 (A167614 (n + 2) + 1).toNat

end

end A299557.P7994021891416623967

/-!
# A299558: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299558, there is no canonical definition to state claims against.
-/

/-! ## A299558.P2147134078323833843

`A299561(∑[n+4]+11)`
-/

namespace A299558.P2147134078323833843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299558.P2147134078323833843

/-! ## A299558.P12615602444346313257

`A299561(A167499(n+3))+char[17]`
-/

namespace A299558.P12615602444346313257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299558.P12615602444346313257

/-! ## A299558.P14143414452128642970

`A299561(A374005(n+1))+A025466(n)`
-/

namespace A299558.P14143414452128642970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A374005 (n + 1)).toNat + A025466 n

end

end A299558.P14143414452128642970

/-! ## A299558.P6987066768522948674

`A299561(A374005(n+1))%A092759(n+1)`
-/

namespace A299558.P6987066768522948674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299561 (A374005 (n + 1)).toNat) (A092759 (n + 1))

end

end A299558.P6987066768522948674

/-! ## A299558.P17596986041105329010

`A299561(A167499(n+3))%A000108(n+4)`
-/

namespace A299558.P17596986041105329010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299561 (A167499 (n + 3)).toNat) (A000108 (n + 4))

end

end A299558.P17596986041105329010

/-!
# A299559: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299559, there is no canonical definition to state claims against.
-/

/-! ## A299559.P10969777076554597529

`A299561(∑[n+5]+16)`
-/

namespace A299559.P10969777076554597529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299559.P10969777076554597529

/-! ## A299559.P447876382322998028

`A299561(A374007(n+1))+A025466(n)`
-/

namespace A299559.P447876382322998028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A374007 (n + 1)).toNat + A025466 n

end

end A299559.P447876382322998028

/-! ## A299559.P4090331806176822397

`A369054(n)+A299561(A374007(n+1))`
-/

namespace A299559.P4090331806176822397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A299561 (A374007 (n + 1)).toNat

end

end A299559.P4090331806176822397

/-! ## A299559.P15331772644340454540

`or(A000007(n), A299561(A374007(n+1)))`
-/

namespace A299559.P15331772644340454540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299561 (A374007 (n + 1)).toNat)

end

end A299559.P15331772644340454540

/-! ## A299559.P37016815176180855

`A057427(n+2)*A299561(A374007(n+1))`
-/

namespace A299559.P37016815176180855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A299561 (A374007 (n + 1)).toNat

end

end A299559.P37016815176180855

/-!
# A299560: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299560, there is no canonical definition to state claims against.
-/

/-! ## A299560.P16024556005815432572

`A299561(A374008(n+1))`
-/

namespace A299560.P16024556005815432572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A374008 (n + 1)).toNat

end

end A299560.P16024556005815432572

/-! ## A299560.P13243714041784121509

`A299561(A167487(n+5))`
-/

namespace A299560.P13243714041784121509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A167487 (n + 5)).toNat

end

end A299560.P13243714041784121509

/-! ## A299560.P1343435593732215604

`A299561(A056119(n)+28)`
-/

namespace A299560.P1343435593732215604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A056119 n + 28).toNat

end

end A299560.P1343435593732215604

/-! ## A299560.P12138171394548902910

`A299561(eq[11, A066657(n)])`
-/

namespace A299560.P12138171394548902910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299560.P12138171394548902910

/-! ## A299560.P14185567060517025440

`A299561(A167614(n+5)+4)`
-/

namespace A299560.P14185567060517025440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A167614 (n + 5) + 4).toNat

end

end A299560.P14185567060517025440

/-!
# A299561: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299561, there is no canonical definition to state claims against.
-/

/-! ## A299561.P2988939544491134036

`A340988(A026758(n))+A298727(n+1)`
-/

namespace A299561.P2988939544491134036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A026758 n).toNat + 91) + A298727 (n + 1)

end

end A299561.P2988939544491134036

/-!
# A299562: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299562, there is no canonical definition to state claims against.
-/

/-! ## A299562.P8149413622487328427

`A299567(∑[4*n]+1)`
-/

namespace A299562.P8149413622487328427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299562.P8149413622487328427

/-! ## A299562.P16181470919130652337

`record[A299567(Δ[A235355(n)])]`
-/

namespace A299562.P16181470919130652337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299562.P16181470919130652337

/-! ## A299562.P17191373282025582906

`record[A299567(A330613(n+1))]`
-/

namespace A299562.P17191373282025582906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299562.P17191373282025582906

/-! ## A299562.P2125852575136503227

`A299567(A001844(n))+char[9]`
-/

namespace A299562.P2125852575136503227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299562.P2125852575136503227

/-! ## A299562.P1609710397223266415

`record[A003982(n)*A299567(n+1)]`
-/

namespace A299562.P1609710397223266415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299562.P1609710397223266415

/-!
# A299563: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299563, there is no canonical definition to state claims against.
-/

/-! ## A299563.P10009721695239092782

`A299567(∑[n+3]+7)`
-/

namespace A299563.P10009721695239092782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299563.P10009721695239092782

/-! ## A299563.P8162480744825437377

`A299567(A052905(n)+9)+char[16]`
-/

namespace A299563.P8162480744825437377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299563.P8162480744825437377

/-! ## A299563.P10507774347521532776

`A299567(A027379(n+1)+7)+char[19]`
-/

namespace A299563.P10507774347521532776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299563.P10507774347521532776

/-! ## A299563.P13823111687968721998

`A299567(A052905(n)+9)%A000108(n+7)`
-/

namespace A299563.P13823111687968721998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299567 (A052905 n + 9).toNat) (A000108 (n + 7))

end

end A299563.P13823111687968721998

/-! ## A299563.P1395498016228051213

`A007318(C(3, n))*A299567(A027379(n+1)+7)`
-/

namespace A299563.P1395498016228051213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A299567 (A027379 (n + 1) + 7).toNat

end

end A299563.P1395498016228051213

/-!
# A299564: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299564, there is no canonical definition to state claims against.
-/

/-! ## A299564.P16942309660944217618

`A299567(∑[n+4]+11)`
-/

namespace A299564.P16942309660944217618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299564.P16942309660944217618

/-! ## A299564.P11421959300085607549

`A299567(A374005(n+1))+A184945(n)`
-/

namespace A299564.P11421959300085607549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A374005 (n + 1)).toNat + A184945 n

end

end A299564.P11421959300085607549

/-! ## A299564.P6120239288033981369

`or(A000007(n), A299567(A374005(n+1)))`
-/

namespace A299564.P6120239288033981369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299567 (A374005 (n + 1)).toNat)

end

end A299564.P6120239288033981369

/-! ## A299564.P15659127653935290913

`A299567(A374005(n+1))+A000007(n+3)`
-/

namespace A299564.P15659127653935290913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A374005 (n + 1)).toNat + A000007 (n + 3)

end

end A299564.P15659127653935290913

/-! ## A299564.P7891223536676434018

`A299567(A374005(n+1))%A244298(n+10)`
-/

namespace A299564.P7891223536676434018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299567 (A374005 (n + 1)).toNat) (A244298 (n + 10))

end

end A299564.P7891223536676434018

/-!
# A299565: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299565, there is no canonical definition to state claims against.
-/

/-! ## A299565.P669227636501301109

`A299567(A374007(n+1))`
-/

namespace A299565.P669227636501301109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A374007 (n + 1)).toNat

end

end A299565.P669227636501301109

/-! ## A299565.P18375054738410721476

`A299567(A166136(n+4))`
-/

namespace A299565.P18375054738410721476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A166136 (n + 4)).toNat

end

end A299565.P18375054738410721476

/-! ## A299565.P16949360977849287750

`A299567(A056115(n)+21)`
-/

namespace A299565.P16949360977849287750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A056115 n + 21).toNat

end

end A299565.P16949360977849287750

/-! ## A299565.P18077321432038678940

`A299567(A167499(n+4)+1)`
-/

namespace A299565.P18077321432038678940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A167499 (n + 4) + 1).toNat

end

end A299565.P18077321432038678940

/-! ## A299565.P17355337400760185545

`A299567(A167614(n+4)+3)`
-/

namespace A299565.P17355337400760185545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A167614 (n + 4) + 3).toNat

end

end A299565.P17355337400760185545

/-!
# A299566: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299566, there is no canonical definition to state claims against.
-/

/-! ## A299566.P2803546090644696621

`A299567(A374008(n+1))`
-/

namespace A299566.P2803546090644696621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A374008 (n + 1)).toNat

end

end A299566.P2803546090644696621

/-! ## A299566.P16607176599756241191

`A299567(A302537(n)+27)`
-/

namespace A299566.P16607176599756241191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A302537 n + 27).toNat

end

end A299566.P16607176599756241191

/-! ## A299566.P9483990945451165983

`A299567(A056119(n)+28)`
-/

namespace A299566.P9483990945451165983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A056119 n + 28).toNat

end

end A299566.P9483990945451165983

/-! ## A299566.P5668540611815479032

`A299567(eq[11, A066657(n)])`
-/

namespace A299566.P5668540611815479032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299566.P5668540611815479032

/-! ## A299566.P1544630252784500235

`A299567(A166136(n+5)+1)`
-/

namespace A299566.P1544630252784500235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (A166136 (n + 5) + 1).toNat

end

end A299566.P1544630252784500235

/-!
# A299568: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299568, there is no canonical definition to state claims against.
-/

/-! ## A299568.P3128192804706296393

`A299574(∑[4*n]+1)`
-/

namespace A299568.P3128192804706296393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299568.P3128192804706296393

/-! ## A299568.P17704865840432422020

`record[A299574(Δ[A235355(n)])]`
-/

namespace A299568.P17704865840432422020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299568.P17704865840432422020

/-! ## A299568.P15206208460195946147

`and(-1, A299574(A001844(n)))`
-/

namespace A299568.P15206208460195946147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299574 (A001844 n).toNat)

end

end A299568.P15206208460195946147

/-! ## A299568.P6401309395112193960

`record[A299574(A330613(n+1))]`
-/

namespace A299568.P6401309395112193960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299568.P6401309395112193960

/-! ## A299568.P10778176007759201053

`record[A003982(n)*A299574(n+1)]`
-/

namespace A299568.P10778176007759201053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299568.P10778176007759201053

/-!
# A299569: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299569, there is no canonical definition to state claims against.
-/

/-! ## A299569.P7804932029437448208

`A299574(∑[n+2]+4)`
-/

namespace A299569.P7804932029437448208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299569.P7804932029437448208

/-! ## A299569.P7431201297202844575

`or(1, A299574(A167614(n+1)))`
-/

namespace A299569.P7431201297202844575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299574 (A167614 (n + 1)).toNat)

end

end A299569.P7431201297202844575

/-! ## A299569.P10715072340999187902

`record[gcd(A299574(n+1), A303913(n))]`
-/

namespace A299569.P10715072340999187902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299574 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299569.P10715072340999187902

/-! ## A299569.P702073928714078681

`or(1, A299574(A034856(n+1)+5))`
-/

namespace A299569.P702073928714078681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299574 (A034856 (n + 1) + 5).toNat)

end

end A299569.P702073928714078681

/-! ## A299569.P1681516856884217540

`A299574(A167614(n+1))+A011732(n)`
-/

namespace A299569.P1681516856884217540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A167614 (n + 1)).toNat + A011732 n

end

end A299569.P1681516856884217540

/-!
# A299570: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299570, there is no canonical definition to state claims against.
-/

/-! ## A299570.P4984211233163693894

`A299574(∑[n+3]+7)`
-/

namespace A299570.P4984211233163693894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299570.P4984211233163693894

/-! ## A299570.P5341385561938602564

`A299574(A145018(n+4))+char[20]`
-/

namespace A299570.P5341385561938602564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A145018 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299570.P5341385561938602564

/-! ## A299570.P15292620849575170164

`lcm((-1)^n, A299574(A027379(n+1)+7))`
-/

namespace A299570.P15292620849575170164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A299574 (A027379 (n + 1) + 7).toNat)

end

end A299570.P15292620849575170164

/-! ## A299570.P4852847798742519870

`gcd(A185284(n), A299574(A145018(n+4)))`
-/

namespace A299570.P4852847798742519870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A299574 (A145018 (n + 4)).toNat)

end

end A299570.P4852847798742519870

/-! ## A299570.P2331406641013029774

`A299574(A145018(n+4))%A299571(n+1)`
-/

namespace A299570.P2331406641013029774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299574 (A145018 (n + 4)).toNat) (A299571 (n + 1))

end

end A299570.P2331406641013029774

/-!
# A299571: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299571, there is no canonical definition to state claims against.
-/

/-! ## A299571.P10666283171242453671

`A299574(∑[n+4]+11)`
-/

namespace A299571.P10666283171242453671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299571.P10666283171242453671

/-!
# A299572: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299572, there is no canonical definition to state claims against.
-/

/-! ## A299572.P353616924313804082

`A299574(∑[n+5]+16)`
-/

namespace A299572.P353616924313804082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299572.P353616924313804082

/-! ## A299572.P17616671490422617324

`A299574(A000217(n+5)+6)+char[15]`
-/

namespace A299572.P17616671490422617324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299572.P17616671490422617324

/-! ## A299572.P10466156567603665373

`A007318(C(2, n))*A299574(A000217(n+5)+6)`
-/

namespace A299572.P10466156567603665373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299574 (A000217 (n + 5) + 6).toNat

end

end A299572.P10466156567603665373

/-! ## A299572.P4354816264453636815

`A000041(C(n, 64))*A299574(A000217(n+5)+6)`
-/

namespace A299572.P4354816264453636815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A299574 (A000217 (n + 5) + 6).toNat

end

end A299572.P4354816264453636815

/-! ## A299572.P16864952964900251372

`A007318(A001222(n+1))*A299574(A000217(n+5)+6)`
-/

namespace A299572.P16864952964900251372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A299574 (A000217 (n + 5) + 6).toNat

end

end A299572.P16864952964900251372

/-!
# A299573: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299573, there is no canonical definition to state claims against.
-/

/-! ## A299573.P12047297106594664905

`A299574(A056119(n)+28)`
-/

namespace A299573.P12047297106594664905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A056119 n + 28).toNat

end

end A299573.P12047297106594664905

/-! ## A299573.P13543654651679446341

`A299574(eq[11, A066657(n)])`
-/

namespace A299573.P13543654651679446341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299573.P13543654651679446341

/-! ## A299573.P7985416448352137408

`A299574(A166136(n+5)+1)`
-/

namespace A299573.P7985416448352137408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A166136 (n + 5) + 1).toNat

end

end A299573.P7985416448352137408

/-! ## A299573.P8129456858006047700

`A299574(A167614(n+5)+4)`
-/

namespace A299573.P8129456858006047700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A167614 (n + 5) + 4).toNat

end

end A299573.P8129456858006047700

/-! ## A299573.P50255201224625074

`A299574(A000217(n+6)+7)`
-/

namespace A299573.P50255201224625074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299574 (A000217 (n + 6) + 7).toNat

end

end A299573.P50255201224625074

/-!
# A299575: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299575, there is no canonical definition to state claims against.
-/

/-! ## A299575.P14925140346550596965

`A299581(∑[4*n]+1)`
-/

namespace A299575.P14925140346550596965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299575.P14925140346550596965

/-! ## A299575.P14794875516010132494

`and(-1, A299581(A001844(n)))`
-/

namespace A299575.P14794875516010132494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299581 (A001844 n).toNat)

end

end A299575.P14794875516010132494

/-! ## A299575.P12125056648736569657

`A299581(A001844(n))+A025439(n)`
-/

namespace A299575.P12125056648736569657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A001844 n).toNat + A025439 n

end

end A299575.P12125056648736569657

/-! ## A299575.P12939130497454835121

`A299581(A001844(n))+A031346(n)`
-/

namespace A299575.P12939130497454835121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A001844 n).toNat + A031346 n

end

end A299575.P12939130497454835121

/-! ## A299575.P14624760961769075440

`A299581(A001844(n))+A185284(n)`
-/

namespace A299575.P14624760961769075440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A001844 n).toNat + A185284 n

end

end A299575.P14624760961769075440

/-!
# A299576: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299576, there is no canonical definition to state claims against.
-/

/-! ## A299576.P7016754148412301121

`A299581(∑[n+2]+4)`
-/

namespace A299576.P7016754148412301121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299576.P7016754148412301121

/-! ## A299576.P9816237580373918533

`and(-1, A299581(A167614(n+1)))`
-/

namespace A299576.P9816237580373918533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299581 (A167614 (n + 1)).toNat)

end

end A299576.P9816237580373918533

/-! ## A299576.P12452733109805439415

`A299581(A000124(n+2)+2)+char[22]`
-/

namespace A299576.P12452733109805439415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299576.P12452733109805439415

/-! ## A299576.P3496572943507976069

`A299581(A167614(n+1))+A025469(n)`
-/

namespace A299576.P3496572943507976069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A167614 (n + 1)).toNat + A025469 n

end

end A299576.P3496572943507976069

/-! ## A299576.P15525835561540385521

`A299581(A167614(n+1))+A185284(n)`
-/

namespace A299576.P15525835561540385521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A167614 (n + 1)).toNat + A185284 n

end

end A299576.P15525835561540385521

/-!
# A299577: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299577, there is no canonical definition to state claims against.
-/

/-! ## A299577.P4640518500221171050

`A299581(C(n+5, 2)-n)`
-/

namespace A299577.P4640518500221171050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (Nat.choose (n + 5) 2 - n)

end

end A299577.P4640518500221171050

/-! ## A299577.P5317242910628808322

`A299581(A145018(n+4))`
-/

namespace A299577.P5317242910628808322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A145018 (n + 4)).toNat

end

end A299577.P5317242910628808322

/-! ## A299577.P2147878365989020717

`A299581(A141214(n)+7)`
-/

namespace A299577.P2147878365989020717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A141214 n + 7).toNat

end

end A299577.P2147878365989020717

/-! ## A299577.P5315882390536349858

`A299581(A052905(n)+9)`
-/

namespace A299577.P5315882390536349858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A052905 n + 9).toNat

end

end A299577.P5315882390536349858

/-! ## A299577.P2669499291683140303

`A299581(A055999(n)+10)`
-/

namespace A299577.P2669499291683140303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A055999 n + 10).toNat

end

end A299577.P2669499291683140303

/-!
# A299578: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299578, there is no canonical definition to state claims against.
-/

/-! ## A299578.P10571773788042388896

`A299581(∑[n+4]+11)`
-/

namespace A299578.P10571773788042388896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299578.P10571773788042388896

/-! ## A299578.P13973842495578913630

`record[A299581(n+5)/A193722(n)]`
-/

namespace A299578.P13973842495578913630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299581 (n + 5) : ℚ) / (A193722 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299578.P13973842495578913630

/-! ## A299578.P6778141587068745864

`record[A299581(n+5)/A224333(n+1)]`
-/

namespace A299578.P6778141587068745864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299581 (n + 5) : ℚ) / (A224333 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299578.P6778141587068745864

/-!
# A299579: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299579, there is no canonical definition to state claims against.
-/

/-! ## A299579.P18332284512451974649

`A299581(A056115(n)+21)`
-/

namespace A299579.P18332284512451974649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A056115 n + 21).toNat

end

end A299579.P18332284512451974649

/-! ## A299579.P10990070796822471371

`A299581(A167499(n+4)+1)`
-/

namespace A299579.P10990070796822471371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A167499 (n + 4) + 1).toNat

end

end A299579.P10990070796822471371

/-! ## A299579.P2655127963251121625

`A299581(A000124(n+5)+5)`
-/

namespace A299579.P2655127963251121625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A000124 (n + 5) + 5).toNat

end

end A299579.P2655127963251121625

/-! ## A299579.P11692820047859554198

`A299581(A000096(n+4)+7)`
-/

namespace A299579.P11692820047859554198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A000096 (n + 4) + 7).toNat

end

end A299579.P11692820047859554198

/-! ## A299579.P4776933191491538713

`A299581(A000217(n+5)+6)`
-/

namespace A299579.P4776933191491538713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A000217 (n + 5) + 6).toNat

end

end A299579.P4776933191491538713

/-!
# A299580: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299580, there is no canonical definition to state claims against.
-/

/-! ## A299580.P14457832686688865082

`A299581(A056119(n)+28)`
-/

namespace A299580.P14457832686688865082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A056119 n + 28).toNat

end

end A299580.P14457832686688865082

/-! ## A299580.P5439780587084757584

`A299581(eq[11, A066657(n)])`
-/

namespace A299580.P5439780587084757584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299580.P5439780587084757584

/-! ## A299580.P5619440686204029136

`A299581(A167499(n+5)+2)`
-/

namespace A299580.P5619440686204029136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A167499 (n + 5) + 2).toNat

end

end A299580.P5619440686204029136

/-! ## A299580.P6975806750973569844

`A299581(A000096(n+5)+8)`
-/

namespace A299580.P6975806750973569844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A000096 (n + 5) + 8).toNat

end

end A299580.P6975806750973569844

/-! ## A299580.P8813215063140475189

`A299581(A183905(n+3)+18)`
-/

namespace A299580.P8813215063140475189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (A183905 (n + 3) + 18).toNat

end

end A299580.P8813215063140475189

/-!
# A299581: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299581, there is no canonical definition to state claims against.
-/

/-! ## A299581.P3878454650826038693

`A108652(A299321(n+1))%A316420(n+3)`
-/

namespace A299581.P3878454650826038693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108652 (A299321 (n + 1)).toNat) (A316420 (n + 3))

end

end A299581.P3878454650826038693

/-! ## A299581.P834568631291181412

`and(A227753(A300138(n+1)), A299321(n+1))`
-/

namespace A299581.P834568631291181412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227753 (A300138 (n + 1)).toNat) (A299321 (n + 1))

end

end A299581.P834568631291181412

/-!
# A299582: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299582, there is no canonical definition to state claims against.
-/

/-! ## A299582.P7012619713701691459

`A299588(∑[4*n]+1)`
-/

namespace A299582.P7012619713701691459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299582.P7012619713701691459

/-! ## A299582.P4158986279215881360

`∑{digits}[n, A299588(A001844(#))]`
-/

namespace A299582.P4158986279215881360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A299588 (A001844 x).toNat).sum

end

end A299582.P4158986279215881360

/-! ## A299582.P12198532822352306107

`A299588(A001844(n))+char[9]`
-/

namespace A299582.P12198532822352306107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299582.P12198532822352306107

/-! ## A299582.P4140378933090670736

`A342845(n)+A299588(A001844(n))`
-/

namespace A299582.P4140378933090670736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A299588 (A001844 n).toNat

end

end A299582.P4140378933090670736

/-! ## A299582.P11194099754615458892

`A347689(n)+A299588(A001844(n))`
-/

namespace A299582.P11194099754615458892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A299588 (A001844 n).toNat

end

end A299582.P11194099754615458892

/-!
# A299583: Number of n X 3 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299583, there is no canonical definition to state claims against.
-/

/-! ## A299583.P11136459771904485726

`A299588(∑[n+2]+4)`
-/

namespace A299583.P11136459771904485726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299583.P11136459771904485726

/-! ## A299583.P9414870808104849147

`and(-1, A299588(A167614(n+1)))`
-/

namespace A299583.P9414870808104849147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299588 (A167614 (n + 1)).toNat)

end

end A299583.P9414870808104849147

/-! ## A299583.P11383014064133082508

`A299588(A046691(n)+7)+char[18]`
-/

namespace A299583.P11383014064133082508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299583.P11383014064133082508

/-! ## A299583.P5372026527507820945

`or(char[2], A299588(A034856(n+1)+5))`
-/

namespace A299583.P5372026527507820945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299588 (A034856 (n + 1) + 5).toNat)

end

end A299583.P5372026527507820945

/-! ## A299583.P4630015036172530627

`A299588(A167614(n+1))+A011731(n)`
-/

namespace A299583.P4630015036172530627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A167614 (n + 1)).toNat + A011731 n

end

end A299583.P4630015036172530627

/-!
# A299584: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299584, there is no canonical definition to state claims against.
-/

/-! ## A299584.P105643181152990557

`A299588(∑[n+3]+7)`
-/

namespace A299584.P105643181152990557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299584.P105643181152990557

/-! ## A299584.P16933758744672558608

`A299588(A027379(n+1)+7)+char[16]`
-/

namespace A299584.P16933758744672558608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299584.P16933758744672558608

/-! ## A299584.P7535894570328855974

`A299588(A167614(n+2)+1)+char[26]`
-/

namespace A299584.P7535894570328855974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299584.P7535894570328855974

/-! ## A299584.P13681821910996776359

`A274196(n)*A299588(A374004(n+1))`
-/

namespace A299584.P13681821910996776359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 n * A299588 (A374004 (n + 1)).toNat

end

end A299584.P13681821910996776359

/-! ## A299584.P17109365276976388284

`A007318(C(2, n))*A299588(A027379(n+1)+7)`
-/

namespace A299584.P17109365276976388284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299588 (A027379 (n + 1) + 7).toNat

end

end A299584.P17109365276976388284

/-!
# A299585: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299585, there is no canonical definition to state claims against.
-/

/-! ## A299585.P17994481543915954760

`A299588(∑[n+4]+11)`
-/

namespace A299585.P17994481543915954760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299585.P17994481543915954760

/-! ## A299585.P16414536868183094584

`A274196(n)*A299588(A167499(n+3))`
-/

namespace A299585.P16414536868183094584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 n * A299588 (A167499 (n + 3)).toNat

end

end A299585.P16414536868183094584

/-! ## A299585.P3413928317821642884

`A299588(A374005(n+1))%A126998(n)`
-/

namespace A299585.P3413928317821642884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299588 (A374005 (n + 1)).toNat) (A126998 n)

end

end A299585.P3413928317821642884

/-! ## A299585.P11477233917208294825

`A299588(A374005(n+1))*A323022(n+1)`
-/

namespace A299585.P11477233917208294825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A374005 (n + 1)).toNat * A323022 (n + 1)

end

end A299585.P11477233917208294825

/-! ## A299585.P10005515514179776024

`A267084(n+1)*A299588(A167499(n+3))`
-/

namespace A299585.P10005515514179776024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1) * A299588 (A167499 (n + 3)).toNat

end

end A299585.P10005515514179776024

/-!
# A299586: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299586, there is no canonical definition to state claims against.
-/

/-! ## A299586.P13175757826598877921

`A299588(A374007(n+1))`
-/

namespace A299586.P13175757826598877921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A374007 (n + 1)).toNat

end

end A299586.P13175757826598877921

/-! ## A299586.P17898545330156776546

`A299588(A166136(n+4))`
-/

namespace A299586.P17898545330156776546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A166136 (n + 4)).toNat

end

end A299586.P17898545330156776546

/-! ## A299586.P970220612626439181

`A299588(A056115(n)+21)`
-/

namespace A299586.P970220612626439181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A056115 n + 21).toNat

end

end A299586.P970220612626439181

/-! ## A299586.P11569622098856079118

`A299588(A167499(n+4)+1)`
-/

namespace A299586.P11569622098856079118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A167499 (n + 4) + 1).toNat

end

end A299586.P11569622098856079118

/-! ## A299586.P1980296672838665023

`A299588(A167614(n+4)+3)`
-/

namespace A299586.P1980296672838665023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A167614 (n + 4) + 3).toNat

end

end A299586.P1980296672838665023

/-!
# A299587: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299587, there is no canonical definition to state claims against.
-/

/-! ## A299587.P7172222413685701285

`A299588(A374008(n+1))`
-/

namespace A299587.P7172222413685701285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A374008 (n + 1)).toNat

end

end A299587.P7172222413685701285

/-! ## A299587.P9712066216594982558

`A299588(A167487(n+5))`
-/

namespace A299587.P9712066216594982558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A167487 (n + 5)).toNat

end

end A299587.P9712066216594982558

/-! ## A299587.P7713703340424656176

`A299588(A056119(n)+28)`
-/

namespace A299587.P7713703340424656176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A056119 n + 28).toNat

end

end A299587.P7713703340424656176

/-! ## A299587.P2429759385937477709

`A299588(eq[11, A066657(n)])`
-/

namespace A299587.P2429759385937477709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299587.P2429759385937477709

/-! ## A299587.P16029158240239389271

`A299588(A166136(n+5)+1)`
-/

namespace A299587.P16029158240239389271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (A166136 (n + 5) + 1).toNat

end

end A299587.P16029158240239389271

/-!
# A299588: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299588, there is no canonical definition to state claims against.
-/

/-! ## A299588.P17515730717508462436

`A298834(n+1)+A166301(A174116(n))`
-/

namespace A299588.P17515730717508462436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (n + 1) + A166301 (A174116 n).toNat

end

end A299588.P17515730717508462436

/-! ## A299588.P1621467415557972025

`A298834(n+1)+A166301(A174545(n))`
-/

namespace A299588.P1621467415557972025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (n + 1) + A166301 (A174545 n).toNat

end

end A299588.P1621467415557972025

/-! ## A299588.P11869870149165488420

`A298622(n+1)+A082858(A289481(n))`
-/

namespace A299588.P11869870149165488420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (n + 1) + A082858 (A289481 n).toNat

end

end A299588.P11869870149165488420

/-! ## A299588.P9743101941788917963

`A347689(A289481(n))+A298834(n+1)`
-/

namespace A299588.P9743101941788917963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A289481 n).toNat + A298834 (n + 1)

end

end A299588.P9743101941788917963

/-! ## A299588.P16733222133556109154

`and(A256697(A111910(n)), A299528(n+1))`
-/

namespace A299588.P16733222133556109154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256697 (A111910 n).toNat) (A299528 (n + 1))

end

end A299588.P16733222133556109154

/-!
# A299589: Number of n X n 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299589, there is no canonical definition to state claims against.
-/

/-! ## A299589.P8889173536048783058

`A299595(∑[4*n]+1)`
-/

namespace A299589.P8889173536048783058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299589.P8889173536048783058

/-! ## A299589.P14076192764105728018

`gcd(A000038(n), A299595(A001844(n)))`
-/

namespace A299589.P14076192764105728018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A299595 (A001844 n).toNat)

end

end A299589.P14076192764105728018

/-! ## A299589.P14659257581201899884

`lcm(A033999(n), A299595(A001844(n)))`
-/

namespace A299589.P14659257581201899884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299595 (A001844 n).toNat)

end

end A299589.P14659257581201899884

/-! ## A299589.P17654500334805505073

`or(A000007(n), A299595(A001844(n)))`
-/

namespace A299589.P17654500334805505073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299595 (A001844 n).toNat)

end

end A299589.P17654500334805505073

/-! ## A299589.P18172820571671564579

`A152271(2*n)*A299595(A001844(n))`
-/

namespace A299589.P18172820571671564579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A299595 (A001844 n).toNat

end

end A299589.P18172820571671564579

/-! ## A299589.P12415022265187166391

`A299595(A000982(2*n+1))%A000365(n+3)`
-/

namespace A299589.P12415022265187166391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299595 (A000982 (2 * n + 1)).toNat) (A000365 (n + 3))

end

end A299589.P12415022265187166391

/-! ## A299589.P6196550175463252428

`A000034(A008588(n))*A299595(A001844(n))`
-/

namespace A299589.P6196550175463252428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008588 n).toNat * A299595 (A001844 n).toNat

end

end A299589.P6196550175463252428

/-! ## A299589.P11079753940366786469

`A008683(A027746(n+1))²*A299595(A001844(n))`
-/

namespace A299589.P11079753940366786469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A027746 (n + 1)).toNat ^ 2 * A299595 (A001844 n).toNat

end

end A299589.P11079753940366786469

/-!
# A299590: Number of n X 3 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299590, the canonical program `A299590.P3664331016026746603` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299590 has offset 1).

The definition of A299590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299590.P3664331016026746603

`a(n-1)+2*a(n-3)+a(n-4)+a(n-5)` with `a(0)=3, a(1)=3, a(2)=5, a(3)=11, a(4)=19, a(5)=35, a(6)=65, a(7)=120`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299590

/-- `a(n-1)+2*a(n-3)+a(n-4)+a(n-5)` -/
def P3664331016026746603.Spec : Prop :=
  ∀ n, (P3664331016026746603.a n : ℤ) = A299590 (n + 1)

theorem P3664331016026746603.correct : P3664331016026746603.Spec := by
  intro n
  simp only [A299590, Nat.add_sub_cancel]

end A299590

/-! ## A299590.P5763425805616732427

`A299595(∑[n+2]+4)`
-/

namespace A299590.P5763425805616732427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299590.P5763425805616732427

namespace A299590

/-- `A299595(∑[n+2]+4)` -/
def P5763425805616732427.Spec : Prop :=
  ∀ n, P5763425805616732427.a n = A299590 (n + 1)

end A299590

/-! ## A299590.P12690227210201173325

`A299595(A167614(n+1))%A041328(n)`
-/

namespace A299590.P12690227210201173325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299595 (A167614 (n + 1)).toNat) (A041328 n)

end

end A299590.P12690227210201173325

namespace A299590

/-- `A299595(A167614(n+1))%A041328(n)` -/
def P12690227210201173325.Spec : Prop :=
  ∀ n, P12690227210201173325.a n = A299590 (n + 1)

end A299590

/-! ## A299590.P9764381868290377366

`lcm(A033999(n), A299595(A167614(n+1)))`
-/

namespace A299590.P9764381868290377366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299595 (A167614 (n + 1)).toNat)

end

end A299590.P9764381868290377366

namespace A299590

/-- `lcm(A033999(n), A299595(A167614(n+1)))` -/
def P9764381868290377366.Spec : Prop :=
  ∀ n, (P9764381868290377366.a n : ℤ) = A299590 (n + 1)

end A299590

/-! ## A299590.P3651638803483728994

`or(A000007(n), A299595(A167614(n+1)))`
-/

namespace A299590.P3651638803483728994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299595 (A167614 (n + 1)).toNat)

end

end A299590.P3651638803483728994

namespace A299590

/-- `or(A000007(n), A299595(A167614(n+1)))` -/
def P3651638803483728994.Spec : Prop :=
  ∀ n, P3651638803483728994.a n = A299590 (n + 1)

end A299590

/-! ## A299590.P11583914804539002813

`or(A000038(n), A299595(A167614(n+1)))`
-/

namespace A299590.P11583914804539002813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A299595 (A167614 (n + 1)).toNat)

end

end A299590.P11583914804539002813

namespace A299590

/-- `or(A000038(n), A299595(A167614(n+1)))` -/
def P11583914804539002813.Spec : Prop :=
  ∀ n, P11583914804539002813.a n = A299590 (n + 1)

end A299590

/-!
# A299591: Number of n X 4 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299591, there is no canonical definition to state claims against.
-/

/-! ## A299591.P4946464771774257701

`A299595(A374004(n+1))`
-/

namespace A299591.P4946464771774257701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A374004 (n + 1)).toNat

end

end A299591.P4946464771774257701

/-! ## A299591.P17854822510082840049

`A299595(A052905(n)+9)`
-/

namespace A299591.P17854822510082840049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A052905 n + 9).toNat

end

end A299591.P17854822510082840049

/-! ## A299591.P17810373809780042658

`A299595(A055999(n)+10)`
-/

namespace A299591.P17810373809780042658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A055999 n + 10).toNat

end

end A299591.P17810373809780042658

/-! ## A299591.P385427381843136746

`A299595(A167614(n+2)+1)`
-/

namespace A299591.P385427381843136746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A167614 (n + 2) + 1).toNat

end

end A299591.P385427381843136746

/-! ## A299591.P15434178756430002202

`A299595(A000217(n+3)+4)`
-/

namespace A299591.P15434178756430002202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A000217 (n + 3) + 4).toNat

end

end A299591.P15434178756430002202

/-! ## A299591.P16291445642157204613

`A299595(Δ[A023545(n+1)-n²])`
-/

namespace A299591.P16291445642157204613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (f1 (n + 1) - f1 n).toNat

end

end A299591.P16291445642157204613

/-! ## A299591.P2912416005528384085

`A299595(∑[n+4]+3)`
-/

namespace A299591.P2912416005528384085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A299591.P2912416005528384085

/-! ## A299591.P390211922383161938

`A299595(A055998(n+2))%A299592(n+1)`
-/

namespace A299591.P390211922383161938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299595 (A055998 (n + 2)).toNat) (A299592 (n + 1))

end

end A299591.P390211922383161938

/-!
# A299592: Number of n X 5 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299592, there is no canonical definition to state claims against.
-/

/-! ## A299592.P1451047022014730481

`A299595(A374005(n+1))`
-/

namespace A299592.P1451047022014730481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A374005 (n + 1)).toNat

end

end A299592.P1451047022014730481

/-! ## A299592.P8693666353442177619

`A299595(A167499(n+3))`
-/

namespace A299592.P8693666353442177619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A167499 (n + 3)).toNat

end

end A299592.P8693666353442177619

/-! ## A299592.P15342960093984751217

`A299595(A000124(n+5)-(n+1))`
-/

namespace A299592.P15342960093984751217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A299592.P15342960093984751217

/-! ## A299592.P4300535587073569428

`A299595(Δ[A023551(n+1)]-2*n)`
-/

namespace A299592.P4300535587073569428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A299592.P4300535587073569428

/-! ## A299592.P3940038031582827561

`lcm((-1)^n, A299595(A155212(n)+13))`
-/

namespace A299592.P3940038031582827561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A299595 (A155212 n + 13).toNat)

end

end A299592.P3940038031582827561

/-! ## A299592.P8426424196493964343

`A033999(n)^(n+1)*A299595(A155212(n)+13)`
-/

namespace A299592.P8426424196493964343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ (n + 1) * A299595 (A155212 n + 13).toNat

end

end A299592.P8426424196493964343

/-! ## A299592.P4485549342402694176

`A299595(A155212(n)+13)+A000007(∏{p}[2*n, #])`
-/

namespace A299592.P4485549342402694176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A155212 n + 13).toNat + A000007 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A299592.P4485549342402694176

/-! ## A299592.P17708308463065456678

`A299595(∑[n+5]+6)`
-/

namespace A299592.P17708308463065456678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299592.P17708308463065456678

/-!
# A299593: Number of n X 6 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299593, there is no canonical definition to state claims against.
-/

/-! ## A299593.P170073707972004899

`A299595(A374007(n+1))`
-/

namespace A299593.P170073707972004899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A374007 (n + 1)).toNat

end

end A299593.P170073707972004899

/-! ## A299593.P17757873022495327908

`A299595(A000124(n+5)+5)`
-/

namespace A299593.P17757873022495327908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A000124 (n + 5) + 5).toNat

end

end A299593.P17757873022495327908

/-! ## A299593.P3064853581241977484

`A299595(A055999(n+2)+12)`
-/

namespace A299593.P3064853581241977484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A055999 (n + 2) + 12).toNat

end

end A299593.P3064853581241977484

/-! ## A299593.P17129790575489568609

`A007318(∑[n+1])*A299595(A000217(n+5)+6)`
-/

namespace A299593.P17129790575489568609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A299595 (A000217 (n + 5) + 6).toNat

end

end A299593.P17129790575489568609

/-! ## A299593.P6504454565512714798

`A008683(A268790(n+1))*A299595(A000217(n+5)+6)`
-/

namespace A299593.P6504454565512714798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A268790 (n + 1)).toNat * A299595 (A000217 (n + 5) + 6).toNat

end

end A299593.P6504454565512714798

/-! ## A299593.P3028641889629843295

`A299595(A000217(n+5)+6)/A007318(A000217(n+6))`
-/

namespace A299593.P3028641889629843295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299595 (A000217 (n + 5) + 6).toNat : ℚ) / (A007318 (A000217 (n + 6)).toNat : ℚ)

end

end A299593.P3028641889629843295

/-! ## A299593.P9194222842155759760

`A299595((n+4)²-∑[n+1]+1)`
-/

namespace A299593.P9194222842155759760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A299593.P9194222842155759760

/-! ## A299593.P9157477987019977063

`A299595(∑[n+6]+10)%A211495(n+1)`
-/

namespace A299593.P9157477987019977063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299595 (∑ j ∈ Finset.range (n + 1), f1 j + 10)) (A211495 (n + 1))

end

end A299593.P9157477987019977063

/-!
# A299594: Number of n X 7 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299594, there is no canonical definition to state claims against.
-/

/-! ## A299594.P10527995396414271771

`A299595(A374008(n+1))`
-/

namespace A299594.P10527995396414271771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A374008 (n + 1)).toNat

end

end A299594.P10527995396414271771

/-! ## A299594.P16295297615971758739

`A299595(A000096(n+5)+8)`
-/

namespace A299594.P16295297615971758739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A000096 (n + 5) + 8).toNat

end

end A299594.P16295297615971758739

/-! ## A299594.P8323052873035450513

`A299595(A000217(n+6)+7)`
-/

namespace A299594.P8323052873035450513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A000217 (n + 6) + 7).toNat

end

end A299594.P8323052873035450513

/-! ## A299594.P16386420721829516820

`A299595(A052905(n+3)+12)`
-/

namespace A299594.P16386420721829516820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A052905 (n + 3) + 12).toNat

end

end A299594.P16386420721829516820

/-! ## A299594.P12267133477878483206

`A299595(A055999(n+4))`
-/

namespace A299594.P12267133477878483206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A055999 (n + 4)).toNat

end

end A299594.P12267133477878483206

/-! ## A299594.P15477485436126999058

`A299595(Δ[A023551(n+2)])`
-/

namespace A299594.P15477485436126999058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (f1 (n + 1) - f1 n).toNat

end

end A299594.P15477485436126999058

/-! ## A299594.P14718942545293809514

`A299595(Δ[A026054(n+4)])`
-/

namespace A299594.P14718942545293809514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (f1 (n + 1) - f1 n).toNat

end

end A299594.P14718942545293809514

/-! ## A299594.P2210476510522893601

`A299595(A155212(n+3)+2)`
-/

namespace A299594.P2210476510522893601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A155212 (n + 3) + 2).toNat

end

end A299594.P2210476510522893601

/-! ## A299594.P1965986055867812070

`A299595(A046691(n+5)-2)`
-/

namespace A299594.P1965986055867812070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A046691 (n + 5) - 2).toNat

end

end A299594.P1965986055867812070

/-! ## A299594.P2039891091680655194

`A299595(A000124(n+7)-7)`
-/

namespace A299594.P2039891091680655194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (A000124 (n + 7) - 7).toNat

end

end A299594.P2039891091680655194

/-!
# A299595: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A299595, there is no canonical definition to state claims against.
-/

/-! ## A299595.P6903856535518709943

`A318545(n+1)-A124763(A099594(n))`
-/

namespace A299595.P6903856535518709943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (n + 1) - A124763 (A099594 n).toNat

end

end A299595.P6903856535518709943

/-! ## A299595.P8539629309839326732

`A318545(n+1)-A163510(A157273(n))`
-/

namespace A299595.P8539629309839326732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (n + 1) - A163510 (A157273 n).toNat

end

end A299595.P8539629309839326732

/-! ## A299595.P8631311506365807090

`A318545(n+1)-A037800(A296548(n))`
-/

namespace A299595.P8631311506365807090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (n + 1) - A037800 (A296548 n).toNat

end

end A299595.P8631311506365807090

/-! ## A299595.P17973159236595748450

`A318545(n+1)-A014081(A189111(n+1))`
-/

namespace A299595.P17973159236595748450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (n + 1) - A014081 (A189111 (n + 1)).toNat

end

end A299595.P17973159236595748450

/-! ## A299595.P15153878683933219981

`A303719(n+1)+A010051(A022171(n))`
-/

namespace A299595.P15153878683933219981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (n + 1) + A010051 (A022171 n).toNat

end

end A299595.P15153878683933219981

/-!
# A299596: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299596, there is no canonical definition to state claims against.
-/

/-! ## A299596.P12222115886812264233

`A299602(∑[4*n]+1)`
-/

namespace A299596.P12222115886812264233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299596.P12222115886812264233

/-! ## A299596.P17126248103146776321

`A299602(A001844(n))+A025469(n)`
-/

namespace A299596.P17126248103146776321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A001844 n).toNat + A025469 n

end

end A299596.P17126248103146776321

/-! ## A299596.P15805444145354366775

`or(A105570(n), A299602(A001844(n)))`
-/

namespace A299596.P15805444145354366775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105570 n) (A299602 (A001844 n).toNat)

end

end A299596.P15805444145354366775

/-! ## A299596.P1674638082389486889

`A178688(n+1)*A299602(A001844(n))`
-/

namespace A299596.P1674638082389486889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) * A299602 (A001844 n).toNat

end

end A299596.P1674638082389486889

/-! ## A299596.P14909194890117532799

`lcm(A009194(n+1), A299602(A001844(n)))`
-/

namespace A299596.P14909194890117532799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009194 (n + 1)) (A299602 (A001844 n).toNat)

end

end A299596.P14909194890117532799

/-!
# A299597: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299597, there is no canonical definition to state claims against.
-/

/-! ## A299597.P17158753329079705273

`A299602(∑[n+2]+4)`
-/

namespace A299597.P17158753329079705273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299597.P17158753329079705273

/-! ## A299597.P8204405339641140091

`A054977(n)*A299602(A167614(n+1))`
-/

namespace A299597.P8204405339641140091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A299602 (A167614 (n + 1)).toNat

end

end A299597.P8204405339641140091

/-! ## A299597.P17786560361507191551

`A299602(A167614(n+1))%A041418(n)`
-/

namespace A299597.P17786560361507191551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299602 (A167614 (n + 1)).toNat) (A041418 n)

end

end A299597.P17786560361507191551

/-! ## A299597.P669345086208899655

`lcm(A033999(n), A299602(A167614(n+1)))`
-/

namespace A299597.P669345086208899655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299602 (A167614 (n + 1)).toNat)

end

end A299597.P669345086208899655

/-! ## A299597.P16157646473903190207

`and(A057428(n), A299602(A167614(n+1)))`
-/

namespace A299597.P16157646473903190207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A299602 (A167614 (n + 1)).toNat)

end

end A299597.P16157646473903190207

/-!
# A299598: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299598, there is no canonical definition to state claims against.
-/

/-! ## A299598.P452112487268180778

`A299602(A374004(n+1))`
-/

namespace A299598.P452112487268180778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A374004 (n + 1)).toNat

end

end A299598.P452112487268180778

/-! ## A299598.P14167256922247395749

`A299602(A141214(n)+7)`
-/

namespace A299598.P14167256922247395749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A141214 n + 7).toNat

end

end A299598.P14167256922247395749

/-! ## A299598.P5649485783519060438

`A299602(A055999(n)+10)`
-/

namespace A299598.P5649485783519060438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A055999 n + 10).toNat

end

end A299598.P5649485783519060438

/-! ## A299598.P14511171379093163707

`A299602(A167614(n+2)+1)`
-/

namespace A299598.P14511171379093163707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A167614 (n + 2) + 1).toNat

end

end A299598.P14511171379093163707

/-! ## A299598.P3080113130740293865

`A299602(eq[5, A131818(n+1)])`
-/

namespace A299598.P3080113130740293865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299598.P3080113130740293865

/-!
# A299599: Number of n X 5 0..1 arrays with every element equal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299599, there is no canonical definition to state claims against.
-/

/-! ## A299599.P9991604771985558964

`A299602(A374005(n+1))`
-/

namespace A299599.P9991604771985558964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A374005 (n + 1)).toNat

end

end A299599.P9991604771985558964

/-! ## A299599.P3988465756039731758

`A299602(A167499(n+3))`
-/

namespace A299599.P3988465756039731758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A167499 (n + 3)).toNat

end

end A299599.P3988465756039731758

/-! ## A299599.P10418273533800754494

`A299602(A155212(n)+13)`
-/

namespace A299599.P10418273533800754494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A155212 n + 13).toNat

end

end A299599.P10418273533800754494

/-! ## A299599.P13344876405042156953

`A299602(A056000(n)+15)`
-/

namespace A299599.P13344876405042156953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (A056000 n + 15).toNat

end

end A299599.P13344876405042156953

/-! ## A299599.P14811177215625208806

`A299602(eq[6, A131818(n+1)])`
-/

namespace A299599.P14811177215625208806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299599.P14811177215625208806

