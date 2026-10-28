import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C015
import Seq.B001.C001
import Seq.B002.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C020

/-!
# A036100: Centered cube numbers: (n+1)^22 + n^22.

The programs for A036100, the canonical program `A036100.P9526219666505486895` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036100 has offset 0).

The definition of A036100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22+n^22` (program `A036100.P9526219666505486895`, by `A036100.P9526219666505486895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036100.P9526219666505486895

`(n+1)^22+n^22`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036100

/-- `(n+1)^22+n^22` -/
def P9526219666505486895.Spec : Prop :=
  ∀ n, (P9526219666505486895.a n : ℤ) = A036100 n

theorem P9526219666505486895.correct : P9526219666505486895.Spec := by
  intro n
  simp only [A036100]

end A036100

/-!
# A036101: 

The programs for A036101, there is no canonical definition to state claims against.
-/

/-! ## A036101.P8464827539331932447

`(n+1)^23+n^23`
-/

namespace A036101.P8464827539331932447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 23 + n ^ 23

end

end A036101.P8464827539331932447

/-! ## A036101.P10899351889624398076

`record[Δ[A001057(n)^23]]`
-/

namespace A036101.P10899351889624398076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 23

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036101.P10899351889624398076

/-! ## A036101.P11937480672108918683

`record[∑[A001057(A004442(n))^23]]`
-/

namespace A036101.P11937480672108918683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004442 n).toNat ^ 23

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036101.P11937480672108918683

/-!
# A036102: 

The programs for A036102, there is no canonical definition to state claims against.
-/

/-! ## A036102.P10979115331135799931

`(n+1)^24+n^24`
-/

namespace A036102.P10979115331135799931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 24 + n ^ 24

end

end A036102.P10979115331135799931

/-!
# A036110: A summarize Fibonacci sequence starting with a(0)=2 and a(1)=2: summarize the previous two terms!.

The programs for A036110, there is no canonical definition to state claims against.
-/

/-! ## A036110.P6768938966716722342

`2*A064989(A014507(n))`
-/

namespace A036110.P6768938966716722342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064989 (A014507 n).toNat

end

end A036110.P6768938966716722342

/-!
# A036116: Numbers n such that the number of distinct primes dividing n is a square.

The programs for A036116, the canonical program `A036116.P17962530961175835312` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036116 has offset 1).

The definition of A036116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036116.P17962530961175835312

`eq[1, A008683(A259936(n+1))]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036116

/-- `eq[1, A008683(A259936(n+1))]+1` -/
def P17962530961175835312.Spec : Prop :=
  ∀ n, (P17962530961175835312.a n : ℤ) = A036116 (n + 1)

theorem P17962530961175835312.correct : P17962530961175835312.Spec := by
  intro n
  simp only [A036116, Nat.add_sub_cancel]

end A036116

/-! ## A036116.P7438236973144889881

`record[(n+1)/(A327076(A259936(n+1)+1)-1)]`
-/

namespace A036116.P7438236973144889881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327076 (A259936 (n + 1) + 1).toNat - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P7438236973144889881

namespace A036116

/-- `record[(n+1)/(A327076(A259936(n+1)+1)-1)]` -/
def P7438236973144889881.Spec : Prop :=
  ∀ n, P7438236973144889881.a n = (A036116 (n + 1) : ℚ)

end A036116

/-! ## A036116.P13787802411359530110

`record[(n+1)^val(A083399(n+1)+1, 3)]`
-/

namespace A036116.P13787802411359530110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (A083399 (n + 1) + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P13787802411359530110

namespace A036116

/-- `record[(n+1)^val(A083399(n+1)+1, 3)]` -/
def P13787802411359530110.Spec : Prop :=
  ∀ n, (P13787802411359530110.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P11074005122997604067

`lt[A179835(A034444(n+1)²), 1]+1`
-/

namespace A036116.P11074005122997604067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (A034444 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A036116.P11074005122997604067

namespace A036116

/-- `lt[A179835(A034444(n+1)²), 1]+1` -/
def P11074005122997604067.Spec : Prop :=
  ∀ n, (P11074005122997604067.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P3873917000354818864

`record[lcm(n+1, A279329(A007875(n+1)))]`
-/

namespace A036116.P3873917000354818864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A279329 (A007875 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P3873917000354818864

namespace A036116

/-- `record[lcm(n+1, A279329(A007875(n+1)))]` -/
def P3873917000354818864.Spec : Prop :=
  ∀ n, (P3873917000354818864.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P11627990899400273503

`eq[2, A030496(A034444(n+1)²+1)]+1`
-/

namespace A036116.P11627990899400273503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A034444 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036116.P11627990899400273503

namespace A036116

/-- `eq[2, A030496(A034444(n+1)²+1)]+1` -/
def P11627990899400273503.Spec : Prop :=
  ∀ n, (P11627990899400273503.a n : ℤ) = A036116 (n + 1)

end A036116

/-! ## A036116.P13469585641528452866

`record[A008683(A259936(n+1))*A008619(2*n)]`
-/

namespace A036116.P13469585641528452866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A259936 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036116.P13469585641528452866

namespace A036116

/-- `record[A008683(A259936(n+1))*A008619(2*n)]` -/
def P13469585641528452866.Spec : Prop :=
  ∀ n, P13469585641528452866.a n = A036116 (n + 1)

end A036116

/-! ## A036116.P1480434199901096142

`eq[1, A087802(n+1)%3]+1`
-/

namespace A036116.P1480434199901096142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087802 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036116.P1480434199901096142

namespace A036116

/-- `eq[1, A087802(n+1)%3]+1` -/
def P1480434199901096142.Spec : Prop :=
  ∀ n, (P1480434199901096142.a n : ℤ) = A036116 (n + 1)

end A036116

/-!
# A036117: a(n) = 2^n mod 11.

The programs for A036117, the canonical program `A036117.P8882812784496061533` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036117 has offset 0).

The definition of A036117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%11` (program `A036117.P8882812784496061533`, by `A036117.P8882812784496061533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036117.P11400096132305518351

`ogf((1+x+2x^2+4x^3-3x^4+6x^5)/(1-x+x^5-x^6))`
-/

namespace A036117.P11400096132305518351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 4, -3, 6] [1, -1, 0, 0, 0, 1, -1] n

end

end A036117.P11400096132305518351

namespace A036117

/-- `ogf((1+x+2x^2+4x^3-3x^4+6x^5)/(1-x+x^5-x^6))` -/
def P11400096132305518351.Spec : Prop :=
  ∀ n, P11400096132305518351.a n = A036117 n

end A036117

/-! ## A036117.P8882812784496061533

`(2^n)%11`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036117

/-- `(2^n)%11` -/
def P8882812784496061533.Spec : Prop :=
  ∀ n, (P8882812784496061533.a n : ℤ) = A036117 n

theorem P8882812784496061533.correct : P8882812784496061533.Spec := by
  intro n
  simp only [A036117]

end A036117

/-!
# A036118: a(n) = 2^n mod 13.

The programs for A036118, the canonical program `A036118.P12800111793972795393` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036118 has offset 0).

The definition of A036118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%13` (program `A036118.P12800111793972795393`, by `A036118.P12800111793972795393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036118.P3704125926192969211

`ogf((1+x+2x^2+4x^3-5x^4+3x^5+7x^6)/(1-x+x^6-x^7))`
-/

namespace A036118.P3704125926192969211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 4, -5, 3, 7] [1, -1, 0, 0, 0, 0, 1, -1] n

end

end A036118.P3704125926192969211

namespace A036118

/-- `ogf((1+x+2x^2+4x^3-5x^4+3x^5+7x^6)/(1-x+x^6-x^7))` -/
def P3704125926192969211.Spec : Prop :=
  ∀ n, P3704125926192969211.a n = A036118 n

end A036118

/-! ## A036118.P12800111793972795393

`(2^n)%13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036118

/-- `(2^n)%13` -/
def P12800111793972795393.Spec : Prop :=
  ∀ n, (P12800111793972795393.a n : ℤ) = A036118 n

theorem P12800111793972795393.correct : P12800111793972795393.Spec := by
  intro n
  simp only [A036118]

end A036118

/-!
# A036119: a(n) = 3^n mod 17.

The programs for A036119, the canonical program `A036119.P5030586463482066899` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036119 has offset 0).

The definition of A036119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%17` (program `A036119.P5030586463482066899`, by `A036119.P5030586463482066899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036119.P386002065101660296

`ogf((1+2x+6x^2+x^3+3x^4-8x^5+10x^6-4x^7+6x^8)/(1-x+x^8-x^9))`
-/

namespace A036119.P386002065101660296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6, 1, 3, -8, 10, -4, 6] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] n

end

end A036119.P386002065101660296

namespace A036119

/-- `ogf((1+2x+6x^2+x^3+3x^4-8x^5+10x^6-4x^7+6x^8)/(1-x+x^8-x^9))` -/
def P386002065101660296.Spec : Prop :=
  ∀ n, P386002065101660296.a n = A036119 n

end A036119

/-! ## A036119.P5030586463482066899

`(3^n)%17`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036119

/-- `(3^n)%17` -/
def P5030586463482066899.Spec : Prop :=
  ∀ n, (P5030586463482066899.a n : ℤ) = A036119 n

theorem P5030586463482066899.correct : P5030586463482066899.Spec := by
  intro n
  simp only [A036119]

end A036119

/-!
# A036120: a(n) = 2^n mod 19.

The programs for A036120, the canonical program `A036120.P2922371956194919279` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036120 has offset 0).

The definition of A036120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%19` (program `A036120.P2922371956194919279`, by `A036120.P2922371956194919279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036120.P15780929297167843575

`ogf((1+x+2x^2+4x^3+8x^4-3x^5-6x^6+7x^7-5x^8+10x^9)/(1-x+x^9-x^10))`
-/

namespace A036120.P15780929297167843575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 4, 8, -3, -6, 7, -5, 10] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] n

end

end A036120.P15780929297167843575

namespace A036120

/-- `ogf((1+x+2x^2+4x^3+8x^4-3x^5-6x^6+7x^7-5x^8+10x^9)/(1-x+x^9-x^10))` -/
def P15780929297167843575.Spec : Prop :=
  ∀ n, P15780929297167843575.a n = A036120 n

end A036120

/-! ## A036120.P2922371956194919279

`(2^n)%19`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036120

/-- `(2^n)%19` -/
def P2922371956194919279.Spec : Prop :=
  ∀ n, (P2922371956194919279.a n : ℤ) = A036120 n

theorem P2922371956194919279.correct : P2922371956194919279.Spec := by
  intro n
  simp only [A036120]

end A036120

/-!
# A036121: 5^n mod 23.

The programs for A036121, the canonical program `A036121.P16306902841640835831` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036121 has offset 0).

The definition of A036121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%23` (program `A036121.P16306902841640835831`, by `A036121.P16306902841640835831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036121.P2920906340134945387

`ogf((1+4x-3x^2+8x^3-6x^4+16x^5-12x^6+9x^7-x^8-5x^9-2x^10+14x^11)/(1-x+x^11-x^12))`
-/

namespace A036121.P2920906340134945387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, 8, -6, 16, -12, 9, -1, -5, -2, 14] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] n

end

end A036121.P2920906340134945387

namespace A036121

/-- `ogf((1+4x-3x^2+8x^3-6x^4+16x^5-12x^6+9x^7-x^8-5x^9-2x^10+14x^11)/(1-x+x^11-x^12))` -/
def P2920906340134945387.Spec : Prop :=
  ∀ n, P2920906340134945387.a n = A036121 n

end A036121

/-! ## A036121.P16306902841640835831

`(5^n)%23`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036121

/-- `(5^n)%23` -/
def P16306902841640835831.Spec : Prop :=
  ∀ n, (P16306902841640835831.a n : ℤ) = A036121 n

theorem P16306902841640835831.correct : P16306902841640835831.Spec := by
  intro n
  simp only [A036121]

end A036121

/-!
# A036122: a(n) = 2^n mod 29.

The programs for A036122, the canonical program `A036122.P17736913460654601855` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036122 has offset 0).

The definition of A036122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%29` (program `A036122.P17736913460654601855`, by `A036122.P17736913460654601855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036122.P17736913460654601855

`(2^n)%29`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036122

/-- `(2^n)%29` -/
def P17736913460654601855.Spec : Prop :=
  ∀ n, (P17736913460654601855.a n : ℤ) = A036122 n

theorem P17736913460654601855.correct : P17736913460654601855.Spec := by
  intro n
  simp only [A036122]

end A036122

/-!
# A036123: a(n) = 3^n mod 31.

The programs for A036123, the canonical program `A036123.P17483493077952965706` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036123 has offset 0).

The definition of A036123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%31` (program `A036123.P17483493077952965706`, by `A036123.P17483493077952965706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036123.P17483493077952965706

`(3^n)%31`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036123

/-- `(3^n)%31` -/
def P17483493077952965706.Spec : Prop :=
  ∀ n, (P17483493077952965706.a n : ℤ) = A036123 n

theorem P17483493077952965706.correct : P17483493077952965706.Spec := by
  intro n
  simp only [A036123]

end A036123

/-!
# A036124: a(n) = 2^n mod 37.

The programs for A036124, the canonical program `A036124.P11133203882345696010` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036124 has offset 0).

The definition of A036124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%37` (program `A036124.P11133203882345696010`, by `A036124.P11133203882345696010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036124.P11133203882345696010

`(2^n)%37`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036124

/-- `(2^n)%37` -/
def P11133203882345696010.Spec : Prop :=
  ∀ n, (P11133203882345696010.a n : ℤ) = A036124 n

theorem P11133203882345696010.correct : P11133203882345696010.Spec := by
  intro n
  simp only [A036124]

end A036124

/-!
# A036125: a(n) = 6^n mod 41.

The programs for A036125, the canonical program `A036125.P12474216132468577645` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036125 has offset 0).

The definition of A036125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%41` (program `A036125.P12474216132468577645`, by `A036125.P12474216132468577645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036125.P12474216132468577645

`(6^n)%41`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036125

/-- `(6^n)%41` -/
def P12474216132468577645.Spec : Prop :=
  ∀ n, (P12474216132468577645.a n : ℤ) = A036125 n

theorem P12474216132468577645.correct : P12474216132468577645.Spec := by
  intro n
  simp only [A036125]

end A036125

/-!
# A036126: a(n) = 3^n mod 43.

The programs for A036126, the canonical program `A036126.P10865939064902742640` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036126 has offset 0).

The definition of A036126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%43` (program `A036126.P10865939064902742640`, by `A036126.P10865939064902742640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036126.P10865939064902742640

`(3^n)%43`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036126

/-- `(3^n)%43` -/
def P10865939064902742640.Spec : Prop :=
  ∀ n, (P10865939064902742640.a n : ℤ) = A036126 n

theorem P10865939064902742640.correct : P10865939064902742640.Spec := by
  intro n
  simp only [A036126]

end A036126

/-!
# A036127: a(n) = 5^n mod 47.

The programs for A036127, the canonical program `A036127.P12291783071185931076` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036127 has offset 0).

The definition of A036127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%47` (program `A036127.P12291783071185931076`, by `A036127.P12291783071185931076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036127.P12291783071185931076

`(5^n)%47`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036127

/-- `(5^n)%47` -/
def P12291783071185931076.Spec : Prop :=
  ∀ n, (P12291783071185931076.a n : ℤ) = A036127 n

theorem P12291783071185931076.correct : P12291783071185931076.Spec := by
  intro n
  simp only [A036127]

end A036127

/-!
# A036128: a(n) = 2^n mod 53.

The programs for A036128, the canonical program `A036128.P15206330615166445422` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036128 has offset 0).

The definition of A036128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%53` (program `A036128.P15206330615166445422`, by `A036128.P15206330615166445422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036128.P15206330615166445422

`(2^n)%53`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036128

/-- `(2^n)%53` -/
def P15206330615166445422.Spec : Prop :=
  ∀ n, (P15206330615166445422.a n : ℤ) = A036128 n

theorem P15206330615166445422.correct : P15206330615166445422.Spec := by
  intro n
  simp only [A036128]

end A036128

/-!
# A036129: a(n) = 2^n mod 59.

The programs for A036129, the canonical program `A036129.P4365365153952852602` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036129 has offset 0).

The definition of A036129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%59` (program `A036129.P4365365153952852602`, by `A036129.P4365365153952852602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036129.P4365365153952852602

`(2^n)%59`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036129

/-- `(2^n)%59` -/
def P4365365153952852602.Spec : Prop :=
  ∀ n, (P4365365153952852602.a n : ℤ) = A036129 n

theorem P4365365153952852602.correct : P4365365153952852602.Spec := by
  intro n
  simp only [A036129]

end A036129

/-!
# A036130: a(n) = 2^n mod 61.

The programs for A036130, the canonical program `A036130.P2627222514919550872` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036130 has offset 0).

The definition of A036130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%61` (program `A036130.P2627222514919550872`, by `A036130.P2627222514919550872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036130.P2627222514919550872

`(2^n)%61`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036130

/-- `(2^n)%61` -/
def P2627222514919550872.Spec : Prop :=
  ∀ n, (P2627222514919550872.a n : ℤ) = A036130 n

theorem P2627222514919550872.correct : P2627222514919550872.Spec := by
  intro n
  simp only [A036130]

end A036130

/-!
# A036131: a(n) = 2^n mod 67.

The programs for A036131, the canonical program `A036131.P15007461932718324987` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036131 has offset 0).

The definition of A036131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%67` (program `A036131.P15007461932718324987`, by `A036131.P15007461932718324987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036131.P15007461932718324987

`(2^n)%67`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036131

/-- `(2^n)%67` -/
def P15007461932718324987.Spec : Prop :=
  ∀ n, (P15007461932718324987.a n : ℤ) = A036131 n

theorem P15007461932718324987.correct : P15007461932718324987.Spec := by
  intro n
  simp only [A036131]

end A036131

/-!
# A036132: a(n) = 7^n mod 71.

The programs for A036132, the canonical program `A036132.P18092555301238853124` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036132 has offset 0).

The definition of A036132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n)%71` (program `A036132.P18092555301238853124`, by `A036132.P18092555301238853124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036132.P18092555301238853124

`(7^n)%71`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036132

/-- `(7^n)%71` -/
def P18092555301238853124.Spec : Prop :=
  ∀ n, (P18092555301238853124.a n : ℤ) = A036132 n

theorem P18092555301238853124.correct : P18092555301238853124.Spec := by
  intro n
  simp only [A036132]

end A036132

/-!
# A036133: a(n) = 5^n mod 73.

The programs for A036133, the canonical program `A036133.P7728849277224787820` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036133 has offset 0).

The definition of A036133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%73` (program `A036133.P7728849277224787820`, by `A036133.P7728849277224787820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036133.P7728849277224787820

`(5^n)%73`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036133

/-- `(5^n)%73` -/
def P7728849277224787820.Spec : Prop :=
  ∀ n, (P7728849277224787820.a n : ℤ) = A036133 n

theorem P7728849277224787820.correct : P7728849277224787820.Spec := by
  intro n
  simp only [A036133]

end A036133

/-!
# A036134: a(n) = 3^n mod 79.

The programs for A036134, the canonical program `A036134.P17049347771642228609` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036134 has offset 0).

The definition of A036134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%79` (program `A036134.P17049347771642228609`, by `A036134.P17049347771642228609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036134.P17049347771642228609

`(3^n)%79`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036134

/-- `(3^n)%79` -/
def P17049347771642228609.Spec : Prop :=
  ∀ n, (P17049347771642228609.a n : ℤ) = A036134 n

theorem P17049347771642228609.correct : P17049347771642228609.Spec := by
  intro n
  simp only [A036134]

end A036134

/-!
# A036135: a(n) = 2^n mod 83.

The programs for A036135, the canonical program `A036135.P3040358797091947527` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036135 has offset 0).

The definition of A036135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%83` (program `A036135.P3040358797091947527`, by `A036135.P3040358797091947527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036135.P3040358797091947527

`(2^n)%83`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036135

/-- `(2^n)%83` -/
def P3040358797091947527.Spec : Prop :=
  ∀ n, (P3040358797091947527.a n : ℤ) = A036135 n

theorem P3040358797091947527.correct : P3040358797091947527.Spec := by
  intro n
  simp only [A036135]

end A036135

/-!
# A036136: a(n) = 3^n mod 89.

The programs for A036136, the canonical program `A036136.P11108572384740334081` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036136 has offset 0).

The definition of A036136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%89` (program `A036136.P11108572384740334081`, by `A036136.P11108572384740334081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036136.P11108572384740334081

`(3^n)%89`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036136

/-- `(3^n)%89` -/
def P11108572384740334081.Spec : Prop :=
  ∀ n, (P11108572384740334081.a n : ℤ) = A036136 n

theorem P11108572384740334081.correct : P11108572384740334081.Spec := by
  intro n
  simp only [A036136]

end A036136

/-!
# A036137: a(n) = 5^n mod 97.

The programs for A036137, the canonical program `A036137.P17137053635526079946` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036137 has offset 0).

The definition of A036137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%97` (program `A036137.P17137053635526079946`, by `A036137.P17137053635526079946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036137.P17137053635526079946

`(5^n)%97`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036137

/-- `(5^n)%97` -/
def P17137053635526079946.Spec : Prop :=
  ∀ n, (P17137053635526079946.a n : ℤ) = A036137 n

theorem P17137053635526079946.correct : P17137053635526079946.Spec := by
  intro n
  simp only [A036137]

end A036137

/-!
# A036138: a(n) = 2^n mod 101.

The programs for A036138, the canonical program `A036138.P113471100098672117` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036138 has offset 0).

The definition of A036138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%101` (program `A036138.P113471100098672117`, by `A036138.P113471100098672117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036138.P113471100098672117

`(2^n)%101`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036138

/-- `(2^n)%101` -/
def P113471100098672117.Spec : Prop :=
  ∀ n, (P113471100098672117.a n : ℤ) = A036138 n

theorem P113471100098672117.correct : P113471100098672117.Spec := by
  intro n
  simp only [A036138]

end A036138

/-!
# A036139: a(n) = 5^n mod 103.

The programs for A036139, the canonical program `A036139.P11495938172764154972` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036139 has offset 0).

The definition of A036139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%103` (program `A036139.P11495938172764154972`, by `A036139.P11495938172764154972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036139.P11495938172764154972

`(5^n)%103`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036139

/-- `(5^n)%103` -/
def P11495938172764154972.Spec : Prop :=
  ∀ n, (P11495938172764154972.a n : ℤ) = A036139 n

theorem P11495938172764154972.correct : P11495938172764154972.Spec := by
  intro n
  simp only [A036139]

end A036139

/-!
# A036140: a(n) = 2^n mod 107.

The programs for A036140, the canonical program `A036140.P11309882413232153984` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036140 has offset 0).

The definition of A036140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%107` (program `A036140.P11309882413232153984`, by `A036140.P11309882413232153984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036140.P11309882413232153984

`(2^n)%107`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036140

/-- `(2^n)%107` -/
def P11309882413232153984.Spec : Prop :=
  ∀ n, (P11309882413232153984.a n : ℤ) = A036140 n

theorem P11309882413232153984.correct : P11309882413232153984.Spec := by
  intro n
  simp only [A036140]

end A036140

/-!
# A036141: a(n) = 6^n mod 109.

The programs for A036141, the canonical program `A036141.P13965460200491208761` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036141 has offset 0).

The definition of A036141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%109` (program `A036141.P13965460200491208761`, by `A036141.P13965460200491208761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036141.P13965460200491208761

`(6^n)%109`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036141

/-- `(6^n)%109` -/
def P13965460200491208761.Spec : Prop :=
  ∀ n, (P13965460200491208761.a n : ℤ) = A036141 n

theorem P13965460200491208761.correct : P13965460200491208761.Spec := by
  intro n
  simp only [A036141]

end A036141

/-!
# A036142: 3^n mod 113.

The programs for A036142, the canonical program `A036142.P765184680664576914` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036142 has offset 0).

The definition of A036142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%113` (program `A036142.P765184680664576914`, by `A036142.P765184680664576914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036142.P765184680664576914

`(3^n)%113`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036142

/-- `(3^n)%113` -/
def P765184680664576914.Spec : Prop :=
  ∀ n, (P765184680664576914.a n : ℤ) = A036142 n

theorem P765184680664576914.correct : P765184680664576914.Spec := by
  intro n
  simp only [A036142]

end A036142

/-!
# A036143: a(n) = 3^n mod 127.

The programs for A036143, the canonical program `A036143.P1826222271726069238` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036143 has offset 0).

The definition of A036143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%127` (program `A036143.P1826222271726069238`, by `A036143.P1826222271726069238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036143.P1826222271726069238

`(3^n)%127`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036143

/-- `(3^n)%127` -/
def P1826222271726069238.Spec : Prop :=
  ∀ n, (P1826222271726069238.a n : ℤ) = A036143 n

theorem P1826222271726069238.correct : P1826222271726069238.Spec := by
  intro n
  simp only [A036143]

end A036143

/-!
# A036144: a(n) = 2^n mod 131.

The programs for A036144, the canonical program `A036144.P10257883119281097069` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036144 has offset 0).

The definition of A036144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%131` (program `A036144.P10257883119281097069`, by `A036144.P10257883119281097069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036144.P10257883119281097069

`(2^n)%131`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036144

/-- `(2^n)%131` -/
def P10257883119281097069.Spec : Prop :=
  ∀ n, (P10257883119281097069.a n : ℤ) = A036144 n

theorem P10257883119281097069.correct : P10257883119281097069.Spec := by
  intro n
  simp only [A036144]

end A036144

/-!
# A036145: 3^n mod 137.

The programs for A036145, the canonical program `A036145.P16411171130322296136` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036145 has offset 0).

The definition of A036145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%137` (program `A036145.P16411171130322296136`, by `A036145.P16411171130322296136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036145.P16411171130322296136

`(3^n)%137`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036145

/-- `(3^n)%137` -/
def P16411171130322296136.Spec : Prop :=
  ∀ n, (P16411171130322296136.a n : ℤ) = A036145 n

theorem P16411171130322296136.correct : P16411171130322296136.Spec := by
  intro n
  simp only [A036145]

end A036145

/-!
# A036146: a(n) = 2^n mod 139.

The programs for A036146, the canonical program `A036146.P13068559137613469040` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036146 has offset 0).

The definition of A036146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%139` (program `A036146.P13068559137613469040`, by `A036146.P13068559137613469040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036146.P13068559137613469040

`(2^n)%139`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036146

/-- `(2^n)%139` -/
def P13068559137613469040.Spec : Prop :=
  ∀ n, (P13068559137613469040.a n : ℤ) = A036146 n

theorem P13068559137613469040.correct : P13068559137613469040.Spec := by
  intro n
  simp only [A036146]

end A036146

/-!
# A036147: a(n) = 2^n mod 149.

The programs for A036147, the canonical program `A036147.P4528821148869835246` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036147 has offset 0).

The definition of A036147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%149` (program `A036147.P4528821148869835246`, by `A036147.P4528821148869835246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036147.P4528821148869835246

`(2^n)%149`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036147

/-- `(2^n)%149` -/
def P4528821148869835246.Spec : Prop :=
  ∀ n, (P4528821148869835246.a n : ℤ) = A036147 n

theorem P4528821148869835246.correct : P4528821148869835246.Spec := by
  intro n
  simp only [A036147]

end A036147

/-!
# A036148: 6^n mod 151.

The programs for A036148, the canonical program `A036148.P5014362606160804771` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036148 has offset 0).

The definition of A036148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%151` (program `A036148.P5014362606160804771`, by `A036148.P5014362606160804771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036148.P5014362606160804771

`(6^n)%151`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036148

/-- `(6^n)%151` -/
def P5014362606160804771.Spec : Prop :=
  ∀ n, (P5014362606160804771.a n : ℤ) = A036148 n

theorem P5014362606160804771.correct : P5014362606160804771.Spec := by
  intro n
  simp only [A036148]

end A036148

/-!
# A036149: 5^n mod 157.

The programs for A036149, the canonical program `A036149.P9483514004023612997` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036149 has offset 0).

The definition of A036149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%157` (program `A036149.P9483514004023612997`, by `A036149.P9483514004023612997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036149.P9483514004023612997

`(5^n)%157`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036149

/-- `(5^n)%157` -/
def P9483514004023612997.Spec : Prop :=
  ∀ n, (P9483514004023612997.a n : ℤ) = A036149 n

theorem P9483514004023612997.correct : P9483514004023612997.Spec := by
  intro n
  simp only [A036149]

end A036149

/-!
# A036150: a(n) = 2^n mod 163.

The programs for A036150, the canonical program `A036150.P13381635249428251064` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036150 has offset 0).

The definition of A036150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%163` (program `A036150.P13381635249428251064`, by `A036150.P13381635249428251064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036150.P13381635249428251064

`(2^n)%163`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036150

/-- `(2^n)%163` -/
def P13381635249428251064.Spec : Prop :=
  ∀ n, (P13381635249428251064.a n : ℤ) = A036150 n

theorem P13381635249428251064.correct : P13381635249428251064.Spec := by
  intro n
  simp only [A036150]

end A036150

/-!
# A036151: 5^n mod 167.

The programs for A036151, the canonical program `A036151.P9959417574578368742` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036151 has offset 0).

The definition of A036151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%167` (program `A036151.P9959417574578368742`, by `A036151.P9959417574578368742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036151.P9959417574578368742

`(5^n)%167`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036151

/-- `(5^n)%167` -/
def P9959417574578368742.Spec : Prop :=
  ∀ n, (P9959417574578368742.a n : ℤ) = A036151 n

theorem P9959417574578368742.correct : P9959417574578368742.Spec := by
  intro n
  simp only [A036151]

end A036151

/-!
# A036152: a(n) = 2^n mod 173.

The programs for A036152, the canonical program `A036152.P15191655727647000774` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036152 has offset 0).

The definition of A036152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%173` (program `A036152.P15191655727647000774`, by `A036152.P15191655727647000774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036152.P15191655727647000774

`(2^n)%173`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036152

/-- `(2^n)%173` -/
def P15191655727647000774.Spec : Prop :=
  ∀ n, (P15191655727647000774.a n : ℤ) = A036152 n

theorem P15191655727647000774.correct : P15191655727647000774.Spec := by
  intro n
  simp only [A036152]

end A036152

/-!
# A036153: a(n) = 2^n mod 179.

The programs for A036153, the canonical program `A036153.P14553206894008885197` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036153 has offset 0).

The definition of A036153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%179` (program `A036153.P14553206894008885197`, by `A036153.P14553206894008885197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036153.P14553206894008885197

`(2^n)%179`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036153

/-- `(2^n)%179` -/
def P14553206894008885197.Spec : Prop :=
  ∀ n, (P14553206894008885197.a n : ℤ) = A036153 n

theorem P14553206894008885197.correct : P14553206894008885197.Spec := by
  intro n
  simp only [A036153]

end A036153

/-!
# A036154: a(n) = 2^n mod 181.

The programs for A036154, the canonical program `A036154.P2957666018490498882` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036154 has offset 0).

The definition of A036154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%181` (program `A036154.P2957666018490498882`, by `A036154.P2957666018490498882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036154.P2957666018490498882

`(2^n)%181`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036154

/-- `(2^n)%181` -/
def P2957666018490498882.Spec : Prop :=
  ∀ n, (P2957666018490498882.a n : ℤ) = A036154 n

theorem P2957666018490498882.correct : P2957666018490498882.Spec := by
  intro n
  simp only [A036154]

end A036154

/-!
# A036155: 19^n mod 191.

The programs for A036155, the canonical program `A036155.P5039273119074518147` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036155 has offset 0).

The definition of A036155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(19^n)%191` (program `A036155.P5039273119074518147`, by `A036155.P5039273119074518147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036155.P5039273119074518147

`(19^n)%191`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036155

/-- `(19^n)%191` -/
def P5039273119074518147.Spec : Prop :=
  ∀ n, (P5039273119074518147.a n : ℤ) = A036155 n

theorem P5039273119074518147.correct : P5039273119074518147.Spec := by
  intro n
  simp only [A036155]

end A036155

/-!
# A036156: 5^n mod 193.

The programs for A036156, the canonical program `A036156.P15016233991787451228` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036156 has offset 0).

The definition of A036156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%193` (program `A036156.P15016233991787451228`, by `A036156.P15016233991787451228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036156.P15016233991787451228

`(5^n)%193`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036156

/-- `(5^n)%193` -/
def P15016233991787451228.Spec : Prop :=
  ∀ n, (P15016233991787451228.a n : ℤ) = A036156 n

theorem P15016233991787451228.correct : P15016233991787451228.Spec := by
  intro n
  simp only [A036156]

end A036156

/-!
# A036157: a(n) = 2^n mod 197.

The programs for A036157, the canonical program `A036157.P7438658862337404426` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036157 has offset 0).

The definition of A036157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%197` (program `A036157.P7438658862337404426`, by `A036157.P7438658862337404426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036157.P7438658862337404426

`(2^n)%197`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036157

/-- `(2^n)%197` -/
def P7438658862337404426.Spec : Prop :=
  ∀ n, (P7438658862337404426.a n : ℤ) = A036157 n

theorem P7438658862337404426.correct : P7438658862337404426.Spec := by
  intro n
  simp only [A036157]

end A036157

/-!
# A036158: 3^n mod 199.

The programs for A036158, the canonical program `A036158.P9772282552789363832` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036158 has offset 0).

The definition of A036158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%199` (program `A036158.P9772282552789363832`, by `A036158.P9772282552789363832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036158.P9772282552789363832

`(3^n)%199`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036158

/-- `(3^n)%199` -/
def P9772282552789363832.Spec : Prop :=
  ∀ n, (P9772282552789363832.a n : ℤ) = A036158 n

theorem P9772282552789363832.correct : P9772282552789363832.Spec := by
  intro n
  simp only [A036158]

end A036158

/-!
# A036159: a(n) = 2^n mod 211.

The programs for A036159, the canonical program `A036159.P16824762950843874623` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036159 has offset 0).

The definition of A036159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%211` (program `A036159.P16824762950843874623`, by `A036159.P16824762950843874623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036159.P16824762950843874623

`(2^n)%211`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036159

/-- `(2^n)%211` -/
def P16824762950843874623.Spec : Prop :=
  ∀ n, (P16824762950843874623.a n : ℤ) = A036159 n

theorem P16824762950843874623.correct : P16824762950843874623.Spec := by
  intro n
  simp only [A036159]

end A036159

/-!
# A036160: a(n) = 3^n mod 223.

The programs for A036160, the canonical program `A036160.P11461897667379019939` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036160 has offset 0).

The definition of A036160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%223` (program `A036160.P11461897667379019939`, by `A036160.P11461897667379019939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036160.P11461897667379019939

`(3^n)%223`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036160

/-- `(3^n)%223` -/
def P11461897667379019939.Spec : Prop :=
  ∀ n, (P11461897667379019939.a n : ℤ) = A036160 n

theorem P11461897667379019939.correct : P11461897667379019939.Spec := by
  intro n
  simp only [A036160]

end A036160

/-!
# A036161: a(n) = 2^n mod 227.

The programs for A036161, the canonical program `A036161.P12898974318650252481` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036161 has offset 0).

The definition of A036161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%227` (program `A036161.P12898974318650252481`, by `A036161.P12898974318650252481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036161.P12898974318650252481

`(2^n)%227`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036161

/-- `(2^n)%227` -/
def P12898974318650252481.Spec : Prop :=
  ∀ n, (P12898974318650252481.a n : ℤ) = A036161 n

theorem P12898974318650252481.correct : P12898974318650252481.Spec := by
  intro n
  simp only [A036161]

end A036161

/-!
# A036162: a(n) = 6^n mod 229.

The programs for A036162, the canonical program `A036162.P10468392307070467281` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036162 has offset 0).

The definition of A036162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%229` (program `A036162.P10468392307070467281`, by `A036162.P10468392307070467281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036162.P10468392307070467281

`(6^n)%229`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036162

/-- `(6^n)%229` -/
def P10468392307070467281.Spec : Prop :=
  ∀ n, (P10468392307070467281.a n : ℤ) = A036162 n

theorem P10468392307070467281.correct : P10468392307070467281.Spec := by
  intro n
  simp only [A036162]

end A036162

/-!
# A036163: Log base 3 (n) mod 17.

The programs for A036163, there is no canonical definition to state claims against.
-/

/-! ## A036163.P6780768120869801788

`A054503(n+35)`
-/

namespace A036163.P6780768120869801788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 35)

end

end A036163.P6780768120869801788

/-!
# A036164: Log base 5 (n) mod 23.

The programs for A036164, there is no canonical definition to state claims against.
-/

/-! ## A036164.P8493724867184136672

`A054503(n+69)`
-/

namespace A036164.P8493724867184136672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 69)

end

end A036164.P8493724867184136672

/-!
# A036165: Log base 2 (n) mod 29.

The programs for A036165, there is no canonical definition to state claims against.
-/

/-! ## A036165.P15269437826488789097

`A054503(n+91)`
-/

namespace A036165.P15269437826488789097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 91)

end

end A036165.P15269437826488789097

/-!
# A036166: Log base 3 (n) mod 31.

The programs for A036166, there is no canonical definition to state claims against.
-/

/-! ## A036166.P3849796995604402534

`A054503(119+n)`
-/

namespace A036166.P3849796995604402534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (119 + n)

end

end A036166.P3849796995604402534

/-!
# A036168: Log base 6 (n) mod 41.

The programs for A036168, there is no canonical definition to state claims against.
-/

/-! ## A036168.P3089540873916321972

`A054503(185+n)`
-/

namespace A036168.P3089540873916321972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (185 + n)

end

end A036168.P3089540873916321972

/-!
# A036177: Log base 3 (n) mod 79.

The programs for A036177, there is no canonical definition to state claims against.
-/

/-! ## A036177.P6464983082917765216

`A054503(691+n)`
-/

namespace A036177.P6464983082917765216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (691 + n)

end

end A036177.P6464983082917765216

/-!
# A036178: Log base 2 (n) mod 83.

The programs for A036178, there is no canonical definition to state claims against.
-/

/-! ## A036178.P15409653992954702912

`A054503(769+n)`
-/

namespace A036178.P15409653992954702912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (769 + n)

end

end A036178.P15409653992954702912

/-!
# A036190: Log base 2 (n) mod 149.

The programs for A036190, there is no canonical definition to state claims against.
-/

/-! ## A036190.P14949086006304122586

`and(A133630(n+4), A142147(n!))`
-/

namespace A036190.P14949086006304122586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133630 (n + 4)) (A142147 (Nat.factorial n))

end

end A036190.P14949086006304122586

/-!
# A036196: Log base 2 (n) mod 179.

The programs for A036196, there is no canonical definition to state claims against.
-/

/-! ## A036196.P9286176788853265125

`A165085(lcm(A005408(n), A165104(n+5))-4)`
-/

namespace A036196.P9286176788853265125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165085 (Int.lcm (A005408 n) (A165104 (n + 5)) - 4)

end

end A036196.P9286176788853265125

/-!
# A036197: Log base 2 (n) mod 181.

The programs for A036197, there is no canonical definition to state claims against.
-/

/-! ## A036197.P9651831722609088301

`A238896(or(∏{e}[n+1, #+1], A077526(n+1)))`
-/

namespace A036197.P9651831722609088301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238896 (Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A077526 (n + 1))).toNat

end

end A036197.P9651831722609088301

