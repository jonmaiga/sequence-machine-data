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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A043301: a(n) = 2^n*Sum_{k=0..n} (n+k)!/((n-k)!*k!*4^k).

The programs for A043301, the canonical program `A043301.P6552819237689946243` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043301 has offset 0).

The definition of A043301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043301.P6552819237689946243

`(2*n-1)*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A043301

/-- `(2*n-1)*a(n-1)+4*a(n-2)` -/
def P6552819237689946243.Spec : Prop :=
  ∀ n, P6552819237689946243.a n = A043301 n

theorem P6552819237689946243.correct : P6552819237689946243.Spec := by
  intro n
  simp only [A043301]

end A043301

/-! ## A043301.P5111791787029504564

`A107104(n+1)/2`
-/

namespace A043301.P5111791787029504564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107104 (n + 1) : ℚ) / 2

end

end A043301.P5111791787029504564

namespace A043301

/-- `A107104(n+1)/2` -/
def P5111791787029504564.Spec : Prop :=
  ∀ n, P5111791787029504564.a n = (A043301 n : ℚ)

end A043301

/-! ## A043301.P17111481829865195682

`Δ[∑[A107104(n)]/2]`
-/

namespace A043301.P17111481829865195682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107104 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043301.P17111481829865195682

namespace A043301

/-- `Δ[∑[A107104(n)]/2]` -/
def P17111481829865195682.Spec : Prop :=
  ∀ n, P17111481829865195682.a n = (A043301 n : ℚ)

end A043301

/-! ## A043301.P15927976893189464907

`record[A107104(∑[(-1)^(n%3)])/2]`
-/

namespace A043301.P15927976893189464907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107104 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043301.P15927976893189464907

namespace A043301

/-- `record[A107104(∑[(-1)^(n%3)])/2]` -/
def P15927976893189464907.Spec : Prop :=
  ∀ n, P15927976893189464907.a n = (A043301 n : ℚ)

end A043301

/-! ## A043301.P10951948612448926948

`ceil(A107104(ceil(A005408(n)/2))/2)`
-/

namespace A043301.P10951948612448926948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107104 ⌈(A005408 n : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A043301.P10951948612448926948

namespace A043301

/-- `ceil(A107104(ceil(A005408(n)/2))/2)` -/
def P10951948612448926948.Spec : Prop :=
  ∀ n, P10951948612448926948.a n = A043301 n

end A043301

/-!
# A043302: Triangular table of 2^n *(n+k)! / ((n-k)! * k! * 4^k).

The programs for A043302, the canonical program `A043302.P8846524501448389907` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043302 has offset 1).

The definition of A043302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043302.P8846524501448389907

`A001498(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A043302

/-- `A001498(n)*A130321(n)` -/
def P8846524501448389907.Spec : Prop :=
  ∀ n, P8846524501448389907.a n = A043302 (n + 1)

theorem P8846524501448389907.correct : P8846524501448389907.Spec := by
  intro n
  simp only [A043302, Nat.add_sub_cancel]

end A043302

/-! ## A043302.P12158700684029817073

`lcm(A001498(n), A114192(n))`
-/

namespace A043302.P12158700684029817073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001498 n) (A114192 n)

end

end A043302.P12158700684029817073

namespace A043302

/-- `lcm(A001498(n), A114192(n))` -/
def P12158700684029817073.Spec : Prop :=
  ∀ n, (P12158700684029817073.a n : ℤ) = A043302 (n + 1)

end A043302

/-! ## A043302.P8217584993020282627

`sqrt(A262616(n))*A001498(n)`
-/

namespace A043302.P8217584993020282627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A001498 n : ℝ)

end

end A043302.P8217584993020282627

namespace A043302

/-- `sqrt(A262616(n))*A001498(n)` -/
def P8217584993020282627.Spec : Prop :=
  ∀ n, P8217584993020282627.a n = (A043302 (n + 1) : ℝ)

end A043302

/-! ## A043302.P1800765114697037310

`A001498(n)*A011782(A004736(n+1))`
-/

namespace A043302.P1800765114697037310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 n * A011782 (A004736 (n + 1)).toNat

end

end A043302.P1800765114697037310

namespace A043302

/-- `A001498(n)*A011782(A004736(n+1))` -/
def P1800765114697037310.Spec : Prop :=
  ∀ n, P1800765114697037310.a n = A043302 (n + 1)

end A043302

/-! ## A043302.P13165909721659270277

`gcd(6*9*2^n, A036565(n))*A001498(n)`
-/

namespace A043302.P13165909721659270277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (6 * (9 * 2 ^ n) : ℤ) (A036565 n) : ℤ) * A001498 n

end

end A043302.P13165909721659270277

namespace A043302

/-- `gcd(6*9*2^n, A036565(n))*A001498(n)` -/
def P13165909721659270277.Spec : Prop :=
  ∀ n, P13165909721659270277.a n = A043302 (n + 1)

end A043302

/-!
# A043303: Numerator of B(4n+2)/(2n+1) where B(m) are the Bernoulli numbers.

The programs for A043303, there is no canonical definition to state claims against.
-/

/-! ## A043303.P7748260763540279946

`A001067(2*n+1)`
-/

namespace A043303.P7748260763540279946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001067 (2 * n + 1)

end

end A043303.P7748260763540279946

/-! ## A043303.P9675918087736193384

`A060054(4*n+2)`
-/

namespace A043303.P9675918087736193384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (4 * n + 2)

end

end A043303.P9675918087736193384

/-! ## A043303.P16323212615687989617

`A358625(4*n+2)`
-/

namespace A043303.P16323212615687989617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358625 (4 * n + 2)

end

end A043303.P16323212615687989617

/-! ## A043303.P538712953704410761

`A000367(2*n+1)/A300711(2*n+1)`
-/

namespace A043303.P538712953704410761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (2 * n + 1) : ℚ) / (A300711 (2 * n + 1) : ℚ)

end

end A043303.P538712953704410761

/-! ## A043303.P13213478349359184777

`A276594(Δ[n²])`
-/

namespace A043303.P13213478349359184777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043303.P13213478349359184777

/-!
# A043304: Denominator of B(4n+2)/(8n+4) where B(m) are the Bernoulli numbers.

The programs for A043304, there is no canonical definition to state claims against.
-/

/-! ## A043304.P947501436003010531

`A006863(2*n+3)`
-/

namespace A043304.P947501436003010531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 (2 * n + 3)

end

end A043304.P947501436003010531

/-! ## A043304.P13910714281534098018

`A079612(4*n+6)`
-/

namespace A043304.P13910714281534098018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (4 * n + 6)

end

end A043304.P13910714281534098018

/-! ## A043304.P7000260247500914222

`4*A036283(2*n+3)`
-/

namespace A043304.P7000260247500914222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036283 (2 * n + 3)

end

end A043304.P7000260247500914222

/-! ## A043304.P13792354913531450202

`2*A075180(4*n+5)`
-/

namespace A043304.P13792354913531450202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075180 (4 * n + 5)

end

end A043304.P13792354913531450202

/-! ## A043304.P10231056684206695927

`2*A006953(2*n+3)`
-/

namespace A043304.P10231056684206695927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006953 (2 * n + 3)

end

end A043304.P10231056684206695927

/-!
# A043305: Numbers k such that the numerator of the sum of the reciprocals of the divisors of k (=A017665(k)) is a power of 2.

The programs for A043305, the canonical program `A043305.P4009443292463290629` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043305 has offset 1).

The definition of A043305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043305.P4009443292463290629

`record[(n+1)*A361465(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043305

/-- `record[(n+1)*A361465(n+1)]` -/
def P4009443292463290629.Spec : Prop :=
  ∀ n, P4009443292463290629.a n = A043305 (n + 1)

theorem P4009443292463290629.correct : P4009443292463290629.Spec := by
  intro n
  simp only [A043305, Nat.add_sub_cancel]

end A043305

/-! ## A043305.P2100113961088018835

`eq[1, A361465(n+1)]+1`
-/

namespace A043305.P2100113961088018835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043305.P2100113961088018835

namespace A043305

/-- `eq[1, A361465(n+1)]+1` -/
def P2100113961088018835.Spec : Prop :=
  ∀ n, (P2100113961088018835.a n : ℤ) = A043305 (n + 1)

end A043305

/-! ## A043305.P2929384803554366523

`lt[(n+1)%A161942(n+1), 1]+1`
-/

namespace A043305.P2929384803554366523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A161942 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043305.P2929384803554366523

namespace A043305

/-- `lt[(n+1)%A161942(n+1), 1]+1` -/
def P2929384803554366523.Spec : Prop :=
  ∀ n, (P2929384803554366523.a n : ℤ) = A043305 (n + 1)

end A043305

/-! ## A043305.P15509842385397683859

`filter[A032766(n+1), A361465(#)]`
-/

namespace A043305.P15509842385397683859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j).toNat = 1) n)

end

end A043305.P15509842385397683859

namespace A043305

/-- `filter[A032766(n+1), A361465(#)]` -/
def P15509842385397683859.Spec : Prop :=
  ∀ n, P15509842385397683859.a n = A043305 (n + 1)

end A043305

/-! ## A043305.P14578897034333355977

`filter[A004439(n+1), A361465(#)]`
-/

namespace A043305.P14578897034333355977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j).toNat = 1) n)

end

end A043305.P14578897034333355977

namespace A043305

/-- `filter[A004439(n+1), A361465(#)]` -/
def P14578897034333355977.Spec : Prop :=
  ∀ n, P14578897034333355977.a n = A043305 (n + 1)

end A043305

/-! ## A043305.P12005107184513692829

`filter[A018825(n+1), A361465(#)]`
-/

namespace A043305.P12005107184513692829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j).toNat = 1) n)

end

end A043305.P12005107184513692829

namespace A043305

/-- `filter[A018825(n+1), A361465(#)]` -/
def P12005107184513692829.Spec : Prop :=
  ∀ n, P12005107184513692829.a n = A043305 (n + 1)

end A043305

/-! ## A043305.P13634492189561612959

`filter[A336353(n+1), A361465(#)]`
-/

namespace A043305.P13634492189561612959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j).toNat = 1) n)

end

end A043305.P13634492189561612959

namespace A043305

/-- `filter[A336353(n+1), A361465(#)]` -/
def P13634492189561612959.Spec : Prop :=
  ∀ n, P13634492189561612959.a n = A043305 (n + 1)

end A043305

/-! ## A043305.P8009561196609956932

`filter[n+1, A361465(#)]`
-/

namespace A043305.P8009561196609956932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j) = 1) n)

end

end A043305.P8009561196609956932

namespace A043305

/-- `filter[n+1, A361465(#)]` -/
def P8009561196609956932.Spec : Prop :=
  ∀ n, (P8009561196609956932.a n : ℤ) = A043305 (n + 1)

end A043305

/-! ## A043305.P16439370050919809330

`eq[1, A000265(A017665(n+1))]+1`
-/

namespace A043305.P16439370050919809330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043305.P16439370050919809330

namespace A043305

/-- `eq[1, A000265(A017665(n+1))]+1` -/
def P16439370050919809330.Spec : Prop :=
  ∀ n, (P16439370050919809330.a n : ℤ) = A043305 (n + 1)

end A043305

/-! ## A043305.P7905885378537639633

`record[A000027(n+1)/A000374(A017665(n+1))]`
-/

namespace A043305.P7905885378537639633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000374 (A017665 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043305.P7905885378537639633

namespace A043305

/-- `record[A000027(n+1)/A000374(A017665(n+1))]` -/
def P7905885378537639633.Spec : Prop :=
  ∀ n, P7905885378537639633.a n = (A043305 (n + 1) : ℚ)

end A043305

/-!
# A043306: Sum of all digits in all base-b representations for n, for 2 <= b <= n.

The programs for A043306, there is no canonical definition to state claims against.
-/

/-! ## A043306.P15345920909256062532

`A131383(n+2)-(n+2)`
-/

namespace A043306.P15345920909256062532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131383 (n + 2) - (n + 2 : ℤ)

end

end A043306.P15345920909256062532

/-! ## A043306.P9176756741373406139

`∑[A003958(A258275(n+1)+n+2)]`
-/

namespace A043306.P9176756741373406139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A258275 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043306.P9176756741373406139

/-! ## A043306.P11121968992411723264

`∑[A003958(A040001(3^n+1)+n)]`
-/

namespace A043306.P11121968992411723264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A040001 (3 ^ n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043306.P11121968992411723264

/-! ## A043306.P14857559619573354797

`∑[A003958(n+2)%A167201(n+1)]`
-/

namespace A043306.P14857559619573354797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003958 (n + 2)) (A167201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043306.P14857559619573354797

/-! ## A043306.P3822590730693282870

`∑[A003958(n+2)]%A225955(n+1)`
-/

namespace A043306.P3822590730693282870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A225955 (n + 1))

end

end A043306.P3822590730693282870

/-!
# A043307: a(n) = A033001(n)/4.

The programs for A043307, there is no canonical definition to state claims against.
-/

/-! ## A043307.P1910792845449924253

`A033001(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043307.P1910792845449924253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033001 (n + 1) : ℚ) / 4

end

end A043307.P1910792845449924253

/-! ## A043307.P17108197829494952371

`A037314(A031941(n+1))`
-/

namespace A043307.P17108197829494952371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A031941 (n + 1)).toNat

end

end A043307.P17108197829494952371

/-! ## A043307.P7769671137762252566

`A037314(A043089(n+1))`
-/

namespace A043307.P7769671137762252566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A043089 (n + 1)).toNat

end

end A043307.P7769671137762252566

/-! ## A043307.P5987653738205748959

`A037314(record[(n+1)/A043277(n+1)])`
-/

namespace A043307.P5987653738205748959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A043277 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A043307.P5987653738205748959

/-! ## A043307.P4774916506287437845

`A338086(record[(n+1)/A043277(n+1)])/4`
-/

namespace A043307.P4774916506287437845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A043277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338086 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) / 4

end

end A043307.P4774916506287437845

/-! ## A043307.P3724715166136594621

`A110962(A033001(n+1))`
-/

namespace A043307.P3724715166136594621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A033001 (n + 1)).toNat

end

end A043307.P3724715166136594621

/-!
# A043308: a(n)=A033002(n)/5.

The programs for A043308, there is no canonical definition to state claims against.
-/

/-! ## A043308.P6988276562743958415

`A033002(n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043308.P6988276562743958415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033002 (n + 1) : ℚ) / 5

end

end A043308.P6988276562743958415

/-! ## A043308.P15028706001843933792

`and(A033002(n+1), A112627(n+1))`
-/

namespace A043308.P15028706001843933792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033002 (n + 1)) (A112627 (n + 1))

end

end A043308.P15028706001843933792

/-! ## A043308.P16397895543256985261

`and(A033002(n+1), A043291(or(1, n)))`
-/

namespace A043308.P16397895543256985261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033002 (n + 1)) (A043291 (Nat.lor 1 n))

end

end A043308.P16397895543256985261

/-! ## A043308.P12146228334778935806

`and(A033002(n+1), A043291(A005408(n)))`
-/

namespace A043308.P12146228334778935806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033002 (n + 1)) (A043291 (A005408 n).toNat)

end

end A043308.P12146228334778935806

/-! ## A043308.P3402014365771263336

`A002266(A033002(n+1))`
-/

namespace A043308.P3402014365771263336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A033002 (n + 1)).toNat

end

end A043308.P3402014365771263336

/-!
# A043309: a(n)=A033003(n)/6.

The programs for A043309, there is no canonical definition to state claims against.
-/

/-! ## A043309.P2289011412555033106

`A033003(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043309.P2289011412555033106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033003 (n + 1) : ℚ) / 6

end

end A043309.P2289011412555033106

/-! ## A043309.P16049674581333251370

`A255591(A033003(n+1))`
-/

namespace A043309.P16049674581333251370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A033003 (n + 1)).toNat

end

end A043309.P16049674581333251370

/-! ## A043309.P17880437018121948755

`A008615(A033003(n+1)+1)`
-/

namespace A043309.P17880437018121948755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A033003 (n + 1) + 1).toNat

end

end A043309.P17880437018121948755

/-! ## A043309.P9372564967545977877

`A103221(A033003(n+1)+1)`
-/

namespace A043309.P9372564967545977877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A033003 (n + 1) + 1).toNat

end

end A043309.P9372564967545977877

/-! ## A043309.P9258373262332912143

`A078898(A033003(n+1)-3)`
-/

namespace A043309.P9258373262332912143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A033003 (n + 1) - 3).toNat

end

end A043309.P9258373262332912143

/-!
# A043310: a(n)=A033004(n)/7.

The programs for A043310, there is no canonical definition to state claims against.
-/

/-! ## A043310.P14339939696748740706

`A033004(n+1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043310.P14339939696748740706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033004 (n + 1) : ℚ) / 7

end

end A043310.P14339939696748740706

/-! ## A043310.P4994126135494580452

`record[ratio[A033004(A152271(n))]]`
-/

namespace A043310.P4994126135494580452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033004 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043310.P4994126135494580452

/-! ## A043310.P3360261164144554546

`A106608(A033004(n+1))`
-/

namespace A043310.P3360261164144554546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A033004 (n + 1)).toNat

end

end A043310.P3360261164144554546

/-! ## A043310.P8393347972057970051

`∑[A036234(A104714(n)!)]`
-/

namespace A043310.P8393347972057970051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Nat.factorial (A104714 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043310.P8393347972057970051

/-! ## A043310.P7246362650794685660

`∑[A225090(A104714(n)!)]`
-/

namespace A043310.P7246362650794685660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225090 (Nat.factorial (A104714 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043310.P7246362650794685660

/-!
# A043311: a(n)=A033005(n)/8.

The programs for A043311, there is no canonical definition to state claims against.
-/

/-! ## A043311.P360723517659555137

`A033005(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043311.P360723517659555137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033005 (n + 1) : ℚ) / 8

end

end A043311.P360723517659555137

/-! ## A043311.P11238108815035265390

`A117358(A033005(n+1))`
-/

namespace A043311.P11238108815035265390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A033005 (n + 1)).toNat

end

end A043311.P11238108815035265390

/-! ## A043311.P824994286968601125

`A003602(A033005(n+1)-4)`
-/

namespace A043311.P824994286968601125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A033005 (n + 1) - 4).toNat

end

end A043311.P824994286968601125

/-! ## A043311.P18262920807730607582

`A106609(lcm(2, A033005(n+1)))`
-/

namespace A043311.P18262920807730607582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (Int.lcm 2 (A033005 (n + 1)))

end

end A043311.P18262920807730607582

/-! ## A043311.P10079113394035049917

`A106609(A243834(n)+A033005(n+1))`
-/

namespace A043311.P10079113394035049917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A243834 n + A033005 (n + 1)).toNat

end

end A043311.P10079113394035049917

/-!
# A043312: a(n) = A033006(n)/9.

The programs for A043312, there is no canonical definition to state claims against.
-/

/-! ## A043312.P15584293856332064589

`A033006(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043312.P15584293856332064589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033006 (n + 1) : ℚ) / 9

end

end A043312.P15584293856332064589

/-! ## A043312.P10139477430151752249

`floor(A033006(A005408(n)-n)/9)`
-/

namespace A043312.P10139477430151752249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033006 (A005408 n - (n : ℤ)).toNat : ℚ) / 9⌋

end

end A043312.P10139477430151752249

/-! ## A043312.P3608702632595147882

`or(A033006(A005408(n)-n)/9, A000007(n))`
-/

namespace A043312.P3608702632595147882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A033006 (A005408 n - (n : ℤ)).toNat : ℚ) / 9)) (A000007 n)

end

end A043312.P3608702632595147882

/-! ## A043312.P13079118615133588109

`A033006(A005408(n)-n)/9*A033999(n)²`
-/

namespace A043312.P13079118615133588109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033006 (A005408 n - (n : ℤ)).toNat : ℚ) / 9 * (A033999 n ^ 2 : ℚ)

end

end A043312.P13079118615133588109

/-! ## A043312.P9131633999554926208

`(A033006(A005408(n)-n)/9)^(n/A123108(2*n))`
-/

namespace A043312.P9131633999554926208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A033006 (A005408 n - (n : ℤ)).toNat : ℚ) / 9 : ℝ) ^ ((n : ℚ) / (A123108 (2 * n) : ℚ) : ℝ)

end

end A043312.P9131633999554926208

/-! ## A043312.P10281250205159321656

`A033006(A005408(n)-n)/9*A014963(A008458(n))`
-/

namespace A043312.P10281250205159321656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033006 (A005408 n - (n : ℤ)).toNat : ℚ) / 9 * (A014963 (A008458 n).toNat : ℚ)

end

end A043312.P10281250205159321656

/-! ## A043312.P11939208426167633427

`and(A033006(n+1), A113841(A233583(n+1)))`
-/

namespace A043312.P11939208426167633427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033006 (n + 1)) (A113841 (A233583 (n + 1)).toNat)

end

end A043312.P11939208426167633427

/-! ## A043312.P14037578573391529649

`and(A033006(n+1), A113841(n+1))`
-/

namespace A043312.P14037578573391529649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033006 (n + 1)) (A113841 (n + 1))

end

end A043312.P14037578573391529649

/-! ## A043312.P5251155468283361205

`A106610(A033006(n+1))`
-/

namespace A043312.P5251155468283361205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A033006 (n + 1)).toNat

end

end A043312.P5251155468283361205

/-! ## A043312.P647073688709785291

`A106619(2*A033006(n+1))`
-/

namespace A043312.P647073688709785291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (2 * A033006 (n + 1)).toNat

end

end A043312.P647073688709785291

/-!
# A043313: a(n)=A033007(n)/10.

The programs for A043313, there is no canonical definition to state claims against.
-/

/-! ## A043313.P7411646023114139901

`A033007(n+1)/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043313.P7411646023114139901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033007 (n + 1) : ℚ) / 10

end

end A043313.P7411646023114139901

/-! ## A043313.P1237532870635734448

`A059995(A033007(n+1))`
-/

namespace A043313.P1237532870635734448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A033007 (n + 1)).toNat

end

end A043313.P1237532870635734448

/-! ## A043313.P12782260471107867409

`A008616(A033007(n+1)+1)`
-/

namespace A043313.P12782260471107867409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A033007 (n + 1) + 1).toNat

end

end A043313.P12782260471107867409

/-! ## A043313.P13295280208979057898

`A257850(A033007(n+1)+1)`
-/

namespace A043313.P13295280208979057898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (A033007 (n + 1) + 1).toNat

end

end A043313.P13295280208979057898

/-! ## A043313.P12491733690697655358

`A076314(A033007(n+1)-9)`
-/

namespace A043313.P12491733690697655358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A033007 (n + 1) - 9).toNat

end

end A043313.P12491733690697655358

/-! ## A043313.P4672562515978253035

`A076309(lcm(2, A033007(n+1)))`
-/

namespace A043313.P4672562515978253035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (Int.lcm 2 (A033007 (n + 1)))

end

end A043313.P4672562515978253035

/-! ## A043313.P15664218663707875646

`A106611(A033007(n+1))%A000041(n+5)`
-/

namespace A043313.P15664218663707875646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106611 (A033007 (n + 1)).toNat) (A000041 (n + 5))

end

end A043313.P15664218663707875646

/-! ## A043313.P1423601668393860355

`A007318(C(2, n))*A106611(A033007(n+1))`
-/

namespace A043313.P1423601668393860355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A106611 (A033007 (n + 1)).toNat

end

end A043313.P1423601668393860355

/-! ## A043313.P13790212616447774797

`A106611(2*A033007(n+1)-A033007(n+1))`
-/

namespace A043313.P13790212616447774797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (2 * A033007 (n + 1) - A033007 (n + 1)).toNat

end

end A043313.P13790212616447774797

/-! ## A043313.P6584333547817025714

`A106611(A033007(n+1))+A008683(4*(n+1))`
-/

namespace A043313.P6584333547817025714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A033007 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A043313.P6584333547817025714

/-!
# A043314: a(n)=A033008(n)/11.

The programs for A043314, there is no canonical definition to state claims against.
-/

/-! ## A043314.P9723026483580078639

`A033008(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043314.P9723026483580078639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033008 (n + 1) : ℚ) / 11

end

end A043314.P9723026483580078639

/-! ## A043314.P11480124029651185584

`A051022(A043096(n+2))`
-/

namespace A043314.P11480124029651185584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A043096 (n + 2)).toNat

end

end A043314.P11480124029651185584

/-! ## A043314.P16900213458129406902

`A051022(record[A321801(n+1)])`
-/

namespace A043314.P16900213458129406902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043314.P16900213458129406902

/-! ## A043314.P10650745962358377446

`A051022(record[A321802(n+1)])`
-/

namespace A043314.P10650745962358377446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043314.P10650745962358377446

/-! ## A043314.P6776138193751327688

`A051022(record[A351868(n+1)])`
-/

namespace A043314.P6776138193751327688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043314.P6776138193751327688

/-! ## A043314.P2083419082451597081

`A051022(eq[A057427(n), A196368(n)])`
-/

namespace A043314.P2083419082451597081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A043314.P2083419082451597081

/-! ## A043314.P515732857884076910

`A106612(A033008(n+1))`
-/

namespace A043314.P515732857884076910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A033008 (n + 1)).toNat

end

end A043314.P515732857884076910

/-!
# A043315: a(n)=s(n)/12, where s=A033009.

The programs for A043315, there is no canonical definition to state claims against.
-/

/-! ## A043315.P13243061842971629211

`A033009(n+1)/12`
-/

namespace A043315.P13243061842971629211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033009 (n + 1) : ℚ) / 12

end

end A043315.P13243061842971629211

/-! ## A043315.P4126796412108827118

`A051724(A033009(n+1))`
-/

namespace A043315.P4126796412108827118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A033009 (n + 1)).toNat

end

end A043315.P4126796412108827118

/-! ## A043315.P17588045917134210183

`A008647(A033009(n+1)+1)`
-/

namespace A043315.P17588045917134210183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A033009 (n + 1) + 1).toNat

end

end A043315.P17588045917134210183

/-! ## A043315.P10984053927357529113

`A194698(2*A033009(n+1))`
-/

namespace A043315.P10984053927357529113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (2 * A033009 (n + 1)).toNat

end

end A043315.P10984053927357529113

/-! ## A043315.P8347992696364297463

`A194698(A033009(n+1)+A033009(n+1)+1)`
-/

namespace A043315.P8347992696364297463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A033009 (n + 1) + (A033009 (n + 1) + 1)).toNat

end

end A043315.P8347992696364297463

/-!
# A043316: a(n)=s(n)/13, where s=A033010.

The programs for A043316, there is no canonical definition to state claims against.
-/

/-! ## A043316.P9253811025843540626

`A033010(n+1)/13`
-/

namespace A043316.P9253811025843540626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033010 (n + 1) : ℚ) / 13

end

end A043316.P9253811025843540626

/-! ## A043316.P17750732827676230620

`record[ratio[A033010(A152271(n))]]`
-/

namespace A043316.P17750732827676230620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033010 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043316.P17750732827676230620

/-! ## A043316.P9133779594161037731

`A106614(A033010(n+1))`
-/

namespace A043316.P9133779594161037731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A033010 (n + 1)).toNat

end

end A043316.P9133779594161037731

/-! ## A043316.P10995631166481443695

`∑[A326361(A090182(n))]`
-/

namespace A043316.P10995631166481443695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326361 (A090182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043316.P10995631166481443695

/-! ## A043316.P16105060509236646444

`∑[A139555(A213275(n)!)]`
-/

namespace A043316.P16105060509236646444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (Nat.factorial (A213275 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043316.P16105060509236646444

/-!
# A043317: a(n)=A033011(n)/14.

The programs for A043317, there is no canonical definition to state claims against.
-/

/-! ## A043317.P12246313288535873425

`A033011(n+1)/14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043317.P12246313288535873425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033011 (n + 1) : ℚ) / 14

end

end A043317.P12246313288535873425

/-! ## A043317.P818080359322099527

`record[ratio[A033011(A152271(n))]]`
-/

namespace A043317.P818080359322099527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033011 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043317.P818080359322099527

/-! ## A043317.P8831352890373224481

`floor(A033011(A266285(2*n))/14)`
-/

namespace A043317.P8831352890373224481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033011 (A266285 (2 * n)).toNat : ℚ) / 14⌋

end

end A043317.P8831352890373224481

/-! ## A043317.P5718195944443387894

`(A033011(A266285(2*n))/14)%(2*A035592(n))`
-/

namespace A043317.P5718195944443387894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A033011 (A266285 (2 * n)).toNat : ℚ) / 14)) (2 * A035592 n)

end

end A043317.P5718195944443387894

/-! ## A043317.P3864270300800359399

`A106615(A033011(n+1))`
-/

namespace A043317.P3864270300800359399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (A033011 (n + 1)).toNat

end

end A043317.P3864270300800359399

/-!
# A043318: a(n)=A033012(n)/15.

The programs for A043318, there is no canonical definition to state claims against.
-/

/-! ## A043318.P13320078100600208089

`A033012(n+1)/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043318.P13320078100600208089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033012 (n + 1) : ℚ) / 15

end

end A043318.P13320078100600208089

/-! ## A043318.P16332911601909697452

`A106616(A033012(n+1))`
-/

namespace A043318.P16332911601909697452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A033012 (n + 1)).toNat

end

end A043318.P16332911601909697452

/-! ## A043318.P16525002207096368034

`∑[A091420(A335545(n)!)]`
-/

namespace A043318.P16525002207096368034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (Nat.factorial (A335545 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043318.P16525002207096368034

/-! ## A043318.P1290137126930806245

`A044915(A043319(n+1))%A340908(A126715(n))`
-/

namespace A043318.P1290137126930806245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044915 (A043319 (n + 1)).toNat) (A340908 (A126715 n).toNat)

end

end A043318.P1290137126930806245

/-!
# A043319: a(n)=A033013(n)/16.

The programs for A043319, there is no canonical definition to state claims against.
-/

/-! ## A043319.P17573338903889066047

`A033013(n+1)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043319.P17573338903889066047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033013 (n + 1) : ℚ) / 16

end

end A043319.P17573338903889066047

/-! ## A043319.P4997785451665298535

`A106617(A033013(n+1))`
-/

namespace A043319.P4997785451665298535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A033013 (n + 1)).toNat

end

end A043319.P4997785451665298535

/-! ## A043319.P10179523320146382593

`A025480(A033013(n+1)+7)`
-/

namespace A043319.P10179523320146382593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A033013 (n + 1) + 7).toNat

end

end A043319.P10179523320146382593

/-! ## A043319.P7015224053535405834

`A003602(A033013(n+1)-8)`
-/

namespace A043319.P7015224053535405834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A033013 (n + 1) - 8).toNat

end

end A043319.P7015224053535405834

/-! ## A043319.P266502731677482878

`record[A053165(A033013(n+1))%A000032(n+3)]`
-/

namespace A043319.P266502731677482878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053165 (A033013 (n + 1)).toNat) (A000032 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043319.P266502731677482878

/-!
# A043320: Numbers which, written in base 256, have all digits less than 16 and no two adjacent digits equal.

The programs for A043320, there is no canonical definition to state claims against.
-/

/-! ## A043320.P4133843840542928244

`A033014(n+1)/17`
-/

namespace A043320.P4133843840542928244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033014 (n + 1) : ℚ) / 17

end

end A043320.P4133843840542928244

/-! ## A043320.P6759740149442402011

`record[ratio[A033014(A152271(n))]]`
-/

namespace A043320.P6759740149442402011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033014 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043320.P6759740149442402011

/-! ## A043320.P14065533560483270218

`A106618(A033014(n+1))`
-/

namespace A043320.P14065533560483270218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A033014 (n + 1)).toNat

end

end A043320.P14065533560483270218

/-! ## A043320.P15745962357203982289

`record[A044842(n+1)/A043289(A094275(n+1))]/17`
-/

namespace A043320.P15745962357203982289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044842 (n + 1) : ℚ) / (A043289 (A094275 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 17

end

end A043320.P15745962357203982289

/-! ## A043320.P366762615671513445

`A044917(n+1)-A185294(A007094(n))`
-/

namespace A043320.P366762615671513445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (n + 1) - A185294 (A007094 n).toNat

end

end A043320.P366762615671513445

/-!
# A043321: Numbers having one 0 in base 3.

The programs for A043321, the canonical program `A043321.P12978046545193674839` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043321 has offset 1).

The definition of A043321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043321.P12978046545193674839

`eq[1, A077267(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043321

/-- `eq[1, A077267(n+1)]+1` -/
def P12978046545193674839.Spec : Prop :=
  ∀ n, (P12978046545193674839.a n : ℤ) = A043321 (n + 1)

theorem P12978046545193674839.correct : P12978046545193674839.Spec := by
  intro n
  simp only [A043321, Nat.add_sub_cancel]

end A043321

/-! ## A043321.P6620876348457986968

`eq[1, A077267(A028310(n))]`
-/

namespace A043321.P6620876348457986968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P6620876348457986968

namespace A043321

/-- `eq[1, A077267(A028310(n))]` -/
def P6620876348457986968.Spec : Prop :=
  ∀ n, (P6620876348457986968.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P1017125157657264803

`eq[2, A291771(A016789(n))]`
-/

namespace A043321.P1017125157657264803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291771 (A016789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P1017125157657264803

namespace A043321

/-- `eq[2, A291771(A016789(n))]` -/
def P1017125157657264803.Spec : Prop :=
  ∀ n, (P1017125157657264803.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P3966906407035152314

`eq[2, A080100(A289831(n))]`
-/

namespace A043321.P3966906407035152314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P3966906407035152314

namespace A043321

/-- `eq[2, A080100(A289831(n))]` -/
def P3966906407035152314.Spec : Prop :=
  ∀ n, (P3966906407035152314.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P12689910639802688647

`eq[A054977(n), A077267(n)]`
-/

namespace A043321.P12689910639802688647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P12689910639802688647

namespace A043321

/-- `eq[A054977(n), A077267(n)]` -/
def P12689910639802688647.Spec : Prop :=
  ∀ n, (P12689910639802688647.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P7361688033698855947

`eq[A057427(n), A077267(n)]`
-/

namespace A043321.P7361688033698855947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P7361688033698855947

namespace A043321

/-- `eq[A057427(n), A077267(n)]` -/
def P7361688033698855947.Spec : Prop :=
  ∀ n, (P7361688033698855947.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P4781521240252768974

`eq[A077267(n), A141044(n)]`
-/

namespace A043321.P4781521240252768974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P4781521240252768974

namespace A043321

/-- `eq[A077267(n), A141044(n)]` -/
def P4781521240252768974.Spec : Prop :=
  ∀ n, (P4781521240252768974.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P1437924828534469669

`eq[A077267(n), A158388(n)]`
-/

namespace A043321.P1437924828534469669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P1437924828534469669

namespace A043321

/-- `eq[A077267(n), A158388(n)]` -/
def P1437924828534469669.Spec : Prop :=
  ∀ n, (P1437924828534469669.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P12849100805487253137

`eq[A077267(n), A168182(n)]`
-/

namespace A043321.P12849100805487253137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P12849100805487253137

namespace A043321

/-- `eq[A077267(n), A168182(n)]` -/
def P12849100805487253137.Spec : Prop :=
  ∀ n, (P12849100805487253137.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P16242924977647339254

`eq[A077267(n), A261143(n)]`
-/

namespace A043321.P16242924977647339254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P16242924977647339254

namespace A043321

/-- `eq[A077267(n), A261143(n)]` -/
def P16242924977647339254.Spec : Prop :=
  ∀ n, (P16242924977647339254.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P5480107952716388233

`eq[A077267(n), A294619(n)]`
-/

namespace A043321.P5480107952716388233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P5480107952716388233

namespace A043321

/-- `eq[A077267(n), A294619(n)]` -/
def P5480107952716388233.Spec : Prop :=
  ∀ n, (P5480107952716388233.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P1708958073585648595

`eq[A000038(n)!, A077267(n)]`
-/

namespace A043321.P1708958073585648595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P1708958073585648595

namespace A043321

/-- `eq[A000038(n)!, A077267(n)]` -/
def P1708958073585648595.Spec : Prop :=
  ∀ n, (P1708958073585648595.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P11487777113555980871

`eq[cos(A000007(n)), A077267(n)]`
-/

namespace A043321.P11487777113555980871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000007 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A043321.P11487777113555980871

namespace A043321

/-- `eq[cos(A000007(n)), A077267(n)]` -/
def P11487777113555980871.Spec : Prop :=
  ∀ n, (P11487777113555980871.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P4386190529439791408

`eq[1, A077267(A000007(n)+n)]`
-/

namespace A043321.P4386190529439791408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P4386190529439791408

namespace A043321

/-- `eq[1, A077267(A000007(n)+n)]` -/
def P4386190529439791408.Spec : Prop :=
  ∀ n, (P4386190529439791408.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P16999327617722106468

`eq[1, A077267(A000038(n)+n)]`
-/

namespace A043321.P16999327617722106468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P16999327617722106468

namespace A043321

/-- `eq[1, A077267(A000038(n)+n)]` -/
def P16999327617722106468.Spec : Prop :=
  ∀ n, (P16999327617722106468.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P11213661494316981126

`eq[A001221(A001316(n)), A077267(n)]`
-/

namespace A043321.P11213661494316981126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043321.P11213661494316981126

namespace A043321

/-- `eq[A001221(A001316(n)), A077267(n)]` -/
def P11213661494316981126.Spec : Prop :=
  ∀ n, (P11213661494316981126.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P15018878512043944343

`eq[1, A134022(A264985(n))]`
-/

namespace A043321.P15018878512043944343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A264985 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P15018878512043944343

namespace A043321

/-- `eq[1, A134022(A264985(n))]` -/
def P15018878512043944343.Spec : Prop :=
  ∀ n, (P15018878512043944343.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P2932669652676341930

`eq[1, A081603(A274601(n+1))]`
-/

namespace A043321.P2932669652676341930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P2932669652676341930

namespace A043321

/-- `eq[1, A081603(A274601(n+1))]` -/
def P2932669652676341930.Spec : Prop :=
  ∀ n, (P2932669652676341930.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P2555368257103261186

`eq[2, A077267(3*n)]`
-/

namespace A043321.P2555368257103261186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043321.P2555368257103261186

namespace A043321

/-- `eq[2, A077267(3*n)]` -/
def P2555368257103261186.Spec : Prop :=
  ∀ n, (P2555368257103261186.a n : ℤ) = A043321 (n + 1)

end A043321

/-! ## A043321.P11470717787976951932

`A215090(A045066(n+2))`
-/

namespace A043321.P11470717787976951932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045066 (n + 2)).toNat

end

end A043321.P11470717787976951932

namespace A043321

/-- `A215090(A045066(n+2))` -/
def P11470717787976951932.Spec : Prop :=
  ∀ n, P11470717787976951932.a n = A043321 (n + 1)

end A043321

/-!
# A043322: Numbers having two 0's in base 3.

The programs for A043322, the canonical program `A043322.P8664074313883487690` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043322 has offset 1).

The definition of A043322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043322.P8664074313883487690

`eq[2, A077267(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043322

/-- `eq[2, A077267(n)]` -/
def P8664074313883487690.Spec : Prop :=
  ∀ n, (P8664074313883487690.a n : ℤ) = A043322 (n + 1)

theorem P8664074313883487690.correct : P8664074313883487690.Spec := by
  intro n
  simp only [A043322, Nat.add_sub_cancel]

end A043322

/-! ## A043322.P1791804300004556069

`eq[2, A001222(A291771(A016789(n)))]`
-/

namespace A043322.P1791804300004556069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A291771 (A016789 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043322.P1791804300004556069

namespace A043322

/-- `eq[2, A001222(A291771(A016789(n)))]` -/
def P1791804300004556069.Spec : Prop :=
  ∀ n, (P1791804300004556069.a n : ℤ) = A043322 (n + 1)

end A043322

/-! ## A043322.P2826317767976806957

`eq[A062756(n)+A081603(n)+2, A081604(n)]`
-/

namespace A043322.P2826317767976806957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + (A081603 n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043322.P2826317767976806957

namespace A043322

/-- `eq[A062756(n)+A081603(n)+2, A081604(n)]` -/
def P2826317767976806957.Spec : Prop :=
  ∀ n, (P2826317767976806957.a n : ℤ) = A043322 (n + 1)

end A043322

/-! ## A043322.P5670966685596422664

`eq[2, A023416(A289831(n))]`
-/

namespace A043322.P5670966685596422664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043322.P5670966685596422664

namespace A043322

/-- `eq[2, A023416(A289831(n))]` -/
def P5670966685596422664.Spec : Prop :=
  ∀ n, (P5670966685596422664.a n : ℤ) = A043322 (n + 1)

end A043322

/-! ## A043322.P11753965160503864129

`eq[2, A134022(A264985(n))]`
-/

namespace A043322.P11753965160503864129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A264985 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043322.P11753965160503864129

namespace A043322

/-- `eq[2, A134022(A264985(n))]` -/
def P11753965160503864129.Spec : Prop :=
  ∀ n, (P11753965160503864129.a n : ℤ) = A043322 (n + 1)

end A043322

/-! ## A043322.P4790069643383523718

`eq[2, A081603(A274601(n+1))]`
-/

namespace A043322.P4790069643383523718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043322.P4790069643383523718

namespace A043322

/-- `eq[2, A081603(A274601(n+1))]` -/
def P4790069643383523718.Spec : Prop :=
  ∀ n, (P4790069643383523718.a n : ℤ) = A043322 (n + 1)

end A043322

/-! ## A043322.P2977314711610236821

`A215090(A045071(n+1))`
-/

namespace A043322.P2977314711610236821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045071 (n + 1)).toNat

end

end A043322.P2977314711610236821

namespace A043322

/-- `A215090(A045071(n+1))` -/
def P2977314711610236821.Spec : Prop :=
  ∀ n, P2977314711610236821.a n = A043322 (n + 1)

end A043322

/-! ## A043322.P15287489473354105654

`eq[2, A081603(A284797(n))]`
-/

namespace A043322.P15287489473354105654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043322.P15287489473354105654

namespace A043322

/-- `eq[2, A081603(A284797(n))]` -/
def P15287489473354105654.Spec : Prop :=
  ∀ n, (P15287489473354105654.a n : ℤ) = A043322 (n + 1)

end A043322

/-!
# A043323: Numbers having three 0's in base 3.

The programs for A043323, the canonical program `A043323.P2093063513859892722` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043323 has offset 1).

The definition of A043323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2587 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043323.P2093063513859892722

`eq[3, A077267(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043323

/-- `eq[3, A077267(n)]` -/
def P2093063513859892722.Spec : Prop :=
  ∀ n, (P2093063513859892722.a n : ℤ) = A043323 (n + 1)

theorem P2093063513859892722.correct : P2093063513859892722.Spec := by
  intro n
  simp only [A043323, Nat.add_sub_cancel]

end A043323

/-! ## A043323.P744153810376859790

`eq[3, A081603(A274601(n+1))]`
-/

namespace A043323.P744153810376859790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043323.P744153810376859790

namespace A043323

/-- `eq[3, A081603(A274601(n+1))]` -/
def P744153810376859790.Spec : Prop :=
  ∀ n, (P744153810376859790.a n : ℤ) = A043323 (n + 1)

end A043323

/-! ## A043323.P13607216881220944916

`eq[1, A134022(A264985(n))-2]`
-/

namespace A043323.P13607216881220944916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A264985 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043323.P13607216881220944916

namespace A043323

/-- `eq[1, A134022(A264985(n))-2]` -/
def P13607216881220944916.Spec : Prop :=
  ∀ n, (P13607216881220944916.a n : ℤ) = A043323 (n + 1)

end A043323

/-! ## A043323.P5537815561093013271

`record[A135997(A043324(n+1))]`
-/

namespace A043323.P5537815561093013271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A043324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043323.P5537815561093013271

namespace A043323

/-- `record[A135997(A043324(n+1))]` -/
def P5537815561093013271.Spec : Prop :=
  ∀ n, P5537815561093013271.a n = A043323 (n + 1)

end A043323

/-! ## A043323.P13396624780074305854

`A028242(record[A089598(A043324(n+1))])`
-/

namespace A043323.P13396624780074305854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A043324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043323.P13396624780074305854

namespace A043323

/-- `A028242(record[A089598(A043324(n+1))])` -/
def P13396624780074305854.Spec : Prop :=
  ∀ n, P13396624780074305854.a n = A043323 (n + 1)

end A043323

/-! ## A043323.P9141596824263091541

`A215090(A045076(n+1))`
-/

namespace A043323.P9141596824263091541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045076 (n + 1)).toNat

end

end A043323.P9141596824263091541

namespace A043323

/-- `A215090(A045076(n+1))` -/
def P9141596824263091541.Spec : Prop :=
  ∀ n, P9141596824263091541.a n = A043323 (n + 1)

end A043323

/-! ## A043323.P11427762638894994848

`eq[1, A081603(A284797(n))-2]`
-/

namespace A043323.P11427762638894994848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A284797 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043323.P11427762638894994848

namespace A043323

/-- `eq[1, A081603(A284797(n))-2]` -/
def P11427762638894994848.Spec : Prop :=
  ∀ n, (P11427762638894994848.a n : ℤ) = A043323 (n + 1)

end A043323

/-!
# A043324: Numbers having four 0's in base 3.

The programs for A043324, the canonical program `A043324.P7627907059545154542` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043324 has offset 1).

The definition of A043324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043324.P7627907059545154542

`eq[4, A077267(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043324

/-- `eq[4, A077267(n)]` -/
def P7627907059545154542.Spec : Prop :=
  ∀ n, (P7627907059545154542.a n : ℤ) = A043324 (n + 1)

theorem P7627907059545154542.correct : P7627907059545154542.Spec := by
  intro n
  simp only [A043324, Nat.add_sub_cancel]

end A043324

/-! ## A043324.P4688566439677072735

`eq[5, A290251(A289831(n))]`
-/

namespace A043324.P4688566439677072735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043324.P4688566439677072735

namespace A043324

/-- `eq[5, A290251(A289831(n))]` -/
def P4688566439677072735.Spec : Prop :=
  ∀ n, (P4688566439677072735.a n : ℤ) = A043324 (n + 1)

end A043324

/-! ## A043324.P1908571229243520546

`eq[4, A081603(A274601(n+1))]`
-/

namespace A043324.P1908571229243520546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043324.P1908571229243520546

namespace A043324

/-- `eq[4, A081603(A274601(n+1))]` -/
def P1908571229243520546.Spec : Prop :=
  ∀ n, (P1908571229243520546.a n : ℤ) = A043324 (n + 1)

end A043324

/-! ## A043324.P11140025953441491482

`A215090(A045081(n+1))`
-/

namespace A043324.P11140025953441491482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045081 (n + 1)).toNat

end

end A043324.P11140025953441491482

namespace A043324

/-- `A215090(A045081(n+1))` -/
def P11140025953441491482.Spec : Prop :=
  ∀ n, P11140025953441491482.a n = A043324 (n + 1)

end A043324

/-! ## A043324.P5944608232836929727

`A335380(A045057(n+1))`
-/

namespace A043324.P5944608232836929727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A045057 (n + 1)).toNat

end

end A043324.P5944608232836929727

namespace A043324

/-- `A335380(A045057(n+1))` -/
def P5944608232836929727.Spec : Prop :=
  ∀ n, P5944608232836929727.a n = A043324 (n + 1)

end A043324

/-!
# A043326: Numbers k such that k is a product of two different primes and k-2 is prime.

The programs for A043326, there is no canonical definition to state claims against.
-/

/-! ## A043326.P7350633804848444869

`p?[A176686(n+1)-1]+2`
-/

namespace A043326.P7350633804848444869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176686 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A043326.P7350633804848444869

/-! ## A043326.P6517269543908849864

`∩[A049233(n+1), A063637(n+1)]+2`
-/

namespace A043326.P6517269543908849864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A043326.P6517269543908849864

/-! ## A043326.P5029973108939389449

`filter[A062721(n+1), A008966(#)]`
-/

namespace A043326.P5029973108939389449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A043326.P5029973108939389449

/-! ## A043326.P12734990771570207359

`filter[A062721(n+1), A324903(#)]`
-/

namespace A043326.P12734990771570207359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A043326.P12734990771570207359

/-! ## A043326.P1433478490183823292

`filter[A107987(n+1), A374128(#)]`
-/

namespace A043326.P1433478490183823292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A043326.P1433478490183823292

/-! ## A043326.P16539132562464869972

`filter[A139690(n+1), A354353(#)]`
-/

namespace A043326.P16539132562464869972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A043326.P16539132562464869972

/-! ## A043326.P5252756711248191961

`filter[A139690(n+1), A354819(#)]`
-/

namespace A043326.P5252756711248191961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A043326.P5252756711248191961

/-! ## A043326.P17527317240673741384

`filter[A139690(n+1), A354927(#)]`
-/

namespace A043326.P17527317240673741384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A043326.P17527317240673741384

/-! ## A043326.P1689030662174690614

`filter[A139690(n+1), A359464(#)]`
-/

namespace A043326.P1689030662174690614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A043326.P1689030662174690614

/-! ## A043326.P12472819693596193342

`filter[A139690(n+1), A359465(#)]`
-/

namespace A043326.P12472819693596193342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A043326.P12472819693596193342

/-! ## A043326.P11662980029301100942

`filter[A139690(n+1), A374471(#)]`
-/

namespace A043326.P11662980029301100942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A043326.P11662980029301100942

/-! ## A043326.P4135423404371393984

`filter[A139690(n+1), A380469(#)]`
-/

namespace A043326.P4135423404371393984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A043326.P4135423404371393984

/-! ## A043326.P3443972248258287331

`filter[A139690(n+2), A354108(#)]`
-/

namespace A043326.P3443972248258287331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A043326.P3443972248258287331

/-! ## A043326.P15570504444931160808

`filter[A158337(n+3), A354927(#)]`
-/

namespace A043326.P15570504444931160808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158337 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A043326.P15570504444931160808

/-! ## A043326.P10149522548212446693

`p?[A340380(n+1)-2]+2`
-/

namespace A043326.P10149522548212446693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A043326.P10149522548212446693

/-! ## A043326.P12516179331653866049

`filter[A062721(n+1), A049240(#)]`
-/

namespace A043326.P12516179331653866049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A043326.P12516179331653866049

/-! ## A043326.P11376586999276224446

`filter[A062721(n+1), A181183(#)]`
-/

namespace A043326.P11376586999276224446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A043326.P11376586999276224446

/-! ## A043326.P1083526757556420345

`filter[A062721(n+1), A262684(#)]`
-/

namespace A043326.P1083526757556420345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A043326.P1083526757556420345

/-! ## A043326.P15453540542610740765

`filter[A048974(n+1), A280710(#)]`
-/

namespace A043326.P15453540542610740765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A043326.P15453540542610740765

/-! ## A043326.P18354363941149332509

`filter[A052147(n+1), A280710(#)]`
-/

namespace A043326.P18354363941149332509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A043326.P18354363941149332509

/-!
# A043327: a(0)=1; a(1)=1; a(n)= a(n-1) + floor( sqrt(a(n-1)*a(n-2))+ sqrt(a(n-3)*a(n-4))+ ... ).

The programs for A043327, there is no canonical definition to state claims against.
-/

/-! ## A043327.P6367343786092309318

`A054404(A118968(n+2)+A084214(n))`
-/

namespace A043327.P6367343786092309318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A118968 (n + 2) + A084214 n).toNat

end

end A043327.P6367343786092309318

/-! ## A043327.P9416850895965505031

`A248170(A219232(n))`
-/

namespace A043327.P9416850895965505031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A219232 n).toNat

end

end A043327.P9416850895965505031

/-! ## A043327.P722048049430417344

`A172471(floor(sqrt(A210996(n))))`
-/

namespace A043327.P722048049430417344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.sqrt (A210996 n)).toNat

end

end A043327.P722048049430417344

/-! ## A043327.P10493999913283182637

`A005578(n)-A048675(A309862(n))`
-/

namespace A043327.P10493999913283182637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - A048675 (A309862 n).toNat

end

end A043327.P10493999913283182637

/-! ## A043327.P4874670339355912399

`∑[A202304(A148346(n))-A000045(n)]`
-/

namespace A043327.P4874670339355912399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A148346 n).toNat - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043327.P4874670339355912399

/-!
# A043328: a(0)=1; a(1)=1; a(n)= a(n-1) + floor(sqrt(a(n-1)*a(n-2))) + floor(sqrt(a(n-3)*a(n-4))) + ....

The programs for A043328, there is no canonical definition to state claims against.
-/

/-! ## A043328.P7039656614818435118

`A243284(A024959(n+2))`
-/

namespace A043328.P7039656614818435118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A024959 (n + 2)).toNat

end

end A043328.P7039656614818435118

/-! ## A043328.P3302074231941380935

`A100196(or(1, A261236(n)))`
-/

namespace A043328.P3302074231941380935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor 1 (A261236 n)).toNat

end

end A043328.P3302074231941380935

/-! ## A043328.P1121075647605656315

`A054404(A189101(n+1)+1)`
-/

namespace A043328.P1121075647605656315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A189101 (n + 1) + 1).toNat

end

end A043328.P1121075647605656315

/-! ## A043328.P16043628608712621670

`floor((floor((A119313(A293359(n))+3)/6)+3)/6)`
-/

namespace A043328.P16043628608712621670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A119313 (A293359 n).toNat + 3 : ℚ) / 6⌋ + 3 : ℚ) / 6⌋

end

end A043328.P16043628608712621670

/-! ## A043328.P2750160203744077568

`floor((floor((A119313(A293360(n))+3)/6)+3)/6)`
-/

namespace A043328.P2750160203744077568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A119313 (A293360 n).toNat + 3 : ℚ) / 6⌋ + 3 : ℚ) / 6⌋

end

end A043328.P2750160203744077568

/-!
# A043330: Expansion of Molien series for relative invariants of 8-dimensional complex Clifford group.

The programs for A043330, there is no canonical definition to state claims against.
-/

/-! ## A043330.P5019493595275987916

`A027633(2*n+3)`
-/

namespace A043330.P5019493595275987916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (2 * n + 3)

end

end A043330.P5019493595275987916

/-! ## A043330.P5218520381495949252

`record[A027633(lcm(16, n)/16)]`
-/

namespace A043330.P5218520381495949252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043330.P5218520381495949252

/-! ## A043330.P6848114288989582213

`record[A027633(n*n%2)]`
-/

namespace A043330.P6848114288989582213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043330.P6848114288989582213

/-! ## A043330.P5864350857291548958

`record[A027633(n*and(1, n))]`
-/

namespace A043330.P5864350857291548958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043330.P5864350857291548958

/-! ## A043330.P12590462082564296834

`record[A027633(n)^and(1, n)]`
-/

namespace A043330.P12590462082564296834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043330.P12590462082564296834

/-!
# A043333: Numbers having one 0 in base 4.

The programs for A043333, the canonical program `A043333.P3859592073351921722` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043333 has offset 1).

The definition of A043333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043333.P3859592073351921722

`A023706(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043333

/-- `A023706(n+2)` -/
def P3859592073351921722.Spec : Prop :=
  ∀ n, P3859592073351921722.a n = A043333 (n + 1)

theorem P3859592073351921722.correct : P3859592073351921722.Spec := by
  intro n
  simp only [A043333, Nat.add_sub_cancel]

end A043333

/-! ## A043333.P14341855081445349570

`record[A023706(A133310(A006949(n)))]`
-/

namespace A043333.P14341855081445349570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A133310 (A006949 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P14341855081445349570

namespace A043333

/-- `record[A023706(A133310(A006949(n)))]` -/
def P14341855081445349570.Spec : Prop :=
  ∀ n, P14341855081445349570.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P9122936473744292896

`record[A023706(A008619(A133265(n)))]`
-/

namespace A043333.P9122936473744292896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P9122936473744292896

namespace A043333

/-- `record[A023706(A008619(A133265(n)))]` -/
def P9122936473744292896.Spec : Prop :=
  ∀ n, P9122936473744292896.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P2519617458909204217

`record[A023706(A080513(A093178(n)))]`
-/

namespace A043333.P2519617458909204217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A080513 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P2519617458909204217

namespace A043333

/-- `record[A023706(A080513(A093178(n)))]` -/
def P2519617458909204217.Spec : Prop :=
  ∀ n, P2519617458909204217.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P17252491606826281988

`eq[1, A160380(n)]`
-/

namespace A043333.P17252491606826281988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043333.P17252491606826281988

namespace A043333

/-- `eq[1, A160380(n)]` -/
def P17252491606826281988.Spec : Prop :=
  ∀ n, (P17252491606826281988.a n : ℤ) = A043333 (n + 1)

end A043333

/-! ## A043333.P7989823136549563998

`eq[2*A000120(A292370(n)), A078832(n+1)]`
-/

namespace A043333.P7989823136549563998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 (A292370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043333.P7989823136549563998

namespace A043333

/-- `eq[2*A000120(A292370(n)), A078832(n+1)]` -/
def P7989823136549563998.Spec : Prop :=
  ∀ n, (P7989823136549563998.a n : ℤ) = A043333 (n + 1)

end A043333

/-! ## A043333.P10369417304868522524

`eq[A160385(n)+1, A160385(A003817(n))]`
-/

namespace A043333.P10369417304868522524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043333.P10369417304868522524

namespace A043333

/-- `eq[A160385(n)+1, A160385(A003817(n))]` -/
def P10369417304868522524.Spec : Prop :=
  ∀ n, (P10369417304868522524.a n : ℤ) = A043333 (n + 1)

end A043333

/-! ## A043333.P10458995480600235577

`record[A023706(A080513(A052938(n)))]`
-/

namespace A043333.P10458995480600235577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A080513 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P10458995480600235577

namespace A043333

/-- `record[A023706(A080513(A052938(n)))]` -/
def P10458995480600235577.Spec : Prop :=
  ∀ n, P10458995480600235577.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P5972453709994660882

`record[A023706(A080513(A008611(n)))]`
-/

namespace A043333.P5972453709994660882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P5972453709994660882

namespace A043333

/-- `record[A023706(A080513(A008611(n)))]` -/
def P5972453709994660882.Spec : Prop :=
  ∀ n, P5972453709994660882.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P5153321367848302445

`A303787(A045206(n+2))`
-/

namespace A043333.P5153321367848302445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045206 (n + 2)).toNat

end

end A043333.P5153321367848302445

namespace A043333

/-- `A303787(A045206(n+2))` -/
def P5153321367848302445.Spec : Prop :=
  ∀ n, P5153321367848302445.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P4145916756511403000

`record[A023706(A143182(A000124(n)))]`
-/

namespace A043333.P4145916756511403000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A143182 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P4145916756511403000

namespace A043333

/-- `record[A023706(A143182(A000124(n)))]` -/
def P4145916756511403000.Spec : Prop :=
  ∀ n, P4145916756511403000.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P17347465890836400555

`record[A023706(A143182(A027379(n)))]`
-/

namespace A043333.P17347465890836400555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (A143182 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043333.P17347465890836400555

namespace A043333

/-- `record[A023706(A143182(A027379(n)))]` -/
def P17347465890836400555.Spec : Prop :=
  ∀ n, P17347465890836400555.a n = A043333 (n + 1)

end A043333

/-! ## A043333.P16269510852334210796

`eq[A055641(A007090(n)), A057427(n)]`
-/

namespace A043333.P16269510852334210796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043333.P16269510852334210796

namespace A043333

/-- `eq[A055641(A007090(n)), A057427(n)]` -/
def P16269510852334210796.Spec : Prop :=
  ∀ n, (P16269510852334210796.a n : ℤ) = A043333 (n + 1)

end A043333

/-! ## A043333.P4867466412861418522

`eq[A014963(2*(n+2)), A055641(A007090(n))]`
-/

namespace A043333.P4867466412861418522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043333.P4867466412861418522

namespace A043333

/-- `eq[A014963(2*(n+2)), A055641(A007090(n))]` -/
def P4867466412861418522.Spec : Prop :=
  ∀ n, (P4867466412861418522.a n : ℤ) = A043333 (n + 1)

end A043333

/-!
# A043336: Numbers having four 0's in base 4.

The programs for A043336, the canonical program `A043336.P7301550884485477738` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043336 has offset 1).

The definition of A043336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043336.P7301550884485477738

`eq[4, A160380(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043336

/-- `eq[4, A160380(n)]` -/
def P7301550884485477738.Spec : Prop :=
  ∀ n, (P7301550884485477738.a n : ℤ) = A043336 (n + 1)

theorem P7301550884485477738.correct : P7301550884485477738.Spec := by
  intro n
  simp only [A043336, Nat.add_sub_cancel]

end A043336

/-! ## A043336.P7015968212066105419

`eq[4, A160381(A256294(n))]`
-/

namespace A043336.P7015968212066105419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A256294 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043336.P7015968212066105419

namespace A043336

/-- `eq[4, A160381(A256294(n))]` -/
def P7015968212066105419.Spec : Prop :=
  ∀ n, (P7015968212066105419.a n : ℤ) = A043336 (n + 1)

end A043336

/-!
# A043340: Numbers having four 1's in base 4.

The programs for A043340, there is no canonical definition to state claims against.
-/

/-! ## A043340.P5937835441452436002

`eq[4, A000120(A292371(n))]`
-/

namespace A043340.P5937835441452436002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P5937835441452436002

/-! ## A043340.P12816690172212158724

`eq[4, A139351(A292272(n))]`
-/

namespace A043340.P12816690172212158724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P12816690172212158724

/-! ## A043340.P7526866936092918802

`eq[4, A160381(n)]`
-/

namespace A043340.P7526866936092918802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P7526866936092918802

/-! ## A043340.P8179385542789078788

`eq[4, A139352(and(2*n, -n))]`
-/

namespace A043340.P8179385542789078788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P8179385542789078788

/-! ## A043340.P707004074124792718

`eq[4, A160382(A006015(n))]`
-/

namespace A043340.P707004074124792718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P707004074124792718

/-! ## A043340.P18321788592930000913

`eq[4, A139352(A213064(n))]`
-/

namespace A043340.P18321788592930000913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P18321788592930000913

/-! ## A043340.P3712078378669616865

`A329180(A043344(n+1))`
-/

namespace A043340.P3712078378669616865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A043344 (n + 1)).toNat

end

end A043340.P3712078378669616865

/-! ## A043340.P8602493016585237287

`eq[4, A160383(A048647(n))]`
-/

namespace A043340.P8602493016585237287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P8602493016585237287

/-! ## A043340.P15678926755522049482

`eq[4, A160382(A010078(n+1))]`
-/

namespace A043340.P15678926755522049482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P15678926755522049482

/-!
# A043343: Numbers m such that there is no k > m such that phi(k) = phi(m), where phi is Euler's totient function.

The programs for A043343, there is no canonical definition to state claims against.
-/

/-! ## A043343.P9868203504899840606

`eq[n+1, A319048(A000010(n+1))]+1`
-/

namespace A043343.P9868203504899840606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043343.P9868203504899840606

/-! ## A043343.P3175611953108385989

`1+eq[0, A066659(n+1)]`
-/

namespace A043343.P3175611953108385989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043343.P3175611953108385989

/-! ## A043343.P3515309884750123443

`A028476(eq[n+1, A028476(n+1)]+1)`
-/

namespace A043343.P3515309884750123443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A043343.P3515309884750123443

/-! ## A043343.P10957179304852847131

`A028476(record[(n+1)/(A028476(n+2)-(n+1))]+1)`
-/

namespace A043343.P10957179304852847131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028476 (n + 2) - (n + 1 : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A043343.P10957179304852847131

/-! ## A043343.P10191514239368781788

`record[A066481(n+3)-A066659(A066481(n+3))]`
-/

namespace A043343.P10191514239368781788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066481 (n + 3) - A066659 (A066481 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043343.P10191514239368781788

/-!
# A043344: Numbers having four 2's in base 4.

The programs for A043344, there is no canonical definition to state claims against.
-/

/-! ## A043344.P11053451410694592591

`eq[4, A000120(A292372(n))]`
-/

namespace A043344.P11053451410694592591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P11053451410694592591

/-! ## A043344.P7543370921301584801

`eq[4, val(A268444(n), 3)]`
-/

namespace A043344.P7543370921301584801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043344.P7543370921301584801

/-! ## A043344.P5214513309367527561

`eq[3, A000120(A268444(n))]`
-/

namespace A043344.P5214513309367527561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P5214513309367527561

/-! ## A043344.P2942473220208524858

`eq[4, A139352(n-and(n, 2*n))]`
-/

namespace A043344.P2942473220208524858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (n - Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P2942473220208524858

/-! ## A043344.P4052749564727292039

`eq[4, A160382(n)]`
-/

namespace A043344.P4052749564727292039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P4052749564727292039

/-! ## A043344.P3064108016267203229

`eq[4, val(A338854(n), 2)]`
-/

namespace A043344.P3064108016267203229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338854 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043344.P3064108016267203229

/-! ## A043344.P14890781726208236771

`eq[4, A160381(A035327(n))]`
-/

namespace A043344.P14890781726208236771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P14890781726208236771

/-! ## A043344.P16043875953667758820

`eq[4, A007814(A338854(n))]`
-/

namespace A043344.P16043875953667758820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P16043875953667758820

/-! ## A043344.P15291203209974019561

`eq[4, A139351(A229762(n))]`
-/

namespace A043344.P15291203209974019561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A229762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P15291203209974019561

/-! ## A043344.P5573170004844305296

`eq[4, A160381(A057300(n))]`
-/

namespace A043344.P5573170004844305296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A057300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P5573170004844305296

/-! ## A043344.P7751690654617653292

`A329101(A043340(n+1))`
-/

namespace A043344.P7751690654617653292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A043340 (n + 1)).toNat

end

end A043344.P7751690654617653292

/-!
# A043348: Numbers having four 3's in base 4.

The programs for A043348, there is no canonical definition to state claims against.
-/

/-! ## A043348.P3016440459944543376

`eq[4, A000120(A292373(n))]`
-/

namespace A043348.P3016440459944543376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043348.P3016440459944543376

/-! ## A043348.P13317558383097692270

`eq[4, A160383(A066182(n+1))]`
-/

namespace A043348.P13317558383097692270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043348.P13317558383097692270

/-! ## A043348.P232069596874668971

`eq[4, A160381(A048647(n))]`
-/

namespace A043348.P232069596874668971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043348.P232069596874668971

/-! ## A043348.P5917956810933052997

`eq[4, A160380(A010078(n+1))]`
-/

namespace A043348.P5917956810933052997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043348.P5917956810933052997

/-!
# A043349: Numbers having one 0 in base 5.

The programs for A043349, there is no canonical definition to state claims against.
-/

/-! ## A043349.P13445056432435839313

`A023722(n+2)`
-/

namespace A043349.P13445056432435839313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 2)

end

end A043349.P13445056432435839313

/-! ## A043349.P13878889218051345560

`eq[A110592(n)+A057428(n), A276134(n)]`
-/

namespace A043349.P13878889218051345560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n + A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P13878889218051345560

/-! ## A043349.P9220868424882695327

`eq[A276134(n)+A057427(n), A110592(n)]`
-/

namespace A043349.P9220868424882695327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P9220868424882695327

/-! ## A043349.P13164801742385052080

`eq[A276134(n)+2, A110592(A016885(n))]`
-/

namespace A043349.P13164801742385052080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P13164801742385052080

/-! ## A043349.P10946994430720948407

`eq[1, A055641(A054047(n+1))]+1`
-/

namespace A043349.P10946994430720948407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A054047 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043349.P10946994430720948407

/-! ## A043349.P870726692856300502

`eq[n-1, abs(n-A055641(A014263(n+1)))]`
-/

namespace A043349.P870726692856300502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A055641 (A014263 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P870726692856300502

/-! ## A043349.P8628837177850127387

`eq[A055641(A007091(n)), A057427(n)]`
-/

namespace A043349.P8628837177850127387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P8628837177850127387

/-! ## A043349.P16606438590454625532

`eq[A055641(A080228(n+1)), A057427(n)]`
-/

namespace A043349.P16606438590454625532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A080228 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P16606438590454625532

/-! ## A043349.P14333709079540455924

`eq[A070750(n+1)², A055641(A007091(n))]`
-/

namespace A043349.P14333709079540455924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P14333709079540455924

/-! ## A043349.P10623322991907315572

`eq[A055641(A014263(n+1)/2), A057427(n)]`
-/

namespace A043349.P10623322991907315572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P10623322991907315572

/-! ## A043349.P6012698571670583664

`eq[A014963(4*n+2), A055641(A007091(n))]`
-/

namespace A043349.P6012698571670583664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P6012698571670583664

/-! ## A043349.P17363348892868415192

`eq[A000040(n+1)%2, A055641(A007091(n))]`
-/

namespace A043349.P17363348892868415192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P17363348892868415192

/-! ## A043349.P13862592322896874359

`eq[A183010(n)%2, A055641(A080228(n+1))]`
-/

namespace A043349.P13862592322896874359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183010 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043349.P13862592322896874359

/-!
# A043352: Numbers having four 0's in base 5.

The programs for A043352, there is no canonical definition to state claims against.
-/

/-! ## A043352.P11962148775805357685

`A158374(n+1)+A061704(A000178(n))`
-/

namespace A043352.P11962148775805357685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158374 (n + 1) + A061704 (A000178 n).toNat

end

end A043352.P11962148775805357685

/-!
# A043356: Numbers having four 1's in base 5.

The programs for A043356, there is no canonical definition to state claims against.
-/

/-! ## A043356.P15892734243372662747

`A002266(A038477(n+1)+A000045(n))`
-/

namespace A043356.P15892734243372662747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A038477 (n + 1) + A000045 n).toNat

end

end A043356.P15892734243372662747

/-! ## A043356.P8081550164918273851

`A002266(A038477(n+1))+A002266(n)`
-/

namespace A043356.P8081550164918273851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A038477 (n + 1)).toNat + A002266 n

end

end A043356.P8081550164918273851

/-!
# A043360: Numbers having four 2's in base 5.

The programs for A043360, there is no canonical definition to state claims against.
-/

/-! ## A043360.P15463099859677529119

`A020654(A045153(n+1)%Δ[A334836(n+2)]+1)`
-/

namespace A043360.P15463099859677529119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (Int.tmod (A045153 (n + 1)) (f1 (n + 1) - f1 n) + 1).toNat

end

end A043360.P15463099859677529119

/-! ## A043360.P5091225251793028940

`A020654(A045153(n+1)%A334836(n+4)+1)`
-/

namespace A043360.P5091225251793028940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (Int.tmod (A045153 (n + 1)) (A334836 (n + 4)) + 1).toNat

end

end A043360.P5091225251793028940

/-!
# A043364: Numbers having four 3's in base 5.

The programs for A043364, there is no canonical definition to state claims against.
-/

/-! ## A043364.P1457269086601787914

`A016885(A045304(n+1)^A067059(n))`
-/

namespace A043364.P1457269086601787914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (SequenceMachineLib.roundAway ((A045304 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043364.P1457269086601787914

/-! ## A043364.P5920441557759031181

`A016885(C(A045304(n+1), A067059(n)))`
-/

namespace A043364.P5920441557759031181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (Nat.choose (A045304 (n + 1)).toNat (A067059 n).toNat)

end

end A043364.P5920441557759031181

/-! ## A043364.P11808055183303880023

`A016885(A067059(n)²²*A045304(n+1))`
-/

namespace A043364.P11808055183303880023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 ((A067059 n ^ 2) ^ 2 * A045304 (n + 1)).toNat

end

end A043364.P11808055183303880023

/-! ## A043364.P8176351672016757357

`5*A045304(A000005(3^n))+3`
-/

namespace A043364.P8176351672016757357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A045304 (A000005 (3 ^ n)).toNat + 3

end

end A043364.P8176351672016757357

/-!
# A043369: Numbers having one 0 in base 6.

The programs for A043369, the canonical program `A043369.P5469046483156148534` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043369 has offset 1).

The definition of A043369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043369.P5469046483156148534

`eq[n*A055641(A084984(n+1)), A028310(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043369

/-- `eq[n*A055641(A084984(n+1)), A028310(n)]` -/
def P5469046483156148534.Spec : Prop :=
  ∀ n, (P5469046483156148534.a n : ℤ) = A043369 (n + 1)

theorem P5469046483156148534.correct : P5469046483156148534.Spec := by
  intro n
  simp only [A043369, Nat.add_sub_cancel]

end A043369

/-! ## A043369.P8797781348282602257

`eq[2, A055641(A007092(6*n))]`
-/

namespace A043369.P8797781348282602257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007092 (6 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043369.P8797781348282602257

namespace A043369

/-- `eq[2, A055641(A007092(6*n))]` -/
def P8797781348282602257.Spec : Prop :=
  ∀ n, (P8797781348282602257.a n : ℤ) = A043369 (n + 1)

end A043369

/-! ## A043369.P2760929934619530480

`∩[A317719(n+1), A382416(n+1)]`
-/

namespace A043369.P2760929934619530480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043369.P2760929934619530480

namespace A043369

/-- `∩[A317719(n+1), A382416(n+1)]` -/
def P2760929934619530480.Spec : Prop :=
  ∀ n, (P2760929934619530480.a n : ℤ) = A043369 (n + 1)

end A043369

/-! ## A043369.P1796665041006999228

`lt[A303837(n+3), A303847(A303824(n))]`
-/

namespace A043369.P1796665041006999228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303847 (A303824 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043369.P1796665041006999228

namespace A043369

/-- `lt[A303837(n+3), A303847(A303824(n))]` -/
def P1796665041006999228.Spec : Prop :=
  ∀ n, (P1796665041006999228.a n : ℤ) = A043369 (n + 1)

end A043369

/-! ## A043369.P13616253993716511586

`eq[A309957(n), A309959(A008422(4*n))]`
-/

namespace A043369.P13616253993716511586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 (A008422 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043369.P13616253993716511586

namespace A043369

/-- `eq[A309957(n), A309959(A008422(4*n))]` -/
def P13616253993716511586.Spec : Prop :=
  ∀ n, (P13616253993716511586.a n : ℤ) = A043369 (n + 1)

end A043369

/-!
# A043370: Numbers having two 0's in base 6.

The programs for A043370, there is no canonical definition to state claims against.
-/

/-! ## A043370.P15463763123333105949

`eq[2, A055641(A007092(n))]`
-/

namespace A043370.P15463763123333105949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043370.P15463763123333105949

/-! ## A043370.P6398748862927057227

`eq[2, A055641(A084984(n+1))]`
-/

namespace A043370.P6398748862927057227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043370.P6398748862927057227

/-! ## A043370.P2589696165724984920

`eq[2, A055641(A202267(n+1))]`
-/

namespace A043370.P2589696165724984920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043370.P2589696165724984920

/-!
# A043371: Numbers having three 0's in base 6.

The programs for A043371, there is no canonical definition to state claims against.
-/

/-! ## A043371.P10125505261799502678

`A016389(n!)+6*36*(n+1)`
-/

namespace A043371.P10125505261799502678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (Nat.factorial n) + (6 * (36 * (n + 1)) : ℤ)

end

end A043371.P10125505261799502678

/-! ## A043371.P1665223597361269585

`A025457(A006125(n))+A009470(2*(n+1))`
-/

namespace A043371.P1665223597361269585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A006125 n).toNat + A009470 (2 * (n + 1))

end

end A043371.P1665223597361269585

/-!
# A043372: Numbers having four 0's in base 6.

The programs for A043372, there is no canonical definition to state claims against.
-/

/-! ## A043372.P12475704932450953059

`A335449(n+1)+A091998(A009470(2*(n+1)))`
-/

namespace A043372.P12475704932450953059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335449 (n + 1) + A091998 (A009470 (2 * (n + 1))).toNat

end

end A043372.P12475704932450953059

/-!
# A043373: Numbers having one 1 in base 6.

The programs for A043373, the canonical program `A043373.P14535102336819130435` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043373 has offset 1).

The definition of A043373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043373.P8780220098524236744

`eq[1, A268643(A007092(n))]`
-/

namespace A043373.P8780220098524236744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043373.P8780220098524236744

namespace A043373

/-- `eq[1, A268643(A007092(n))]` -/
def P8780220098524236744.Spec : Prop :=
  ∀ n, (P8780220098524236744.a n : ℤ) = A043373 (n + 1)

end A043373

/-! ## A043373.P504728339983723016

`eq[1, A268643(A084984(n+1))]`
-/

namespace A043373.P504728339983723016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043373.P504728339983723016

namespace A043373

/-- `eq[1, A268643(A084984(n+1))]` -/
def P504728339983723016.Spec : Prop :=
  ∀ n, (P504728339983723016.a n : ℤ) = A043373 (n + 1)

end A043373

/-! ## A043373.P14535102336819130435

`eq[1, A268643(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043373

/-- `eq[1, A268643(A202267(n+1))]` -/
def P14535102336819130435.Spec : Prop :=
  ∀ n, (P14535102336819130435.a n : ℤ) = A043373 (n + 1)

theorem P14535102336819130435.correct : P14535102336819130435.Spec := by
  intro n
  simp only [A043373, Nat.add_sub_cancel]

end A043373

/-! ## A043373.P5362941724908541193

`eq[1, A193238(A276138(n+1))]`
-/

namespace A043373.P5362941724908541193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043373.P5362941724908541193

namespace A043373

/-- `eq[1, A193238(A276138(n+1))]` -/
def P5362941724908541193.Spec : Prop :=
  ∀ n, (P5362941724908541193.a n : ℤ) = A043373 (n + 1)

end A043373

/-! ## A043373.P18120473939801131690

`eq[1, A268643(A137386(n+1))]`
-/

namespace A043373.P18120473939801131690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043373.P18120473939801131690

namespace A043373

/-- `eq[1, A268643(A137386(n+1))]` -/
def P18120473939801131690.Spec : Prop :=
  ∀ n, (P18120473939801131690.a n : ℤ) = A043373 (n + 1)

end A043373

/-!
# A043374: Numbers having two 1's in base 6.

The programs for A043374, the canonical program `A043374.P2562793773379906124` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043374 has offset 1).

The definition of A043374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043374.P5687606468408301611

`eq[2, A268643(A007092(n))]`
-/

namespace A043374.P5687606468408301611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043374.P5687606468408301611

namespace A043374

/-- `eq[2, A268643(A007092(n))]` -/
def P5687606468408301611.Spec : Prop :=
  ∀ n, (P5687606468408301611.a n : ℤ) = A043374 (n + 1)

end A043374

/-! ## A043374.P1869681543898300874

`eq[2, A268643(A084984(n+1))]`
-/

namespace A043374.P1869681543898300874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043374.P1869681543898300874

namespace A043374

/-- `eq[2, A268643(A084984(n+1))]` -/
def P1869681543898300874.Spec : Prop :=
  ∀ n, (P1869681543898300874.a n : ℤ) = A043374 (n + 1)

end A043374

/-! ## A043374.P8133942098193873123

`eq[2, A193238(A276138(n+1))]`
-/

namespace A043374.P8133942098193873123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043374.P8133942098193873123

namespace A043374

/-- `eq[2, A193238(A276138(n+1))]` -/
def P8133942098193873123.Spec : Prop :=
  ∀ n, (P8133942098193873123.a n : ℤ) = A043374 (n + 1)

end A043374

/-! ## A043374.P2562793773379906124

`eq[2, A268643(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043374

/-- `eq[2, A268643(A202267(n+1))]` -/
def P2562793773379906124.Spec : Prop :=
  ∀ n, (P2562793773379906124.a n : ℤ) = A043374 (n + 1)

theorem P2562793773379906124.correct : P2562793773379906124.Spec := by
  intro n
  simp only [A043374, Nat.add_sub_cancel]

end A043374

/-! ## A043374.P3004701067015958912

`eq[2, A268643(A137386(n+1))]`
-/

namespace A043374.P3004701067015958912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043374.P3004701067015958912

namespace A043374

/-- `eq[2, A268643(A137386(n+1))]` -/
def P3004701067015958912.Spec : Prop :=
  ∀ n, (P3004701067015958912.a n : ℤ) = A043374 (n + 1)

end A043374

/-!
# A043375: Numbers having three 1's in base 6.

The programs for A043375, there is no canonical definition to state claims against.
-/

/-! ## A043375.P11009011268657798385

`eq[3, A268643(A007092(n))]`
-/

namespace A043375.P11009011268657798385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043375.P11009011268657798385

/-! ## A043375.P9574538858086956805

`eq[3, A268643(A084984(n+1))]`
-/

namespace A043375.P9574538858086956805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043375.P9574538858086956805

/-! ## A043375.P680206817977393866

`eq[3, A193238(A276138(n+1))]`
-/

namespace A043375.P680206817977393866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043375.P680206817977393866

/-! ## A043375.P6188226366826647837

`eq[3, A268643(A137386(n+1))]`
-/

namespace A043375.P6188226366826647837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043375.P6188226366826647837

/-!
# A043376: Numbers having four 1's in base 6.

The programs for A043376, there is no canonical definition to state claims against.
-/

/-! ## A043376.P8195388223209909327

`A037460(A043340(n+1)^A227655(n))`
-/

namespace A043376.P8195388223209909327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (SequenceMachineLib.roundAway ((A043340 (n + 1) : ℚ) ^ (A227655 n : ℤ))).toNat

end

end A043376.P8195388223209909327

/-! ## A043376.P1886897625766075828

`A303789(A043400(n+1)^A122172(n))`
-/

namespace A043376.P1886897625766075828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (SequenceMachineLib.roundAway ((A043400 (n + 1) : ℚ) ^ (A122172 n : ℤ))).toNat

end

end A043376.P1886897625766075828

/-! ## A043376.P17399284099491868421

`A303789(A122172(n)²*A043400(n+1))`
-/

namespace A043376.P17399284099491868421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A122172 n ^ 2 * A043400 (n + 1)).toNat

end

end A043376.P17399284099491868421

/-!
# A043377: Numbers having one 2 in base 6.

The programs for A043377, the canonical program `A043377.P3490029336674327219` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043377 has offset 1).

The definition of A043377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043377.P16764417117097610330

`eq[1, A316863(A007092(n))]`
-/

namespace A043377.P16764417117097610330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043377.P16764417117097610330

namespace A043377

/-- `eq[1, A316863(A007092(n))]` -/
def P16764417117097610330.Spec : Prop :=
  ∀ n, (P16764417117097610330.a n : ℤ) = A043377 (n + 1)

end A043377

/-! ## A043377.P3490029336674327219

`eq[1, A316863(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043377

/-- `eq[1, A316863(A202267(n+1))]` -/
def P3490029336674327219.Spec : Prop :=
  ∀ n, (P3490029336674327219.a n : ℤ) = A043377 (n + 1)

theorem P3490029336674327219.correct : P3490029336674327219.Spec := by
  intro n
  simp only [A043377, Nat.add_sub_cancel]

end A043377

/-! ## A043377.P14714787323546521553

`eq[1, A193238(A137386(n+1))]`
-/

namespace A043377.P14714787323546521553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043377.P14714787323546521553

namespace A043377

/-- `eq[1, A193238(A137386(n+1))]` -/
def P14714787323546521553.Spec : Prop :=
  ∀ n, (P14714787323546521553.a n : ℤ) = A043377 (n + 1)

end A043377

/-! ## A043377.P15218106935762314361

`eq[A057427(n+1), A316864(A137386(n+1))]`
-/

namespace A043377.P15218106935762314361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043377.P15218106935762314361

namespace A043377

/-- `eq[A057427(n+1), A316864(A137386(n+1))]` -/
def P15218106935762314361.Spec : Prop :=
  ∀ n, (P15218106935762314361.a n : ℤ) = A043377 (n + 1)

end A043377

/-! ## A043377.P3140336853233671115

`eq[A071222(2*n), A316864(A137386(n+1))]`
-/

namespace A043377.P3140336853233671115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043377.P3140336853233671115

namespace A043377

/-- `eq[A071222(2*n), A316864(A137386(n+1))]` -/
def P3140336853233671115.Spec : Prop :=
  ∀ n, (P3140336853233671115.a n : ℤ) = A043377 (n + 1)

end A043377

/-! ## A043377.P8150524623710382022

`eq[A000035(4*n+1), A316864(A137386(n+1))]`
-/

namespace A043377.P8150524623710382022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043377.P8150524623710382022

namespace A043377

/-- `eq[A000035(4*n+1), A316864(A137386(n+1))]` -/
def P8150524623710382022.Spec : Prop :=
  ∀ n, (P8150524623710382022.a n : ℤ) = A043377 (n + 1)

end A043377

/-! ## A043377.P12034328315423754686

`eq[A000027(n+1)-n, A316864(A137386(n+1))]`
-/

namespace A043377.P12034328315423754686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043377.P12034328315423754686

namespace A043377

/-- `eq[A000027(n+1)-n, A316864(A137386(n+1))]` -/
def P12034328315423754686.Spec : Prop :=
  ∀ n, (P12034328315423754686.a n : ℤ) = A043377 (n + 1)

end A043377

/-!
# A043378: Numbers having two 2's in base 6.

The programs for A043378, the canonical program `A043378.P3910935549729391962` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043378 has offset 1).

The definition of A043378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043378.P16527195803378655581

`eq[2, A316863(A007092(n))]`
-/

namespace A043378.P16527195803378655581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043378.P16527195803378655581

namespace A043378

/-- `eq[2, A316863(A007092(n))]` -/
def P16527195803378655581.Spec : Prop :=
  ∀ n, (P16527195803378655581.a n : ℤ) = A043378 (n + 1)

end A043378

/-! ## A043378.P3910935549729391962

`eq[2, A316863(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043378

/-- `eq[2, A316863(A202267(n+1))]` -/
def P3910935549729391962.Spec : Prop :=
  ∀ n, (P3910935549729391962.a n : ℤ) = A043378 (n + 1)

theorem P3910935549729391962.correct : P3910935549729391962.Spec := by
  intro n
  simp only [A043378, Nat.add_sub_cancel]

end A043378

/-! ## A043378.P10269873979930164531

`eq[2, A193238(A137386(n+1))]`
-/

namespace A043378.P10269873979930164531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043378.P10269873979930164531

namespace A043378

/-- `eq[2, A193238(A137386(n+1))]` -/
def P10269873979930164531.Spec : Prop :=
  ∀ n, (P10269873979930164531.a n : ℤ) = A043378 (n + 1)

end A043378

/-!
# A043379: Numbers having three 2's in base 6.

The programs for A043379, there is no canonical definition to state claims against.
-/

/-! ## A043379.P2048067933320165717

`eq[3, A193238(A137386(n+1))]`
-/

namespace A043379.P2048067933320165717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043379.P2048067933320165717

/-! ## A043379.P11211291477321421144

`A043387(A187829(2*n+1))/2`
-/

namespace A043379.P11211291477321421144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043387 (A187829 (2 * n + 1)).toNat : ℚ) / 2

end

end A043379.P11211291477321421144

/-!
# A043380: Numbers having four 2's in base 6.

The programs for A043380, there is no canonical definition to state claims against.
-/

/-! ## A043380.P5606283945556103717

`A004526(lcm(2, A043388(2*n+1)))`
-/

namespace A043380.P5606283945556103717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A043388 (2 * n + 1)))

end

end A043380.P5606283945556103717

/-! ## A043380.P11157288531643933928

`A037460(lcm(A043344(n+1), A045153(n+1)))`
-/

namespace A043380.P11157288531643933928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (Int.lcm (A043344 (n + 1)) (A045153 (n + 1)))

end

end A043380.P11157288531643933928

/-! ## A043380.P10233874204974915110

`A043388(2*n+1)/A168361(A001845(2*n))`
-/

namespace A043380.P10233874204974915110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043388 (2 * n + 1) : ℚ) / (A168361 (A001845 (2 * n)).toNat : ℚ)

end

end A043380.P10233874204974915110

/-! ## A043380.P12546095319047701375

`A037460(A045153(n+1)%A334836(n+4))`
-/

namespace A043380.P12546095319047701375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (Int.tmod (A045153 (n + 1)) (A334836 (n + 4))).toNat

end

end A043380.P12546095319047701375

/-!
# A043381: Numbers having one 3 in base 6.

The programs for A043381, there is no canonical definition to state claims against.
-/

/-! ## A043381.P12033137021020348889

`eq[1, A007949(A338863(n))]`
-/

namespace A043381.P12033137021020348889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A338863 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043381.P12033137021020348889

/-! ## A043381.P11925783740929524001

`eq[1, A316864(A007092(n))]`
-/

namespace A043381.P11925783740929524001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043381.P11925783740929524001

/-! ## A043381.P5400297647327136860

`eq[1, A316864(record[A222248(n)])]`
-/

namespace A043381.P5400297647327136860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043381.P5400297647327136860

/-! ## A043381.P2892805209373283008

`eq[1, A316864(A202267(n+1))]`
-/

namespace A043381.P2892805209373283008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043381.P2892805209373283008

/-! ## A043381.P14530979124159828662

`eq[1, A102677(2*A202267(n+1))]`
-/

namespace A043381.P14530979124159828662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (2 * A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043381.P14530979124159828662

/-!
# A043382: Numbers having two 3's in base 6.

The programs for A043382, there is no canonical definition to state claims against.
-/

/-! ## A043382.P9555612882469681143

`eq[2, A007949(A338863(n))]`
-/

namespace A043382.P9555612882469681143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A338863 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043382.P9555612882469681143

/-! ## A043382.P79013078699951351

`record[A057979(A108738(A043383(n+1)))]`
-/

namespace A043382.P79013078699951351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A108738 (A043383 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043382.P79013078699951351

/-! ## A043382.P6861674380021348451

`eq[2, A316864(A007092(n))]`
-/

namespace A043382.P6861674380021348451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043382.P6861674380021348451

/-! ## A043382.P2930191011518575552

`eq[2, A316864(A202267(n+1))]`
-/

namespace A043382.P2930191011518575552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043382.P2930191011518575552

/-! ## A043382.P7430373262297141522

`eq[2, A102677(2*A202267(n+1))]`
-/

namespace A043382.P7430373262297141522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (2 * A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043382.P7430373262297141522

/-!
# A043383: Numbers having three 3's in base 6.

The programs for A043383, there is no canonical definition to state claims against.
-/

/-! ## A043383.P8149509189884872602

`eq[3, A316864(A007092(n))]`
-/

namespace A043383.P8149509189884872602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043383.P8149509189884872602

/-! ## A043383.P9979259541244674923

`A037465(A023736(n+1)%A123287(n+2))`
-/

namespace A043383.P9979259541244674923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A023736 (n + 1)) (A123287 (n + 2 + 31))).toNat

end

end A043383.P9979259541244674923

/-! ## A043383.P6630256221416346992

`A008615(A043384(n+1)^A067059(n))`
-/

namespace A043383.P6630256221416346992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway ((A043384 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043383.P6630256221416346992

/-! ## A043383.P1910651720769834672

`A037465(A045304(n+1)^A067059(n))`
-/

namespace A043383.P1910651720769834672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A045304 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043383.P1910651720769834672

/-! ## A043383.P6387158351738085020

`A152467(A043384(n+1)^A067059(n))`
-/

namespace A043383.P6387158351738085020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.roundAway ((A043384 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043383.P6387158351738085020

/-!
# A043384: Numbers having four 3's in base 6.

The programs for A043384, there is no canonical definition to state claims against.
-/

/-! ## A043384.P8494114059166903828

`A037465(A043364(n+1)^A067059(n))`
-/

namespace A043384.P8494114059166903828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A043364 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043384.P8494114059166903828

/-! ## A043384.P12314902781452761943

`A037465(C(A043364(n+1), A067059(n)))`
-/

namespace A043384.P12314902781452761943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Nat.choose (A043364 (n + 1)).toNat (A067059 n).toNat)

end

end A043384.P12314902781452761943

/-! ## A043384.P13376308702510041673

`A037465(A043364(n+1)*A146615(n+1))`
-/

namespace A043384.P13376308702510041673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A043364 (n + 1) * A146615 (n + 1)).toNat

end

end A043384.P13376308702510041673

/-! ## A043384.P8048289191907725601

`A037465(A043364(n+1)^A146615(n+1))`
-/

namespace A043384.P8048289191907725601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A043364 (n + 1) : ℚ) ^ (A146615 (n + 1) : ℤ))).toNat

end

end A043384.P8048289191907725601

/-! ## A043384.P3107751373439386017

`A037465(lcm(A043364(n+1), A146615(n+1)))`
-/

namespace A043384.P3107751373439386017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.lcm (A043364 (n + 1)) (A146615 (n + 1)))

end

end A043384.P3107751373439386017

/-!
# A043385: Numbers having one 4 in base 6.

The programs for A043385, the canonical program `A043385.P1427488437975314440` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043385 has offset 1).

The definition of A043385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043385.P11672674331674064182

`eq[1, A316865(A007092(n))]`
-/

namespace A043385.P11672674331674064182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043385.P11672674331674064182

namespace A043385

/-- `eq[1, A316865(A007092(n))]` -/
def P11672674331674064182.Spec : Prop :=
  ∀ n, (P11672674331674064182.a n : ℤ) = A043385 (n + 1)

end A043385

/-! ## A043385.P11701513822798550013

`eq[1, A102675(A256306(n))]`
-/

namespace A043385.P11701513822798550013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A256306 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043385.P11701513822798550013

namespace A043385

/-- `eq[1, A102675(A256306(n))]` -/
def P11701513822798550013.Spec : Prop :=
  ∀ n, (P11701513822798550013.a n : ℤ) = A043385 (n + 1)

end A043385

/-! ## A043385.P1031218171277204030

`eq[1, A316865(record[A222248(n)])]`
-/

namespace A043385.P1031218171277204030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043385.P1031218171277204030

namespace A043385

/-- `eq[1, A316865(record[A222248(n)])]` -/
def P1031218171277204030.Spec : Prop :=
  ∀ n, (P1031218171277204030.a n : ℤ) = A043385 (n + 1)

end A043385

/-! ## A043385.P11786398378797061450

`eq[1, A316869(A084984(n+1))]`
-/

namespace A043385.P11786398378797061450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043385.P11786398378797061450

namespace A043385

/-- `eq[1, A316869(A084984(n+1))]` -/
def P11786398378797061450.Spec : Prop :=
  ∀ n, (P11786398378797061450.a n : ℤ) = A043385 (n + 1)

end A043385

/-! ## A043385.P1427488437975314440

`eq[1, A316865(lt[A054055(n), 6])]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043385

/-- `eq[1, A316865(lt[A054055(n), 6])]` -/
def P1427488437975314440.Spec : Prop :=
  ∀ n, (P1427488437975314440.a n : ℤ) = A043385 (n + 1)

theorem P1427488437975314440.correct : P1427488437975314440.Spec := by
  intro n
  simp only [A043385, Nat.add_sub_cancel]

end A043385

/-! ## A043385.P17497425372937858228

`eq[2, A004176(A137386(n+1))%3]`
-/

namespace A043385.P17497425372937858228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004176 (A137386 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043385.P17497425372937858228

namespace A043385

/-- `eq[2, A004176(A137386(n+1))%3]` -/
def P17497425372937858228.Spec : Prop :=
  ∀ n, (P17497425372937858228.a n : ℤ) = A043385 (n + 1)

end A043385

/-!
# A043386: Numbers having two 4's in base 6.

The programs for A043386, the canonical program `A043386.P13446729167235893764` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043386 has offset 1).

The definition of A043386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043386.P14513406910729723134

`eq[2, A316865(A007092(n))]`
-/

namespace A043386.P14513406910729723134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043386.P14513406910729723134

namespace A043386

/-- `eq[2, A316865(A007092(n))]` -/
def P14513406910729723134.Spec : Prop :=
  ∀ n, (P14513406910729723134.a n : ℤ) = A043386 (n + 1)

end A043386

/-! ## A043386.P4990301829841576977

`eq[2, A102675(A256306(n))]`
-/

namespace A043386.P4990301829841576977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A256306 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043386.P4990301829841576977

namespace A043386

/-- `eq[2, A102675(A256306(n))]` -/
def P4990301829841576977.Spec : Prop :=
  ∀ n, (P4990301829841576977.a n : ℤ) = A043386 (n + 1)

end A043386

/-! ## A043386.P13446729167235893764

`eq[2, A316869(A084984(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043386

/-- `eq[2, A316869(A084984(n+1))]` -/
def P13446729167235893764.Spec : Prop :=
  ∀ n, (P13446729167235893764.a n : ℤ) = A043386 (n + 1)

theorem P13446729167235893764.correct : P13446729167235893764.Spec := by
  intro n
  simp only [A043386, Nat.add_sub_cancel]

end A043386

/-! ## A043386.P614627623222873359

`eq[1, A004176(A137386(n+1))%3]`
-/

namespace A043386.P614627623222873359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004176 (A137386 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043386.P614627623222873359

namespace A043386

/-- `eq[1, A004176(A137386(n+1))%3]` -/
def P614627623222873359.Spec : Prop :=
  ∀ n, (P614627623222873359.a n : ℤ) = A043386 (n + 1)

end A043386

/-! ## A043386.P8042779777735361083

`eq[A193955(A268237(n)), A268238(n)]`
-/

namespace A043386.P8042779777735361083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193955 (A268237 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043386.P8042779777735361083

namespace A043386

/-- `eq[A193955(A268237(n)), A268238(n)]` -/
def P8042779777735361083.Spec : Prop :=
  ∀ n, (P8042779777735361083.a n : ℤ) = A043386 (n + 1)

end A043386

/-!
# A043387: Numbers having three 4's in base 6.

The programs for A043387, there is no canonical definition to state claims against.
-/

/-! ## A043387.P950683100775683055

`A037465(A023740(n+1)%A325067(3*n+2))`
-/

namespace A043387.P950683100775683055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A023740 (n + 1)) (A325067 (3 * n + 2))).toNat

end

end A043387.P950683100775683055

/-! ## A043387.P8918457616532980954

`A037465(A023740(n+1))%A059666(3*n+5)`
-/

namespace A043387.P8918457616532980954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037465 (A023740 (n + 1)).toNat) (A059666 (3 * n + 5))

end

end A043387.P8918457616532980954

/-! ## A043387.P7708061557245675865

`A152467(A043388(n+1)*A322356(n+1))`
-/

namespace A043387.P7708061557245675865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A043388 (n + 1) * A322356 (n + 1)).toNat

end

end A043387.P7708061557245675865

/-! ## A043387.P2797741553771861224

`A037465(A023740(n+1)^A322356(n+1))`
-/

namespace A043387.P2797741553771861224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A023740 (n + 1) : ℚ) ^ (A322356 (n + 1) : ℤ))).toNat

end

end A043387.P2797741553771861224

/-! ## A043387.P2634838888068722451

`A152467(A043388(n+1)^A322356(n+1))`
-/

namespace A043387.P2634838888068722451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.roundAway ((A043388 (n + 1) : ℚ) ^ (A322356 (n + 1) : ℤ))).toNat

end

end A043387.P2634838888068722451

/-!
# A043388: Numbers having four 4's in base 6.

The programs for A043388, there is no canonical definition to state claims against.
-/

/-! ## A043388.P7809697192179837189

`A016957(A043387(n+1)^A262438(n))`
-/

namespace A043388.P7809697192179837189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043388.P7809697192179837189

/-! ## A043388.P13752753584257583033

`A016945(A043387(n+1)^A262438(n))+1`
-/

namespace A043388.P13752753584257583033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat + 1

end

end A043388.P13752753584257583033

/-! ## A043388.P17542822347117965672

`2*A016789(A043387(n+1)^A262438(n))`
-/

namespace A043388.P17542822347117965672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016789 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043388.P17542822347117965672

/-! ## A043388.P17528378434257434627

`A016957(A262438(n)²²*A043387(n+1))`
-/

namespace A043388.P17528378434257434627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 ((A262438 n ^ 2) ^ 2 * A043387 (n + 1)).toNat

end

end A043388.P17528378434257434627

/-!
# A043389: Numbers having one 5 in base 6.

The programs for A043389, the canonical program `A043389.P5903434223701845817` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043389 has offset 1).

The definition of A043389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043389.P8350209020881026682

`eq[1, A102675(A007092(n))]`
-/

namespace A043389.P8350209020881026682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043389.P8350209020881026682

namespace A043389

/-- `eq[1, A102675(A007092(n))]` -/
def P8350209020881026682.Spec : Prop :=
  ∀ n, (P8350209020881026682.a n : ℤ) = A043389 (n + 1)

end A043389

/-! ## A043389.P8629241368259451249

`eq[1, A102683(A084984(n+1))]`
-/

namespace A043389.P8629241368259451249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043389.P8629241368259451249

namespace A043389

/-- `eq[1, A102683(A084984(n+1))]` -/
def P8629241368259451249.Spec : Prop :=
  ∀ n, (P8629241368259451249.a n : ℤ) = A043389 (n + 1)

end A043389

/-! ## A043389.P5903434223701845817

`eq[1, A102677(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043389

/-- `eq[1, A102677(A202267(n+1))]` -/
def P5903434223701845817.Spec : Prop :=
  ∀ n, (P5903434223701845817.a n : ℤ) = A043389 (n + 1)

theorem P5903434223701845817.correct : P5903434223701845817.Spec := by
  intro n
  simp only [A043389, Nat.add_sub_cancel]

end A043389

/-! ## A043389.P3327262307935055204

`eq[1, A102683(A276138(n+1))]`
-/

namespace A043389.P3327262307935055204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043389.P3327262307935055204

namespace A043389

/-- `eq[1, A102683(A276138(n+1))]` -/
def P3327262307935055204.Spec : Prop :=
  ∀ n, (P3327262307935055204.a n : ℤ) = A043389 (n + 1)

end A043389

/-! ## A043389.P1486548968191859425

`eq[1, A102681(eq[n, A107128(n)])]`
-/

namespace A043389.P1486548968191859425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043389.P1486548968191859425

namespace A043389

/-- `eq[1, A102681(eq[n, A107128(n)])]` -/
def P1486548968191859425.Spec : Prop :=
  ∀ n, (P1486548968191859425.a n : ℤ) = A043389 (n + 1)

end A043389

/-! ## A043389.P15701536400463627827

`eq[A244513(n+1)², A196564(A276138(n+1))]`
-/

namespace A043389.P15701536400463627827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244513 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043389.P15701536400463627827

namespace A043389

/-- `eq[A244513(n+1)², A196564(A276138(n+1))]` -/
def P15701536400463627827.Spec : Prop :=
  ∀ n, (P15701536400463627827.a n : ℤ) = A043389 (n + 1)

end A043389

/-!
# A043390: Numbers having two 5's in base 6.

The programs for A043390, the canonical program `A043390.P901358576775283053` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043390 has offset 1).

The definition of A043390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043390.P2990466162417013815

`eq[2, A102675(A007092(n))]`
-/

namespace A043390.P2990466162417013815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043390.P2990466162417013815

namespace A043390

/-- `eq[2, A102675(A007092(n))]` -/
def P2990466162417013815.Spec : Prop :=
  ∀ n, (P2990466162417013815.a n : ℤ) = A043390 (n + 1)

end A043390

/-! ## A043390.P8872353020693766366

`eq[2, A102683(A084984(n+1))]`
-/

namespace A043390.P8872353020693766366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043390.P8872353020693766366

namespace A043390

/-- `eq[2, A102683(A084984(n+1))]` -/
def P8872353020693766366.Spec : Prop :=
  ∀ n, (P8872353020693766366.a n : ℤ) = A043390 (n + 1)

end A043390

/-! ## A043390.P901358576775283053

`eq[2, A102677(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043390

/-- `eq[2, A102677(A202267(n+1))]` -/
def P901358576775283053.Spec : Prop :=
  ∀ n, (P901358576775283053.a n : ℤ) = A043390 (n + 1)

theorem P901358576775283053.correct : P901358576775283053.Spec := by
  intro n
  simp only [A043390, Nat.add_sub_cancel]

end A043390

/-! ## A043390.P4263707942570779059

`eq[2, A102683(A276138(n+1))]`
-/

namespace A043390.P4263707942570779059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043390.P4263707942570779059

namespace A043390

/-- `eq[2, A102683(A276138(n+1))]` -/
def P4263707942570779059.Spec : Prop :=
  ∀ n, (P4263707942570779059.a n : ℤ) = A043390 (n + 1)

end A043390

/-!
# A043391: Numbers having three 5's in base 6.

The programs for A043391, there is no canonical definition to state claims against.
-/

/-! ## A043391.P17842284059658726498

`eq[3, A102675(A007092(n))]`
-/

namespace A043391.P17842284059658726498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043391.P17842284059658726498

/-! ## A043391.P7857069686314817290

`eq[3, A102683(A084984(n+1))]`
-/

namespace A043391.P7857069686314817290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043391.P7857069686314817290

/-! ## A043391.P14875985570026591473

`eq[3, A196564(A276138(n+1))]`
-/

namespace A043391.P14875985570026591473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043391.P14875985570026591473

/-! ## A043391.P12542725914316006201

`floor(A043392(A032555(n+1))/6)`
-/

namespace A043391.P12542725914316006201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043392 (A032555 (n + 1)).toNat : ℚ) / 6⌋

end

end A043391.P12542725914316006201

/-!
# A043393: Numbers whose base-7 representation contains exactly one 0.

The programs for A043393, the canonical program `A043393.P17669120567130989145` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043393 has offset 1).

The definition of A043393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043393.P17669120567130989145

`eq[n*A055641(A007093(n)), A028310(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043393

/-- `eq[n*A055641(A007093(n)), A028310(n)]` -/
def P17669120567130989145.Spec : Prop :=
  ∀ n, (P17669120567130989145.a n : ℤ) = A043393 (n + 1)

theorem P17669120567130989145.correct : P17669120567130989145.Spec := by
  intro n
  simp only [A043393, Nat.add_sub_cancel]

end A043393

/-! ## A043393.P10950128836018167111

`eq[A055641(A024640(n)), A057427(n)]`
-/

namespace A043393.P10950128836018167111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A024640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043393.P10950128836018167111

namespace A043393

/-- `eq[A055641(A024640(n)), A057427(n)]` -/
def P10950128836018167111.Spec : Prop :=
  ∀ n, (P10950128836018167111.a n : ℤ) = A043393 (n + 1)

end A043393

/-! ## A043393.P16365507890607695122

`eq[A055641(A024640(n)), A178334(n)]`
-/

namespace A043393.P16365507890607695122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A024640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043393.P16365507890607695122

namespace A043393

/-- `eq[A055641(A024640(n)), A178334(n)]` -/
def P16365507890607695122.Spec : Prop :=
  ∀ n, (P16365507890607695122.a n : ℤ) = A043393 (n + 1)

end A043393

/-! ## A043393.P5448476070878952170

`eq[A000038(n)!, A055641(A024640(n))]`
-/

namespace A043393.P5448476070878952170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A024640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043393.P5448476070878952170

namespace A043393

/-- `eq[A000038(n)!, A055641(A024640(n))]` -/
def P5448476070878952170.Spec : Prop :=
  ∀ n, (P5448476070878952170.a n : ℤ) = A043393 (n + 1)

end A043393

/-! ## A043393.P7625442928705240028

`eq[1, A055641(A024640(A000007(n)+n))]`
-/

namespace A043393.P7625442928705240028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A024640 (A000007 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043393.P7625442928705240028

namespace A043393

/-- `eq[1, A055641(A024640(A000007(n)+n))]` -/
def P7625442928705240028.Spec : Prop :=
  ∀ n, (P7625442928705240028.a n : ℤ) = A043393 (n + 1)

end A043393

/-!
# A043394: Numbers whose base-7 representation contains exactly two 0's.

The programs for A043394, the canonical program `A043394.P14258721720709346526` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043394 has offset 1).

The definition of A043394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043394.P14258721720709346526

`eq[2, A055641(A007093(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043394

/-- `eq[2, A055641(A007093(n))]` -/
def P14258721720709346526.Spec : Prop :=
  ∀ n, (P14258721720709346526.a n : ℤ) = A043394 (n + 1)

theorem P14258721720709346526.correct : P14258721720709346526.Spec := by
  intro n
  simp only [A043394, Nat.add_sub_cancel]

end A043394

/-! ## A043394.P15034533053817388964

`A057358(∑[86*A015109(n)^n])`
-/

namespace A043394.P15034533053817388964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  86 * A015109 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A043394.P15034533053817388964

namespace A043394

/-- `A057358(∑[86*A015109(n)^n])` -/
def P15034533053817388964.Spec : Prop :=
  ∀ n, P15034533053817388964.a n = A043394 (n + 1)

end A043394

/-! ## A043394.P9689565787340603353

`49*n+50-A225542(A000108(n))`
-/

namespace A043394.P9689565787340603353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n + 50 : ℤ) - A225542 (A000108 n).toNat

end

end A043394.P9689565787340603353

namespace A043394

/-- `49*n+50-A225542(A000108(n))` -/
def P9689565787340603353.Spec : Prop :=
  ∀ n, P9689565787340603353.a n = A043394 (n + 1)

end A043394

/-!
# A043397: Numbers whose base-7 representation contains exactly one 1.

The programs for A043397, the canonical program `A043397.P4464241023056186748` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043397 has offset 1).

The definition of A043397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043397.P7464496036595038841

`eq[1, A268643(A007093(n))]`
-/

namespace A043397.P7464496036595038841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043397.P7464496036595038841

namespace A043397

/-- `eq[1, A268643(A007093(n))]` -/
def P7464496036595038841.Spec : Prop :=
  ∀ n, (P7464496036595038841.a n : ℤ) = A043397 (n + 1)

end A043397

/-! ## A043397.P11374253811931636966

`eq[1, A268643(A168501(n+1))]`
-/

namespace A043397.P11374253811931636966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043397.P11374253811931636966

namespace A043397

/-- `eq[1, A268643(A168501(n+1))]` -/
def P11374253811931636966.Spec : Prop :=
  ∀ n, (P11374253811931636966.a n : ℤ) = A043397 (n + 1)

end A043397

/-! ## A043397.P4464241023056186748

`eq[1, A268643(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043397

/-- `eq[1, A268643(A307913(n+1))]` -/
def P4464241023056186748.Spec : Prop :=
  ∀ n, (P4464241023056186748.a n : ℤ) = A043397 (n + 1)

theorem P4464241023056186748.correct : P4464241023056186748.Spec := by
  intro n
  simp only [A043397, Nat.add_sub_cancel]

end A043397

/-! ## A043397.P17903644876565806369

`eq[1, A316863(A256307(n))]`
-/

namespace A043397.P17903644876565806369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043397.P17903644876565806369

namespace A043397

/-- `eq[1, A316863(A256307(n))]` -/
def P17903644876565806369.Spec : Prop :=
  ∀ n, (P17903644876565806369.a n : ℤ) = A043397 (n + 1)

end A043397

/-! ## A043397.P11369485883380636172

`eq[1, A268643(record[A222251(n)])]`
-/

namespace A043397.P11369485883380636172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043397.P11369485883380636172

namespace A043397

/-- `eq[1, A268643(record[A222251(n)])]` -/
def P11369485883380636172.Spec : Prop :=
  ∀ n, (P11369485883380636172.a n : ℤ) = A043397 (n + 1)

end A043397

/-! ## A043397.P13913248260989088913

`eq[1, A316863(A028374(n+1))]`
-/

namespace A043397.P13913248260989088913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043397.P13913248260989088913

namespace A043397

/-- `eq[1, A316863(A028374(n+1))]` -/
def P13913248260989088913.Spec : Prop :=
  ∀ n, (P13913248260989088913.a n : ℤ) = A043397 (n + 1)

end A043397

/-!
# A043398: Numbers whose base-7 representation contains exactly two 1's.

The programs for A043398, the canonical program `A043398.P15921891173828809090` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043398 has offset 1).

The definition of A043398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043398.P9202696157836064949

`eq[2, A268643(A007093(n))]`
-/

namespace A043398.P9202696157836064949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043398.P9202696157836064949

namespace A043398

/-- `eq[2, A268643(A007093(n))]` -/
def P9202696157836064949.Spec : Prop :=
  ∀ n, (P9202696157836064949.a n : ℤ) = A043398 (n + 1)

end A043398

/-! ## A043398.P1569985352324707940

`eq[2, A316863(A256307(n))]`
-/

namespace A043398.P1569985352324707940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043398.P1569985352324707940

namespace A043398

/-- `eq[2, A316863(A256307(n))]` -/
def P1569985352324707940.Spec : Prop :=
  ∀ n, (P1569985352324707940.a n : ℤ) = A043398 (n + 1)

end A043398

/-! ## A043398.P1327972422941030965

`eq[2, A316863(A028374(n+1))]`
-/

namespace A043398.P1327972422941030965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043398.P1327972422941030965

namespace A043398

/-- `eq[2, A316863(A028374(n+1))]` -/
def P1327972422941030965.Spec : Prop :=
  ∀ n, (P1327972422941030965.a n : ℤ) = A043398 (n + 1)

end A043398

/-! ## A043398.P8535802971720070263

`eq[2, A268643(A168501(n+1))]`
-/

namespace A043398.P8535802971720070263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043398.P8535802971720070263

namespace A043398

/-- `eq[2, A268643(A168501(n+1))]` -/
def P8535802971720070263.Spec : Prop :=
  ∀ n, (P8535802971720070263.a n : ℤ) = A043398 (n + 1)

end A043398

/-! ## A043398.P15921891173828809090

`eq[2, A268643(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043398

/-- `eq[2, A268643(A307913(n+1))]` -/
def P15921891173828809090.Spec : Prop :=
  ∀ n, (P15921891173828809090.a n : ℤ) = A043398 (n + 1)

theorem P15921891173828809090.correct : P15921891173828809090.Spec := by
  intro n
  simp only [A043398, Nat.add_sub_cancel]

end A043398

/-!
# A043399: Numbers whose base-7 representation contains exactly three 1's.

The programs for A043399, there is no canonical definition to state claims against.
-/

/-! ## A043399.P16416618955704592428

`eq[3, A316863(A028374(n+1))]`
-/

namespace A043399.P16416618955704592428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043399.P16416618955704592428

/-! ## A043399.P16848723704943224223

`A037466(A023728(n+1)%A355955(n+2))`
-/

namespace A043399.P16848723704943224223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Int.tmod (A023728 (n + 1)) (A355955 (n + 2))).toNat

end

end A043399.P16848723704943224223

