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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A180300: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-10.

The programs for A180300, there is no canonical definition to state claims against.
-/

/-! ## A180300.P7777975560062162845

`A180281(A056000(n+7))`
-/

namespace A180300.P7777975560062162845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A056000 (n + 7)).toNat

end

end A180300.P7777975560062162845

/-! ## A180300.P17763498685061130642

`A180281(Δ[Δ[A264447(n)]])`
-/

namespace A180300.P17763498685061130642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (f1 (n + 1) - f1 n).toNat

end

end A180300.P17763498685061130642

/-! ## A180300.P3159387500474779530

`A180281(A000124(n+11)-11)`
-/

namespace A180300.P3159387500474779530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 11) - 11).toNat

end

end A180300.P3159387500474779530

/-! ## A180300.P2805245033423124437

`A180281(A000326(n+8)-(n+6)²)`
-/

namespace A180300.P2805245033423124437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000326 (n + 8) - ((n + 6) ^ 2 : ℤ)).toNat

end

end A180300.P2805245033423124437

/-! ## A180300.P16546964088926539050

`A180281(2*n+A000096(n+8)+12)`
-/

namespace A180300.P16546964088926539050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 ((2 * n : ℤ) + (A000096 (n + 8) + 12)).toNat

end

end A180300.P16546964088926539050

/-!
# A180302: Sequence of primes separated by [sequence of prime] elements. 2, [find 2nd prime after 2 = ] 5, [find 3rd prime after 5 =] 13, [find 5th prime after 13 =] 61, ..., etc.

The programs for A180302, there is no canonical definition to state claims against.
-/

/-! ## A180302.P2937573194826807834

`p?[A084410(n+1)]`
-/

namespace A180302.P2937573194826807834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180302.P2937573194826807834

/-! ## A180302.P7487246425066148130

`A008578(∑[p?[floor(2*n/3)]])`
-/

namespace A180302.P7487246425066148130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180302.P7487246425066148130

/-! ## A180302.P3853965488969492124

`A000040(∑[p?[floor(2*n/3)]]-1)`
-/

namespace A180302.P3853965488969492124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A180302.P3853965488969492124

/-! ## A180302.P3273719269613173328

`A182986(∑[p?[a(n-1)+2]])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A180302.P3273719269613173328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180302.P3273719269613173328

/-! ## A180302.P14813097222139801995

`A158611(∑[p?[a(n-1)+2]])` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A180302.P14813097222139801995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180302.P14813097222139801995

/-!
# A180303: a(n) = smallest number such that 3^n-2^a(n) is prime, or -1 if no such number exists.

The programs for A180303, there is no canonical definition to state claims against.
-/

/-! ## A180303.P251047600082021994

`A351465(A013604(n+1))`
-/

namespace A180303.P251047600082021994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351465 (A013604 (n + 1)).toNat

end

end A180303.P251047600082021994

/-! ## A180303.P13667069890577523630

`A351465(A000244(n)-A104088(n+1)%A000244(n))`
-/

namespace A180303.P13667069890577523630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351465 (A000244 n - Int.tmod (A104088 (n + 1)) (A000244 n)).toNat

end

end A180303.P13667069890577523630

/-!
# A180304: Sum of consecutive equal values of floor(sqrt(A000040(n))).

The programs for A180304, the canonical program `A180304.P14450088933568604660` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180304 has offset 1).

The definition of A180304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180304.P5609415298009019646

`(n+1)*A014085(n+1)`
-/

namespace A180304.P5609415298009019646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014085 (n + 1)

end

end A180304.P5609415298009019646

namespace A180304

/-- `(n+1)*A014085(n+1)` -/
def P5609415298009019646.Spec : Prop :=
  ∀ n, P5609415298009019646.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P17249372860793891927

`(n+1)*(A104481(n+1)+1)`
-/

namespace A180304.P17249372860793891927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A104481 (n + 1) + 1)

end

end A180304.P17249372860793891927

namespace A180304

/-- `(n+1)*(A104481(n+1)+1)` -/
def P17249372860793891927.Spec : Prop :=
  ∀ n, P17249372860793891927.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P14450088933568604660

`(n+1)*Δ[A161187(n+1)-n]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A180304

/-- `(n+1)*Δ[A161187(n+1)-n]` -/
def P14450088933568604660.Spec : Prop :=
  ∀ n, P14450088933568604660.a n = A180304 (n + 1)

theorem P14450088933568604660.correct : P14450088933568604660.Spec := by
  intro n
  simp only [A180304, Nat.add_sub_cancel]

end A180304

/-! ## A180304.P8780718167645400837

`(n+1)*Δ[A038107(n+1)]`
-/

namespace A180304.P8780718167645400837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A180304.P8780718167645400837

namespace A180304

/-- `(n+1)*Δ[A038107(n+1)]` -/
def P8780718167645400837.Spec : Prop :=
  ∀ n, P8780718167645400837.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P14615094209779830750

`(A104477(2*n+1)+1)*(n+1)`
-/

namespace A180304.P14615094209779830750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104477 (2 * n + 1) + 1) * (n + 1 : ℤ)

end

end A180304.P14615094209779830750

namespace A180304

/-- `(A104477(2*n+1)+1)*(n+1)` -/
def P14615094209779830750.Spec : Prop :=
  ∀ n, P14615094209779830750.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P15923349934054219078

`A014085(A110514(2*n))*A110514(2*n)`
-/

namespace A180304.P15923349934054219078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A180304.P15923349934054219078

namespace A180304

/-- `A014085(A110514(2*n))*A110514(2*n)` -/
def P15923349934054219078.Spec : Prop :=
  ∀ n, P15923349934054219078.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P7288720582032155813

`(n+1)*Δ[A000720((n+1)²)]`
-/

namespace A180304.P7288720582032155813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A180304.P7288720582032155813

namespace A180304

/-- `(n+1)*Δ[A000720((n+1)²)]` -/
def P7288720582032155813.Spec : Prop :=
  ∀ n, P7288720582032155813.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P16638054706133429562

`(n+1)*A213649(A000720(A007491(n+1)))`
-/

namespace A180304.P16638054706133429562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A213649 (A000720 (A007491 (n + 1)).toNat).toNat

end

end A180304.P16638054706133429562

namespace A180304

/-- `(n+1)*A213649(A000720(A007491(n+1)))` -/
def P16638054706133429562.Spec : Prop :=
  ∀ n, P16638054706133429562.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P8520746166571968608

`(n+1)*A189025((n+2)²)`
-/

namespace A180304.P8520746166571968608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189025 ((n + 2) ^ 2)

end

end A180304.P8520746166571968608

namespace A180304

/-- `(n+1)*A189025((n+2)²)` -/
def P8520746166571968608.Spec : Prop :=
  ∀ n, P8520746166571968608.a n = A180304 (n + 1)

end A180304

/-! ## A180304.P10117890198432327198

`(n+1)*Δ[A036234((n+1)²)]`
-/

namespace A180304.P10117890198432327198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A180304.P10117890198432327198

namespace A180304

/-- `(n+1)*Δ[A036234((n+1)²)]` -/
def P10117890198432327198.Spec : Prop :=
  ∀ n, P10117890198432327198.a n = A180304 (n + 1)

end A180304

/-!
# A180305: G.f.: 1/(1 + x*d/dx log(eta(x))), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

The programs for A180305, there is no canonical definition to state claims against.
-/

/-! ## A180305.P286638767843054959

`A157271(A279215(n)+floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A180305.P286638767843054959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A279215 n + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

end

end A180305.P286638767843054959

/-! ## A180305.P14420326234891248095

`A157271(A279215(n)+A028242(n))`
-/

namespace A180305.P14420326234891248095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A279215 n + A028242 n).toNat

end

end A180305.P14420326234891248095

/-! ## A180305.P14445052249095815886

`A157271(A279215(n)+A060026(n))`
-/

namespace A180305.P14445052249095815886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A279215 n + A060026 n).toNat

end

end A180305.P14445052249095815886

/-!
# A180306: a(n) is the largest integer k for which the Frobenius equation a_1*x_1 + a_2*x_2 + ... + a_n*x_n == k has no nonnegative integer solutions, where the a_i are consecutive primes beginning with the n-th prime.

The programs for A180306, there is no canonical definition to state claims against.
-/

/-! ## A180306.P15366291703993250167

`A333266(n+1)-A008864(n+1)`
-/

namespace A180306.P15366291703993250167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - A008864 (n + 1)

end

end A180306.P15366291703993250167

/-! ## A180306.P14732661712953493709

`A333266(n+1)-A028815(n+1)`
-/

namespace A180306.P14732661712953493709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - A028815 (n + 1)

end

end A180306.P14732661712953493709

/-! ## A180306.P12873422583729067107

`A333266(n+1)-(A000040(n+1)+1)`
-/

namespace A180306.P12873422583729067107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - (A000040 (n + 1) + 1)

end

end A180306.P12873422583729067107

/-! ## A180306.P5181074078215173621

`A333266(n+1)-(A006093(n+1)+2)`
-/

namespace A180306.P5181074078215173621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - (A006093 (n + 1) + 2)

end

end A180306.P5181074078215173621

/-! ## A180306.P15358874414678173124

`A333266(n+1)-record[A000010(n+1)+2]`
-/

namespace A180306.P15358874414678173124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180306.P15358874414678173124

/-! ## A180306.P2362661289480048226

`A333266(n+1)-(record[A006530(n+2)]+1)`
-/

namespace A180306.P2362661289480048226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A180306.P2362661289480048226

/-! ## A180306.P5012274306606715424

`A333266(n+1)-(record[A020639(n+2)]+1)`
-/

namespace A180306.P5012274306606715424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A180306.P5012274306606715424

/-! ## A180306.P1499456465387312253

`A333266(n+1)-A000203(Δ[A007504(n)])`
-/

namespace A180306.P1499456465387312253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - A000203 (f1 (n + 1) - f1 n).toNat

end

end A180306.P1499456465387312253

/-! ## A180306.P12992354983860111259

`A333266(n+1)-A033634(A000040(n+1))`
-/

namespace A180306.P12992354983860111259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - A033634 (A000040 (n + 1)).toNat

end

end A180306.P12992354983860111259

/-! ## A180306.P797788927744676112

`A333266(n+1)-A000203(A008578(n+2))`
-/

namespace A180306.P797788927744676112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333266 (n + 1) - A000203 (A008578 (n + 2)).toNat

end

end A180306.P797788927744676112

/-!
# A180312: Number of solutions to n = x + 4*y + 4*z in triangular numbers.

The programs for A180312, there is no canonical definition to state claims against.
-/

/-! ## A180312.P2438742652715488430

`A226253(n)%A123932(A000048(n))`
-/

namespace A180312.P2438742652715488430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226253 n) (A123932 (A000048 n).toNat)

end

end A180312.P2438742652715488430

/-! ## A180312.P2203464086201265007

`and(A103947(A157447(n+1)), A226253(n))`
-/

namespace A180312.P2203464086201265007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103947 (A157447 (n + 1)).toNat) (A226253 n)

end

end A180312.P2203464086201265007

/-! ## A180312.P17933053710676761970

`and(A103947(A157475(n+1)), A226253(n))`
-/

namespace A180312.P17933053710676761970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103947 (A157475 (n + 1)).toNat) (A226253 n)

end

end A180312.P17933053710676761970

/-! ## A180312.P14070385973319309101

`and(A165024(A008585(n+4)), A226253(n))`
-/

namespace A180312.P14070385973319309101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165024 (A008585 (n + 4)).toNat) (A226253 n)

end

end A180312.P14070385973319309101

/-! ## A180312.P4473455283942656735

`and(A226253(n), A276858(A003376(2*(n+2))))`
-/

namespace A180312.P4473455283942656735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226253 n) (A276858 (A003376 (2 * (n + 2))).toNat)

end

end A180312.P4473455283942656735

/-!
# A180313: A sequence a(n) such that a(n+1)^2 - a(n)^2 are perfect squares.

The programs for A180313, there is no canonical definition to state claims against.
-/

/-! ## A180313.P6897814184348710514

`17*a(n-2)` with `a(0)=3, a(1)=5, a(2)=13`
-/

namespace A180313.P6897814184348710514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 13] fun n a =>
  17 * a (n - 2)

end

end A180313.P6897814184348710514

/-!
# A180315: AbsoluteValue(Numerator(Bernoulli(2n))) mod denominator(Bernoulli(2n)).

The programs for A180315, there is no canonical definition to state claims against.
-/

/-! ## A180315.P17634060530992594309

`abs(A000367(n)%A002445(n))`
-/

namespace A180315.P17634060530992594309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000367 n) (A002445 n)|

end

end A180315.P17634060530992594309

/-! ## A180315.P7347434116527001353

`abs(A027641(2*n)%A002445(n))`
-/

namespace A180315.P7347434116527001353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A027641 (2 * n)) (A002445 n)|

end

end A180315.P7347434116527001353

/-! ## A180315.P12319114065861625488

`abs(A164555(2*n)%A002445(n))`
-/

namespace A180315.P12319114065861625488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A164555 (2 * n)) (A002445 n)|

end

end A180315.P12319114065861625488

/-! ## A180315.P8661302459643471560

`abs(A176327(2*n)%A002445(n))`
-/

namespace A180315.P8661302459643471560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A176327 (2 * n)) (A002445 n)|

end

end A180315.P8661302459643471560

/-! ## A180315.P7769254621255091453

`abs(A051716(2*n+1)%A002445(n))`
-/

namespace A180315.P7769254621255091453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A051716 (2 * n + 1)) (A002445 n)|

end

end A180315.P7769254621255091453

/-! ## A180315.P13330324525786732590

`abs(A027641(2*n))%A027642(2*n)`
-/

namespace A180315.P13330324525786732590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A027641 (2 * n)| (A027642 (2 * n))

end

end A180315.P13330324525786732590

/-! ## A180315.P17395893611346509922

`abs(A164555(2*n))%A027642(2*n)`
-/

namespace A180315.P17395893611346509922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A164555 (2 * n)| (A027642 (2 * n))

end

end A180315.P17395893611346509922

/-! ## A180315.P3214317977521999074

`abs(A000367(n))%A027642(A005843(n))`
-/

namespace A180315.P3214317977521999074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A000367 n| (A027642 (A005843 n).toNat)

end

end A180315.P3214317977521999074

/-!
# A180316: Concatenation of n and A008954(n).

The programs for A180316, the canonical program `A180316.P16574413024367403363` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180316 has offset 0).

The definition of A180316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180316.P16574413024367403363

`∑[n]%10+10*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180316

/-- `∑[n]%10+10*n` -/
def P16574413024367403363.Spec : Prop :=
  ∀ n, (P16574413024367403363.a n : ℤ) = A180316 n

theorem P16574413024367403363.correct : P16574413024367403363.Spec := by
  intro n
  simp only [A180316]

end A180316

/-! ## A180316.P5607068523126282510

`10*n+A008954(n)`
-/

namespace A180316.P5607068523126282510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + A008954 n

end

end A180316.P5607068523126282510

namespace A180316

/-- `10*n+A008954(n)` -/
def P5607068523126282510.Spec : Prop :=
  ∀ n, P5607068523126282510.a n = A180316 n

end A180316

/-! ## A180316.P3839009080638538620

`A008954(n)+A008592(n)`
-/

namespace A180316.P3839009080638538620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008954 n + A008592 n

end

end A180316.P3839009080638538620

namespace A180316

/-- `A008954(n)+A008592(n)` -/
def P3839009080638538620.Spec : Prop :=
  ∀ n, P3839009080638538620.a n = A180316 n

end A180316

/-! ## A180316.P9042408045470175441

`A008592(n)+A000217(n)%10`
-/

namespace A180316.P9042408045470175441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + Int.tmod (A000217 n) 10

end

end A180316.P9042408045470175441

namespace A180316

/-- `A008592(n)+A000217(n)%10` -/
def P9042408045470175441.Spec : Prop :=
  ∀ n, P9042408045470175441.a n = A180316 n

end A180316

/-! ## A180316.P10493770667191684403

`A010879(A130488(n))+10*n`
-/

namespace A180316.P10493770667191684403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A130488 n).toNat + (10 * n : ℤ)

end

end A180316.P10493770667191684403

namespace A180316

/-- `A010879(A130488(n))+10*n` -/
def P10493770667191684403.Spec : Prop :=
  ∀ n, P10493770667191684403.a n = A180316 n

end A180316

/-! ## A180316.P12266100762273492831

`A010879(∑[A010879(n)])+A008592(n)`
-/

namespace A180316.P12266100762273492831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008592 n

end

end A180316.P12266100762273492831

namespace A180316

/-- `A010879(∑[A010879(n)])+A008592(n)` -/
def P12266100762273492831.Spec : Prop :=
  ∀ n, P12266100762273492831.a n = A180316 n

end A180316

/-! ## A180316.P5418405393520044106

`A038608(10*n)+A010879(∑[A010879(n)])`
-/

namespace A180316.P5418405393520044106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (10 * n) + A010879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180316.P5418405393520044106

namespace A180316

/-- `A038608(10*n)+A010879(∑[A010879(n)])` -/
def P5418405393520044106.Spec : Prop :=
  ∀ n, P5418405393520044106.a n = A180316 n

end A180316

/-! ## A180316.P4918818786145819989

`10*n+A010879(∑[n])`
-/

namespace A180316.P4918818786145819989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + A010879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180316.P4918818786145819989

namespace A180316

/-- `10*n+A010879(∑[n])` -/
def P4918818786145819989.Spec : Prop :=
  ∀ n, P4918818786145819989.a n = A180316 n

end A180316

/-! ## A180316.P5084674839340412920

`A010879(∑[n])+A008592(n)`
-/

namespace A180316.P5084674839340412920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j) + A008592 n

end

end A180316.P5084674839340412920

namespace A180316

/-- `A010879(∑[n])+A008592(n)` -/
def P5084674839340412920.Spec : Prop :=
  ∀ n, P5084674839340412920.a n = A180316 n

end A180316

/-!
# A180318: Expansion of a(-q) in powers of q where a(q) is a cubic AGM function.

The programs for A180318, there is no canonical definition to state claims against.
-/

/-! ## A180318.P13005861518695175122

`(-1)^n*A004016(n)`
-/

namespace A180318.P13005861518695175122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004016 n

end

end A180318.P13005861518695175122

/-! ## A180318.P11441111536195407870

`A004016(n)*A033999(n)`
-/

namespace A180318.P11441111536195407870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A033999 n

end

end A180318.P11441111536195407870

/-! ## A180318.P17545425989132843947

`A005928(n)*A057079(n)`
-/

namespace A180318.P17545425989132843947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n * A057079 n

end

end A180318.P17545425989132843947

/-! ## A180318.P10667173537531634460

`A033716(n)*A078070(n)`
-/

namespace A180318.P10667173537531634460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A078070 n

end

end A180318.P10667173537531634460

/-! ## A180318.P18201071733487710070

`A010684(n)*A115978(n)`
-/

namespace A180318.P18201071733487710070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A115978 n

end

end A180318.P18201071733487710070

/-! ## A180318.P5041859240116492652

`A005928(n)*A132954(n)`
-/

namespace A180318.P5041859240116492652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n * A132954 n

end

end A180318.P5041859240116492652

/-! ## A180318.P13918171380046944278

`A113062(n)*A117373(n)`
-/

namespace A180318.P13918171380046944278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A117373 n

end

end A180318.P13918171380046944278

/-! ## A180318.P6327353714361191233

`A113062(n)*A131556(n)`
-/

namespace A180318.P6327353714361191233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A131556 n

end

end A180318.P6327353714361191233

/-! ## A180318.P762027523419458194

`A113062(n)*A131714(n)`
-/

namespace A180318.P762027523419458194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A131714 n

end

end A180318.P762027523419458194

/-! ## A180318.P18227794662037421563

`A115978(n)*A167817(n)`
-/

namespace A180318.P18227794662037421563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n * A167817 n

end

end A180318.P18227794662037421563

/-! ## A180318.P14941522723761438502

`A131713(n)*A226535(n)`
-/

namespace A180318.P14941522723761438502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A226535 n

end

end A180318.P14941522723761438502

/-! ## A180318.P11019152252540469714

`A115978(n)*A254745(n)`
-/

namespace A180318.P11019152252540469714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n * A254745 n

end

end A180318.P11019152252540469714

/-! ## A180318.P18014150685395999655

`A073575(n+1)*A115978(n)`
-/

namespace A180318.P18014150685395999655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A115978 n

end

end A180318.P18014150685395999655

/-! ## A180318.P4398727871335100763

`A115978(n)*A287765(n+1)`
-/

namespace A180318.P4398727871335100763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n * A287765 (n + 1)

end

end A180318.P4398727871335100763

/-! ## A180318.P4557332638007398659

`2*A115978(n)-A033716(n)`
-/

namespace A180318.P4557332638007398659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115978 n - A033716 n

end

end A180318.P4557332638007398659

/-! ## A180318.P7800351393464333564

`(2-A033999(n))*A115978(n)`
-/

namespace A180318.P7800351393464333564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A115978 n

end

end A180318.P7800351393464333564

/-! ## A180318.P16670705734128017514

`A004016(n)-2*A217221(n)`
-/

namespace A180318.P16670705734128017514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n - 2 * A217221 n

end

end A180318.P16670705734128017514

/-! ## A180318.P11247096741822978500

`2*A253625(n)-A253623(n)`
-/

namespace A180318.P11247096741822978500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253625 n - A253623 n

end

end A180318.P11247096741822978500

/-! ## A180318.P4946242709295548997

`(2-A057079(n)²)*A226535(n)`
-/

namespace A180318.P4946242709295548997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A226535 n

end

end A180318.P4946242709295548997

/-! ## A180318.P14016693592169392265

`(2-A132954(n)²)*A226535(n)`
-/

namespace A180318.P14016693592169392265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A226535 n

end

end A180318.P14016693592169392265

/-!
# A180319: Total number of possible standard knight moves on an n X 2n chessboard, if the knight is placed anywhere.

The programs for A180319, the canonical program `A180319.P10471591161870611553` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180319 has offset 1).

The definition of A180319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180319.P10471591161870611553

`∑[a(n-1)+32]` with `a(0)=0, a(1)=8, a(2)=44`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180319

/-- `∑[a(n-1)+32]` -/
def P10471591161870611553.Spec : Prop :=
  ∀ n, (P10471591161870611553.a n : ℤ) = A180319 (n + 1)

theorem P10471591161870611553.correct : P10471591161870611553.Spec := by
  intro n
  simp only [A180319, Nat.add_sub_cancel]

end A180319

/-! ## A180319.P4396131150618522114

`2*(abs(C(4*n, 2)-1)-1)`
-/

namespace A180319.P4396131150618522114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|(Nat.choose (4 * n) 2 : ℤ) - 1| - 1)

end

end A180319.P4396131150618522114

namespace A180319

/-- `2*(abs(C(4*n, 2)-1)-1)` -/
def P4396131150618522114.Spec : Prop :=
  ∀ n, P4396131150618522114.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P12497787099337636055

`record[lcm(4, n*(n+2))]-4*n`
-/

namespace A180319.P12497787099337636055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (4 * n : ℤ)

end

end A180319.P12497787099337636055

namespace A180319

/-- `record[lcm(4, n*(n+2))]-4*n` -/
def P12497787099337636055.Spec : Prop :=
  ∀ n, P12497787099337636055.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P2953835198620653037

`4*(record[xor(1, -n)²]-(n+1))`
-/

namespace A180319.P2953835198620653037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ))

end

end A180319.P2953835198620653037

namespace A180319

/-- `4*(record[xor(1, -n)²]-(n+1))` -/
def P2953835198620653037.Spec : Prop :=
  ∀ n, P2953835198620653037.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P2117931584264154915

`4*(floor(2/acot(n))²-(n+1))`
-/

namespace A180319.P2117931584264154915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2 - (n + 1 : ℤ))

end

end A180319.P2117931584264154915

namespace A180319

/-- `4*(floor(2/acot(n))²-(n+1))` -/
def P2117931584264154915.Spec : Prop :=
  ∀ n, P2117931584264154915.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P950690680964793888

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=8, a(2)=52, a(3)=128`
-/

namespace A180319.P950690680964793888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 52, 128] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A180319.P950690680964793888

namespace A180319

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P950690680964793888.Spec : Prop :=
  ∀ n, P950690680964793888.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P5519712660041766863

`A008586(n)²-A008586(A087156(n+1))`
-/

namespace A180319.P5519712660041766863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n ^ 2 - A008586 (A087156 (n + 1)).toNat

end

end A180319.P5519712660041766863

namespace A180319

/-- `A008586(n)²-A008586(A087156(n+1))` -/
def P5519712660041766863.Spec : Prop :=
  ∀ n, P5519712660041766863.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P2680087806067332278

`A118239(2*n+1)-A123932(n)`
-/

namespace A180319.P2680087806067332278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118239 (2 * n + 1) - A123932 n

end

end A180319.P2680087806067332278

namespace A180319

/-- `A118239(2*n+1)-A123932(n)` -/
def P2680087806067332278.Spec : Prop :=
  ∀ n, P2680087806067332278.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P6557690422909491547

`A004278(2*(n+1))²-A026491(2*n+1)`
-/

namespace A180319.P6557690422909491547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (2 * (n + 1)) ^ 2 - A026491 (2 * n + 1)

end

end A180319.P6557690422909491547

namespace A180319

/-- `A004278(2*(n+1))²-A026491(2*n+1)` -/
def P6557690422909491547.Spec : Prop :=
  ∀ n, P6557690422909491547.a n = A180319 (n + 1)

end A180319

/-! ## A180319.P13000647592565614099

`A267874(A004273(2*n))-A004273(2*n+1)`
-/

namespace A180319.P13000647592565614099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 (A004273 (2 * n)).toNat - A004273 (2 * n + 1)

end

end A180319.P13000647592565614099

namespace A180319

/-- `A267874(A004273(2*n))-A004273(2*n+1)` -/
def P13000647592565614099.Spec : Prop :=
  ∀ n, P13000647592565614099.a n = A180319 (n + 1)

end A180319

/-!
# A180320: AbsoluteValue(Numerator(Bernoulli(4n))) - Numerator(Bernoulli(4n)) mod denominator(Bernoulli(4n)) divided by two.

The programs for A180320, there is no canonical definition to state claims against.
-/

/-! ## A180320.P4733965052823733951

`A180315(2*n)`
-/

namespace A180320.P4733965052823733951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 (2 * n)

end

end A180320.P4733965052823733951

/-! ## A180320.P15390848299495416390

`A180315(A004277(n))-floor(acot(n))`
-/

namespace A180320.P15390848299495416390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 (A004277 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A180320.P15390848299495416390

/-! ## A180320.P4084598544588092100

`A180315(Δ[A002061(n)])^(1-char[1])`
-/

namespace A180320.P4084598544588092100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180315 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A180320.P4084598544588092100

/-! ## A180320.P3269386968109397235

`A166306(2*n+1)-A002445(2*n)`
-/

namespace A180320.P3269386968109397235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (2 * n + 1) - A002445 (2 * n)

end

end A180320.P3269386968109397235

/-! ## A180320.P15640530148998230204

`A180315(A004277(n))-A000007(n)`
-/

namespace A180320.P15640530148998230204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 (A004277 n).toNat - A000007 n

end

end A180320.P15640530148998230204

/-!
# A180321: (Numerator(Bernoulli(4n)) mod denominator(Bernoulli(4n)) - AbsoluteValue(Numerator(Bernoulli(4n))) mod denominator(Bernoulli(4n)))/4.

The programs for A180321, there is no canonical definition to state claims against.
-/

/-! ## A180321.P5108486267388681396

`A127382(lcm(2*n², A329432(n+3)))`
-/

namespace A180321.P5108486267388681396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127382 (Int.lcm (2 * n ^ 2 : ℤ) (A329432 (n + 3)))

end

end A180321.P5108486267388681396

/-!
# A180322: a(n) = AR(n) is the total number of aperiodic k-reverses of n.

The programs for A180322, the canonical program `A180322.P10246016222357682006` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180322 has offset 1).

The definition of A180322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056493, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180322.P10246016222357682006

`(n+1)*A056493(n+1)/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A180322

/-- `(n+1)*A056493(n+1)/2` -/
def P10246016222357682006.Spec : Prop :=
  ∀ n, P10246016222357682006.a n = (A180322 (n + 1) : ℚ)

end A180322

/-! ## A180322.P4106009403725610290

`A181135(n+1)+A179781(n+1)`
-/

namespace A180322.P4106009403725610290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181135 (n + 1) + A179781 (n + 1)

end

end A180322.P4106009403725610290

namespace A180322

/-- `A181135(n+1)+A179781(n+1)` -/
def P4106009403725610290.Spec : Prop :=
  ∀ n, P4106009403725610290.a n = A180322 (n + 1)

end A180322

/-! ## A180322.P3123285695302557437

`∑{d}[n+1, A008683(#)*A180249((n+1)/#)]`
-/

namespace A180322.P3123285695302557437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A180249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A180322.P3123285695302557437

namespace A180322

/-- `∑{d}[n+1, A008683(#)*A180249((n+1)/#)]` -/
def P3123285695302557437.Spec : Prop :=
  ∀ n, P3123285695302557437.a n = A180322 (n + 1)

end A180322

/-! ## A180322.P8283306767019030555

`A181135(n+1)+A056493(n+1)-A056458(n+1)/2`
-/

namespace A180322.P8283306767019030555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181135 (n + 1) : ℚ) + ((A056493 (n + 1) : ℚ) - (A056458 (n + 1) : ℚ) / 2)

end

end A180322.P8283306767019030555

namespace A180322

/-- `A181135(n+1)+A056493(n+1)-A056458(n+1)/2` -/
def P8283306767019030555.Spec : Prop :=
  ∀ n, P8283306767019030555.a n = (A180322 (n + 1) : ℚ)

end A180322

/-! ## A180322.P7646045362359349726

`A181135(n+1)+∑{d}[n+1, A008683(#)*A060546((n+1)/#-1)]`
-/

namespace A180322.P7646045362359349726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181135 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A180322.P7646045362359349726

namespace A180322

/-- `A181135(n+1)+∑{d}[n+1, A008683(#)*A060546((n+1)/#-1)]` -/
def P7646045362359349726.Spec : Prop :=
  ∀ n, P7646045362359349726.a n = A180322 (n + 1)

end A180322

/-!
# A180323: Positive numbers l of the form l = A007913(k^4 - 4*k*m^3), where 1 <= k <= 5*l, 1 <= |m| <= 5*l.

The programs for A180323, there is no canonical definition to state claims against.
-/

/-! ## A180323.P18274356701420483628

`∩[A026179(n+1), A296818(n+1)]`
-/

namespace A180323.P18274356701420483628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180323.P18274356701420483628

/-! ## A180323.P17117596541556063626

`∩[A230902(n+1), A296818(n+1)]`
-/

namespace A180323.P17117596541556063626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180323.P17117596541556063626

/-! ## A180323.P11376727323475700483

`∩[A296818(n+1), A383048(n+1)]`
-/

namespace A180323.P11376727323475700483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180323.P11376727323475700483

/-!
# A180324: Vassiliev invariant of fourth order for the torus knots.

The programs for A180324, the canonical program `A180324.P13906964173912128798` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180324 has offset 0).

The definition of A180324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180324.P16849698641064564483

`n*(n+1)*(2*n+1)²/6`
-/

namespace A180324.P16849698641064564483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) ^ 2 : ℚ) / 6

end

end A180324.P16849698641064564483

namespace A180324

/-- `n*(n+1)*(2*n+1)²/6` -/
def P16849698641064564483.Spec : Prop :=
  ∀ n, P16849698641064564483.a n = (A180324 n : ℚ)

theorem P16849698641064564483.correct : P16849698641064564483.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A180324, Nat.add_sub_cancel, A180324.P16849698641064564483.a, A180324.P13906964173912128798.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A180324, Nat.add_sub_cancel, A180324.P16849698641064564483.a, A180324.P13906964173912128798.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A180324

/-! ## A180324.P16503158137289523372

`C(2*n+2, 4)+C(2*n+2, 3)/2`
-/

namespace A180324.P16503158137289523372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 2) 4 : ℚ) + (Nat.choose (2 * n + 2) 3 : ℚ) / 2

end

end A180324.P16503158137289523372

namespace A180324

/-- `C(2*n+2, 4)+C(2*n+2, 3)/2` -/
def P16503158137289523372.Spec : Prop :=
  ∀ n, P16503158137289523372.a n = (A180324 n : ℚ)

end A180324

/-! ## A180324.P13906964173912128798

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=25, a(3)=98, a(4)=270`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180324

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13906964173912128798.Spec : Prop :=
  ∀ n, P13906964173912128798.a n = A180324 n

theorem P13906964173912128798.correct : P13906964173912128798.Spec := by
  intro n
  simp only [A180324]

end A180324

/-! ## A180324.P5358738773252198911

`(2*n+1)*A000330(n)`
-/

namespace A180324.P5358738773252198911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000330 n

end

end A180324.P5358738773252198911

namespace A180324

/-- `(2*n+1)*A000330(n)` -/
def P5358738773252198911.Spec : Prop :=
  ∀ n, P5358738773252198911.a n = A180324 n

end A180324

/-! ## A180324.P14644380262250580869

`Δ[C(2*(n+1), 5)/2]`
-/

namespace A180324.P14644380262250580869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) 5 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180324.P14644380262250580869

namespace A180324

/-- `Δ[C(2*(n+1), 5)/2]` -/
def P14644380262250580869.Spec : Prop :=
  ∀ n, P14644380262250580869.a n = (A180324 n : ℚ)

end A180324

/-! ## A180324.P3988471648365869381

`∑[2*C(2*n+1, 3)+n]`
-/

namespace A180324.P3988471648365869381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1) 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180324.P3988471648365869381

namespace A180324

/-- `∑[2*C(2*n+1, 3)+n]` -/
def P3988471648365869381.Spec : Prop :=
  ∀ n, (P3988471648365869381.a n : ℤ) = A180324 n

end A180324

/-! ## A180324.P12891773449750267253

`lcm((2*n+1)*∑[n²], ∑[n²])`
-/

namespace A180324.P12891773449750267253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A180324.P12891773449750267253

namespace A180324

/-- `lcm((2*n+1)*∑[n²], ∑[n²])` -/
def P12891773449750267253.Spec : Prop :=
  ∀ n, (P12891773449750267253.a n : ℤ) = A180324 n

end A180324

/-! ## A180324.P3476746057415675006

`and(1, 2*n)+(2*n+1)*∑[n²]`
-/

namespace A180324.P3476746057415675006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180324.P3476746057415675006

namespace A180324

/-- `and(1, 2*n)+(2*n+1)*∑[n²]` -/
def P3476746057415675006.Spec : Prop :=
  ∀ n, (P3476746057415675006.a n : ℤ) = A180324 n

end A180324

/-! ## A180324.P3878615880064920572

`C(2*n+1, 4)+(2*n+1)*n²`
-/

namespace A180324.P3878615880064920572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4 + (2 * n + 1) * n ^ 2

end

end A180324.P3878615880064920572

namespace A180324

/-- `C(2*n+1, 4)+(2*n+1)*n²` -/
def P3878615880064920572.Spec : Prop :=
  ∀ n, (P3878615880064920572.a n : ℤ) = A180324 n

end A180324

/-! ## A180324.P2550836335888028452

`∑[A143166(n)]`
-/

namespace A180324.P2550836335888028452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180324.P2550836335888028452

namespace A180324

/-- `∑[A143166(n)]` -/
def P2550836335888028452.Spec : Prop :=
  ∀ n, P2550836335888028452.a n = A180324 n

end A180324

/-! ## A180324.P3558939269540509535

`∑[A118465(n)/3]`
-/

namespace A180324.P3558939269540509535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118465 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180324.P3558939269540509535

namespace A180324

/-- `∑[A118465(n)/3]` -/
def P3558939269540509535.Spec : Prop :=
  ∀ n, P3558939269540509535.a n = (A180324 n : ℚ)

end A180324

/-! ## A180324.P9193375905926408092

`∑[A259110(n)+n]`
-/

namespace A180324.P9193375905926408092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180324.P9193375905926408092

namespace A180324

/-- `∑[A259110(n)+n]` -/
def P9193375905926408092.Spec : Prop :=
  ∀ n, P9193375905926408092.a n = A180324 n

end A180324

/-! ## A180324.P12282015222189230426

`A345897(n+1)-n²`
-/

namespace A180324.P12282015222189230426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345897 (n + 1) - (n ^ 2 : ℤ)

end

end A180324.P12282015222189230426

namespace A180324

/-- `A345897(n+1)-n²` -/
def P12282015222189230426.Spec : Prop :=
  ∀ n, P12282015222189230426.a n = A180324 n

end A180324

/-! ## A180324.P1284790049254217215

`∑[A171272(n)-(n+1)]`
-/

namespace A180324.P1284790049254217215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180324.P1284790049254217215

namespace A180324

/-- `∑[A171272(n)-(n+1)]` -/
def P1284790049254217215.Spec : Prop :=
  ∀ n, P1284790049254217215.a n = A180324 n

end A180324

/-! ## A180324.P4976024895580214419

`∑[A385730(n)]-(n+1)²`
-/

namespace A180324.P4976024895580214419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A180324.P4976024895580214419

namespace A180324

/-- `∑[A385730(n)]-(n+1)²` -/
def P4976024895580214419.Spec : Prop :=
  ∀ n, P4976024895580214419.a n = A180324 n

end A180324

/-! ## A180324.P5048663055130425525

`A132124(n)+A072819(n)`
-/

namespace A180324.P5048663055130425525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + A072819 n

end

end A180324.P5048663055130425525

namespace A180324

/-- `A132124(n)+A072819(n)` -/
def P5048663055130425525.Spec : Prop :=
  ∀ n, P5048663055130425525.a n = A180324 n

end A180324

/-! ## A180324.P14215958713494183943

`A264853(n)+A001621(n)`
-/

namespace A180324.P14215958713494183943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264853 n + A001621 n

end

end A180324.P14215958713494183943

namespace A180324

/-- `A264853(n)+A001621(n)` -/
def P14215958713494183943.Spec : Prop :=
  ∀ n, P14215958713494183943.a n = A180324 n

end A180324

/-! ## A180324.P15974811374770972509

`A001846(n)-A005891(n)`
-/

namespace A180324.P15974811374770972509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n - A005891 n

end

end A180324.P15974811374770972509

namespace A180324

/-- `A001846(n)-A005891(n)` -/
def P15974811374770972509.Spec : Prop :=
  ∀ n, P15974811374770972509.a n = A180324 n

end A180324

/-! ## A180324.P15263046644672222058

`A100019(n)-A071245(n)`
-/

namespace A180324.P15263046644672222058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n - A071245 n

end

end A180324.P15263046644672222058

namespace A180324

/-- `A100019(n)-A071245(n)` -/
def P15263046644672222058.Spec : Prop :=
  ∀ n, P15263046644672222058.a n = A180324 n

end A180324

/-! ## A180324.P15933684506282901686

`A302709(n)-A099721(n)`
-/

namespace A180324.P15933684506282901686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302709 n - A099721 n

end

end A180324.P15933684506282901686

namespace A180324

/-- `A302709(n)-A099721(n)` -/
def P15933684506282901686.Spec : Prop :=
  ∀ n, P15933684506282901686.a n = A180324 n

end A180324

/-!
# A180326: The non-common part of the smaller number of an amicable pair.

The programs for A180326, there is no canonical definition to state claims against.
-/

/-! ## A180326.P8700499064345815304

`A002025(n+1)/A061469(n+1)`
-/

namespace A180326.P8700499064345815304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) / (A061469 (n + 1) : ℚ)

end

end A180326.P8700499064345815304

/-! ## A180326.P15227352202592500454

`A002025(n+1)/gcd(A002025(n+1), A002046(n+1))`
-/

namespace A180326.P15227352202592500454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) / (Int.gcd (A002025 (n + 1)) (A002046 (n + 1)) : ℚ)

end

end A180326.P15227352202592500454

/-! ## A180326.P6983101675273496206

`(A180164(n+1)-A002046(n+1))/A061469(n+1)`
-/

namespace A180326.P6983101675273496206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) - A002046 (n + 1) : ℚ) / (A061469 (n + 1) : ℚ)

end

end A180326.P6983101675273496206

/-! ## A180326.P16964823271361366276

`A180164(n+1)/A061469(n+1)-A180327(n+1)`
-/

namespace A180326.P16964823271361366276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) : ℚ) / (A061469 (n + 1) : ℚ) - (A180327 (n + 1) : ℚ)

end

end A180326.P16964823271361366276

/-! ## A180326.P17459572580201570157

`A002025(n+1)/A002046(n+1)*A180327(n+1)`
-/

namespace A180326.P17459572580201570157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) / (A002046 (n + 1) : ℚ) * (A180327 (n + 1) : ℚ)

end

end A180326.P17459572580201570157

/-! ## A180326.P10844215490287485484

`A180202(n+1)/(A002046(n+1)*A061469(n+1))`
-/

namespace A180326.P10844215490287485484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180202 (n + 1) : ℚ) / (A002046 (n + 1) * A061469 (n + 1) : ℚ)

end

end A180326.P10844215490287485484

/-! ## A180326.P3160540073399208485

`lcm(A002025(n+1), A180164(n+1))/A180164(n+1)`
-/

namespace A180326.P3160540073399208485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002025 (n + 1)) (A180164 (n + 1)) : ℚ) / (A180164 (n + 1) : ℚ)

end

end A180326.P3160540073399208485

/-! ## A180326.P13682032497810750063

`A259180(2*n+1)/A061469(n+1)`
-/

namespace A180326.P13682032497810750063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259180 (2 * n + 1) : ℚ) / (A061469 (n + 1) : ℚ)

end

end A180326.P13682032497810750063

/-! ## A180326.P1564072336563539867

`A389097(n+1)/A259180(2*(n+1))`
-/

namespace A180326.P1564072336563539867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389097 (n + 1) : ℚ) / (A259180 (2 * (n + 1)) : ℚ)

end

end A180326.P1564072336563539867

/-!
# A180327: The non-common part of the larger number of an amicable pair.

The programs for A180327, there is no canonical definition to state claims against.
-/

/-! ## A180327.P8678465909471001955

`A002046(n+1)/A061469(n+1)`
-/

namespace A180327.P8678465909471001955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) / (A061469 (n + 1) : ℚ)

end

end A180327.P8678465909471001955

/-! ## A180327.P8686523283930025152

`A002046(n+1)/gcd(A002025(n+1), A002046(n+1))`
-/

namespace A180327.P8686523283930025152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) / (Int.gcd (A002025 (n + 1)) (A002046 (n + 1)) : ℚ)

end

end A180327.P8686523283930025152

/-! ## A180327.P16829500463402601312

`(A180164(n+1)-A002025(n+1))/A061469(n+1)`
-/

namespace A180327.P16829500463402601312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) - A002025 (n + 1) : ℚ) / (A061469 (n + 1) : ℚ)

end

end A180327.P16829500463402601312

/-! ## A180327.P1712737150911696716

`A180164(n+1)/A061469(n+1)-A180326(n+1)`
-/

namespace A180327.P1712737150911696716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) : ℚ) / (A061469 (n + 1) : ℚ) - (A180326 (n + 1) : ℚ)

end

end A180327.P1712737150911696716

/-! ## A180327.P7224265535490456765

`A002046(n+1)/A002025(n+1)*A180326(n+1)`
-/

namespace A180327.P7224265535490456765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) / (A002025 (n + 1) : ℚ) * (A180326 (n + 1) : ℚ)

end

end A180327.P7224265535490456765

/-! ## A180327.P12594234492115424515

`A180202(n+1)/(A002025(n+1)*A061469(n+1))`
-/

namespace A180327.P12594234492115424515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180202 (n + 1) : ℚ) / (A002025 (n + 1) * A061469 (n + 1) : ℚ)

end

end A180327.P12594234492115424515

/-! ## A180327.P17929599961508234102

`lcm(A002046(n+1), A180164(n+1))/A180164(n+1)`
-/

namespace A180327.P17929599961508234102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002046 (n + 1)) (A180164 (n + 1)) : ℚ) / (A180164 (n + 1) : ℚ)

end

end A180327.P17929599961508234102

/-! ## A180327.P3013893371746979765

`A259180(2*(n+1))/A061469(n+1)`
-/

namespace A180327.P3013893371746979765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259180 (2 * (n + 1)) : ℚ) / (A061469 (n + 1) : ℚ)

end

end A180327.P3013893371746979765

/-! ## A180327.P425970594097634335

`A389097(n+1)/A259180(2*n+1)`
-/

namespace A180327.P425970594097634335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389097 (n + 1) : ℚ) / (A259180 (2 * n + 1) : ℚ)

end

end A180327.P425970594097634335

/-!
# A180328: Semiprimes pq such that there is another semiprime rs with (p+1)(q+1)=(r+1)(s+1) and p, q, r, and s distinct primes.

The programs for A180328, there is no canonical definition to state claims against.
-/

/-! ## A180328.P12055385479174770599

`record[A055615(A162283(n+1))]`
-/

namespace A180328.P12055385479174770599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A162283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180328.P12055385479174770599

/-! ## A180328.P10349980089738318151

`filter[A162283(n+1), A064911(#)]`
-/

namespace A180328.P10349980089738318151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A180328.P10349980089738318151

/-! ## A180328.P16433266276736026855

`filter[A162283(n+1), A101040(#)]`
-/

namespace A180328.P16433266276736026855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A180328.P16433266276736026855

/-! ## A180328.P16336348974074107376

`filter[A162283(n+1), A123927(#)]`
-/

namespace A180328.P16336348974074107376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A180328.P16336348974074107376

/-! ## A180328.P13924072508075965395

`filter[A162283(n+1), A280710(#)]`
-/

namespace A180328.P13924072508075965395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A180328.P13924072508075965395

/-!
# A180329: Odd semiprimes pq such that there is another odd semiprime rs with (p+1)(q+1)=(r+1)(s+1) and p, q, r, and s distinct primes.

The programs for A180329, there is no canonical definition to state claims against.
-/

/-! ## A180329.P6920857897466608210

`∩[A096603(n+1), A180328(n+1)]`
-/

namespace A180329.P6920857897466608210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180329.P6920857897466608210

/-!
# A180330: Smallest amicable number of the form 2^n * p * q for which the larger member of the amicable pair has the same form, where p and q are distinct odd primes.

The programs for A180330, there is no canonical definition to state claims against.
-/

/-! ## A180330.P3062314666763462737

`A180650(∑[A180335(n+1)]+2)`
-/

namespace A180330.P3062314666763462737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180650 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A180330.P3062314666763462737

/-!
# A180331: The larger amicable number corresponding to A180330(n).

The programs for A180331, there is no canonical definition to state claims against.
-/

/-! ## A180331.P4519309294048346256

`A180651(∑[A180335(n+1)]+2)`
-/

namespace A180331.P4519309294048346256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180651 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A180331.P4519309294048346256

/-!
# A180332: Primitive Zumkeller numbers.

The programs for A180332, there is no canonical definition to state claims against.
-/

/-! ## A180332.P1970496655211566419

`∩[A083207(n+1), A376881(n+1)]`
-/

namespace A180332.P1970496655211566419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180332.P1970496655211566419

/-! ## A180332.P16532016383450661282

`filter[A376881(n+1), A179527(#)]`
-/

namespace A180332.P16532016383450661282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A180332.P16532016383450661282

/-! ## A180332.P6088657616770896855

`A006039(A140823(n+1)-1)`
-/

namespace A180332.P6088657616770896855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (A140823 (n + 1) - 1).toNat

end

end A180332.P6088657616770896855

/-!
# A180334: a(n) is the least number such that there are n semiprimes pq such that (p+1)(q+1) = a(n) for each semiprime.

The programs for A180334, there is no canonical definition to state claims against.
-/

/-! ## A180334.P372980697428916340

`A205546(A027375(2*(n+1)))*A278486(n+1)`
-/

namespace A180334.P372980697428916340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205546 (A027375 (2 * (n + 1))).toNat * A278486 (n + 1)

end

end A180334.P372980697428916340

/-!
# A180336: Positive numbers l of the form l = A007913(4*k*m^3 - k^4), where 1 <= k <= 5*l, 1 <= m <= 5*l.

The programs for A180336, there is no canonical definition to state claims against.
-/

/-! ## A180336.P6165665162030950113

`record[A000005(5*n²+1)+A004442(n)-n]`
-/

namespace A180336.P6165665162030950113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n ^ 2 + 1) + (A004442 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180336.P6165665162030950113

/-! ## A180336.P8110566915840215442

`record[A033999(n)+A000005(A212656(n))]`
-/

namespace A180336.P8110566915840215442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000005 (A212656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180336.P8110566915840215442

/-! ## A180336.P5247875229683342521

`A147703(n)+A001223(A279571(n+1))`
-/

namespace A180336.P5247875229683342521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 n + A001223 (A279571 (n + 1)).toNat

end

end A180336.P5247875229683342521

/-! ## A180336.P2182306252743760743

`eq[A122287(A052304(3*n+5)), A299203(3*n+4)]`
-/

namespace A180336.P2182306252743760743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (A052304 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180336.P2182306252743760743

/-!
# A180337: Numbers which cannot be expressed as a sum 1 + p1 + p1*p2 + p1*p2*p3 + ... for some collection of primes {p1, p2, p3, ...}.

The programs for A180337, there is no canonical definition to state claims against.
-/

/-! ## A180337.P12099494192018979

`A392459(n+1)+1`
-/

namespace A180337.P12099494192018979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392459 (n + 1) + 1

end

end A180337.P12099494192018979

/-! ## A180337.P13412450991462623012

`eq[0, A317240(n+1)]+1`
-/

namespace A180337.P13412450991462623012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180337.P13412450991462623012

/-! ## A180337.P9512875546318220937

`lt[A317240(round(sqrt(n²+1))), 1]`
-/

namespace A180337.P9512875546318220937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317240 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A180337.P9512875546318220937

/-! ## A180337.P4945850444708545834

`eq[0, A317240(A028310(n))]`
-/

namespace A180337.P4945850444708545834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317240 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180337.P4945850444708545834

/-! ## A180337.P8556892362114853791

`A020725(eq[0, A317240(n+1)])`
-/

namespace A180337.P8556892362114853791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180337.P8556892362114853791

/-!
# A180340: 

The programs for A180340, there is no canonical definition to state claims against.
-/

/-! ## A180340.P4292313471613441277

`record[A178505(n+2)]`
-/

namespace A180340.P4292313471613441277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180340.P4292313471613441277

/-! ## A180340.P9298405357312642764

`A060284(A001913(n+1))`
-/

namespace A180340.P9298405357312642764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (A001913 (n + 1)).toNat

end

end A180340.P9298405357312642764

/-! ## A180340.P9853055975077589345

`A060284(A006883(n+2))`
-/

namespace A180340.P9853055975077589345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (A006883 (n + 2)).toNat

end

end A180340.P9853055975077589345

/-!
# A180343: a(0)=-4; a(n+1) = 2*a(n) + period 4: repeat 6,1,2,5.

The programs for A180343, the canonical program `A180343.P7415557290983709127` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180343 has offset 0).

The definition of A180343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180343.P7415557290983709127

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=-4, a(1)=-2, a(2)=-3, a(3)=-4, a(4)=-3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180343

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P7415557290983709127.Spec : Prop :=
  ∀ n, P7415557290983709127.a n = A180343 n

theorem P7415557290983709127.correct : P7415557290983709127.Spec := by
  intro n
  simp only [A180343]

end A180343

/-! ## A180343.P6509893137589971534

`2*a(n-1)+A131800(n+2)` with `a(0)=-4`
-/

namespace A180343.P6509893137589971534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n a =>
  2 * a (n - 1) + A131800 (n + 2)

end

end A180343.P6509893137589971534

namespace A180343

/-- `2*a(n-1)+A131800(n+2)` -/
def P6509893137589971534.Spec : Prop :=
  ∀ n, P6509893137589971534.a n = A180343 n

end A180343

/-! ## A180343.P9105259628370403834

`A161204(n)-A131800(n+3)`
-/

namespace A180343.P9105259628370403834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 n - A131800 (n + 3)

end

end A180343.P9105259628370403834

namespace A180343

/-- `A161204(n)-A131800(n+3)` -/
def P9105259628370403834.Spec : Prop :=
  ∀ n, P9105259628370403834.a n = A180343 n

end A180343

/-! ## A180343.P5521944263154001655

`Δ[A161204(n)]-A131800(n)`
-/

namespace A180343.P5521944263154001655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131800 n

end

end A180343.P5521944263154001655

namespace A180343

/-- `Δ[A161204(n)]-A131800(n)` -/
def P5521944263154001655.Spec : Prop :=
  ∀ n, P5521944263154001655.a n = A180343 n

end A180343

/-! ## A180343.P4580010485887746952

`Δ[A139800(n)+A087960(n)]-(or(1, n)+n)%8`
-/

namespace A180343.P4580010485887746952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 n + A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((Nat.lor 1 n + n) % 8 : ℕ) : ℤ)

end

end A180343.P4580010485887746952

namespace A180343

/-- `Δ[A139800(n)+A087960(n)]-(or(1, n)+n)%8` -/
def P4580010485887746952.Spec : Prop :=
  ∀ n, P4580010485887746952.a n = A180343 n

end A180343

/-! ## A180343.P1000761500172285456

`Δ[A115851(n)]-A010702(A028242(n))`
-/

namespace A180343.P1000761500172285456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010702 (A028242 n).toNat

end

end A180343.P1000761500172285456

namespace A180343

/-- `Δ[A115851(n)]-A010702(A028242(n))` -/
def P1000761500172285456.Spec : Prop :=
  ∀ n, P1000761500172285456.a n = A180343 n

end A180343

/-! ## A180343.P6609760713057814864

`Δ[A139800(n)+A087960(n)]-A131800(n)`
-/

namespace A180343.P6609760713057814864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 n + A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131800 n

end

end A180343.P6609760713057814864

namespace A180343

/-- `Δ[A139800(n)+A087960(n)]-A131800(n)` -/
def P6609760713057814864.Spec : Prop :=
  ∀ n, P6609760713057814864.a n = A180343 n

end A180343

/-! ## A180343.P13412398769268954508

`Δ[A228826(n)+A181586(n)]-A131800(n)`
-/

namespace A180343.P13412398769268954508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n + A181586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131800 n

end

end A180343.P13412398769268954508

namespace A180343

/-- `Δ[A228826(n)+A181586(n)]-A131800(n)` -/
def P13412398769268954508.Spec : Prop :=
  ∀ n, P13412398769268954508.a n = A180343 n

end A180343

/-!
# A180344: Four-digit semiprimes that are concatenation and product of two 2-digit primes.

The programs for A180344, there is no canonical definition to state claims against.
-/

/-! ## A180344.P7614603112320027836

`A243749(n+3)^A327366(A098743(n))`
-/

namespace A180344.P7614603112320027836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243749 (n + 3) : ℚ) ^ (A327366 (A098743 n).toNat : ℤ)

end

end A180344.P7614603112320027836

/-! ## A180344.P11690963892059884689

`A243749(n+3)^A243753(A243745(n))`
-/

namespace A180344.P11690963892059884689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243749 (n + 3) : ℚ) ^ (A243753 (A243745 (n + 10)).toNat : ℤ)

end

end A180344.P11690963892059884689

/-! ## A180344.P1953457423082418793

`A243749(n+3)%A153406(A000991(n))`
-/

namespace A180344.P1953457423082418793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243749 (n + 3)) (A153406 (A000991 n).toNat)

end

end A180344.P1953457423082418793

/-! ## A180344.P12642616526681413179

`A089608(A195278(n+1))*A243749(n+3)`
-/

namespace A180344.P12642616526681413179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (A195278 (n + 1)).toNat * A243749 (n + 3)

end

end A180344.P12642616526681413179

/-! ## A180344.P11266301204869271826

`A243749(n+3)*A277790(A072982(n+1))`
-/

namespace A180344.P11266301204869271826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243749 (n + 3) * A277790 (A072982 (n + 1)).toNat

end

end A180344.P11266301204869271826

/-!
# A180346: Primes that divide every circular permutation of the digits of at least one number of the form 123...(k-1)(k) (see A007908), where k is 3 digits long (that is, for some k in the range 99 < k < 1000).

The programs for A180346, there is no canonical definition to state claims against.
-/

/-! ## A180346.P12214302910940020794

`A000040(lt[A201268(n+1), A201300(n+1)])`
-/

namespace A180346.P12214302910940020794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180346.P12214302910940020794

/-! ## A180346.P6998993249431330162

`p?[A007401(n+1)*A339047(n+1)]`
-/

namespace A180346.P6998993249431330162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) * A339047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180346.P6998993249431330162

/-! ## A180346.P2198582835938400344

`p?[lcm(A007401(n+2), A339047(n+2))]`
-/

namespace A180346.P2198582835938400344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007401 (n + 2)) (A339047 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A180346.P2198582835938400344

/-! ## A180346.P10505095567681573984

`A000040(∑[(A007376(2^n+1-n)%3)!])`
-/

namespace A180346.P10505095567681573984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A007376 (2 ^ n + 1 - n)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180346.P10505095567681573984

/-! ## A180346.P693621436949675208

`eq[A064722(n+1), A329504(A329504(n+4))]`
-/

namespace A180346.P693621436949675208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329504 (A329504 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180346.P693621436949675208

/-!
# A180347: The number of n-digit numbers requiring 4 nonzero squares in their representation as sum of squares.

The programs for A180347, there is no canonical definition to state claims against.
-/

/-! ## A180347.P7997648829335140256

`A327125(n)+A014682(10^n-1)`
-/

namespace A180347.P7997648829335140256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 n + A014682 (10 ^ n - 1)

end

end A180347.P7997648829335140256

/-! ## A180347.P2188189129351982263

`A128174(n+1)+A014682(10^n-1)`
-/

namespace A180347.P2188189129351982263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + A014682 (10 ^ n - 1)

end

end A180347.P2188189129351982263

/-!
# A180349: Gog words avoiding the subpattern 312.

The programs for A180349, there is no canonical definition to state claims against.
-/

/-! ## A180349.P912990209635352341

`∑[A241816(∏[A054428(n+1)])]`
-/

namespace A180349.P912990209635352341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054428 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180349.P912990209635352341

/-! ## A180349.P16944106367603708322

`∑[A241816(∏[A348018(n+1)])]`
-/

namespace A180349.P16944106367603708322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180349.P16944106367603708322

/-!
# A180351: Smallest m such that tau(m!) > 10^(10^n).

The programs for A180351, there is no canonical definition to state claims against.
-/

/-! ## A180351.P14778923673907028795

`A098109(10^n)`
-/

namespace A180351.P14778923673907028795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098109 (10 ^ n)

end

end A180351.P14778923673907028795

/-!
# A180352: A permutation of Motzkin numbers by reversal of indices in blocks of length 7.

The programs for A180352, the canonical program `A180352.P10272901100519998822` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180352 has offset 1).

The definition of A180352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180352.P10272901100519998822

`A001006(7-(2*n%7-n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180352

/-- `A001006(7-(2*n%7-n))` -/
def P10272901100519998822.Spec : Prop :=
  ∀ n, P10272901100519998822.a n = A180352 (n + 1)

theorem P10272901100519998822.correct : P10272901100519998822.Spec := by
  intro n
  simp only [A180352, Nat.add_sub_cancel]

end A180352

/-! ## A180352.P13944236146748716146

`A001006(7-(A010876(n)+A010876(n)-n))`
-/

namespace A180352.P13944236146748716146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (7 - (A010876 n + (A010876 n - (n : ℤ)))).toNat

end

end A180352.P13944236146748716146

namespace A180352

/-- `A001006(7-(A010876(n)+A010876(n)-n))` -/
def P13944236146748716146.Spec : Prop :=
  ∀ n, P13944236146748716146.a n = A180352 (n + 1)

end A180352

/-! ## A180352.P7646524671071711009

`A086246(9-(A010876(n)+A010876(n)-n))`
-/

namespace A180352.P7646524671071711009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (9 - (A010876 n + (A010876 n - (n : ℤ)))).toNat

end

end A180352.P7646524671071711009

namespace A180352

/-- `A086246(9-(A010876(n)+A010876(n)-n))` -/
def P7646524671071711009.Spec : Prop :=
  ∀ n, P7646524671071711009.a n = A180352 (n + 1)

end A180352

/-! ## A180352.P17288661342632512715

`A001006(7-(A296185(n+1)%14-n))`
-/

namespace A180352.P17288661342632512715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (7 - (Int.tmod (A296185 (n + 1)) 14 - (n : ℤ))).toNat

end

end A180352.P17288661342632512715

namespace A180352

/-- `A001006(7-(A296185(n+1)%14-n))` -/
def P17288661342632512715.Spec : Prop :=
  ∀ n, P17288661342632512715.a n = A180352 (n + 1)

end A180352

/-!
# A180353: a(n) = n^n * prime(n).

The programs for A180353, the canonical program `A180353.P1035985859442097278` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180353 has offset 1).

The definition of A180353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180353.P1035985859442097278

`A000312(n+1)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180353

/-- `A000312(n+1)*A000040(n+1)` -/
def P1035985859442097278.Spec : Prop :=
  ∀ n, P1035985859442097278.a n = A180353 (n + 1)

theorem P1035985859442097278.correct : P1035985859442097278.Spec := by
  intro n
  simp only [A180353, Nat.add_sub_cancel]

end A180353

/-! ## A180353.P7499144306880481257

`(n+1)^(n+1)*p?[comp[n²]]`
-/

namespace A180353.P7499144306880481257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A180353.P7499144306880481257

namespace A180353

/-- `(n+1)^(n+1)*p?[comp[n²]]` -/
def P7499144306880481257.Spec : Prop :=
  ∀ n, (P7499144306880481257.a n : ℤ) = A180353 (n + 1)

end A180353

/-! ## A180353.P3973495514861266121

`(n+1)^(n+1)*record[∑{p}[n+2, #]]`
-/

namespace A180353.P3973495514861266121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180353.P3973495514861266121

namespace A180353

/-- `(n+1)^(n+1)*record[∑{p}[n+2, #]]` -/
def P3973495514861266121.Spec : Prop :=
  ∀ n, (P3973495514861266121.a n : ℤ) = A180353 (n + 1)

end A180353

/-! ## A180353.P9795184022534711580

`(n+1)^n*A033286(n+1)`
-/

namespace A180353.P9795184022534711580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A033286 (n + 1)

end

end A180353.P9795184022534711580

namespace A180353

/-- `(n+1)^n*A033286(n+1)` -/
def P9795184022534711580.Spec : Prop :=
  ∀ n, P9795184022534711580.a n = A180353 (n + 1)

end A180353

/-! ## A180353.P2993060573734929778

`(n+1)^(n+1)*record[A006530(n+2)]`
-/

namespace A180353.P2993060573734929778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180353.P2993060573734929778

namespace A180353

/-- `(n+1)^(n+1)*record[A006530(n+2)]` -/
def P2993060573734929778.Spec : Prop :=
  ∀ n, P2993060573734929778.a n = A180353 (n + 1)

end A180353

/-! ## A180353.P11648249855616138174

`(n+1)^(n+1)*record[A020639(n+2)]`
-/

namespace A180353.P11648249855616138174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180353.P11648249855616138174

namespace A180353

/-- `(n+1)^(n+1)*record[A020639(n+2)]` -/
def P11648249855616138174.Spec : Prop :=
  ∀ n, P11648249855616138174.a n = A180353 (n + 1)

end A180353

/-! ## A180353.P433899815206158981

`A000040(n+1)*∑[A007781(n)]`
-/

namespace A180353.P433899815206158981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180353.P433899815206158981

namespace A180353

/-- `A000040(n+1)*∑[A007781(n)]` -/
def P433899815206158981.Spec : Prop :=
  ∀ n, P433899815206158981.a n = A180353 (n + 1)

end A180353

/-! ## A180353.P8336404917586553319

`A000312(n+1)*A008578(n+2)`
-/

namespace A180353.P8336404917586553319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) * A008578 (n + 2)

end

end A180353.P8336404917586553319

namespace A180353

/-- `A000312(n+1)*A008578(n+2)` -/
def P8336404917586553319.Spec : Prop :=
  ∀ n, P8336404917586553319.a n = A180353 (n + 1)

end A180353

/-! ## A180353.P7234656670984478396

`A000312(n+1)*A182986(n+2)`
-/

namespace A180353.P7234656670984478396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) * A182986 (n + 2)

end

end A180353.P7234656670984478396

namespace A180353

/-- `A000312(n+1)*A182986(n+2)` -/
def P7234656670984478396.Spec : Prop :=
  ∀ n, P7234656670984478396.a n = A180353 (n + 1)

end A180353

/-!
# A180354: a(n) = n^4 + 4*n.

The programs for A180354, the canonical program `A180354.P5694400749555281173` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180354 has offset 0).

The definition of A180354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+4*n` (program `A180354.P5694400749555281173`, by `A180354.P5694400749555281173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180354.P5694400749555281173

`n^4+4*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180354

/-- `n^4+4*n` -/
def P5694400749555281173.Spec : Prop :=
  ∀ n, (P5694400749555281173.a n : ℤ) = A180354 n

theorem P5694400749555281173.correct : P5694400749555281173.Spec := by
  intro n
  simp only [A180354]

end A180354

/-!
# A180355: a(n) = n^5 + 5n.

The programs for A180355, the canonical program `A180355.P15220514206579301927` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180355 has offset 0).

The definition of A180355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+5*n` (program `A180355.P15220514206579301927`, by `A180355.P15220514206579301927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180355.P15220514206579301927

`n^5+5*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180355

/-- `n^5+5*n` -/
def P15220514206579301927.Spec : Prop :=
  ∀ n, (P15220514206579301927.a n : ℤ) = A180355 n

theorem P15220514206579301927.correct : P15220514206579301927.Spec := by
  intro n
  simp only [A180355]

end A180355

/-! ## A180355.P17590120683633851052

`lcm(2, n*(n²²+5))`
-/

namespace A180355.P17590120683633851052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * ((n ^ 2) ^ 2 + 5))

end

end A180355.P17590120683633851052

namespace A180355

/-- `lcm(2, n*(n²²+5))` -/
def P17590120683633851052.Spec : Prop :=
  ∀ n, (P17590120683633851052.a n : ℤ) = A180355 n

end A180355

/-!
# A180356: a(n) = n^6 + 6n.

The programs for A180356, the canonical program `A180356.P12617326361927608292` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180356 has offset 0).

The definition of A180356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+6*n` (program `A180356.P12617326361927608292`, by `A180356.P12617326361927608292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180356.P12617326361927608292

`n^6+6*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180356

/-- `n^6+6*n` -/
def P12617326361927608292.Spec : Prop :=
  ∀ n, (P12617326361927608292.a n : ℤ) = A180356 n

theorem P12617326361927608292.correct : P12617326361927608292.Spec := by
  intro n
  simp only [A180356]

end A180356

/-!
# A180357: a(n) = n^7 + 7*n.

The programs for A180357, the canonical program `A180357.P1929126124502109508` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180357 has offset 0).

The definition of A180357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+7*n` (program `A180357.P1929126124502109508`, by `A180357.P1929126124502109508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180357.P1929126124502109508

`n^7+7*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180357

/-- `n^7+7*n` -/
def P1929126124502109508.Spec : Prop :=
  ∀ n, (P1929126124502109508.a n : ℤ) = A180357 n

theorem P1929126124502109508.correct : P1929126124502109508.Spec := by
  intro n
  simp only [A180357]

end A180357

/-!
# A180358: a(n) = n^8+8n.

The programs for A180358, the canonical program `A180358.P15322960870990214232` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180358 has offset 0).

The definition of A180358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+8*n` (program `A180358.P15322960870990214232`, by `A180358.P15322960870990214232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180358.P15322960870990214232

`n^8+8*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180358

/-- `n^8+8*n` -/
def P15322960870990214232.Spec : Prop :=
  ∀ n, (P15322960870990214232.a n : ℤ) = A180358 n

theorem P15322960870990214232.correct : P15322960870990214232.Spec := by
  intro n
  simp only [A180358]

end A180358

/-!
# A180359: a(n) = n^9 + 9*n.

The programs for A180359, the canonical program `A180359.P8240663572446577110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180359 has offset 0).

The definition of A180359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9+9*n` (program `A180359.P8240663572446577110`, by `A180359.P8240663572446577110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180359.P8930715780032602725

`n*(n^8+9)`
-/

namespace A180359.P8930715780032602725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 8 + 9)

end

end A180359.P8930715780032602725

namespace A180359

/-- `n*(n^8+9)` -/
def P8930715780032602725.Spec : Prop :=
  ∀ n, (P8930715780032602725.a n : ℤ) = A180359 n

theorem P8930715780032602725.correct : P8930715780032602725.Spec := by
  intro n
  simp only [A180359, Nat.add_sub_cancel, A180359.P8930715780032602725.a, A180359.P8240663572446577110.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180359

/-! ## A180359.P8240663572446577110

`n^9+9*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180359

/-- `n^9+9*n` -/
def P8240663572446577110.Spec : Prop :=
  ∀ n, (P8240663572446577110.a n : ℤ) = A180359 n

theorem P8240663572446577110.correct : P8240663572446577110.Spec := by
  intro n
  simp only [A180359]

end A180359

/-! ## A180359.P9636303941522819541

`lcm(2, n*(n²²²+9))`
-/

namespace A180359.P9636303941522819541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (((n ^ 2) ^ 2) ^ 2 + 9))

end

end A180359.P9636303941522819541

namespace A180359

/-- `lcm(2, n*(n²²²+9))` -/
def P9636303941522819541.Spec : Prop :=
  ∀ n, (P9636303941522819541.a n : ℤ) = A180359 n

end A180359

/-!
# A180360: Table t(n,k) is the number of ways to partition 1 into k fractions using the Farey fractions of order n, read row by row.

The programs for A180360, there is no canonical definition to state claims against.
-/

/-! ## A180360.P17780407875991398334

`A372433(A144510(n+1)+1)`
-/

namespace A180360.P17780407875991398334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372433 (A144510 (n + 1) + 1).toNat

end

end A180360.P17780407875991398334

/-! ## A180360.P6209438133018770620

`A186189(A143953(n+1))`
-/

namespace A180360.P6209438133018770620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186189 (A143953 (n + 1)).toNat

end

end A180360.P6209438133018770620

/-! ## A180360.P1343495043827196390

`A186189(A355996(n+1))`
-/

namespace A180360.P1343495043827196390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186189 (A355996 (n + 1)).toNat

end

end A180360.P1343495043827196390

/-!
# A180361: Sum of number of unitary divisors (A034444) from 1 to 10^n.

The programs for A180361, the canonical program `A180361.P8296616344209829482` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180361 has offset 0).

The definition of A180361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180361.P8296616344209829482

`A064608(10^n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A180361

/-- `A064608(10^n)` -/
def P8296616344209829482.Spec : Prop :=
  ∀ n, P8296616344209829482.a n = A180361 n

theorem P8296616344209829482.correct : P8296616344209829482.Spec := by
  intro n
  simp only [A180361]

end A180361

/-!
# A180363: a(n) = Lucas(prime(n)).

The programs for A180363, the canonical program `A180363.P17041838073704525923` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180363 has offset 1).

The definition of A180363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180363.P17041838073704525923

`A000032(A000040(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180363

/-- `A000032(A000040(n+1))` -/
def P17041838073704525923.Spec : Prop :=
  ∀ n, P17041838073704525923.a n = A180363 (n + 1)

theorem P17041838073704525923.correct : P17041838073704525923.Spec := by
  intro n
  simp only [A180363, Nat.add_sub_cancel]

end A180363

/-! ## A180363.P14706921607851754587

`A000032(p?[comp[n²]])`
-/

namespace A180363.P14706921607851754587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A180363.P14706921607851754587

namespace A180363

/-- `A000032(p?[comp[n²]])` -/
def P14706921607851754587.Spec : Prop :=
  ∀ n, P14706921607851754587.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P8692043901954520580

`A160909(n+1)+1`
-/

namespace A180363.P8692043901954520580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160909 (n + 1) + 1

end

end A180363.P8692043901954520580

namespace A180363

/-- `A160909(n+1)+1` -/
def P8692043901954520580.Spec : Prop :=
  ∀ n, P8692043901954520580.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P15125271084374052447

`A000032(eq[1, ∑{e}[n, #]])`
-/

namespace A180363.P15125271084374052447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A180363.P15125271084374052447

namespace A180363

/-- `A000032(eq[1, ∑{e}[n, #]])` -/
def P15125271084374052447.Spec : Prop :=
  ∀ n, P15125271084374052447.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P5913599439922140392

`record[A000032(p?[∑{p}[n, #]])]`
-/

namespace A180363.P5913599439922140392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180363.P5913599439922140392

namespace A180363

/-- `record[A000032(p?[∑{p}[n, #]])]` -/
def P5913599439922140392.Spec : Prop :=
  ∀ n, P5913599439922140392.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P4003181128991545679

`record[A000032(p?[∏{p}[n, #]])]`
-/

namespace A180363.P4003181128991545679
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180363.P4003181128991545679

namespace A180363

/-- `record[A000032(p?[∏{p}[n, #]])]` -/
def P4003181128991545679.Spec : Prop :=
  ∀ n, P4003181128991545679.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P14056516081845560798

`record[∑{p}[n+2, A000032(#)]]`
-/

namespace A180363.P14056516081845560798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A000032 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180363.P14056516081845560798

namespace A180363

/-- `record[∑{p}[n+2, A000032(#)]]` -/
def P14056516081845560798.Spec : Prop :=
  ∀ n, P14056516081845560798.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P630745199533144047

`record[A000032(∑{p}[2-n, #])]`
-/

namespace A180363.P630745199533144047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180363.P630745199533144047

namespace A180363

/-- `record[A000032(∑{p}[2-n, #])]` -/
def P630745199533144047.Spec : Prop :=
  ∀ n, P630745199533144047.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P1963900549256447227

`A000032(Δ[A007504(n)])`
-/

namespace A180363.P1963900549256447227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A180363.P1963900549256447227

namespace A180363

/-- `A000032(Δ[A007504(n)])` -/
def P1963900549256447227.Spec : Prop :=
  ∀ n, P1963900549256447227.a n = A180363 (n + 1)

end A180363

/-! ## A180363.P15416285303252290935

`A254729(A028815(n+1))`
-/

namespace A180363.P15416285303252290935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A028815 (n + 1)).toNat

end

end A180363.P15416285303252290935

namespace A180363

/-- `A254729(A028815(n+1))` -/
def P15416285303252290935.Spec : Prop :=
  ∀ n, P15416285303252290935.a n = A180363 (n + 1)

end A180363

/-!
# A180364: a(n) = sum_{k=0..n} C(n,k)*C(n+k,k)*(2*k+1)^2, where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

The programs for A180364, the canonical program `A180364.P12544978778859971724` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180364 has offset 0).

The definition of A180364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180364.P12544978778859971724

`Δ[n²*A002002(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A180364

/-- `Δ[n²*A002002(n)]` -/
def P12544978778859971724.Spec : Prop :=
  ∀ n, P12544978778859971724.a n = A180364 n

theorem P12544978778859971724.correct : P12544978778859971724.Spec := by
  intro n
  simp only [A180364]

end A180364

/-! ## A180364.P11665304397383302304

`Δ[abs(n²*A182626(n))]`
-/

namespace A180364.P11665304397383302304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A182626 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P11665304397383302304

namespace A180364

/-- `Δ[abs(n²*A182626(n))]` -/
def P11665304397383302304.Spec : Prop :=
  ∀ n, P11665304397383302304.a n = A180364 n

end A180364

/-! ## A180364.P2446784826422871233

`Δ[A110170(n)/2*n²]`
-/

namespace A180364.P2446784826422871233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110170 n : ℚ) / 2 * (n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P2446784826422871233

namespace A180364

/-- `Δ[A110170(n)/2*n²]` -/
def P2446784826422871233.Spec : Prop :=
  ∀ n, P2446784826422871233.a n = (A180364 n : ℚ)

end A180364

/-! ## A180364.P2424475385107060428

`Δ[A247630(2*n)/2*n²]`
-/

namespace A180364.P2424475385107060428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247630 (2 * n) : ℚ) / 2 * (n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P2424475385107060428

namespace A180364

/-- `Δ[A247630(2*n)/2*n²]` -/
def P2424475385107060428.Spec : Prop :=
  ∀ n, P2424475385107060428.a n = (A180364 n : ℚ)

end A180364

/-! ## A180364.P4764386025568945958

`Δ[A002002(n)*A253909(n)]`
-/

namespace A180364.P4764386025568945958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n * A253909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P4764386025568945958

namespace A180364

/-- `Δ[A002002(n)*A253909(n)]` -/
def P4764386025568945958.Spec : Prop :=
  ∀ n, P4764386025568945958.a n = A180364 n

end A180364

/-! ## A180364.P8818042379848242893

`Δ[abs(A182626(n))*A000290(n)]`
-/

namespace A180364.P8818042379848242893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 n| * A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P8818042379848242893

namespace A180364

/-- `Δ[abs(A182626(n))*A000290(n)]` -/
def P8818042379848242893.Spec : Prop :=
  ∀ n, P8818042379848242893.a n = A180364 n

end A180364

/-! ## A180364.P3821976107599665031

`Δ[n²*A026003(A004273(n))]`
-/

namespace A180364.P3821976107599665031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A026003 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P3821976107599665031

namespace A180364

/-- `Δ[n²*A026003(A004273(n))]` -/
def P3821976107599665031.Spec : Prop :=
  ∀ n, P3821976107599665031.a n = A180364 n

end A180364

/-! ## A180364.P9740343197926786705

`Δ[(A176479(n)-A047781(n))*n²]`
-/

namespace A180364.P9740343197926786705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176479 n - A047781 n) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P9740343197926786705

namespace A180364

/-- `Δ[(A176479(n)-A047781(n))*n²]` -/
def P9740343197926786705.Spec : Prop :=
  ∀ n, P9740343197926786705.a n = A180364 n

end A180364

/-! ## A180364.P7934383172005561489

`Δ[n²*A008288(2*n²)]`
-/

namespace A180364.P7934383172005561489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A008288 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P7934383172005561489

namespace A180364

/-- `Δ[n²*A008288(2*n²)]` -/
def P7934383172005561489.Spec : Prop :=
  ∀ n, P7934383172005561489.a n = A180364 n

end A180364

/-!
# A180365: Partial sums up to 10^n of A007425.

The programs for A180365, the canonical program `A180365.P9491354516201512416` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180365 has offset 0).

The definition of A180365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061201, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180365.P9491354516201512416

`A061201(10^n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180365

/-- `A061201(10^n)` -/
def P9491354516201512416.Spec : Prop :=
  ∀ n, P9491354516201512416.a n = A180365 n

theorem P9491354516201512416.correct : P9491354516201512416.Spec := by
  intro n
  simp only [A180365]

end A180365

/-! ## A180365.P10106059248410039639

`A061201(A011557(n))+char[43]`
-/

namespace A180365.P10106059248410039639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (A011557 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180365.P10106059248410039639

namespace A180365

/-- `A061201(A011557(n))+char[43]` -/
def P10106059248410039639.Spec : Prop :=
  ∀ n, P10106059248410039639.a n = A180365 n

end A180365

/-!
# A180366: Numbers k such that 0 < A000203(k)-k-1 < k.

The programs for A180366, there is no canonical definition to state claims against.
-/

/-! ## A180366.P2601944847375834857

`lt[1, xor(n, A033879(n+1))]+1`
-/

namespace A180366.P2601944847375834857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A033879 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180366.P2601944847375834857

/-! ## A180366.P12523519989172270872

`lt[1, n/(A039653(n)-(n+1))]`
-/

namespace A180366.P12523519989172270872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A039653 n - (n + 1 : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A180366.P12523519989172270872

/-! ## A180366.P14102493188812745673

`lt[abs(n+1-A064947(n+1)), n]+1`
-/

namespace A180366.P14102493188812745673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A064947 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A180366.P14102493188812745673

/-! ## A180366.P14724418764661660809

`lt[(2*(n+1))%A000203(n+1), n]+1`
-/

namespace A180366.P14724418764661660809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A180366.P14724418764661660809

/-! ## A180366.P176945915758114055

`record[A378665(A002808(n+1))]`
-/

namespace A180366.P176945915758114055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378665 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180366.P176945915758114055

/-! ## A180366.P17693054250714556792

`filter[A002808(n+1), A294935(#)]`
-/

namespace A180366.P17693054250714556792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A180366.P17693054250714556792

/-! ## A180366.P8638496427570798106

`filter[A263837(n+1), A066247(#)]`
-/

namespace A180366.P8638496427570798106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A180366.P8638496427570798106

/-! ## A180366.P12871081253492833900

`filter[A263837(n+2), A005171(#)]`
-/

namespace A180366.P12871081253492833900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A180366.P12871081253492833900

/-! ## A180366.P241176943615929436

`filter[A018252(n+2), A294935(#)]`
-/

namespace A180366.P241176943615929436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A180366.P241176943615929436

/-! ## A180366.P5513028858040529074

`filter[A065090(n+3), A294935(#)]`
-/

namespace A180366.P5513028858040529074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A180366.P5513028858040529074

/-!
# A180367: a(n) = Lucas(prime(n+1)) - prime(Lucas(n)), for Lucas numbers beginning at 2.

The programs for A180367, the canonical program `A180367.P15385341568531694124` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180367 has offset 0).

The definition of A180367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094894, A180363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180367.P15385341568531694124

`A180363(n+1)-A094894(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180367

/-- `A180363(n+1)-A094894(n)` -/
def P15385341568531694124.Spec : Prop :=
  ∀ n, P15385341568531694124.a n = A180367 n

theorem P15385341568531694124.correct : P15385341568531694124.Spec := by
  intro n
  simp only [A180367]

end A180367

/-! ## A180367.P339973783888919613

`A000032(A000040(n+1))-A000040(A000032(n))`
-/

namespace A180367.P339973783888919613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000040 (n + 1)).toNat - A000040 (A000032 n).toNat

end

end A180367.P339973783888919613

namespace A180367

/-- `A000032(A000040(n+1))-A000040(A000032(n))` -/
def P339973783888919613.Spec : Prop :=
  ∀ n, P339973783888919613.a n = A180367 n

end A180367

/-! ## A180367.P15970063231042681647

`A000032(A000040(n+1))-A094894(n)`
-/

namespace A180367.P15970063231042681647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000040 (n + 1)).toNat - A094894 n

end

end A180367.P15970063231042681647

namespace A180367

/-- `A000032(A000040(n+1))-A094894(n)` -/
def P15970063231042681647.Spec : Prop :=
  ∀ n, P15970063231042681647.a n = A180367 n

end A180367

/-! ## A180367.P12691956149409142930

`A000032(record[A006530(n+2)])-A094894(n)`
-/

namespace A180367.P12691956149409142930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A094894 n

end

end A180367.P12691956149409142930

namespace A180367

/-- `A000032(record[A006530(n+2)])-A094894(n)` -/
def P12691956149409142930.Spec : Prop :=
  ∀ n, P12691956149409142930.a n = A180367 n

end A180367

/-! ## A180367.P3007992648428397208

`A000032(record[A014963(n+2)])-A094894(n)`
-/

namespace A180367.P3007992648428397208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A094894 n

end

end A180367.P3007992648428397208

namespace A180367

/-- `A000032(record[A014963(n+2)])-A094894(n)` -/
def P3007992648428397208.Spec : Prop :=
  ∀ n, P3007992648428397208.a n = A180367 n

end A180367

/-!
# A180368: Number of steps of the one-sided hydra process for a linear tree of length n.

The programs for A180368, there is no canonical definition to state claims against.
-/

/-! ## A180368.P6875053538406549389

`A372594(A014138(n))`
-/

namespace A180368.P6875053538406549389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372594 (A014138 n).toNat

end

end A180368.P6875053538406549389

/-!
# A180369: A177771(n+3)/6! .

The programs for A180369, there is no canonical definition to state claims against.
-/

/-! ## A180369.P16186270396045805095

`A177771(n+4)/6!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180369.P16186270396045805095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177771 (n + 4) : ℚ) / (Nat.factorial 6 : ℚ)

end

end A180369.P16186270396045805095

/-! ## A180369.P18078922580548991281

`A001730(A090417(n+1)-1)`
-/

namespace A180369.P18078922580548991281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001730 (A090417 (n + 1) - 1).toNat

end

end A180369.P18078922580548991281

/-!
# A180370: Number of triangular nXnXn arrays with each row k a permutation of 0..k-1 and no element having neighbors with sum mod 3 = 2.

The programs for A180370, there is no canonical definition to state claims against.
-/

/-! ## A180370.P16847475866984799131

`A257609(n)*A328673(A059838(n))`
-/

namespace A180370.P16847475866984799131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257609 n * A328673 (A059838 n).toNat

end

end A180370.P16847475866984799131

/-! ## A180370.P7157634297313150894

`A048991(A001187(n)*A085313(n+1))`
-/

namespace A180370.P7157634297313150894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048991 (A001187 n * A085313 (n + 1)).toNat

end

end A180370.P7157634297313150894

/-!
# A180374: 1/120 the number of n X 3 arrays of integers in 1..6 with no element or any of its neighbors having the same value.

The programs for A180374, there is no canonical definition to state claims against.
-/

/-! ## A180374.P1595069520620616924

`A000201(n+1)*A216200(A298332(n+1))`
-/

namespace A180374.P1595069520620616924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A216200 (A298332 (n + 1)).toNat

end

end A180374.P1595069520620616924

/-!
# A180378: T(n,k)=number of increasing sequences of n integers x(1),...,x(n) with values in 1..k*n such that x(j) divides x(k) iff j divides k.

The programs for A180378, there is no canonical definition to state claims against.
-/

/-! ## A180378.P6767194648320848214

`A082429(A013610(n+1))`
-/

namespace A180378.P6767194648320848214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A013610 (n + 1)).toNat

end

end A180378.P6767194648320848214

/-! ## A180378.P14833278541127606297

`A113609(A098473(n+1))`
-/

namespace A180378.P14833278541127606297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113609 (A098473 (n + 1)).toNat

end

end A180378.P14833278541127606297

/-! ## A180378.P4540268772548823762

`A196176(A193635(n+1))`
-/

namespace A180378.P4540268772548823762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A193635 (n + 1)).toNat

end

end A180378.P4540268772548823762

/-! ## A180378.P456119377855650619

`A225644(A182042(n+1))`
-/

namespace A180378.P456119377855650619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A182042 (n + 1)).toNat

end

end A180378.P456119377855650619

/-! ## A180378.P8995388177729498372

`A095161(A382045(n+1))`
-/

namespace A180378.P8995388177729498372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095161 (A382045 (n + 1)).toNat

end

end A180378.P8995388177729498372

/-!
# A180379: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..2*n such that x(j) divides x(k) iff j divides k.

The programs for A180379, there is no canonical definition to state claims against.
-/

/-! ## A180379.P18426382036953256768

`A180378(∑[n+2])`
-/

namespace A180379.P18426382036953256768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180379.P18426382036953256768

/-! ## A180379.P6389594144771083780

`A180378(A000096(n+1))%88`
-/

namespace A180379.P6389594144771083780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180378 (A000096 (n + 1)).toNat) 88

end

end A180379.P6389594144771083780

/-! ## A180379.P1962087366883915609

`A007318(C(2, n))*A180378(A000096(n+1))`
-/

namespace A180379.P1962087366883915609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A180378 (A000096 (n + 1)).toNat

end

end A180379.P1962087366883915609

/-! ## A180379.P5696042584043366960

`A007318(and(3, -n))*A180378(A000096(n+1))`
-/

namespace A180379.P5696042584043366960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A180378 (A000096 (n + 1)).toNat

end

end A180379.P5696042584043366960

/-! ## A180379.P1812148479888149956

`A007318(val(n+2, 7))*A180378(A000096(n+1))`
-/

namespace A180379.P1812148479888149956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 7) * A180378 (A000096 (n + 1)).toNat

end

end A180379.P1812148479888149956

/-!
# A180380: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..3*n such that x(j) divides x(k) iff j divides k.

The programs for A180380, there is no canonical definition to state claims against.
-/

/-! ## A180380.P14139618919462418639

`A180378(∑[n+3]+1)`
-/

namespace A180380.P14139618919462418639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180380.P14139618919462418639

/-! ## A180380.P17770825368026064976

`A180378(Δ[A008778(n)])+char[40]`
-/

namespace A180380.P17770825368026064976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180380.P17770825368026064976

/-! ## A180380.P3782559259917366887

`A180378(A034856(n+2))+char[49]`
-/

namespace A180380.P3782559259917366887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180380.P3782559259917366887

/-! ## A180380.P12683367869235394610

`A180378(A034856(n+2))%A071395(n+1)`
-/

namespace A180380.P12683367869235394610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180378 (A034856 (n + 2)).toNat) (A071395 (n + 1))

end

end A180380.P12683367869235394610

/-! ## A180380.P15581246479358505521

`A007318(C(2, n))*A180378(A034856(n+2))`
-/

namespace A180380.P15581246479358505521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A180378 (A034856 (n + 2)).toNat

end

end A180380.P15581246479358505521

/-!
# A180381: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..4*n such that x(j) divides x(k) iff j divides k.

The programs for A180381, there is no canonical definition to state claims against.
-/

/-! ## A180381.P9972708749323095902

`A180378(∑[n+4]+3)`
-/

namespace A180381.P9972708749323095902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A180381.P9972708749323095902

/-! ## A180381.P4204681268228747314

`or(char[2], A180378(A141214(n+1)))`
-/

namespace A180381.P4204681268228747314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180378 (A141214 (n + 1)).toNat)

end

end A180381.P4204681268228747314

/-! ## A180381.P12154098571602010884

`A007318(C(2, n))*A180378(A141214(n+1))`
-/

namespace A180381.P12154098571602010884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A180378 (A141214 (n + 1)).toNat

end

end A180381.P12154098571602010884

/-! ## A180381.P5278893122978988169

`A000041(C(2, n+2))*A180378(A141214(n+1))`
-/

namespace A180381.P5278893122978988169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A180378 (A141214 (n + 1)).toNat

end

end A180381.P5278893122978988169

/-! ## A180381.P611329468235377290

`A180378(A141214(n+1))+A008683(4*A007318(n))`
-/

namespace A180381.P611329468235377290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (A141214 (n + 1)).toNat + A008683 (4 * A007318 n).toNat

end

end A180381.P611329468235377290

/-!
# A180382: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..5*n such that x(j) divides x(k) iff j divides k.

The programs for A180382, there is no canonical definition to state claims against.
-/

/-! ## A180382.P7703325922881517813

`A180378(Δ[A264443(n)])`
-/

namespace A180382.P7703325922881517813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (f1 (n + 1) - f1 n).toNat

end

end A180382.P7703325922881517813

/-! ## A180382.P4904459940113460651

`A180378(A046691(n+3))`
-/

namespace A180382.P4904459940113460651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (A046691 (n + 3)).toNat

end

end A180382.P4904459940113460651

/-! ## A180382.P1279000427072516930

`A180378(A056115(n)+11)`
-/

namespace A180382.P1279000427072516930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (A056115 n + 11).toNat

end

end A180382.P1279000427072516930

/-! ## A180382.P4934792042052820986

`A180378(eq[4, A193592(n)])`
-/

namespace A180382.P4934792042052820986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180382.P4934792042052820986

/-! ## A180382.P18402433522331394984

`A180378(Δ[A023545(n+1)])`
-/

namespace A180382.P18402433522331394984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (f1 (n + 1) - f1 n).toNat

end

end A180382.P18402433522331394984

/-!
# A180383: T(n,k)=number of increasing sequences of n integers x(1),...,x(n) with values in 1..k*n such that x(j) divides x(k) if j divides k.

The programs for A180383, there is no canonical definition to state claims against.
-/

/-! ## A180383.P2917619565224359587

`A213718(A059369(n+2))`
-/

namespace A180383.P2917619565224359587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213718 (A059369 (n + 2)).toNat

end

end A180383.P2917619565224359587

/-! ## A180383.P9327900580668754376

`A354522(A087644(n+3))`
-/

namespace A180383.P9327900580668754376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354522 (A087644 (n + 3)).toNat

end

end A180383.P9327900580668754376

/-! ## A180383.P12614639482799491641

`A172263(A297192(n+1)+1)`
-/

namespace A180383.P12614639482799491641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A297192 (n + 1) + 1).toNat

end

end A180383.P12614639482799491641

/-!
# A180384: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..2*n such that x(j) divides x(k) if j divides k.

The programs for A180384, there is no canonical definition to state claims against.
-/

/-! ## A180384.P7902936224430976737

`A180383(∑[n+2])`
-/

namespace A180384.P7902936224430976737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180384.P7902936224430976737

/-! ## A180384.P12042069749420568686

`or(char[2], A180383(A000096(n+1)))`
-/

namespace A180384.P12042069749420568686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180383 (A000096 (n + 1)).toNat)

end

end A180384.P12042069749420568686

/-! ## A180384.P14284769926802347010

`A180383(A000096(n+1))%A000040(n+1)²`
-/

namespace A180384.P14284769926802347010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180383 (A000096 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

end

end A180384.P14284769926802347010

/-! ## A180384.P16516335025199978394

`A007318(C(2, n+1))*A180383(A000096(n+1))`
-/

namespace A180384.P16516335025199978394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A180383 (A000096 (n + 1)).toNat

end

end A180384.P16516335025199978394

/-! ## A180384.P16017201495591811153

`A180383(A000096(n+1))+A008683(25*(n+1))`
-/

namespace A180384.P16017201495591811153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (A000096 (n + 1)).toNat + A008683 (25 * (n + 1))

end

end A180384.P16017201495591811153

/-!
# A180385: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..3*n such that x(j) divides x(k) if j divides k.

The programs for A180385, there is no canonical definition to state claims against.
-/

/-! ## A180385.P8119664953279919567

`A180383(∑[n+3]+1)`
-/

namespace A180385.P8119664953279919567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180385.P8119664953279919567

/-! ## A180385.P4463742897759783549

`A180383(Δ[A008778(n)])+char[28]`
-/

namespace A180385.P4463742897759783549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180385.P4463742897759783549

/-! ## A180385.P12254599388879223830

`A180383(Δ[A008778(n)])%A016791(n)`
-/

namespace A180385.P12254599388879223830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180383 (f1 (n + 1) - f1 n).toNat) (A016791 n)

end

end A180385.P12254599388879223830

/-! ## A180385.P17338048392959744335

`A014963(9*n+6)*A180383(Δ[A008778(n)])`
-/

namespace A180385.P17338048392959744335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A180383 (f1 (n + 1) - f1 n).toNat

end

end A180385.P17338048392959744335

/-!
# A180386: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..4*n such that x(j) divides x(k) if j divides k.

The programs for A180386, there is no canonical definition to state claims against.
-/

/-! ## A180386.P2911040907832954823

`A180383(∑[n+3]+n+4)`
-/

namespace A180386.P2911040907832954823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A180386.P2911040907832954823

/-! ## A180386.P8175448750130407209

`A180383(A055998(n+2))+A178798(n)`
-/

namespace A180386.P8175448750130407209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (A055998 (n + 2)).toNat + A178798 n

end

end A180386.P8175448750130407209

/-! ## A180386.P16810968657926288002

`A180383(A055998(n+2))+A034432(n+1)`
-/

namespace A180386.P16810968657926288002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (A055998 (n + 2)).toNat + A034432 (n + 1)

end

end A180386.P16810968657926288002

/-! ## A180386.P9623047354974483395

`A180383(A055998(n+2))+A000038(n+2)`
-/

namespace A180386.P9623047354974483395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (A055998 (n + 2)).toNat + A000038 (n + 2)

end

end A180386.P9623047354974483395

/-! ## A180386.P12458954114227048721

`A180383(A055998(n+2))%A252543(n+1)`
-/

namespace A180386.P12458954114227048721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180383 (A055998 (n + 2)).toNat) (A252543 (n + 1))

end

end A180386.P12458954114227048721

/-!
# A180387: Number of increasing sequences of n integers x(1),...,x(n) with values in 1..5*n such that x(j) divides x(k) if j divides k.

The programs for A180387, there is no canonical definition to state claims against.
-/

/-! ## A180387.P9062006437447864409

`A180383(Δ[A264443(n)])`
-/

namespace A180387.P9062006437447864409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (f1 (n + 1) - f1 n).toNat

end

end A180387.P9062006437447864409

/-! ## A180387.P1396645522161087092

`A180383(A046691(n+3))`
-/

namespace A180387.P1396645522161087092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (A046691 (n + 3)).toNat

end

end A180387.P1396645522161087092

/-! ## A180387.P3267215967712033531

`A180383(A056115(n)+11)`
-/

namespace A180387.P3267215967712033531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (A056115 n + 11).toNat

end

end A180387.P3267215967712033531

/-! ## A180387.P10956672122041467741

`A180383(eq[4, A193592(n)])`
-/

namespace A180387.P10956672122041467741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180387.P10956672122041467741

/-! ## A180387.P11339041007910506965

`A180383(eq[8, A140996(n)])`
-/

namespace A180387.P11339041007910506965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180387.P11339041007910506965

/-!
# A180388: Number of permutations of 1..n with number of rises (p(i+1)>p(i)) different from number of rises in the inverse permutation.

The programs for A180388, there is no canonical definition to state claims against.
-/

/-! ## A180388.P10795927515760412595

`n!-A180389(n)`
-/

namespace A180388.P10795927515760412595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A180389 n

end

end A180388.P10795927515760412595

/-! ## A180388.P4226925134126850471

`A000142(n)-A180389(n)`
-/

namespace A180388.P4226925134126850471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A180389 n

end

end A180388.P4226925134126850471

/-! ## A180388.P6616974860723837779

`A047920(∑[n])-A180389(n)`
-/

namespace A180388.P6616974860723837779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) - A180389 n

end

end A180388.P6616974860723837779

/-! ## A180388.P4143249081342403988

`A126064(∑[n])-A180389(n)`
-/

namespace A180388.P4143249081342403988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (∑ j ∈ Finset.range (n + 1), f1 j) - A180389 n

end

end A180388.P4143249081342403988

/-! ## A180388.P7069108582359454951

`Δ[A003422(n)]-A180389(n)`
-/

namespace A180388.P7069108582359454951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A180389 n

end

end A180388.P7069108582359454951

/-! ## A180388.P5786200672697674607

`∏[A028310(n)]-A180389(n)`
-/

namespace A180388.P5786200672697674607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A180389 n

end

end A180388.P5786200672697674607

/-!
# A180389: Number of permutations of 1..n with number of rises (p(i+1)>p(i)) the same as number of rises in the inverse permutation.

The programs for A180389, there is no canonical definition to state claims against.
-/

/-! ## A180389.P5380952903857830434

`n!-A180388(n)`
-/

namespace A180389.P5380952903857830434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A180388 n

end

end A180389.P5380952903857830434

/-! ## A180389.P1069003468336921801

`A000142(n)-A180388(n)`
-/

namespace A180389.P1069003468336921801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A180388 n

end

end A180389.P1069003468336921801

/-! ## A180389.P8915499424810836184

`A047920(∑[n])-A180388(n)`
-/

namespace A180389.P8915499424810836184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) - A180388 n

end

end A180389.P8915499424810836184

/-! ## A180389.P4513468993529451129

`A126064(∑[n])-A180388(n)`
-/

namespace A180389.P4513468993529451129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (∑ j ∈ Finset.range (n + 1), f1 j) - A180388 n

end

end A180389.P4513468993529451129

/-! ## A180389.P6171806748377221557

`Δ[A003422(n)]-A180388(n)`
-/

namespace A180389.P6171806748377221557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A180388 n

end

end A180389.P6171806748377221557

/-! ## A180389.P5536874782706332596

`∏[A028310(n)]-A180388(n)`
-/

namespace A180389.P5536874782706332596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A180388 n

end

end A180389.P5536874782706332596

/-!
# A180390: Number of permutations of 1..n with the permutation and its inverse having a different number of maxima.

The programs for A180390, there is no canonical definition to state claims against.
-/

/-! ## A180390.P9080369025426613854

`(n+1)!-A180391(n+1)`
-/

namespace A180390.P9080369025426613854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A180391 (n + 1)

end

end A180390.P9080369025426613854

/-! ## A180390.P2814538982889739148

`∏[A348553(n)]-A180391(n+1)`
-/

namespace A180390.P2814538982889739148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A180391 (n + 1)

end

end A180390.P2814538982889739148

/-! ## A180390.P14247825080393356301

`record[A084938(n)]-A180391(n+1)`
-/

namespace A180390.P14247825080393356301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A180391 (n + 1)

end

end A180390.P14247825080393356301

/-! ## A180390.P9501005484977196703

`record[A132159(n)]-A180391(n+1)`
-/

namespace A180390.P9501005484977196703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A180391 (n + 1)

end

end A180390.P9501005484977196703

/-! ## A180390.P8034608721034964561

`record[A233543(n)]-A180391(n+1)`
-/

namespace A180390.P8034608721034964561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A180391 (n + 1)

end

end A180390.P8034608721034964561

/-!
# A180391: Number of permutations of 1..n with the permutation and its inverse having the same number of maxima.

The programs for A180391, there is no canonical definition to state claims against.
-/

/-! ## A180391.P6040697227854890398

`(n+1)!-A180390(n+1)`
-/

namespace A180391.P6040697227854890398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A180390 (n + 1)

end

end A180391.P6040697227854890398

/-! ## A180391.P17500034436533993734

`∏[A348553(n)]-A180390(n+1)`
-/

namespace A180391.P17500034436533993734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A180390 (n + 1)

end

end A180391.P17500034436533993734

/-! ## A180391.P7835289682216445093

`record[A084938(n)]-A180390(n+1)`
-/

namespace A180391.P7835289682216445093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A180390 (n + 1)

end

end A180391.P7835289682216445093

/-! ## A180391.P7545636043144398850

`record[A132159(n)]-A180390(n+1)`
-/

namespace A180391.P7545636043144398850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A180390 (n + 1)

end

end A180391.P7545636043144398850

/-! ## A180391.P17025262732382644532

`record[A233543(n)]-A180390(n+1)`
-/

namespace A180391.P17025262732382644532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A180390 (n + 1)

end

end A180391.P17025262732382644532

/-!
# A180392: Number of permutations of 1..n with both permutation and its inverse having exactly 2 maxima.

The programs for A180392, there is no canonical definition to state claims against.
-/

/-! ## A180392.P12764665291232466719

`(n-1)*A186709(∑[(1-n)²])`
-/

namespace A180392.P12764665291232466719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A186709 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180392.P12764665291232466719

/-! ## A180392.P17622796510392111707

`A006368(A185034(2*n)+A006095(n))`
-/

namespace A180392.P17622796510392111707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A185034 (2 * n) + A006095 n).toNat

end

end A180392.P17622796510392111707

/-!
# A180393: Number of permutations of 1..n with both permutation and its inverse having exactly 3 maxima.

The programs for A180393, there is no canonical definition to state claims against.
-/

/-! ## A180393.P15164338972386500291

`A023980(A000332(n)^3)`
-/

namespace A180393.P15164338972386500291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 (A000332 n ^ 3).toNat

end

end A180393.P15164338972386500291

/-! ## A180393.P113389160470012223

`A384318(abs(1-n)!)`
-/

namespace A180393.P113389160470012223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384318 (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A180393.P113389160470012223

/-!
# A180394: Number of permutations of 1..n with both permutation and its inverse having exactly 4 maxima.

The programs for A180394, there is no canonical definition to state claims against.
-/

/-! ## A180394.P14672307743499340468

`A298187(A061639(n+1))`
-/

namespace A180394.P14672307743499340468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (A061639 (n + 1)).toNat

end

end A180394.P14672307743499340468

/-! ## A180394.P5205693041834269766

`A061579(A011814(n)*A073107(n))`
-/

namespace A180394.P5205693041834269766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A011814 n * A073107 n).toNat

end

end A180394.P5205693041834269766

/-! ## A180394.P1639617342365556760

`A322978(n+1)*A360242(A332641(2*n))`
-/

namespace A180394.P1639617342365556760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322978 (n + 1) * A360242 (A332641 (2 * n)).toNat

end

end A180394.P1639617342365556760

/-! ## A180394.P490390830806468951

`A276837(2*n+3)*A360242(A332641(2*n))`
-/

namespace A180394.P490390830806468951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (2 * n + 3) * A360242 (A332641 (2 * n)).toNat

end

end A180394.P490390830806468951

/-!
# A180397: T(n,m) = binomial(m!,n).

The programs for A180397, the canonical program `A180397.P16163096444392367855` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180397 has offset 1).

The definition of A180397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180397.P16163096444392367855

`C(A004736(n+1)!, A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A180397

/-- `C(A004736(n+1)!, A002260(n+1))` -/
def P16163096444392367855.Spec : Prop :=
  ∀ n, (P16163096444392367855.a n : ℤ) = A180397 (n + 1)

theorem P16163096444392367855.correct : P16163096444392367855.Spec := by
  intro n
  simp only [A180397, Nat.add_sub_cancel]

end A180397

/-! ## A180397.P17833413006802527444

`C(A004736(n+1)!, A002262(n)+1)`
-/

namespace A180397.P17833413006802527444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (A002262 n + 1).toNat

end

end A180397.P17833413006802527444

namespace A180397

/-- `C(A004736(n+1)!, A002262(n)+1)` -/
def P17833413006802527444.Spec : Prop :=
  ∀ n, (P17833413006802527444.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P5697883521551234508

`C((A025581(n)+1)!, A002260(n+1))`
-/

namespace A180397.P5697883521551234508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A025581 n + 1).toNat) (A002260 (n + 1)).toNat

end

end A180397.P5697883521551234508

namespace A180397

/-- `C((A025581(n)+1)!, A002260(n+1))` -/
def P5697883521551234508.Spec : Prop :=
  ∀ n, (P5697883521551234508.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P11208652454421497621

`C(A004736(n+1)!, A285730(n+1))`
-/

namespace A180397.P11208652454421497621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (A285730 (n + 1)).toNat

end

end A180397.P11208652454421497621

namespace A180397

/-- `C(A004736(n+1)!, A285730(n+1))` -/
def P11208652454421497621.Spec : Prop :=
  ∀ n, (P11208652454421497621.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P10335427105201225099

`C(A004736(n+1)!, sqrt(A133819(n+1)))`
-/

namespace A180397.P10335427105201225099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A180397.P10335427105201225099

namespace A180397

/-- `C(A004736(n+1)!, sqrt(A133819(n+1)))` -/
def P10335427105201225099.Spec : Prop :=
  ∀ n, (P10335427105201225099.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P11900991019787576892

`C(A004736(n+1)!, log2(A059268(n))+1)`
-/

namespace A180397.P11900991019787576892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A180397.P11900991019787576892

namespace A180397

/-- `C(A004736(n+1)!, log2(A059268(n))+1)` -/
def P11900991019787576892.Spec : Prop :=
  ∀ n, (P11900991019787576892.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P11193614323731111942

`C((A025581(n)+1)!, log2(A059268(n))+1)`
-/

namespace A180397.P11193614323731111942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A025581 n + 1).toNat) (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A180397.P11193614323731111942

namespace A180397

/-- `C((A025581(n)+1)!, log2(A059268(n))+1)` -/
def P11193614323731111942.Spec : Prop :=
  ∀ n, (P11193614323731111942.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P9544541852426178591

`C(log2(A090988(n+1))!, A002260(n+1))`
-/

namespace A180397.P9544541852426178591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat) (A002260 (n + 1)).toNat

end

end A180397.P9544541852426178591

namespace A180397

/-- `C(log2(A090988(n+1))!, A002260(n+1))` -/
def P9544541852426178591.Spec : Prop :=
  ∀ n, (P9544541852426178591.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P13678530890970414957

`C(ceil(A099375(n)/2)!, A002260(n+1))`
-/

namespace A180397.P13678530890970414957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial ⌈(A099375 n : ℚ) / 2⌉.toNat) (A002260 (n + 1)).toNat

end

end A180397.P13678530890970414957

namespace A180397

/-- `C(ceil(A099375(n)/2)!, A002260(n+1))` -/
def P13678530890970414957.Spec : Prop :=
  ∀ n, (P13678530890970414957.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P12769215354300505680

`C(A057555(2*(n+1))!, A002260(n+1))`
-/

namespace A180397.P12769215354300505680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A057555 (2 * (n + 1))).toNat) (A002260 (n + 1)).toNat

end

end A180397.P12769215354300505680

namespace A180397

/-- `C(A057555(2*(n+1))!, A002260(n+1))` -/
def P12769215354300505680.Spec : Prop :=
  ∀ n, (P12769215354300505680.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P18316839319393041912

`C(A004736(n+1)!, A057555(2*n+1))`
-/

namespace A180397.P18316839319393041912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (A057555 (2 * n + 1)).toNat

end

end A180397.P18316839319393041912

namespace A180397

/-- `C(A004736(n+1)!, A057555(2*n+1))` -/
def P18316839319393041912.Spec : Prop :=
  ∀ n, (P18316839319393041912.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P6533304303742984614

`C(A004736(n+1)!, 1-A057944(n)+n)`
-/

namespace A180397.P6533304303742984614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (1 - A057944 n + (n : ℤ)).toNat

end

end A180397.P6533304303742984614

namespace A180397

/-- `C(A004736(n+1)!, 1-A057944(n)+n)` -/
def P6533304303742984614.Spec : Prop :=
  ∀ n, (P6533304303742984614.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P15085208376537100049

`C((A127739(n+1)-n)!, A002260(n+1))`
-/

namespace A180397.P15085208376537100049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A127739 (n + 1) - (n : ℤ)).toNat) (A002260 (n + 1)).toNat

end

end A180397.P15085208376537100049

namespace A180397

/-- `C((A127739(n+1)-n)!, A002260(n+1))` -/
def P15085208376537100049.Spec : Prop :=
  ∀ n, (P15085208376537100049.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P12406291320862535229

`C((A127739(n+1)-n)!, log2(A059268(n))+1)`
-/

namespace A180397.P12406291320862535229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A127739 (n + 1) - (n : ℤ)).toNat) (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A180397.P12406291320862535229

namespace A180397

/-- `C((A127739(n+1)-n)!, log2(A059268(n))+1)` -/
def P12406291320862535229.Spec : Prop :=
  ∀ n, (P12406291320862535229.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P18233951284746236626

`C((A057554(2*(n+1))+1)!, A002260(n+1))`
-/

namespace A180397.P18233951284746236626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A057554 (2 * (n + 1)) + 1).toNat) (A002260 (n + 1)).toNat

end

end A180397.P18233951284746236626

namespace A180397

/-- `C((A057554(2*(n+1))+1)!, A002260(n+1))` -/
def P18233951284746236626.Spec : Prop :=
  ∀ n, (P18233951284746236626.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P4726642476472664191

`C(A166350(A038722(n+1)), A002260(n+1))`
-/

namespace A180397.P4726642476472664191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A166350 (A038722 (n + 1)).toNat).toNat (A002260 (n + 1)).toNat

end

end A180397.P4726642476472664191

namespace A180397

/-- `C(A166350(A038722(n+1)), A002260(n+1))` -/
def P4726642476472664191.Spec : Prop :=
  ∀ n, (P4726642476472664191.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P5255228049189536151

`C(A004736(n+1)!, A025581(A061579(n))+1)`
-/

namespace A180397.P5255228049189536151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (A025581 (A061579 n).toNat + 1).toNat

end

end A180397.P5255228049189536151

namespace A180397

/-- `C(A004736(n+1)!, A025581(A061579(n))+1)` -/
def P5255228049189536151.Spec : Prop :=
  ∀ n, (P5255228049189536151.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P3977081644293970478

`C(A004736(n+1)!, A103406(n)/A007318(n))`
-/

namespace A180397.P3977081644293970478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A103406 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A180397.P3977081644293970478

namespace A180397

/-- `C(A004736(n+1)!, A103406(n)/A007318(n))` -/
def P3977081644293970478.Spec : Prop :=
  ∀ n, (P3977081644293970478.a n : ℤ) = A180397 (n + 1)

end A180397

/-! ## A180397.P5621953919830921884

`C(A004736(n+1)!, A080508(n+1))`
-/

namespace A180397.P5621953919830921884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (A080508 (n + 1)).toNat

end

end A180397.P5621953919830921884

namespace A180397

/-- `C(A004736(n+1)!, A080508(n+1))` -/
def P5621953919830921884.Spec : Prop :=
  ∀ n, (P5621953919830921884.a n : ℤ) = A180397 (n + 1)

end A180397

/-!
# A180399: Expansion of (1/3)*(1 - (1-9*x-9*x^2)^(1/3)).

The programs for A180399, there is no canonical definition to state claims against.
-/

/-! ## A180399.P6002148270914718560

`A008615(A092055(n)+2*n)`
-/

namespace A180399.P6002148270914718560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A092055 n + (2 * n : ℤ)).toNat

end

end A180399.P6002148270914718560

