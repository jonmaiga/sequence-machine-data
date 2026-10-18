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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A124400: a(n) = a(n-1) + 3*a(n-2) - a(n-4), with a(0)=1, a(1)=1, a(2)=4, a(3)=7.

The programs for A124400, the canonical program `A124400.P17438814844429360264` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124400 has offset 0).

The definition of A124400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-a(n-4)` (program `A124400.P17438814844429360264`, by `A124400.P17438814844429360264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124400.P17438814844429360264

`a(n-1)+3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124400

/-- `a(n-1)+3*a(n-2)-a(n-4)` -/
def P17438814844429360264.Spec : Prop :=
  ∀ n, P17438814844429360264.a n = A124400 n

theorem P17438814844429360264.correct : P17438814844429360264.Spec := by
  intro n
  simp only [A124400]

end A124400

/-! ## A124400.P11025752764659309692

`ogf(1/(1-x-3x^2+x^4))`
-/

namespace A124400.P11025752764659309692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3, 0, 1] n

end

end A124400.P11025752764659309692

namespace A124400

/-- `ogf(1/(1-x-3x^2+x^4))` -/
def P11025752764659309692.Spec : Prop :=
  ∀ n, P11025752764659309692.a n = A124400 n

end A124400

/-! ## A124400.P8670942610574272941

`A106805(n)-a(n-1)` with `a(0)=1`
-/

namespace A124400.P8670942610574272941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106805 n - a (n - 1)

end

end A124400.P8670942610574272941

namespace A124400

/-- `A106805(n)-a(n-1)` -/
def P8670942610574272941.Spec : Prop :=
  ∀ n, P8670942610574272941.a n = A124400 n

end A124400

/-! ## A124400.P7273023217766450509

`A077998(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A124400.P7273023217766450509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A077998 n + a (n - 2)

end

end A124400.P7273023217766450509

namespace A124400

/-- `A077998(n)+a(n-2)` -/
def P7273023217766450509.Spec : Prop :=
  ∀ n, P7273023217766450509.a n = A124400 n

end A124400

/-! ## A124400.P15969100464485538702

`A006054(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A124400.P15969100464485538702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006054 (n + 2) - a (n - 1)

end

end A124400.P15969100464485538702

namespace A124400

/-- `A006054(n+2)-a(n-1)` -/
def P15969100464485538702.Spec : Prop :=
  ∀ n, P15969100464485538702.a n = A124400 n

end A124400

/-! ## A124400.P15530283960728824853

`∑[A106803(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A124400.P15530283960728824853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A106803 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124400.P15530283960728824853

namespace A124400

/-- `∑[A106803(n+1)-a(n-1)]` -/
def P15530283960728824853.Spec : Prop :=
  ∀ n, P15530283960728824853.a n = A124400 n

end A124400

/-! ## A124400.P3858175877720234447

`Δ[A077998(n)+A038189(2*n+1)]`
-/

namespace A124400.P3858175877720234447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n + A038189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124400.P3858175877720234447

namespace A124400

/-- `Δ[A077998(n)+A038189(2*n+1)]` -/
def P3858175877720234447.Spec : Prop :=
  ∀ n, P3858175877720234447.a n = A124400 n

end A124400

/-! ## A124400.P12001616929262253049

`Δ[A106803(n+1)+A038189(2*n+1)]`
-/

namespace A124400.P12001616929262253049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1) + A038189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124400.P12001616929262253049

namespace A124400

/-- `Δ[A106803(n+1)+A038189(2*n+1)]` -/
def P12001616929262253049.Spec : Prop :=
  ∀ n, P12001616929262253049.a n = A124400 n

end A124400

/-! ## A124400.P14936378255991101383

`∑[A033999(n)*A106805(n)]*A033999(n)`
-/

namespace A124400.P14936378255991101383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A106805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A124400.P14936378255991101383

namespace A124400

/-- `∑[A033999(n)*A106805(n)]*A033999(n)` -/
def P14936378255991101383.Spec : Prop :=
  ∀ n, P14936378255991101383.a n = A124400 n

end A124400

/-! ## A124400.P2542830129071213086

`abs(A077920(n))`
-/

namespace A124400.P2542830129071213086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077920 n|

end

end A124400.P2542830129071213086

namespace A124400

/-- `abs(A077920(n))` -/
def P2542830129071213086.Spec : Prop :=
  ∀ n, P2542830129071213086.a n = A124400 n

end A124400

/-! ## A124400.P15136513436676685835

`Δ[A052534(n)]-a(n-1)` with `a(0)=1`
-/

namespace A124400.P15136513436676685835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A124400.P15136513436676685835

namespace A124400

/-- `Δ[A052534(n)]-a(n-1)` -/
def P15136513436676685835.Spec : Prop :=
  ∀ n, P15136513436676685835.a n = A124400 n

end A124400

/-! ## A124400.P8352664490973380200

`A033999(n)*A077920(n)`
-/

namespace A124400.P8352664490973380200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077920 n

end

end A124400.P8352664490973380200

namespace A124400

/-- `A033999(n)*A077920(n)` -/
def P8352664490973380200.Spec : Prop :=
  ∀ n, P8352664490973380200.a n = A124400 n

end A124400

/-! ## A124400.P14032699055408131206

`gcd(A000038(n), A077920(n))`
-/

namespace A124400.P14032699055408131206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077920 n)

end

end A124400.P14032699055408131206

namespace A124400

/-- `gcd(A000038(n), A077920(n))` -/
def P14032699055408131206.Spec : Prop :=
  ∀ n, (P14032699055408131206.a n : ℤ) = A124400 n

end A124400

/-! ## A124400.P17596767175008817003

`lcm(A020985(n), A077920(n))`
-/

namespace A124400.P17596767175008817003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A077920 n)

end

end A124400.P17596767175008817003

namespace A124400

/-- `lcm(A020985(n), A077920(n))` -/
def P17596767175008817003.Spec : Prop :=
  ∀ n, (P17596767175008817003.a n : ℤ) = A124400 n

end A124400

/-! ## A124400.P16649155623373293435

`Δ[Δ[A006054(n+1)-A008619(n+1)]]`
-/

namespace A124400.P16649155623373293435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1) - A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124400.P16649155623373293435

namespace A124400

/-- `Δ[Δ[A006054(n+1)-A008619(n+1)]]` -/
def P16649155623373293435.Spec : Prop :=
  ∀ n, P16649155623373293435.a n = A124400 n

end A124400

/-! ## A124400.P1942021982140141524

`A052534(n+1)-(A052534(n)+a(n-1))` with `a(0)=1`
-/

namespace A124400.P1942021982140141524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052534 (n + 1) - (A052534 n + a (n - 1))

end

end A124400.P1942021982140141524

namespace A124400

/-- `A052534(n+1)-(A052534(n)+a(n-1))` -/
def P1942021982140141524.Spec : Prop :=
  ∀ n, P1942021982140141524.a n = A124400 n

end A124400

/-!
# A124401: Indices where 2 occurs in A124151.

The programs for A124401, there is no canonical definition to state claims against.
-/

/-! ## A124401.P6144895109263000058

`filter[A127936(n+1), A267810(#)]`
-/

namespace A124401.P6144895109263000058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A124401.P6144895109263000058

/-! ## A124401.P7136169091286282306

`filter[A127936(n+2), A267813(#)]`
-/

namespace A124401.P7136169091286282306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A124401.P7136169091286282306

/-! ## A124401.P16786245976293344396

`eq[A005171(n+1), A085245(2*n+1)]`
-/

namespace A124401.P16786245976293344396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085245 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124401.P16786245976293344396

/-! ## A124401.P5643148866964823937

`lt[A001105(A085245(2*n+1)), A000005(n+1)]`
-/

namespace A124401.P5643148866964823937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A085245 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124401.P5643148866964823937

/-! ## A124401.P9497961964206421165

`lt[A000539(A085245(2*n+1)), A001222(n+1)]`
-/

namespace A124401.P9497961964206421165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A085245 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124401.P9497961964206421165

/-!
# A124402: Numbers k such that 3^k mod 2^k < 3^(k-1) mod 2^(k-1).

The programs for A124402, there is no canonical definition to state claims against.
-/

/-! ## A124402.P2032936245537208641

`lt[Δ[A002380(n)], 0]+1`
-/

namespace A124402.P2032936245537208641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A124402.P2032936245537208641

/-! ## A124402.P2377322051701523122

`lt[Δ[A060692(n+1)], 1]+2`
-/

namespace A124402.P2377322051701523122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060692 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A124402.P2377322051701523122

/-! ## A124402.P14732276197890929091

`A020725(lt[Δ[A002380(n)], 0])`
-/

namespace A124402.P14732276197890929091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A124402.P14732276197890929091

/-! ## A124402.P17154758739407019883

`lt[A002380(n+1), A002380(n)]+1`
-/

namespace A124402.P17154758739407019883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A124402.P17154758739407019883

/-! ## A124402.P15687101782758766795

`A020725(lt[A002380(n+1), A002380(n)])`
-/

namespace A124402.P15687101782758766795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124402.P15687101782758766795

/-!
# A124403: a(n) = -1 + Sum_{i=1..n} Sum_{j=1..n} i^j.

The programs for A124403, there is no canonical definition to state claims against.
-/

/-! ## A124403.P13745829658878888659

`A086787(n+1)-1`
-/

namespace A124403.P13745829658878888659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086787 (n + 1) - 1

end

end A124403.P13745829658878888659

/-! ## A124403.P17084212667681342786

`A124405(n+1)-2`
-/

namespace A124403.P17084212667681342786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124405 (n + 1) - 2

end

end A124403.P17084212667681342786

/-! ## A124403.P5229555492853320292

`A134824(n+2)+A086787(n+1)`
-/

namespace A124403.P5229555492853320292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A086787 (n + 1)

end

end A124403.P5229555492853320292

/-! ## A124403.P11214403715792770641

`A260196(n+2)+A086787(n+1)`
-/

namespace A124403.P11214403715792770641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A086787 (n + 1)

end

end A124403.P11214403715792770641

/-! ## A124403.P7598314712018189363

`A134667(A016969(n))+A086787(n+1)`
-/

namespace A124403.P7598314712018189363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A016969 n).toNat + A086787 (n + 1)

end

end A124403.P7598314712018189363

/-!
# A124404: Nonpalindromes in base 10 that are non-palindromes in base 2.

The programs for A124404, there is no canonical definition to state claims against.
-/

/-! ## A124404.P15204761675564268992

`lt[A136522(n), A178226(n)]`
-/

namespace A124404.P15204761675564268992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124404.P15204761675564268992

/-! ## A124404.P5447382514064603452

`lt[A202022(n), A178226(n)]`
-/

namespace A124404.P5447382514064603452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124404.P5447382514064603452

/-! ## A124404.P7288550377287691018

`lt[Δ[A262038(n)], A303534(n)]`
-/

namespace A124404.P7288550377287691018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A124404.P7288550377287691018

/-! ## A124404.P18084752202590613387

`eq[sin(A136522(n)), A178225(n)]`
-/

namespace A124404.P18084752202590613387
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A136522 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A124404.P18084752202590613387

/-! ## A124404.P3198806002324994474

`eq[sin(A178225(n)), A202022(n)]`
-/

namespace A124404.P3198806002324994474
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A178225 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A124404.P3198806002324994474

/-! ## A124404.P17564987406239539354

`filter[A029742(n+1), A178226(#)]`
-/

namespace A124404.P17564987406239539354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A124404.P17564987406239539354

/-! ## A124404.P5058142477620230493

`filter[A031955(n+1), A178226(#)]`
-/

namespace A124404.P5058142477620230493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A124404.P5058142477620230493

/-! ## A124404.P2378325191452701210

`filter[A043638(n+1), A178226(#)]`
-/

namespace A124404.P2378325191452701210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A124404.P2378325191452701210

/-! ## A124404.P3121942092394600296

`filter[A139819(n+1), A178226(#)]`
-/

namespace A124404.P3121942092394600296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A124404.P3121942092394600296

/-! ## A124404.P1049588019784835518

`filter[A280824(n+1), A178226(#)]`
-/

namespace A124404.P1049588019784835518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A124404.P1049588019784835518

/-!
# A124405: a(n) = 1 + Sum_{i=1..n} Sum_{j=1..n} i^j.

The programs for A124405, there is no canonical definition to state claims against.
-/

/-! ## A124405.P16934093918299806353

`A086787(n+1)+1`
-/

namespace A124405.P16934093918299806353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086787 (n + 1) + 1

end

end A124405.P16934093918299806353

/-! ## A124405.P4241952969104615709

`A124403(n+1)+2`
-/

namespace A124405.P4241952969104615709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124403 (n + 1) + 2

end

end A124405.P4241952969104615709

/-!
# A124407: For n >= 1, 1 = Sum_{n/2<=k

The programs for A124407, there is no canonical definition to state claims against.
-/

/-! ## A124407.P17307521022458981152

`A309970(gcd(A132624(n+1), A309965(n+2)))`
-/

namespace A124407.P17307521022458981152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309970 (Int.gcd (A132624 (n + 1)) (A309965 (n + 2)))

end

end A124407.P17307521022458981152

/-! ## A124407.P1220023323786607631

`A257234(A257234(n)+∑[A257302(n+1)])`
-/

namespace A124407.P1220023323786607631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257234 (A257234 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124407.P1220023323786607631

/-! ## A124407.P7482211840814342172

`A115525(A115551(n+1)%A115454(n+1))`
-/

namespace A124407.P7482211840814342172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115525 (Int.tmod (A115551 (n + 1)) (A115454 (n + 1))).toNat

end

end A124407.P7482211840814342172

/-! ## A124407.P14667313885565842518

`A016363(A211644(n)%A130780(n))`
-/

namespace A124407.P14667313885565842518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (Int.tmod (A211644 n) (A130780 n)).toNat

end

end A124407.P14667313885565842518

/-! ## A124407.P3862570294300050121

`1-A358724(A325698(n+1))`
-/

namespace A124407.P3862570294300050121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A358724 (A325698 (n + 1)).toNat

end

end A124407.P3862570294300050121

/-!
# A124408: Numbers k such that 2k+1, 4k+1 and 6k+1 are primes.

The programs for A124408, there is no canonical definition to state claims against.
-/

/-! ## A124408.P8488675816319912381

`A105652(n+1)+1`
-/

namespace A124408.P8488675816319912381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105652 (n + 1) + 1

end

end A124408.P8488675816319912381

/-! ## A124408.P16254271533968246155

`floor(A174734(n+1)/2)`
-/

namespace A124408.P16254271533968246155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174734 (n + 1) : ℚ) / 2⌋

end

end A124408.P16254271533968246155

/-! ## A124408.P488784259012733739

`floor(A137702(n+1)/4)`
-/

namespace A124408.P488784259012733739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137702 (n + 1) : ℚ) / 4⌋

end

end A124408.P488784259012733739

/-! ## A124408.P1466696161272590548

`(A137702(n+1)-A174734(n+1))/2`
-/

namespace A124408.P1466696161272590548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137702 (n + 1) - A174734 (n + 1) : ℚ) / 2

end

end A124408.P1466696161272590548

/-! ## A124408.P7022650362230004001

`(A174734(n+1)-A160467(A087688(n+1)))/2`
-/

namespace A124408.P7022650362230004001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174734 (n + 1) - A160467 (A087688 (n + 1)).toNat : ℚ) / 2

end

end A124408.P7022650362230004001

/-! ## A124408.P13068433887251824658

`(A174734(n+1)-1)/2%A031168(n+3)`
-/

namespace A124408.P13068433887251824658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174734 (n + 1) - 1 : ℚ) / (Int.tmod 2 (A031168 (n + 3)) : ℚ)

end

end A124408.P13068433887251824658

/-! ## A124408.P12288417261840481162

`floor(p?[A130800(n+1)+1]/2)`
-/

namespace A124408.P12288417261840481162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130800 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A124408.P12288417261840481162

/-! ## A124408.P18073618523165684259

`∩[A123998(n+1), A255607(n+1)]`
-/

namespace A124408.P18073618523165684259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124408.P18073618523165684259

/-! ## A124408.P9132569398166383133

`∩[A123998(n+1), A174100(n+1)]`
-/

namespace A124408.P9132569398166383133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124408.P9132569398166383133

/-! ## A124408.P366650172869089846

`∩[A174100(n+1), A255607(n+1)]`
-/

namespace A124408.P366650172869089846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124408.P366650172869089846

/-! ## A124408.P14603921819977269651

`∩[A005098(n+1), A174100(n+1)]`
-/

namespace A124408.P14603921819977269651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124408.P14603921819977269651

/-! ## A124408.P13325929371702238748

`A273943(A174734(n+1)-1)`
-/

namespace A124408.P13325929371702238748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A174734 (n + 1) - 1).toNat

end

end A124408.P13325929371702238748

/-! ## A124408.P5481679709105145841

`A273943(xor(1, A174734(n+1)))`
-/

namespace A124408.P5481679709105145841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.xor 1 (A174734 (n + 1))).toNat

end

end A124408.P5481679709105145841

/-! ## A124408.P12771006610411926005

`∩[A005097(n+1), A255607(n+1)]`
-/

namespace A124408.P12771006610411926005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124408.P12771006610411926005

/-! ## A124408.P5106426687648877395

`∩[A102781(n+1), A255607(n+1)]`
-/

namespace A124408.P5106426687648877395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124408.P5106426687648877395

/-! ## A124408.P9349399339844350606

`A014682(A174734(n+1)-1)`
-/

namespace A124408.P9349399339844350606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A174734 (n + 1) - 1).toNat

end

end A124408.P9349399339844350606

/-! ## A124408.P17681923887589262280

`A014682(xor(1, A174734(n+1)))`
-/

namespace A124408.P17681923887589262280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A174734 (n + 1))).toNat

end

end A124408.P17681923887589262280

/-! ## A124408.P1339574370874850309

`filter[A255607(n+1), A101264(#)]`
-/

namespace A124408.P1339574370874850309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A124408.P1339574370874850309

/-! ## A124408.P16719950300977723268

`A014682((A137702(n+1)-1)/2)`
-/

namespace A124408.P16719950300977723268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A137702 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A124408.P16719950300977723268

/-! ## A124408.P8332074505799815817

`A000010(A000010(A174734(n+1))+1)/2`
-/

namespace A124408.P8332074505799815817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000010 (A174734 (n + 1)).toNat + 1).toNat : ℚ) / 2

end

end A124408.P8332074505799815817

/-!
# A124409: Numbers k such that 2k+1, 4k+1, 6k+1 and 8k+1 are primes.

The programs for A124409, there is no canonical definition to state claims against.
-/

/-! ## A124409.P12905855462684278534

`A237189(n+1)/2`
-/

namespace A124409.P12905855462684278534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237189 (n + 1) : ℚ) / 2

end

end A124409.P12905855462684278534

/-! ## A124409.P12327480539174744950

`floor(A336059(n+1)/2)`
-/

namespace A124409.P12327480539174744950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A336059 (n + 1) : ℚ) / 2⌋

end

end A124409.P12327480539174744950

/-! ## A124409.P2451280244429569684

`A153881(n+1)²+(A336059(n+1)-3)/2`
-/

namespace A124409.P2451280244429569684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) ^ 2 : ℚ) + (A336059 (n + 1) - 3 : ℚ) / 2

end

end A124409.P2451280244429569684

/-! ## A124409.P525794672279039874

`(A336059(n+1)-3)/2-A008683(A051698(n))`
-/

namespace A124409.P525794672279039874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2 - (A008683 (A051698 n).toNat : ℚ)

end

end A124409.P525794672279039874

/-! ## A124409.P10872832958675525325

`(A336059(n+1)-3)/2-A008683(A023583(n+1))`
-/

namespace A124409.P10872832958675525325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2 - (A008683 (A023583 (n + 1)).toNat : ℚ)

end

end A124409.P10872832958675525325

/-! ## A124409.P5698260842781265156

`(A336059(n+1)-3)/2-A008683(A005382(n+1))`
-/

namespace A124409.P5698260842781265156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2 - (A008683 (A005382 (n + 1)).toNat : ℚ)

end

end A124409.P5698260842781265156

/-! ## A124409.P10056868506858719254

`∩[A124041(n+1), A124408(n+1)]`
-/

namespace A124409.P10056868506858719254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124409.P10056868506858719254

/-! ## A124409.P5441597574548184510

`(A336059(n+1)-3)/2-A008683(A089965(n+1)+1)`
-/

namespace A124409.P5441597574548184510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2 - (A008683 (A089965 (n + 1) + 1).toNat : ℚ)

end

end A124409.P5441597574548184510

/-! ## A124409.P155026619896525935

`2^A008683(A142644(n+1))*A237189(n+1)`
-/

namespace A124409.P155026619896525935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ) * (A237189 (n + 1) : ℚ)

end

end A124409.P155026619896525935

/-! ## A124409.P11218821056278117735

`(A336059(n+1)-3)/2-A008683(A174734(n+1))`
-/

namespace A124409.P11218821056278117735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2 - (A008683 (A174734 (n + 1)).toNat : ℚ)

end

end A124409.P11218821056278117735

/-! ## A124409.P15762887886276954906

`∩[A124408(n+1), A320599(n+1)]`
-/

namespace A124409.P15762887886276954906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124409.P15762887886276954906

/-! ## A124409.P17176816345024242962

`(A336059(n+1)-3)/2-A008683(A137702(n+1))`
-/

namespace A124409.P17176816345024242962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336059 (n + 1) - 3 : ℚ) / 2 - (A008683 (A137702 (n + 1)).toNat : ℚ)

end

end A124409.P17176816345024242962

/-!
# A124410: Numbers k such that 2k+1, 4k+1, 6k+1, 8k+1 and 10k+1 are primes.

The programs for A124410, there is no canonical definition to state claims against.
-/

/-! ## A124410.P8868171780376347060

`A237190(n+1)/2`
-/

namespace A124410.P8868171780376347060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237190 (n + 1) : ℚ) / 2

end

end A124410.P8868171780376347060

/-! ## A124410.P8919655006699252297

`A105654(n+1)+1`
-/

namespace A124410.P8919655006699252297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105654 (n + 1) + 1

end

end A124410.P8919655006699252297

/-!
# A124411: Numbers k such that 2k+1, 4k+1, 6k+1, 8k+1, 10k+1 and 12k+1 are primes.

The programs for A124411, there is no canonical definition to state claims against.
-/

/-! ## A124411.P18057077302175863262

`A105655(n+1)+1`
-/

namespace A124411.P18057077302175863262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105655 (n + 1) + 1

end

end A124411.P18057077302175863262

/-!
# A124412: Numbers k such that 2*k+1, 4*k+1, 8*k+1 and 16*k+1 are primes.

The programs for A124412, there is no canonical definition to state claims against.
-/

/-! ## A124412.P1850732541589455391

`floor(A057327(n+1)/2)`
-/

namespace A124412.P1850732541589455391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057327 (n + 1) : ℚ) / 2⌋

end

end A124412.P1850732541589455391

/-! ## A124412.P14633837890320781316

`(A057327(n+1)-A000035(2*n+1))/2`
-/

namespace A124412.P14633837890320781316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057327 (n + 1) - A000035 (2 * n + 1) : ℚ) / 2

end

end A124412.P14633837890320781316

/-! ## A124412.P5009912826239932906

`(A057327(n+1)-A023532(3*n+1))/2`
-/

namespace A124412.P5009912826239932906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057327 (n + 1) - A023532 (3 * n + 1) : ℚ) / 2

end

end A124412.P5009912826239932906

/-! ## A124412.P15622778463933555458

`A014682(A057327(n+1)-1)`
-/

namespace A124412.P15622778463933555458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057327 (n + 1) - 1).toNat

end

end A124412.P15622778463933555458

/-! ## A124412.P6599619582274922501

`A305897(A057327(n+1)-3)`
-/

namespace A124412.P6599619582274922501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A057327 (n + 1) - 3).toNat

end

end A124412.P6599619582274922501

/-!
# A124413: Numbers k such that 2*k+1, 4*k+1, 8*k+1, 16*k+1 and 32*k+1 are primes.

The programs for A124413, there is no canonical definition to state claims against.
-/

/-! ## A124413.P2174085590446471873

`floor(A057328(n+1)/2)`
-/

namespace A124413.P2174085590446471873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057328 (n + 1) : ℚ) / 2⌋

end

end A124413.P2174085590446471873

/-! ## A124413.P12835093402876164541

`ceil(A057328(2*n-n+1)/2)-1`
-/

namespace A124413.P12835093402876164541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057328 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℚ) / 2⌉ - 1

end

end A124413.P12835093402876164541

/-! ## A124413.P8041048598897405097

`A057428(n+1)+ceil(A057328(n+1)/2)`
-/

namespace A124413.P8041048598897405097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ⌈(A057328 (n + 1) : ℚ) / 2⌉

end

end A124413.P8041048598897405097

/-! ## A124413.P17278376412164806732

`ceil(A057328(n+1)/2-A000045(gcd(n, n+1)))`
-/

namespace A124413.P17278376412164806732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057328 (n + 1) : ℚ) / 2 - (A000045 (Nat.gcd n (n + 1)) : ℚ)⌉

end

end A124413.P17278376412164806732

/-! ## A124413.P17966657473746704195

`ceil(A033999(A319101(n+1))+A057328(n+1)/2)`
-/

namespace A124413.P17966657473746704195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (A319101 (n + 1)).toNat : ℚ) + (A057328 (n + 1) : ℚ) / 2⌉

end

end A124413.P17966657473746704195

/-! ## A124413.P9617495771247884118

`floor(p?[A124412(n+1)+1]/2)`
-/

namespace A124413.P9617495771247884118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124412 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A124413.P9617495771247884118

/-!
# A124414: Numbers k such that 2*k+1, 4*k+1, 8*k+1, 16*k+1, 32*k+1 and 64*k+1 are primes.

The programs for A124414, there is no canonical definition to state claims against.
-/

/-! ## A124414.P16133415986464068476

`floor(A057329(n+1)/2)`
-/

namespace A124414.P16133415986464068476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057329 (n + 1) : ℚ) / 2⌋

end

end A124414.P16133415986464068476

/-! ## A124414.P6429565799562582558

`(A057329(A000027(n+1))-1)/2`
-/

namespace A124414.P6429565799562582558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057329 (A000027 (n + 1)).toNat - 1 : ℚ) / 2

end

end A124414.P6429565799562582558

/-! ## A124414.P4313627055500862322

`ceil((A057329(n+1)-A321090(3*n))/2)`
-/

namespace A124414.P4313627055500862322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057329 (n + 1) - A321090 (3 * n) : ℚ) / 2⌉

end

end A124414.P4313627055500862322

/-!
# A124417: a(n) = least k such that 2^i*k+1 is prime for 1<=i<=n.

The programs for A124417, there is no canonical definition to state claims against.
-/

/-! ## A124417.P10221827733669226625

`765%A224540(2^n)`
-/

namespace A124417.P10221827733669226625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 765 (A224540 (2 ^ n))

end

end A124417.P10221827733669226625

/-!
# A124418: Triangle read by rows: T(n,k) is the number of partitions of the set {1,2,...,n} having exactly k blocks that contain both odd and even entries (0<=k<=floor(n/2)).

The programs for A124418, there is no canonical definition to state claims against.
-/

/-! ## A124418.P6049840631535323455

`A055087(n)!*A124526(n)`
-/

namespace A124418.P6049840631535323455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A055087 n).toNat : ℤ) * A124526 n

end

end A124418.P6049840631535323455

/-!
# A124419: Number of partitions of the set {1,2,...n} having no blocks that contain both odd and even entries.

The programs for A124419, there is no canonical definition to state claims against.
-/

/-! ## A124419.P9551831808116636697

`A000110(floor(n/2))*A000110(ceil(n/2))`
-/

namespace A124419.P9551831808116636697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ⌊(n : ℚ) / 2⌋.toNat * A000110 ⌈(n : ℚ) / 2⌉.toNat

end

end A124419.P9551831808116636697

/-! ## A124419.P1709964700288608369

`A363493(∑[abs(1-n)])`
-/

namespace A124419.P1709964700288608369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363493 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124419.P1709964700288608369

/-! ## A124419.P17159576174586168459

`A124418(∑[∑[and(1, n)]])`
-/

namespace A124419.P17159576174586168459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124419.P17159576174586168459

/-! ## A124419.P5902115486368058052

`A124418(∑[A110654(n)])`
-/

namespace A124419.P5902115486368058052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124419.P5902115486368058052

/-! ## A124419.P5862053428322775413

`A124418(A002620(n+1))`
-/

namespace A124419.P5862053428322775413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (A002620 (n + 1)).toNat

end

end A124419.P5862053428322775413

/-! ## A124419.P9891266816941243560

`A124418(A076921(n+1))`
-/

namespace A124419.P9891266816941243560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (A076921 (n + 1)).toNat

end

end A124419.P9891266816941243560

/-! ## A124419.P18205715118486172481

`A124418(A182531(n+1))`
-/

namespace A124419.P18205715118486172481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (A182531 (n + 1)).toNat

end

end A124419.P18205715118486172481

/-! ## A124419.P249136405049638848

`A124418(A000217(n)-A002620(n))`
-/

namespace A124419.P249136405049638848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (A000217 n - A002620 n).toNat

end

end A124419.P249136405049638848

/-! ## A124419.P2639694007610907593

`A275069(∑[n+3])`
-/

namespace A124419.P2639694007610907593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124419.P2639694007610907593

/-! ## A124419.P5699782905518275227

`A144155(A194274(n))`
-/

namespace A124419.P5699782905518275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 (A194274 n).toNat

end

end A124419.P5699782905518275227

/-!
# A124421: Number of partitions of the set {1,2,...,n} having no blocks that contain only odd entries.

The programs for A124421, there is no canonical definition to state claims against.
-/

/-! ## A124421.P7769871495718179695

`A108458(A000982(n+1))`
-/

namespace A124421.P7769871495718179695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A000982 (n + 1)).toNat

end

end A124421.P7769871495718179695

/-! ## A124421.P14086397048657798010

`A108458(A030978(n+1))`
-/

namespace A124421.P14086397048657798010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A030978 (n + 1)).toNat

end

end A124421.P14086397048657798010

/-! ## A124421.P3318330584209297540

`A124420(A024206(n+1))`
-/

namespace A124421.P3318330584209297540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (A024206 (n + 1)).toNat

end

end A124421.P3318330584209297540

/-! ## A124421.P8047008320598336464

`A124420(A002620(n)+n)`
-/

namespace A124421.P8047008320598336464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (A002620 n + (n : ℤ)).toNat

end

end A124421.P8047008320598336464

/-! ## A124421.P1144174527592067804

`A124420(∑[A008619(n)]-1)`
-/

namespace A124421.P1144174527592067804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A124421.P1144174527592067804

/-! ## A124421.P16557557509300850889

`A124420(record[A002620(n)-n])`
-/

namespace A124421.P16557557509300850889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124421.P16557557509300850889

/-! ## A124421.P18027783071615531898

`A108458(A099392(n+1)+n)`
-/

namespace A124421.P18027783071615531898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A099392 (n + 1) + (n : ℤ)).toNat

end

end A124421.P18027783071615531898

/-! ## A124421.P6964731465868952047

`A124420(∑[A008619(n)%A005408(n)])`
-/

namespace A124421.P6964731465868952047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124421.P6964731465868952047

/-!
# A124423: Number of partitions of the set {1,2,...,n} having no blocks that contain only even entries.

The programs for A124423, there is no canonical definition to state claims against.
-/

/-! ## A124423.P2487625802283638101

`A124422(∑[A110654(n)])`
-/

namespace A124423.P2487625802283638101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124423.P2487625802283638101

/-! ## A124423.P8098959871222294587

`A124422(A002620(n+1))`
-/

namespace A124423.P8098959871222294587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (A002620 (n + 1)).toNat

end

end A124423.P8098959871222294587

/-! ## A124423.P17512885076659691462

`A108458(A080827(n+1))`
-/

namespace A124423.P17512885076659691462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A080827 (n + 1)).toNat

end

end A124423.P17512885076659691462

/-! ## A124423.P13897567987130705453

`A124422(A076921(n+1))`
-/

namespace A124423.P13897567987130705453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (A076921 (n + 1)).toNat

end

end A124423.P13897567987130705453

/-! ## A124423.P771007868712293085

`A124422(A182531(n+1))`
-/

namespace A124423.P771007868712293085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (A182531 (n + 1)).toNat

end

end A124423.P771007868712293085

/-! ## A124423.P9949298953250353017

`A108458(A099392(n+2))`
-/

namespace A124423.P9949298953250353017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A099392 (n + 2)).toNat

end

end A124423.P9949298953250353017

/-! ## A124423.P8512269570328880673

`A124422(∑[∑[A000035(n)]])`
-/

namespace A124423.P8512269570328880673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124423.P8512269570328880673

/-! ## A124423.P13276570169559557038

`A124422(∑[n]-A002620(n))`
-/

namespace A124423.P13276570169559557038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002620 n).toNat

end

end A124423.P13276570169559557038

/-! ## A124423.P272106736360392784

`A108458(A000982(n)+1+n)`
-/

namespace A124423.P272106736360392784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A000982 n + 1 + (n : ℤ)).toNat

end

end A124423.P272106736360392784

/-! ## A124423.P11247512126584978958

`A124422(A110654(n+1)*A110654(n))`
-/

namespace A124423.P11247512126584978958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (A110654 (n + 1) * A110654 n).toNat

end

end A124423.P11247512126584978958

/-!
# A124424: Triangle read by rows: T(n,k) is the number of partitions of the set {1,2,...,n}, having exactly k blocks consisting of entries of the same parity (0<=k<=n).

The programs for A124424, there is no canonical definition to state claims against.
-/

/-! ## A124424.P703529592616515679

`A341594(A341580(n+3)+A341578(n+2))`
-/

namespace A124424.P703529592616515679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A341580 (n + 3) + A341578 (n + 2)).toNat

end

end A124424.P703529592616515679

/-! ## A124424.P10452526252350146894

`xor(A011731(A190161(n)), A108746(n))`
-/

namespace A124424.P10452526252350146894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011731 (A190161 n).toNat) (A108746 n)

end

end A124424.P10452526252350146894

/-! ## A124424.P12411231982878375158

`A226464(A349014(n))+A108746(n)`
-/

namespace A124424.P12411231982878375158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A349014 n).toNat + A108746 n

end

end A124424.P12411231982878375158

/-! ## A124424.P15462234199729981954

`A276605(A276531(n)+A276516(n))`
-/

namespace A124424.P15462234199729981954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 (A276531 n + A276516 n).toNat

end

end A124424.P15462234199729981954

/-!
# A124425: Number of partitions of the set {1,2,...,n} having no blocks with all entries of the same parity.

The programs for A124425, there is no canonical definition to state claims against.
-/

/-! ## A124425.P6066717166337134547

`A124424(∑[n])`
-/

namespace A124425.P6066717166337134547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124425.P6066717166337134547

/-! ## A124425.P5763842195918536366

`or(char[2], A124424(A000217(n)))`
-/

namespace A124425.P5763842195918536366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124424 (A000217 n).toNat)

end

end A124425.P5763842195918536366

/-! ## A124425.P14481214079705275

`or(A124424(A000217(n)), A226464(n))`
-/

namespace A124425.P14481214079705275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124424 (A000217 n).toNat) (A226464 n)

end

end A124425.P14481214079705275

/-! ## A124425.P18257609748897713096

`or(A124424(A000217(n)), A267179(n+1))`
-/

namespace A124425.P18257609748897713096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124424 (A000217 n).toNat) (A267179 (n + 1))

end

end A124425.P18257609748897713096

/-! ## A124425.P10388477470770881907

`A184616(A184616(n))+A124424(A000217(n))`
-/

namespace A124425.P10388477470770881907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (A184616 n).toNat + A124424 (A000217 n).toNat

end

end A124425.P10388477470770881907

/-! ## A124425.P4505438081606192604

`A124424(A000217(n))%A000110(n+3)`
-/

namespace A124425.P4505438081606192604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124424 (A000217 n).toNat) (A000110 (n + 3))

end

end A124425.P4505438081606192604

/-! ## A124425.P15483424994010826166

`A124424(A000217(n))%A222675(A028310(n))`
-/

namespace A124425.P15483424994010826166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124424 (A000217 n).toNat) (A222675 (A028310 n).toNat)

end

end A124425.P15483424994010826166

/-!
# A124426: Product of two successive Bell numbers.

The programs for A124426, there is no canonical definition to state claims against.
-/

/-! ## A124426.P14154404638039184660

`A124419(Δ[n²])`
-/

namespace A124426.P14154404638039184660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124426.P14154404638039184660

/-! ## A124426.P15591591443115049203

`record[A124419(xor(1, n))]`
-/

namespace A124426.P15591591443115049203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124426.P15591591443115049203

/-! ## A124426.P13930603265607181699

`record[and((-1)^n, A124419(n))]`
-/

namespace A124426.P13930603265607181699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A124419 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124426.P13930603265607181699

/-! ## A124426.P2022409818020028024

`record[A124419(A026741(n))]`
-/

namespace A124426.P2022409818020028024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124426.P2022409818020028024

/-! ## A124426.P13108544166126569569

`record[A124419(A029579(n))]`
-/

namespace A124426.P13108544166126569569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124426.P13108544166126569569

/-! ## A124426.P7256395901015506737

`record[A274835(n)]*A000110(n)`
-/

namespace A124426.P7256395901015506737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000110 n

end

end A124426.P7256395901015506737

/-! ## A124426.P8812982373766067101

`record[A275069(n)]*A000110(n)`
-/

namespace A124426.P8812982373766067101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000110 n

end

end A124426.P8812982373766067101

/-! ## A124426.P8614060956229591224

`record[A293024(n)]*A000110(n)`
-/

namespace A124426.P8614060956229591224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000110 n

end

end A124426.P8614060956229591224

/-! ## A124426.P520720291314261305

`record[A327884(n)]*A000110(n)`
-/

namespace A124426.P520720291314261305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000110 n

end

end A124426.P520720291314261305

/-! ## A124426.P17054301440374682618

`record[A346426(n)]*A000110(n)`
-/

namespace A124426.P17054301440374682618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000110 n

end

end A124426.P17054301440374682618

/-!
# A124427: Sum of the sizes of the blocks containing the element 1 in all set partitions of {1,2,...,n}.

The programs for A124427, there is no canonical definition to state claims against.
-/

/-! ## A124427.P4346826854630227703

`A270236(C(n, 2)+1)-(2^n)%2`
-/

namespace A124427.P4346826854630227703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (Nat.choose n 2 + 1) - ((2 ^ n % 2 : ℕ) : ℤ)

end

end A124427.P4346826854630227703

/-! ## A124427.P11263538241429731532

`A014210(n)%2*A270236(C(n, 2)+1)`
-/

namespace A124427.P11263538241429731532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 n) 2 * A270236 (Nat.choose n 2 + 1)

end

end A124427.P11263538241429731532

/-! ## A124427.P9055672696021966357

`A092131(n+1)%2*A270236(C(n, 2)+1)`
-/

namespace A124427.P9055672696021966357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092131 (n + 1)) 2 * A270236 (Nat.choose n 2 + 1)

end

end A124427.P9055672696021966357

/-! ## A124427.P10528474506574505827

`A052889(n)+Δ[A011971(A161680(n))]`
-/

namespace A124427.P10528474506574505827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n + (f1 (n + 1) - f1 n)

end

end A124427.P10528474506574505827

/-! ## A124427.P11532824788379820975

`A057427(n)*A270236(A152947(n+1))`
-/

namespace A124427.P11532824788379820975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A270236 (A152947 (n + 1)).toNat

end

end A124427.P11532824788379820975

/-! ## A124427.P6659112168540709566

`A052889(n)+Δ[A123081(A152947(n+1))]`
-/

namespace A124427.P6659112168540709566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A152947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n + (f1 (n + 1) - f1 n)

end

end A124427.P6659112168540709566

/-! ## A124427.P3550529758349125620

`A270236(C(n, 2)+1)%A221945(n)²²`
-/

namespace A124427.P3550529758349125620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270236 (Nat.choose n 2 + 1)) ((A221945 n ^ 2) ^ 2)

end

end A124427.P3550529758349125620

/-! ## A124427.P1701595439991278560

`A270236(A152947(n+1))%A000774(n)`
-/

namespace A124427.P1701595439991278560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270236 (A152947 (n + 1)).toNat) (A000774 n)

end

end A124427.P1701595439991278560

/-! ## A124427.P12303330311558795239

`record[A270702(A008619(n))%A270702(n+1)]`
-/

namespace A124427.P12303330311558795239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270702 (A008619 n).toNat) (A270702 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124427.P12303330311558795239

/-!
# A124428: Triangle, read by rows: T(n,k) = binomial(floor(n/2),k)*binomial(floor((n+1)/2),k).

The programs for A124428, the canonical program `A124428.P14380578597492988547` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124428 has offset 0).

The definition of A124428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124428.P14380578597492988547

`A152198(comp[(n+1)²])*A152198(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124428

/-- `A152198(comp[(n+1)²])*A152198(n)` -/
def P14380578597492988547.Spec : Prop :=
  ∀ n, P14380578597492988547.a n = A124428 n

theorem P14380578597492988547.correct : P14380578597492988547.Spec := by
  intro n
  simp only [A124428]

end A124428

/-! ## A124428.P668969259522173986

`A088855(comp[comp[n²]+n]+1)`
-/

namespace A124428.P668969259522173986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A124428.P668969259522173986

namespace A124428

/-- `A088855(comp[comp[n²]+n]+1)` -/
def P668969259522173986.Spec : Prop :=
  ∀ n, P668969259522173986.a n = A124428 n

end A124428

/-! ## A124428.P13393190936668276215

`A172101(comp[n²]+n)`
-/

namespace A124428.P13393190936668276215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A124428.P13393190936668276215

namespace A124428

/-- `A172101(comp[n²]+n)` -/
def P13393190936668276215.Spec : Prop :=
  ∀ n, P13393190936668276215.a n = A124428 n

end A124428

/-! ## A124428.P8584213214308788438

`A099735(A119462(n))`
-/

namespace A124428.P8584213214308788438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099735 (A119462 n).toNat

end

end A124428.P8584213214308788438

namespace A124428

/-- `A099735(A119462(n))` -/
def P8584213214308788438.Spec : Prop :=
  ∀ n, P8584213214308788438.a n = A124428 n

end A124428

/-!
# A124429: Antidiagonal sums of triangle A124428.

The programs for A124429, there is no canonical definition to state claims against.
-/

/-! ## A124429.P12003152411839983262

`A071860(A095892(n))`
-/

namespace A124429.P12003152411839983262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A095892 n).toNat

end

end A124429.P12003152411839983262

/-! ## A124429.P601771947061289255

`A100617(Δ[Δ[A307573(n)]])`
-/

namespace A124429.P601771947061289255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (f1 (n + 1) - f1 n).toNat

end

end A124429.P601771947061289255

/-! ## A124429.P177450641491740721

`A370813(A056493(n+1))+A227374(n)`
-/

namespace A124429.P177450641491740721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A056493 (n + 1)).toNat + A227374 n

end

end A124429.P177450641491740721

/-! ## A124429.P16681862203267069407

`A226763(A361231(n+1)+A102726(n))-1`
-/

namespace A124429.P16681862203267069407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A361231 (n + 1) + A102726 n).toNat - 1

end

end A124429.P16681862203267069407

/-! ## A124429.P499557623384637326

`A227374(n)+A185238(A159919(2*n+1))`
-/

namespace A124429.P499557623384637326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227374 n + A185238 (A159919 (2 * n + 1)).toNat

end

end A124429.P499557623384637326

/-!
# A124430: Eigenvector of triangle A124428.

The programs for A124430, there is no canonical definition to state claims against.
-/

/-! ## A124430.P13991388812166527135

`A222415(A052843(n))`
-/

namespace A124430.P13991388812166527135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222415 (A052843 n).toNat

end

end A124430.P13991388812166527135

/-! ## A124430.P16529481886288746719

`A222415(A124343(n+1))`
-/

namespace A124430.P16529481886288746719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222415 (A124343 (n + 1)).toNat

end

end A124430.P16529481886288746719

/-! ## A124430.P18004307630767454977

`or(n%2, A329396(A059966(n+1)))`
-/

namespace A124430.P18004307630767454977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A329396 (A059966 (n + 1)).toNat)

end

end A124430.P18004307630767454977

/-!
# A124431: a(n) = Sum_{k=0..n} 2^k*C([(n+k)/2],k)*C([(n+k+1)/2],k) where [x]=floor(x).

The programs for A124431, there is no canonical definition to state claims against.
-/

/-! ## A124431.P13755042664946749290

`A360293(n+1)/2`
-/

namespace A124431.P13755042664946749290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360293 (n + 1) : ℚ) / 2

end

end A124431.P13755042664946749290

/-! ## A124431.P7942837327017962011

`2*A101500(n)-A101499(n)`
-/

namespace A124431.P7942837327017962011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101500 n - A101499 n

end

end A124431.P7942837327017962011

/-! ## A124431.P10453554151571671633

`Δ[∑[A360293(n)]/2]`
-/

namespace A124431.P10453554151571671633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360293 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124431.P10453554151571671633

/-! ## A124431.P7474074328226909110

`Δ[∑[2*A101500(n)-A102879(n)]/2]`
-/

namespace A124431.P7474074328226909110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101500 n - A102879 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124431.P7474074328226909110

/-! ## A124431.P8931273291905765549

`A000265(A360293(n+1))`
-/

namespace A124431.P8931273291905765549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A360293 (n + 1)).toNat

end

end A124431.P8931273291905765549

/-!
# A124432: Denominator of Sum_{k=1..n} 1/H(k), where H(k) = Sum_{j=1..k} 1/j is the k-th harmonic number.

The programs for A124432, there is no canonical definition to state claims against.
-/

/-! ## A124432.P961964376057365170

`A229557(∑[n+2]+5)`
-/

namespace A124432.P961964376057365170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229557 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124432.P961964376057365170

/-! ## A124432.P8400542066986275692

`A000027(∏[A265391(ceil(2^(n-1)))])`
-/

namespace A124432.P8400542066986275692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265391 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124432.P8400542066986275692

/-!
# A124433: Irregular array {a(n,m)} read by rows where (sum{n>=1} sum{m=1 to A001222(n)+1} a(n,m)*y^m/n^x) = 1/(zeta(x)-1+1/y) for all x and y where the double sum converges.

The programs for A124433, there is no canonical definition to state claims against.
-/

/-! ## A124433.P3252940245110876928

`A178408(A065648(n)*A068095(n+1))`
-/

namespace A124433.P3252940245110876928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178408 (A065648 n * A068095 (n + 1)).toNat

end

end A124433.P3252940245110876928

/-! ## A124433.P7159978191203150049

`-A316441(∑[A202277(n+1)])`
-/

namespace A124433.P7159978191203150049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A316441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124433.P7159978191203150049

/-! ## A124433.P77877704209808351

`A200272(n+5)-A379017(A022166(n+4))`
-/

namespace A124433.P77877704209808351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (n + 5) - A379017 (A022166 (n + 4)).toNat

end

end A124433.P77877704209808351

/-! ## A124433.P16397412577029963070

`A359815(A003622(n+1)*A294791(n+1)+1)`
-/

namespace A124433.P16397412577029963070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359815 (A003622 (n + 1) * A294791 (n + 1) + 1).toNat

end

end A124433.P16397412577029963070

/-!
# A124434: LCM (least common multiple) of A001043 (sum of consecutive primes) and A001223 (difference of consecutive primes).

The programs for A124434, the canonical program `A124434.P11531078883019543608` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124434 has offset 1).

The definition of A124434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124434.P10933133580912784597

`A069482(n+1)/(2-A000007(n))`
-/

namespace A124434.P10933133580912784597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (2 - A000007 n : ℚ)

end

end A124434.P10933133580912784597

namespace A124434

/-- `A069482(n+1)/(2-A000007(n))` -/
def P10933133580912784597.Spec : Prop :=
  ∀ n, P10933133580912784597.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P17735197081136687629

`A069482(n+1)/A040001(2*n)`
-/

namespace A124434.P17735197081136687629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A124434.P17735197081136687629

namespace A124434

/-- `A069482(n+1)/A040001(2*n)` -/
def P17735197081136687629.Spec : Prop :=
  ∀ n, P17735197081136687629.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P6224005340523793226

`lcm(A001043(n+1), A001223(n+1))`
-/

namespace A124434.P6224005340523793226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001043 (n + 1)) (A001223 (n + 1))

end

end A124434.P6224005340523793226

namespace A124434

/-- `lcm(A001043(n+1), A001223(n+1))` -/
def P6224005340523793226.Spec : Prop :=
  ∀ n, (P6224005340523793226.a n : ℤ) = A124434 (n + 1)

end A124434

/-! ## A124434.P12361466635483516088

`gcd(A069487(n+1)/2, A276963(n+1))`
-/

namespace A124434.P12361466635483516088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A069487 (n + 1) : ℚ) / 2)) (A276963 (n + 1))

end

end A124434.P12361466635483516088

namespace A124434

/-- `gcd(A069487(n+1)/2, A276963(n+1))` -/
def P12361466635483516088.Spec : Prop :=
  ∀ n, (P12361466635483516088.a n : ℤ) = A124434 (n + 1)

end A124434

/-! ## A124434.P11531078883019543608

`A001043(n+1)*A008619(A046933(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124434

/-- `A001043(n+1)*A008619(A046933(n+1))` -/
def P11531078883019543608.Spec : Prop :=
  ∀ n, P11531078883019543608.a n = A124434 (n + 1)

theorem P11531078883019543608.correct : P11531078883019543608.Spec := by
  intro n
  simp only [A124434, Nat.add_sub_cancel]

end A124434

/-! ## A124434.P11215952656585348610

`A069482(n+1)/A000005(A006530(n+1))`
-/

namespace A124434.P11215952656585348610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (A000005 (A006530 (n + 1)).toNat : ℚ)

end

end A124434.P11215952656585348610

namespace A124434

/-- `A069482(n+1)/A000005(A006530(n+1))` -/
def P11215952656585348610.Spec : Prop :=
  ∀ n, P11215952656585348610.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P17818017989962069270

`A069482(n+1)/A034444(A034444(n+1))`
-/

namespace A124434.P17818017989962069270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A124434.P17818017989962069270

namespace A124434

/-- `A069482(n+1)/A034444(A034444(n+1))` -/
def P17818017989962069270.Spec : Prop :=
  ∀ n, P17818017989962069270.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P11012887976723533348

`A069482(n+1)/A181819(A020639(n+1))`
-/

namespace A124434.P11012887976723533348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (A181819 (A020639 (n + 1)).toNat : ℚ)

end

end A124434.P11012887976723533348

namespace A124434

/-- `A069482(n+1)/A181819(A020639(n+1))` -/
def P11012887976723533348.Spec : Prop :=
  ∀ n, P11012887976723533348.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P6438153935131439714

`A069482(n+1)/A105560(A105560(n+1))`
-/

namespace A124434.P6438153935131439714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (A105560 (A105560 (n + 1)).toNat : ℚ)

end

end A124434.P6438153935131439714

namespace A124434

/-- `A069482(n+1)/A105560(A105560(n+1))` -/
def P6438153935131439714.Spec : Prop :=
  ∀ n, P6438153935131439714.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P2092128100677038605

`abs(Δ[A166011(n+1)])`
-/

namespace A124434.P2092128100677038605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A124434.P2092128100677038605

namespace A124434

/-- `abs(Δ[A166011(n+1)])` -/
def P2092128100677038605.Spec : Prop :=
  ∀ n, P2092128100677038605.a n = A124434 (n + 1)

end A124434

/-! ## A124434.P17419944251063438179

`lcm(2, Δ[A001248(n+1)])/2`
-/

namespace A124434.P17419944251063438179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A124434.P17419944251063438179

namespace A124434

/-- `lcm(2, Δ[A001248(n+1)])/2` -/
def P17419944251063438179.Spec : Prop :=
  ∀ n, P17419944251063438179.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P10880141606062637757

`lcm(Δ[A006093(n+1)], A011974(n+2))`
-/

namespace A124434.P10880141606062637757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A011974 (n + 2))

end

end A124434.P10880141606062637757

namespace A124434

/-- `lcm(Δ[A006093(n+1)], A011974(n+2))` -/
def P10880141606062637757.Spec : Prop :=
  ∀ n, (P10880141606062637757.a n : ℤ) = A124434 (n + 1)

end A124434

/-! ## A124434.P5547717861923437883

`(A001248(n+2)-A001248(n+1))/A130130(n+1)`
-/

namespace A124434.P5547717861923437883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) - A001248 (n + 1) : ℚ) / (A130130 (n + 1) : ℚ)

end

end A124434.P5547717861923437883

namespace A124434

/-- `(A001248(n+2)-A001248(n+1))/A130130(n+1)` -/
def P5547717861923437883.Spec : Prop :=
  ∀ n, P5547717861923437883.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P15393229682678835491

`A069482(n+1)/A001223(A068361(n+1))`
-/

namespace A124434.P15393229682678835491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) : ℚ) / (A001223 (A068361 (n + 1)).toNat : ℚ)

end

end A124434.P15393229682678835491

namespace A124434

/-- `A069482(n+1)/A001223(A068361(n+1))` -/
def P15393229682678835491.Spec : Prop :=
  ∀ n, P15393229682678835491.a n = (A124434 (n + 1) : ℚ)

end A124434

/-! ## A124434.P13625707149967401592

`Δ[record[Δ[A069268(n+1)]]]`
-/

namespace A124434.P13625707149967401592
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124434.P13625707149967401592

namespace A124434

/-- `Δ[record[Δ[A069268(n+1)]]]` -/
def P13625707149967401592.Spec : Prop :=
  ∀ n, P13625707149967401592.a n = A124434 (n + 1)

end A124434

/-! ## A124434.P7098586433701045095

`Δ[record[A341885(2*n+1)-n]]`
-/

namespace A124434.P7098586433701045095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341885 (2 * n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124434.P7098586433701045095

namespace A124434

/-- `Δ[record[A341885(2*n+1)-n]]` -/
def P7098586433701045095.Spec : Prop :=
  ∀ n, P7098586433701045095.a n = A124434 (n + 1)

end A124434

/-! ## A124434.P2843705344481538487

`Δ[A245581(A000040(n+1))]`
-/

namespace A124434.P2843705344481538487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245581 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124434.P2843705344481538487

namespace A124434

/-- `Δ[A245581(A000040(n+1))]` -/
def P2843705344481538487.Spec : Prop :=
  ∀ n, P2843705344481538487.a n = A124434 (n + 1)

end A124434

/-! ## A124434.P5441353933233299862

`Δ[A000982(record[A349344(n+1)-1])]`
-/

namespace A124434.P5441353933233299862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124434.P5441353933233299862

namespace A124434

/-- `Δ[A000982(record[A349344(n+1)-1])]` -/
def P5441353933233299862.Spec : Prop :=
  ∀ n, P5441353933233299862.a n = A124434 (n + 1)

end A124434

/-!
# A124435: Number of effective multiple alignments of three equal-length sequences.

The programs for A124435, there is no canonical definition to state claims against.
-/

/-! ## A124435.P16321071315429367428

`A336169(∑[n+4]+2)`
-/

namespace A124435.P16321071315429367428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124435.P16321071315429367428

/-! ## A124435.P13356789452333239810

`record[A336169(abs(A046691(n)))]`
-/

namespace A124435.P13356789452333239810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124435.P13356789452333239810

/-! ## A124435.P7344048319821425054

`record[A336169(eq[1, A336169(n+1)])]`
-/

namespace A124435.P7344048319821425054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124435.P7344048319821425054

/-! ## A124435.P8782833084955271420

`record[A336169(lt[A336169(n+1), 2])]`
-/

namespace A124435.P8782833084955271420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124435.P8782833084955271420

/-!
# A124436: a(1)=1, a(n)=p_i^d_i where p_i is i-th prime and d_i is i-th digit of a(n-1).

The programs for A124436, there is no canonical definition to state claims against.
-/

/-! ## A124436.P10492097104217650849

`A061509(a(n-1))` with `a(0)=1`
-/

namespace A124436.P10492097104217650849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061509 (a (n - 1)).toNat

end

end A124436.P10492097104217650849

/-! ## A124436.P10001409698362003029

`A189398(a(n-1))` with `a(0)=1`
-/

namespace A124436.P10001409698362003029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189398 (a (n - 1)).toNat

end

end A124436.P10001409698362003029

/-!
# A124437: Experience Points thresholds for levels in the pen and paper role-playing game "Das Schwarze Auge" (DSA, a.k.a. "The Dark Eye").

The programs for A124437, the canonical program `A124437.P15856722844321626946` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124437 has offset 1).

The definition of A124437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124437.P15856722844321626946

`50*(n+1)*n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124437

/-- `50*(n+1)*n` -/
def P15856722844321626946.Spec : Prop :=
  ∀ n, (P15856722844321626946.a n : ℤ) = A124437 (n + 1)

theorem P15856722844321626946.correct : P15856722844321626946.Spec := by
  intro n
  simp only [A124437, Nat.add_sub_cancel]

end A124437

/-! ## A124437.P16180423873402473069

`(10*n)²-a(n-1)` with `a(0)=0`
-/

namespace A124437.P16180423873402473069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((10 * n) ^ 2 : ℤ) - a (n - 1)

end

end A124437.P16180423873402473069

namespace A124437

/-- `(10*n)²-a(n-1)` -/
def P16180423873402473069.Spec : Prop :=
  ∀ n, P16180423873402473069.a n = A124437 (n + 1)

theorem P16180423873402473069.correct : P16180423873402473069.Spec := by
  intro n
  induction n with
  | zero => simp [A124437, A124437.P16180423873402473069.a, A124437.P15856722844321626946.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A124437, Nat.add_sub_cancel, A124437.P16180423873402473069.a, A124437.P15856722844321626946.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A124437

/-! ## A124437.P5410689157014295491

`∑[a(n-1)+4]/(1/5)²` with `a(0)=0`
-/

namespace A124437.P5410689157014295491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((1 : ℚ) / 5) ^ 2

end

end A124437.P5410689157014295491

namespace A124437

/-- `∑[a(n-1)+4]/(1/5)²` -/
def P5410689157014295491.Spec : Prop :=
  ∀ n, P5410689157014295491.a n = (A124437 (n + 1) : ℚ)

end A124437

/-!
# A124438: Numbers that are not divisible by at least one of the (positive) exponents in their prime factorization.

The programs for A124438, the canonical program `A124438.P3966376689597900397` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124438 has offset 1).

The definition of A124438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124438.P3966376689597900397

`lt[A136176(n+1), A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124438

/-- `lt[A136176(n+1), A001221(n+1)]+1` -/
def P3966376689597900397.Spec : Prop :=
  ∀ n, (P3966376689597900397.a n : ℤ) = A124438 (n + 1)

theorem P3966376689597900397.correct : P3966376689597900397.Spec := by
  intro n
  simp only [A124438, Nat.add_sub_cancel]

end A124438

/-! ## A124438.P13938430978011811598

`lt[A136176(n+1), A158210(n+1)]+1`
-/

namespace A124438.P13938430978011811598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A124438.P13938430978011811598

namespace A124438

/-- `lt[A136176(n+1), A158210(n+1)]+1` -/
def P13938430978011811598.Spec : Prop :=
  ∀ n, (P13938430978011811598.a n : ℤ) = A124438 (n + 1)

end A124438

/-! ## A124438.P6352947445686184014

`∩[A159836(n+1), A384992(n+1)]`
-/

namespace A124438.P6352947445686184014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124438.P6352947445686184014

namespace A124438

/-- `∩[A159836(n+1), A384992(n+1)]` -/
def P6352947445686184014.Spec : Prop :=
  ∀ n, (P6352947445686184014.a n : ℤ) = A124438 (n + 1)

end A124438

/-! ## A124438.P7174089704194743862

`∩[A230542(n+1), A384992(n+1)]`
-/

namespace A124438.P7174089704194743862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124438.P7174089704194743862

namespace A124438

/-- `∩[A230542(n+1), A384992(n+1)]` -/
def P7174089704194743862.Spec : Prop :=
  ∀ n, (P7174089704194743862.a n : ℤ) = A124438 (n + 1)

end A124438

/-! ## A124438.P14326186421442264868

`∩[A144146(n+1), A375399(n+1)]`
-/

namespace A124438.P14326186421442264868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124438.P14326186421442264868

namespace A124438

/-- `∩[A144146(n+1), A375399(n+1)]` -/
def P14326186421442264868.Spec : Prop :=
  ∀ n, (P14326186421442264868.a n : ℤ) = A124438 (n + 1)

end A124438

/-!
# A124439: Complete list of solutions to y^2 = x^3 + 17; sequence gives x values.

The programs for A124439, there is no canonical definition to state claims against.
-/

/-! ## A124439.P14912482278477208494

`A029728(C(2, C(3, n²))+n)`
-/

namespace A124439.P14912482278477208494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029728 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A124439.P14912482278477208494

/-! ## A124439.P5166553801050542617

`xor(and(1, n!), A029728(n+1))`
-/

namespace A124439.P5166553801050542617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.land 1 (Nat.factorial n) : ℤ) (A029728 (n + 1))

end

end A124439.P5166553801050542617

/-! ## A124439.P15140087204778962145

`A029728(ceil(acot(n))+n-char[1])`
-/

namespace A124439.P15140087204778962145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029728 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A124439.P15140087204778962145

/-! ## A124439.P9618889509589881527

`A029728(A181440(n+1))`
-/

namespace A124439.P9618889509589881527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029728 (A181440 (n + 1)).toNat

end

end A124439.P9618889509589881527

/-!
# A124440: a(n) = Sum_{n/2<=k<=n, gcd(k,n)=1} k.

The programs for A124440, there is no canonical definition to state claims against.
-/

/-! ## A124440.P6549568083832896375

`A340714(abs(1-n)+2)+A066840(n+1)`
-/

namespace A124440.P6549568083832896375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (|1 - (n : ℤ)| + 2).toNat + A066840 (n + 1)

end

end A124440.P6549568083832896375

/-! ## A124440.P4988882705165007065

`lcm(n+1, A023896(n+1))-A066840(n+1)`
-/

namespace A124440.P4988882705165007065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A023896 (n + 1)) : ℤ) - A066840 (n + 1)

end

end A124440.P4988882705165007065

/-! ## A124440.P11063011483618059506

`A066840(n+1)+A340714(n+1)+A000007(n)`
-/

namespace A124440.P11063011483618059506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066840 (n + 1) + (A340714 (n + 1) + A000007 n)

end

end A124440.P11063011483618059506

/-! ## A124440.P14656115649015853148

`A023896(n+1)-A066840(n+1)%A003229(n)`
-/

namespace A124440.P14656115649015853148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) - Int.tmod (A066840 (n + 1)) (A003229 n)

end

end A124440.P14656115649015853148

/-! ## A124440.P16888968116288556882

`A340714(n+1)+A028310(A066840(n+1))`
-/

namespace A124440.P16888968116288556882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (n + 1) + A028310 (A066840 (n + 1)).toNat

end

end A124440.P16888968116288556882

/-! ## A124440.P14046912501501312082

`A340714(n+1)+A038572(A023896(n+1)-A340714(n+1))`
-/

namespace A124440.P14046912501501312082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (n + 1) + A038572 (A023896 (n + 1) - A340714 (n + 1)).toNat

end

end A124440.P14046912501501312082

/-! ## A124440.P3512662571816523723

`A340714(n+1)+A004525(A023896(n+1)-A340714(n+1))`
-/

namespace A124440.P3512662571816523723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (n + 1) + A004525 (A023896 (n + 1) - A340714 (n + 1)).toNat

end

end A124440.P3512662571816523723

/-! ## A124440.P10891925012453822562

`A340714(n+1)+A026741(A023896(n+1)-A340714(n+1))`
-/

namespace A124440.P10891925012453822562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (n + 1) + A026741 (A023896 (n + 1) - A340714 (n + 1)).toNat

end

end A124440.P10891925012453822562

/-! ## A124440.P13633397370180405007

`A340714(n+1)+A110654(A023896(n+1)-A340714(n+1))`
-/

namespace A124440.P13633397370180405007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (n + 1) + A110654 (A023896 (n + 1) - A340714 (n + 1)).toNat

end

end A124440.P13633397370180405007

/-! ## A124440.P662023665230643789

`A038572(A340714(n+1)+A023896(n+1))`
-/

namespace A124440.P662023665230643789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A340714 (n + 1) + A023896 (n + 1)).toNat

end

end A124440.P662023665230643789

/-! ## A124440.P9811134257818045834

`A028310(A023896(n+1)-A066840(n+1))`
-/

namespace A124440.P9811134257818045834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A023896 (n + 1) - A066840 (n + 1)).toNat

end

end A124440.P9811134257818045834

/-! ## A124440.P4698486149432043188

`A038572(A340714(n+1)+ceil((n+1)/2*A000010(n+1)))`
-/

namespace A124440.P4698486149432043188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A340714 (n + 1) + ⌈(n + 1 : ℚ) / 2 * (A000010 (n + 1) : ℚ)⌉).toNat

end

end A124440.P4698486149432043188

/-! ## A124440.P13378410792480014683

`A143612(A000982(n+1))`
-/

namespace A124440.P13378410792480014683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143612 (A000982 (n + 1)).toNat

end

end A124440.P13378410792480014683

/-! ## A124440.P2960565786219333632

`A004525(A340714(n+1)+A023896(n+1))`
-/

namespace A124440.P2960565786219333632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A340714 (n + 1) + A023896 (n + 1)).toNat

end

end A124440.P2960565786219333632

/-! ## A124440.P15228479395307756205

`A026741(A340714(n+1)+A023896(n+1))`
-/

namespace A124440.P15228479395307756205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A340714 (n + 1) + A023896 (n + 1)).toNat

end

end A124440.P15228479395307756205

/-! ## A124440.P14035300517515558465

`A110654(A340714(n+1)+A023896(n+1))`
-/

namespace A124440.P14035300517515558465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A340714 (n + 1) + A023896 (n + 1)).toNat

end

end A124440.P14035300517515558465

/-!
# A124441: a(n) = Product_{1<=k<=n/2, gcd(k,n)=1} k.

The programs for A124441, there is no canonical definition to state claims against.
-/

/-! ## A124441.P5832081160447992781

`A001783(n+1)/A124442(n+1)`
-/

namespace A124441.P5832081160447992781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (A124442 (n + 1) : ℚ)

end

end A124441.P5832081160447992781

/-! ## A124441.P13391805378054129174

`A038610(n+1)/A124442(n+1)*A128247(n+1)`
-/

namespace A124441.P13391805378054129174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038610 (n + 1) : ℚ) / (A124442 (n + 1) : ℚ) * (A128247 (n + 1) : ℚ)

end

end A124441.P13391805378054129174

/-! ## A124441.P17890068225781114174

`A055067(n+1)/(A070251(n+1)*A124442(n+1))`
-/

namespace A124441.P17890068225781114174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055067 (n + 1) : ℚ) / (A070251 (n + 1) * A124442 (n + 1) : ℚ)

end

end A124441.P17890068225781114174

/-! ## A124441.P14597889460653449441

`A051696(n+1)/A066570(n+1)*A095996(n+1)/A124442(n+1)`
-/

namespace A124441.P14597889460653449441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ) * (A095996 (n + 1) : ℚ) / (A124442 (n + 1) : ℚ)

end

end A124441.P14597889460653449441

/-! ## A124441.P1006843222641874078

`floor(A000142(n+1)/A066570(n+1))/A124442(n+1)`
-/

namespace A124441.P1006843222641874078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A000142 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ)⌋ : ℚ) / (A124442 (n + 1) : ℚ)

end

end A124441.P1006843222641874078

/-!
# A124442: a(n) = Product_{ceiling(n/2) <= k <= n, gcd(k,n)=1} k.

The programs for A124442, there is no canonical definition to state claims against.
-/

/-! ## A124442.P895867183440083001

`A001783(n+1)/A124441(n+1)`
-/

namespace A124442.P895867183440083001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (A124441 (n + 1) : ℚ)

end

end A124442.P895867183440083001

/-! ## A124442.P5057736754865158436

`A038610(n+1)/A124441(n+1)*A128247(n+1)`
-/

namespace A124442.P5057736754865158436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038610 (n + 1) : ℚ) / (A124441 (n + 1) : ℚ) * (A128247 (n + 1) : ℚ)

end

end A124442.P5057736754865158436

/-! ## A124442.P3237152613336406984

`A055067(n+1)/(A070251(n+1)*A124441(n+1))`
-/

namespace A124442.P3237152613336406984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055067 (n + 1) : ℚ) / (A070251 (n + 1) * A124441 (n + 1) : ℚ)

end

end A124442.P3237152613336406984

/-! ## A124442.P17237042582934886992

`A000142(n+1)/(A066570(n+1)*A124441(n+1))`
-/

namespace A124442.P17237042582934886992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A066570 (n + 1) * A124441 (n + 1) : ℚ)

end

end A124442.P17237042582934886992

/-! ## A124442.P17501652371425834622

`A216919(A001844(n))/A124441(n+1)`
-/

namespace A124442.P17501652371425834622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216919 (A001844 n).toNat : ℚ) / (A124441 (n + 1) : ℚ)

end

end A124442.P17501652371425834622

/-!
# A124443: a(1)=1, a(n) = LCM of the integers, from 1 to n/2, which are coprime to n.

The programs for A124443, there is no canonical definition to state claims against.
-/

/-! ## A124443.P12115550850695942220

`gcd(A001783(n+1), A139550(n))`
-/

namespace A124443.P12115550850695942220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (n + 1)) (A139550 n)

end

end A124443.P12115550850695942220

/-! ## A124443.P12992207276056565869

`gcd(A038610(n+1), A094308(n+1))`
-/

namespace A124443.P12992207276056565869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (n + 1)) (A094308 (n + 1))

end

end A124443.P12992207276056565869

/-! ## A124443.P12745427385399159482

`gcd(A038610(n+1), A139550(A028310(n)))`
-/

namespace A124443.P12745427385399159482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (n + 1)) (A139550 (A028310 n).toNat)

end

end A124443.P12745427385399159482

/-! ## A124443.P7118235451894974794

`gcd(A003418(A110654(n)), A095996(n+1))`
-/

namespace A124443.P7118235451894974794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A110654 n).toNat) (A095996 (n + 1))

end

end A124443.P7118235451894974794

/-! ## A124443.P889159767789788911

`gcd(A003418(A123108(n)), A124441(n+1))`
-/

namespace A124443.P889159767789788911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A123108 n).toNat) (A124441 (n + 1))

end

end A124443.P889159767789788911

/-!
# A124444: a(n) = LCM of the integers, from n/2 to n, which are coprime to n.

The programs for A124444, there is no canonical definition to state claims against.
-/

/-! ## A124444.P13259186998477860312

`gcd(A003418(n), A124442(n+1))%A027763(n+1)`
-/

namespace A124444.P13259186998477860312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A003418 n) (A124442 (n + 1)) : ℤ) (A027763 (n + 1))

end

end A124444.P13259186998477860312

/-! ## A124444.P15415945226925497202

`gcd(A124442(n+1)^11, A003418(n))`
-/

namespace A124444.P15415945226925497202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124442 (n + 1) ^ 11) (A003418 n)

end

end A124444.P15415945226925497202

/-! ## A124444.P1594582295274488692

`gcd(A003418(n)%A272763(n), A124442(n+1))`
-/

namespace A124444.P1594582295274488692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A003418 n) (A272763 n)) (A124442 (n + 1))

end

end A124444.P1594582295274488692

/-! ## A124444.P16734143265028598765

`gcd(A124442(n+1)*A272763(n), A038610(n+1))`
-/

namespace A124444.P16734143265028598765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124442 (n + 1) * A272763 n) (A038610 (n + 1))

end

end A124444.P16734143265028598765

/-! ## A124444.P15585485112158130588

`gcd(A124442(n+1)%A272763(n), A002944(n+1))`
-/

namespace A124444.P15585485112158130588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A124442 (n + 1)) (A272763 n)) (A002944 (n + 1))

end

end A124444.P15585485112158130588

/-!
# A124445: Expansion of 1/(1-x-x*y+x^2*y-x^3*y^2).

The programs for A124445, there is no canonical definition to state claims against.
-/

/-! ## A124445.P11436530454817631457

`A124279(∑[2*n]%comp[∑[n]])`
-/

namespace A124445.P11436530454817631457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A124445.P11436530454817631457

/-! ## A124445.P10801731582978801245

`A124279(A061579(n))`
-/

namespace A124445.P10801731582978801245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A061579 n).toNat

end

end A124445.P10801731582978801245

/-! ## A124445.P16537437509900103603

`A124279(A038722(n+1)-1)`
-/

namespace A124445.P16537437509900103603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A038722 (n + 1) - 1).toNat

end

end A124445.P16537437509900103603

/-! ## A124445.P13425225081802105539

`A124279(A002024(n+1)²-(n+1))`
-/

namespace A124445.P13425225081802105539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A124445.P13425225081802105539

/-! ## A124445.P6999305272470881917

`A124279(A002024(n+1)^2-(n+1))`
-/

namespace A124445.P6999305272470881917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A124445.P6999305272470881917

/-! ## A124445.P15562029679638136677

`A124279(A038722(n+2))`
-/

namespace A124445.P15562029679638136677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A038722 (n + 2)).toNat

end

end A124445.P15562029679638136677

/-!
# A124446: a(n) = gcd(A066840(n), A124440(n)).

The programs for A124446, there is no canonical definition to state claims against.
-/

/-! ## A124446.P17621498043018284108

`gcd(A023896(n+1), A066840(n+1))`
-/

namespace A124446.P17621498043018284108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023896 (n + 1)) (A066840 (n + 1))

end

end A124446.P17621498043018284108

/-! ## A124446.P16888524561741737198

`gcd(A124440(n+1), A325887(n+1))`
-/

namespace A124446.P16888524561741737198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124440 (n + 1)) (A325887 (n + 1))

end

end A124446.P16888524561741737198

/-! ## A124446.P5559718045058272911

`gcd(abs(A325887(n+1)), A124447(n+1))`
-/

namespace A124446.P5559718045058272911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A325887 (n + 1)| (A124447 (n + 1))

end

end A124446.P5559718045058272911

/-! ## A124446.P12624353965338890125

`gcd(A066840(A028310(n)+1), A340714(n+1))`
-/

namespace A124446.P12624353965338890125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066840 (A028310 n + 1).toNat) (A340714 (n + 1))

end

end A124446.P12624353965338890125

/-! ## A124446.P14875570717582962593

`gcd((A334628(n+1)+A295574(n+1))/(n+1), -A325887(n+1))`
-/

namespace A124446.P14875570717582962593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A334628 (n + 1) + A295574 (n + 1) : ℚ) / (n + 1 : ℚ))) (-A325887 (n + 1))

end

end A124446.P14875570717582962593

/-! ## A124446.P14226306179964905297

`gcd(A066840(A103517(n)), A124440(n+1))`
-/

namespace A124446.P14226306179964905297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066840 (A103517 n).toNat) (A124440 (n + 1))

end

end A124446.P14226306179964905297

/-! ## A124446.P14173787823969971210

`gcd(A066840(2*n+2), A066840(A000027(n+1)))`
-/

namespace A124446.P14173787823969971210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066840 (2 * n + 2)) (A066840 (A000027 (n + 1)).toNat)

end

end A124446.P14173787823969971210

/-!
# A124447: a(n) = lcm(A066840(n), A124440(n)).

The programs for A124447, there is no canonical definition to state claims against.
-/

/-! ## A124447.P15615084017935212228

`lcm(A066840(n+1), A124440(n+1))`
-/

namespace A124447.P15615084017935212228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066840 (n + 1)) (A124440 (n + 1))

end

end A124447.P15615084017935212228

/-! ## A124447.P3550820339087672974

`A066840(n+1)*A124440(n+1)/A124446(n+1)`
-/

namespace A124447.P3550820339087672974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066840 (n + 1) * A124440 (n + 1) : ℚ) / (A124446 (n + 1) : ℚ)

end

end A124447.P3550820339087672974

/-! ## A124447.P6917999628578537881

`lcm(A340714(abs(1-n)+2)+A066840(n+1), A066840(A000027(n+1)))`
-/

namespace A124447.P6917999628578537881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A340714 (|1 - (n : ℤ)| + 2).toNat + A066840 (n + 1)) (A066840 (A000027 (n + 1)).toNat)

end

end A124447.P6917999628578537881

/-! ## A124447.P11298308550318622590

`lcm(A124440(n+1)-A340714(abs(1-n)+2), A124440(A000027(n+1)))`
-/

namespace A124447.P11298308550318622590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124440 (n + 1) - A340714 (|1 - (n : ℤ)| + 2).toNat) (A124440 (A000027 (n + 1)).toNat)

end

end A124447.P11298308550318622590

/-! ## A124447.P5690158613609827509

`lcm((A334628(n+1)+A295574(n+1))/(n+1), A000027(A124440(n+1)))`
-/

namespace A124447.P5690158613609827509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A334628 (n + 1) + A295574 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000027 (A124440 (n + 1)).toNat)

end

end A124447.P5690158613609827509

/-! ## A124447.P3563227820741772145

`lcm(A028310(A124440(n+1)), A038572(floor(A002618(n+1)/2)-A340714(n+1)))`
-/

namespace A124447.P3563227820741772145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A124440 (n + 1)).toNat) (A038572 (⌊(A002618 (n + 1) : ℚ) / 2⌋ - A340714 (n + 1)).toNat)

end

end A124447.P3563227820741772145

/-! ## A124447.P2205521707606723203

`lcm(A193676(n+1)+A005843(A282601(n+1)), A026741(A340714(n+1)+A023896(n+1)))`
-/

namespace A124447.P2205521707606723203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193676 (n + 1) + A005843 (A282601 (n + 1)).toNat) (A026741 (A340714 (n + 1) + A023896 (n + 1)).toNat)

end

end A124447.P2205521707606723203

/-!
# A124448: Riordan array (sqrt(1+4x^2)-2x, (1+2x-sqrt(1+4x^2))/2).

The programs for A124448, there is no canonical definition to state claims against.
-/

/-! ## A124448.P11901920144144344976

`A167655(n)-A344566(A187829(n+1))`
-/

namespace A124448.P11901920144144344976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 n - A344566 (A187829 (n + 1)).toNat

end

end A124448.P11901920144144344976

/-! ## A124448.P1648010127670987731

`A344566(n)-2*A344566(A187829(n+1))`
-/

namespace A124448.P1648010127670987731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344566 n - 2 * A344566 (A187829 (n + 1)).toNat

end

end A124448.P1648010127670987731

/-!
# A124449: Expansion of (phi(-q^3)^4 - phi(-q)^4)/8 in powers of q where phi() is a Ramanujan theta function.

The programs for A124449, the canonical program `A124449.P1414096876915059449` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124449 has offset 1).

The definition of A124449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124449.P1414096876915059449

`A010684(n)*A226132(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124449

/-- `A010684(n)*A226132(n+1)` -/
def P1414096876915059449.Spec : Prop :=
  ∀ n, P1414096876915059449.a n = A124449 (n + 1)

theorem P1414096876915059449.correct : P1414096876915059449.Spec := by
  intro n
  simp only [A124449, Nat.add_sub_cancel]

end A124449

/-! ## A124449.P5385833216049554060

`A033999(n)*A214361(n+1)`
-/

namespace A124449.P5385833216049554060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A214361 (n + 1)

end

end A124449.P5385833216049554060

namespace A124449

/-- `A033999(n)*A214361(n+1)` -/
def P5385833216049554060.Spec : Prop :=
  ∀ n, P5385833216049554060.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P5654980549879375494

`Δ[A042948(n)]*A226132(n+1)`
-/

namespace A124449.P5654980549879375494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226132 (n + 1)

end

end A124449.P5654980549879375494

namespace A124449

/-- `Δ[A042948(n)]*A226132(n+1)` -/
def P5654980549879375494.Spec : Prop :=
  ∀ n, P5654980549879375494.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P3448884374196900704

`(A010673(n)+1)*A226132(n+1)`
-/

namespace A124449.P3448884374196900704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n + 1) * A226132 (n + 1)

end

end A124449.P3448884374196900704

namespace A124449

/-- `(A010673(n)+1)*A226132(n+1)` -/
def P3448884374196900704.Spec : Prop :=
  ∀ n, P3448884374196900704.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P12444590519954292579

`(2-A010684(n))*A214361(n+1)`
-/

namespace A124449.P12444590519954292579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A214361 (n + 1)

end

end A124449.P12444590519954292579

namespace A124449

/-- `(2-A010684(n))*A214361(n+1)` -/
def P12444590519954292579.Spec : Prop :=
  ∀ n, P12444590519954292579.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P13475805798385833905

`(2-A033999(n))*A226132(n+1)`
-/

namespace A124449.P13475805798385833905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A226132 (n + 1)

end

end A124449.P13475805798385833905

namespace A124449

/-- `(2-A033999(n))*A226132(n+1)` -/
def P13475805798385833905.Spec : Prop :=
  ∀ n, P13475805798385833905.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P8403570868654273838

`2*A226132(n+1)-A121443(n+1)`
-/

namespace A124449.P8403570868654273838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226132 (n + 1) - A121443 (n + 1)

end

end A124449.P8403570868654273838

namespace A124449

/-- `2*A226132(n+1)-A121443(n+1)` -/
def P8403570868654273838.Spec : Prop :=
  ∀ n, P8403570868654273838.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P5640442721567292743

`∑{d}[n+1, A256232(#)*A325596((n+1)/#)]`
-/

namespace A124449.P5640442721567292743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256232 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124449.P5640442721567292743

namespace A124449

/-- `∑{d}[n+1, A256232(#)*A325596((n+1)/#)]` -/
def P5640442721567292743.Spec : Prop :=
  ∀ n, P5640442721567292743.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P12034997103410809277

`A115716(A328579(n))*A226132(n+1)`
-/

namespace A124449.P12034997103410809277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A328579 n).toNat * A226132 (n + 1)

end

end A124449.P12034997103410809277

namespace A124449

/-- `A115716(A328579(n))*A226132(n+1)` -/
def P12034997103410809277.Spec : Prop :=
  ∀ n, P12034997103410809277.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P7941146104324616113

`A057077(A057077(n)+n)*A214361(n+1)`
-/

namespace A124449.P7941146104324616113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A214361 (n + 1)

end

end A124449.P7941146104324616113

namespace A124449

/-- `A057077(A057077(n)+n)*A214361(n+1)` -/
def P7941146104324616113.Spec : Prop :=
  ∀ n, P7941146104324616113.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P3698169268947691547

`A214361(n+1)/A118271(n)*A214456(n)`
-/

namespace A124449.P3698169268947691547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214361 (n + 1) : ℚ) / (A118271 n : ℚ) * (A214456 n : ℚ)

end

end A124449.P3698169268947691547

namespace A124449

/-- `A214361(n+1)/A118271(n)*A214456(n)` -/
def P3698169268947691547.Spec : Prop :=
  ∀ n, P3698169268947691547.a n = (A124449 (n + 1) : ℚ)

end A124449

/-! ## A124449.P1229164671563207927

`2*A226132(n+1)-A226132(A000265(n+1))`
-/

namespace A124449.P1229164671563207927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226132 (n + 1) - A226132 (A000265 (n + 1)).toNat

end

end A124449.P1229164671563207927

namespace A124449

/-- `2*A226132(n+1)-A226132(A000265(n+1))` -/
def P1229164671563207927.Spec : Prop :=
  ∀ n, P1229164671563207927.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P2160827370488787518

`A121443(n+1)+A226132(n+1)-A214361(n+1)`
-/

namespace A124449.P2160827370488787518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 1) + (A226132 (n + 1) - A214361 (n + 1))

end

end A124449.P2160827370488787518

namespace A124449

/-- `A121443(n+1)+A226132(n+1)-A214361(n+1)` -/
def P2160827370488787518.Spec : Prop :=
  ∀ n, P2160827370488787518.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P8455867038013419054

`A121443(A214361(n+1)/A121443(n+1))*A226132(n+1)`
-/

namespace A124449.P8455867038013419054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (SequenceMachineLib.roundAway ((A214361 (n + 1) : ℚ) / (A121443 (n + 1) : ℚ))).toNat * A226132 (n + 1)

end

end A124449.P8455867038013419054

namespace A124449

/-- `A121443(A214361(n+1)/A121443(n+1))*A226132(n+1)` -/
def P8455867038013419054.Spec : Prop :=
  ∀ n, P8455867038013419054.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P999150648050352813

`Δ[A042963(n+1)]*A226132(n+1)`
-/

namespace A124449.P999150648050352813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226132 (n + 1)

end

end A124449.P999150648050352813

namespace A124449

/-- `Δ[A042963(n+1)]*A226132(n+1)` -/
def P999150648050352813.Spec : Prop :=
  ∀ n, P999150648050352813.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P11697166092363117119

`A057077(2*n)*A214361(n+1)`
-/

namespace A124449.P11697166092363117119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A214361 (n + 1)

end

end A124449.P11697166092363117119

namespace A124449

/-- `A057077(2*n)*A214361(n+1)` -/
def P11697166092363117119.Spec : Prop :=
  ∀ n, P11697166092363117119.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P8610905172665886049

`A226132(A005843(n+1))+2*A226132(n+1)`
-/

namespace A124449.P8610905172665886049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226132 (A005843 (n + 1)).toNat + 2 * A226132 (n + 1)

end

end A124449.P8610905172665886049

namespace A124449

/-- `A226132(A005843(n+1))+2*A226132(n+1)` -/
def P8610905172665886049.Spec : Prop :=
  ∀ n, P8610905172665886049.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P2732914697050123156

`A226132(A165998(n))`
-/

namespace A124449.P2732914697050123156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226132 (A165998 n).toNat

end

end A124449.P2732914697050123156

namespace A124449

/-- `A226132(A165998(n))` -/
def P2732914697050123156.Spec : Prop :=
  ∀ n, P2732914697050123156.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P13859430033048234168

`A226132(A008574(n+1))+2*A226132(n+1)`
-/

namespace A124449.P13859430033048234168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226132 (A008574 (n + 1)).toNat + 2 * A226132 (n + 1)

end

end A124449.P13859430033048234168

namespace A124449

/-- `A226132(A008574(n+1))+2*A226132(n+1)` -/
def P13859430033048234168.Spec : Prop :=
  ∀ n, P13859430033048234168.a n = A124449 (n + 1)

end A124449

/-! ## A124449.P17552663033187736924

`A226132(A317312(n+1))`
-/

namespace A124449.P17552663033187736924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226132 (A317312 (n + 1)).toNat

end

end A124449.P17552663033187736924

namespace A124449

/-- `A226132(A317312(n+1))` -/
def P17552663033187736924.Spec : Prop :=
  ∀ n, P17552663033187736924.a n = A124449 (n + 1)

end A124449

/-!
# A124450: Lesser of a pair of not necessarily distinct closest primes that add up to 10^n.

The programs for A124450, there is no canonical definition to state claims against.
-/

/-! ## A124450.P1175421231541233998

`A137611(n+1)+A000038(n)`
-/

namespace A124450.P1175421231541233998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + A000038 n

end

end A124450.P1175421231541233998

/-! ## A124450.P13023363684602410070

`A137611(n+1)+2*A000007(n)`
-/

namespace A124450.P13023363684602410070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + 2 * A000007 n

end

end A124450.P13023363684602410070

/-! ## A124450.P9987522138878266113

`A137611(n+1)+C(2, A028182(n))`
-/

namespace A124450.P9987522138878266113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + (Nat.choose 2 (A028182 n).toNat : ℤ)

end

end A124450.P9987522138878266113

/-! ## A124450.P17748424293359249169

`xor(A087936(A178334(n)), A137611(n+1))`
-/

namespace A124450.P17748424293359249169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087936 (A178334 n).toNat) (A137611 (n + 1))

end

end A124450.P17748424293359249169

/-! ## A124450.P1747132034040707719

`A137611(n+1)+A126869(p?[A007989(n)])`
-/

namespace A124450.P1747132034040707719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + A126869 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124450.P1747132034040707719

/-! ## A124450.P873975714559569075

`A137611(n+1)+A126869(p?[A014681(n)])`
-/

namespace A124450.P873975714559569075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + A126869 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124450.P873975714559569075

/-! ## A124450.P2531430911165017192

`A137611(n+1)+A126869(A000040(n+1))`
-/

namespace A124450.P2531430911165017192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + A126869 (A000040 (n + 1)).toNat

end

end A124450.P2531430911165017192

/-! ## A124450.P11623654100888941392

`A137611(n+1)+A126869(A007989(n))*A126869(n)`
-/

namespace A124450.P11623654100888941392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137611 (n + 1) + A126869 (A007989 n).toNat * A126869 n

end

end A124450.P11623654100888941392

/-!
# A124451: Complete list of solutions to y^2 = x^3 + 17; sequence gives y values.

The programs for A124451, there is no canonical definition to state claims against.
-/

/-! ## A124451.P9007131026511284099

`A029727(C(2, C(3, n²))+n)`
-/

namespace A124451.P9007131026511284099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029727 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A124451.P9007131026511284099

/-! ## A124451.P2199673777455171384

`A029727(A181440(n+1))`
-/

namespace A124451.P2199673777455171384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029727 (A181440 (n + 1)).toNat

end

end A124451.P2199673777455171384

/-! ## A124451.P5707139459914874493

`A029727(A222210(n)+1)`
-/

namespace A124451.P5707139459914874493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029727 (A222210 n + 1).toNat

end

end A124451.P5707139459914874493

/-! ## A124451.P10172330286362396999

`A029727(ceil(log2(A201207(n))))`
-/

namespace A124451.P10172330286362396999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029727 ⌈Real.logb 2 (A201207 n : ℝ)⌉.toNat

end

end A124451.P10172330286362396999

/-!
# A124454: Maximum possible number of subtrees of an n-node unrooted tree in which each node has maximum degree three (equivalently, rooted binary trees in which some internal nodes may have only one child). A subtree is a nonempty contiguous set of nodes, not necessarily including all descendants of the root.

The programs for A124454, there is no canonical definition to state claims against.
-/

/-! ## A124454.P15072050807337230109

`A003056(A163705(n+1))-A347449(n)`
-/

namespace A124454.P15072050807337230109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A163705 (n + 1)).toNat - A347449 n

end

end A124454.P15072050807337230109

/-!
# A124455: Numbers n such that 24n divides the sum of the first 24n nonzero Fibonacci numbers.

The programs for A124455, there is no canonical definition to state claims against.
-/

/-! ## A124455.P10423617583583693688

`∪[A072378(n+1), A001753(n)]`
-/

namespace A124455.P10423617583583693688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P10423617583583693688

/-! ## A124455.P12520888382345088934

`∪[A072378(n+1), A027575(n)]`
-/

namespace A124455.P12520888382345088934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P12520888382345088934

/-! ## A124455.P13217155502929319015

`∪[A072378(n+1), A164148(n)]`
-/

namespace A124455.P13217155502929319015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P13217155502929319015

/-! ## A124455.P7967317297248957764

`∪[A072378(n+1), A225007(n)]`
-/

namespace A124455.P7967317297248957764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P7967317297248957764

/-! ## A124455.P988863311298743810

`∪[A072378(n+1), A344126(n)]`
-/

namespace A124455.P988863311298743810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P988863311298743810

/-! ## A124455.P14887914633721512582

`∪[A034277(n+1), A072378(n+1)]`
-/

namespace A124455.P14887914633721512582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P14887914633721512582

/-! ## A124455.P3844309194497405881

`∪[A039361(n+1), A072378(n+1)]`
-/

namespace A124455.P3844309194497405881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P3844309194497405881

/-! ## A124455.P18253305824416194261

`∪[A043184(n+1), A072378(n+1)]`
-/

namespace A124455.P18253305824416194261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P18253305824416194261

/-! ## A124455.P5100584103236880896

`∪[A043379(n+1), A072378(n+1)]`
-/

namespace A124455.P5100584103236880896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P5100584103236880896

/-! ## A124455.P157543532758489784

`∪[A043964(n+1), A072378(n+1)]`
-/

namespace A124455.P157543532758489784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124455.P157543532758489784

/-!
# A124456: Numbers k which divide the sum of the Fibonacci numbers F(1) through F(k) and such that k is not a multiple of 24.

The programs for A124456, there is no canonical definition to state claims against.
-/

/-! ## A124456.P14845848025027845649

`A331976(A028310(n))+A073424(A055998(n))`
-/

namespace A124456.P14845848025027845649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331976 (A028310 n).toNat + A073424 (A055998 n).toNat

end

end A124456.P14845848025027845649

/-! ## A124456.P5394965477625519156

`A331976(A028310(n))+A010054(A092749(n))`
-/

namespace A124456.P5394965477625519156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331976 (A028310 n).toNat + A010054 (A092749 n).toNat

end

end A124456.P5394965477625519156

/-! ## A124456.P1029738470397997436

`∩[A111035(n+1), A004274(n)]`
-/

namespace A124456.P1029738470397997436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124456.P1029738470397997436

/-! ## A124456.P13648789938125008764

`record[A270313(A111035(n+1))]`
-/

namespace A124456.P13648789938125008764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (A111035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124456.P13648789938125008764

/-! ## A124456.P9897699234031687693

`A028310(∪[A331870(n+1), A331976(n+1)])`
-/

namespace A124456.P9897699234031687693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A124456.P9897699234031687693

/-!
# A124458: Triangular array resulting from summing three repeated Pascal sequences; related to the generalized pentagonal sequence (A001318) and the classical modular tessellation (cf. A054886).

The programs for A124458, there is no canonical definition to state claims against.
-/

/-! ## A124458.P3338326720250316489

`A335881(A066119(n+1))+1`
-/

namespace A124458.P3338326720250316489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (A066119 (n + 1)).toNat + 1

end

end A124458.P3338326720250316489

/-! ## A124458.P5037237266486742325

`A049599(2^A122542(n+1))`
-/

namespace A124458.P5037237266486742325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A122542 (n + 1) : ℤ))).toNat

end

end A124458.P5037237266486742325

/-! ## A124458.P3942630596293376035

`A194921(n+1)+A101637(A056469(n))`
-/

namespace A124458.P3942630596293376035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + A101637 (A056469 n).toNat

end

end A124458.P3942630596293376035

/-! ## A124458.P1226261167091377235

`A194921(n+1)+A044938(A154229(n))`
-/

namespace A124458.P1226261167091377235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + A044938 (A154229 n).toNat

end

end A124458.P1226261167091377235

/-! ## A124458.P6618953308507849139

`A194921(n+1)+A055641(A157149(n))`
-/

namespace A124458.P6618953308507849139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + A055641 (A157149 n).toNat

end

end A124458.P6618953308507849139

/-!
# A124459: Square array resulting from the bisection of array A124458. (The other array is A093560.)

The programs for A124459, there is no canonical definition to state claims against.
-/

/-! ## A124459.P1498806259342412029

`floor(A029618(n)+acot(n))`
-/

namespace A124459.P1498806259342412029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029618 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A124459.P1498806259342412029

/-! ## A124459.P18278731597276592532

`A029618(or(n, round(acot(n))))`
-/

namespace A124459.P18278731597276592532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))).toNat

end

end A124459.P18278731597276592532

/-! ## A124459.P3197944742215137894

`A029618(abs(1-n)+1)`
-/

namespace A124459.P3197944742215137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (|1 - (n : ℤ)| + 1).toNat

end

end A124459.P3197944742215137894

/-! ## A124459.P13157344110799856892

`A029618(char[1]+n)+char[n^14]`
-/

namespace A124459.P13157344110799856892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 ((if ∃ j, f1 j = n then 1 else 0) + n) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124459.P13157344110799856892

/-! ## A124459.P15916087791342257155

`A029600(A038722(n+2))`
-/

namespace A124459.P15916087791342257155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A038722 (n + 2)).toNat

end

end A124459.P15916087791342257155

/-! ## A124459.P13778506232637351591

`A289207(A029618(n))+2`
-/

namespace A124459.P13778506232637351591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A029618 n).toNat + 2

end

end A124459.P13778506232637351591

/-! ## A124459.P993814675058578763

`A029653(n)+A007318(n)`
-/

namespace A124459.P993814675058578763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + A007318 n

end

end A124459.P993814675058578763

/-! ## A124459.P10338112314218721087

`A080232(n)+A029600(n)`
-/

namespace A124459.P10338112314218721087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 n + A029600 n

end

end A124459.P10338112314218721087

/-! ## A124459.P15433932990969927603

`A151878(n)+A029618(n)`
-/

namespace A124459.P15433932990969927603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A029618 n

end

end A124459.P15433932990969927603

/-! ## A124459.P9646771800084852581

`A151909(n)+A029618(n)`
-/

namespace A124459.P9646771800084852581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A029618 n

end

end A124459.P9646771800084852581

/-!
# A124460: Rectangular table, read by antidiagonals, such that the o.g.f. of row n, R_n(y), satisfies: R_n(y) = Sum_{k>=0} y^k * R_k(y)^n for n>=0, with R_0(y) = 1/(1-y).

The programs for A124460, there is no canonical definition to state claims against.
-/

/-! ## A124460.P9009202309901430271

`A101494(A061579(n+1)%A141214(n+2))`
-/

namespace A124460.P9009202309901430271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (Int.tmod (A061579 (n + 1)) (A141214 (n + 2))).toNat

end

end A124460.P9009202309901430271

/-! ## A124460.P12604150569138311972

`A101494(A086520(A061579(n)²))`
-/

namespace A124460.P12604150569138311972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A086520 (A061579 n ^ 2).toNat).toNat

end

end A124460.P12604150569138311972

/-! ## A124460.P2794873785554038279

`A096465(A172542(A099509(n))+n)`
-/

namespace A124460.P2794873785554038279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A172542 (A099509 n).toNat + (n : ℤ)).toNat

end

end A124460.P2794873785554038279

/-! ## A124460.P171803766055227707

`A096465(or(n, A003849(A007088(n))))`
-/

namespace A124460.P171803766055227707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (Int.lor (n : ℤ) (A003849 (A007088 n).toNat)).toNat

end

end A124460.P171803766055227707

/-! ## A124460.P7272248013780505226

`or(A096465(n), A369731(A369731(n)))`
-/

namespace A124460.P7272248013780505226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096465 n) (A369731 (A369731 n).toNat)

end

end A124460.P7272248013780505226

/-!
# A124461: Row 1 of rectangular table A124460; also equals the antidiagonal sums of table A124460.

The programs for A124461, there is no canonical definition to state claims against.
-/

/-! ## A124461.P14411668024028655657

`A124469(A000124(n))+ceil(sin(n)²)`
-/

namespace A124461.P14411668024028655657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124469 (A000124 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A124461.P14411668024028655657

/-! ## A124461.P17223078610704326856

`A124469(A000124(n))+A057427(n)`
-/

namespace A124461.P17223078610704326856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124469 (A000124 n).toNat + A057427 n

end

end A124461.P17223078610704326856

/-! ## A124461.P1284010367760513853

`A124469(A000124(n))-A057428(n)`
-/

namespace A124461.P1284010367760513853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124469 (A000124 n).toNat - A057428 n

end

end A124461.P1284010367760513853

/-! ## A124461.P6194449203107149034

`A211666(n+1)+A124469(A000124(n))`
-/

namespace A124461.P6194449203107149034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A124469 (A000124 n).toNat

end

end A124461.P6194449203107149034

/-! ## A124461.P9537715765229807847

`A124460(∑[n+2]-1)`
-/

namespace A124461.P9537715765229807847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A124461.P9537715765229807847

/-!
# A124462: Row 2 of rectangular table A124460.

The programs for A124462, there is no canonical definition to state claims against.
-/

/-! ## A124462.P18179072748290050267

`A124460(∑[n+3])`
-/

namespace A124462.P18179072748290050267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124462.P18179072748290050267

/-! ## A124462.P12823290763534058424

`record[A124460(A049780(n))]`
-/

namespace A124462.P12823290763534058424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124462.P12823290763534058424

/-! ## A124462.P16170055225164735995

`record[A124460(A069981(n))]`
-/

namespace A124462.P16170055225164735995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124462.P16170055225164735995

/-! ## A124462.P1771973064209008172

`record[A124460(A193974(n))]`
-/

namespace A124462.P1771973064209008172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124462.P1771973064209008172

/-! ## A124462.P12739313078323024841

`record[A124460(record[A193973(n)])]`
-/

namespace A124462.P12739313078323024841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124462.P12739313078323024841

/-!
# A124463: Row 3 of rectangular table A124460.

The programs for A124463, there is no canonical definition to state claims against.
-/

/-! ## A124463.P10724691774576119380

`A124460(∑[n+4]+2)`
-/

namespace A124463.P10724691774576119380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124463.P10724691774576119380

/-! ## A124463.P957142919931485466

`record[A124460(n*A243148(n))]`
-/

namespace A124463.P957142919931485466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 ((n : ℤ) * A243148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124463.P957142919931485466

/-! ## A124463.P12959341774626178580

`record[A124460(n)^A243148(n)]`
-/

namespace A124463.P12959341774626178580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124460 n : ℚ) ^ (A243148 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124463.P12959341774626178580

/-! ## A124463.P17304627197305766440

`A326544(n)+A124460(A046691(n+2))`
-/

namespace A124463.P17304627197305766440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A124460 (A046691 (n + 2)).toNat

end

end A124463.P17304627197305766440

/-!
# A124464: Row 4 of rectangular table A124460.

The programs for A124464, there is no canonical definition to state claims against.
-/

/-! ## A124464.P11651017728254660337

`A124460(∑[n+5]+5)`
-/

namespace A124464.P11651017728254660337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124464.P11651017728254660337

/-! ## A124464.P1097065633156711735

`record[A124460(n*A351725(n))]`
-/

namespace A124464.P1097065633156711735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 ((n : ℤ) * A351725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124464.P1097065633156711735

/-! ## A124464.P8015838724181501662

`record[A124460(n)^A351725(n)]`
-/

namespace A124464.P8015838724181501662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124460 n : ℚ) ^ (A351725 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124464.P8015838724181501662

/-!
# A124465: Row 5 of rectangular table A124460.

The programs for A124465, there is no canonical definition to state claims against.
-/

/-! ## A124465.P15548859139334168291

`A124460(A055999(n+3))`
-/

namespace A124465.P15548859139334168291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A055999 (n + 3)).toNat

end

end A124465.P15548859139334168291

/-! ## A124465.P277167314891715343

`A124460(A134227(n+4))`
-/

namespace A124465.P277167314891715343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A134227 (n + 4)).toNat

end

end A124465.P277167314891715343

/-!
# A124466: Row 6 of rectangular table A124460.

The programs for A124466, there is no canonical definition to state claims against.
-/

/-! ## A124466.P1298459642112022486

`A124460(A134227(n+5)-1)`
-/

namespace A124466.P1298459642112022486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A134227 (n + 5) - 1).toNat

end

end A124466.P1298459642112022486

/-!
# A124467: Main diagonal of rectangular table A124460.

The programs for A124467, there is no canonical definition to state claims against.
-/

/-! ## A124467.P1413608965642593313

`A124460(∑[4*n])`
-/

namespace A124467.P1413608965642593313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124467.P1413608965642593313

/-! ## A124467.P12299635089088711262

`record[A124460(A092530(n))]`
-/

namespace A124467.P12299635089088711262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124467.P12299635089088711262

/-!
# A124468: Secondary diagonal of rectangular table A124460.

The programs for A124468, there is no canonical definition to state claims against.
-/

/-! ## A124468.P3105126043163572779

`A124460(2*(n+1)²-1)`
-/

namespace A124468.P3105126043163572779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (2 * (n + 1) ^ 2 - 1)

end

end A124468.P3105126043163572779

/-!
# A124470: Row sums of the triangle A124469, in which row n equals the inverse binomial transform of column n in the triangle A124460.

The programs for A124470, there is no canonical definition to state claims against.
-/

/-! ## A124470.P5094065526608960367

`record[A004151(∑[A216947(n)])]`
-/

namespace A124470.P5094065526608960367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124470.P5094065526608960367

/-! ## A124470.P255110910497480741

`record[A216972(∑[A216947(n)])]`
-/

namespace A124470.P255110910497480741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124470.P255110910497480741

/-! ## A124470.P16007191250358493153

`A110654(∑[2*A216947(n)])`
-/

namespace A124470.P16007191250358493153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124470.P16007191250358493153

/-!
# A124474: x-coordinate of position of n in the magic square in A124471.

The programs for A124474, there is no canonical definition to state claims against.
-/

/-! ## A124474.P11161767086334155401

`A195097(or(5, A004477(n)))`
-/

namespace A124474.P11161767086334155401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (Int.lor 5 (A004477 n)).toNat

end

end A124474.P11161767086334155401

/-! ## A124474.P7449251001821536367

`A274917(or(6, A004478(n)))`
-/

namespace A124474.P7449251001821536367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274917 (Int.lor 6 (A004478 n)).toNat

end

end A124474.P7449251001821536367

/-! ## A124474.P14668040462601045388

`A324025(or(6, n)*A008621(n))`
-/

namespace A124474.P14668040462601045388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 ((Nat.lor 6 n : ℤ) * A008621 n).toNat

end

end A124474.P14668040462601045388

/-! ## A124474.P15280359249752525014

`A070402(xor(n, (3^A004480(n))%5))`
-/

namespace A124474.P15280359249752525014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (Int.xor (n : ℤ) (Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A004480 n : ℤ))) 5)).toNat

end

end A124474.P15280359249752525014

/-! ## A124474.P11633318760324851314

`A070402(xor(A007088(n), A279849(n+1)))`
-/

namespace A124474.P11633318760324851314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (Int.xor (A007088 n) (A279849 (n + 1))).toNat

end

end A124474.P11633318760324851314

/-!
# A124477: Numbers k such that 24k+7 is a Mersenne prime (A000668).

The programs for A124477, there is no canonical definition to state claims against.
-/

/-! ## A124477.P12493979415311414575

`(2^A000043(n+2)-8)/24`
-/

namespace A124477.P12493979415311414575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000043 (n + 2) : ℤ) - 8) / 24

end

end A124477.P12493979415311414575

/-! ## A124477.P9713397558653959499

`floor(A281312(n+1)/3)`
-/

namespace A124477.P9713397558653959499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281312 (n + 1) : ℚ) / 3⌋

end

end A124477.P9713397558653959499

/-! ## A124477.P11704980742128229255

`floor(A107290(n+3)/8)`
-/

namespace A124477.P11704980742128229255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107290 (n + 3) : ℚ) / 8⌋

end

end A124477.P11704980742128229255

/-! ## A124477.P4629484664273923648

`A328284(A174265(n+1))`
-/

namespace A124477.P4629484664273923648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (A174265 (n + 1)).toNat

end

end A124477.P4629484664273923648

/-! ## A124477.P1762730957861905316

`A001045(A139480(n+2))`
-/

namespace A124477.P1762730957861905316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A139480 (n + 2)).toNat

end

end A124477.P1762730957861905316

/-!
# A124478: a(n) = prime(n) - floor((2/n)*Sum_{i=1..n} prime(i)).

The programs for A124478, the canonical program `A124478.P5037515413752499409` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124478 has offset 1).

The definition of A124478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124478.P5037515413752499409

`ceil(A240568(n+1)/(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124478

/-- `ceil(A240568(n+1)/(n+1))` -/
def P5037515413752499409.Spec : Prop :=
  ∀ n, P5037515413752499409.a n = A124478 (n + 1)

theorem P5037515413752499409.correct : P5037515413752499409.Spec := by
  intro n
  simp only [A124478, Nat.add_sub_cancel]

end A124478

/-! ## A124478.P13624134931189009106

`Δ[A007504(n)]-(A301277(n+1)+A060620(n+1))`
-/

namespace A124478.P13624134931189009106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A301277 (n + 1) + A060620 (n + 1))

end

end A124478.P13624134931189009106

namespace A124478

/-- `Δ[A007504(n)]-(A301277(n+1)+A060620(n+1))` -/
def P13624134931189009106.Spec : Prop :=
  ∀ n, P13624134931189009106.a n = A124478 (n + 1)

end A124478

/-! ## A124478.P14488843742664652715

`A000040(n+1)-(A301277(n+1)+A060620(n+1))`
-/

namespace A124478.P14488843742664652715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A301277 (n + 1) + A060620 (n + 1))

end

end A124478.P14488843742664652715

namespace A124478

/-- `A000040(n+1)-(A301277(n+1)+A060620(n+1))` -/
def P14488843742664652715.Spec : Prop :=
  ∀ n, P14488843742664652715.a n = A124478 (n + 1)

end A124478

/-! ## A124478.P8182129174363827671

`ceil((A033286(n+1)-A007504(n+1)-A007504(n+1))/(n+1))`
-/

namespace A124478.P8182129174363827671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033286 (n + 1) - A007504 (n + 1) - A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A124478.P8182129174363827671

namespace A124478

/-- `ceil((A033286(n+1)-A007504(n+1)-A007504(n+1))/(n+1))` -/
def P8182129174363827671.Spec : Prop :=
  ∀ n, P8182129174363827671.a n = A124478 (n + 1)

end A124478

/-!
# A124479: From the game of Quod: number of "squares" on an n X n array of points with the four corner points deleted.

The programs for A124479, the canonical program `A124479.P12482716349354875488` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124479 has offset 2).

The definition of A124479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124479.P12482716349354875488

`((n+2)^4-(n+2)²-48*(n+2)+84)/12`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124479

/-- `((n+2)^4-(n+2)²-48*(n+2)+84)/12` -/
def P12482716349354875488.Spec : Prop :=
  ∀ n, P12482716349354875488.a n = (A124479 (n + 2) : ℚ)

end A124479

/-! ## A124479.P11616078319246035213

`∑[∑[floor(atan(n)+n)²]]`
-/

namespace A124479.P11616078319246035213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P11616078319246035213

namespace A124479

/-- `∑[∑[floor(atan(n)+n)²]]` -/
def P11616078319246035213.Spec : Prop :=
  ∀ n, P11616078319246035213.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P650716236106754857

`∑[∑[∪[(n+3)², n²²]]]`
-/

namespace A124479.P650716236106754857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P650716236106754857

namespace A124479

/-- `∑[∑[∪[(n+3)², n²²]]]` -/
def P650716236106754857.Spec : Prop :=
  ∀ n, (P650716236106754857.a n : ℤ) = A124479 (n + 2)

end A124479

/-! ## A124479.P6133349722727389447

`∑[∑[2*n+1]+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A124479.P6133349722727389447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P6133349722727389447

namespace A124479

/-- `∑[∑[2*n+1]+a(n-1)]` -/
def P6133349722727389447.Spec : Prop :=
  ∀ n, (P6133349722727389447.a n : ℤ) = A124479 (n + 2)

end A124479

/-! ## A124479.P2238872400767805178

`∑[a(n-1)+(n+1)^(4/2)]` with `a(0)=0, a(1)=1`
-/

namespace A124479.P2238872400767805178
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (n + 1 : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P2238872400767805178

namespace A124479

/-- `∑[a(n-1)+(n+1)^(4/2)]` -/
def P2238872400767805178.Spec : Prop :=
  ∀ n, P2238872400767805178.a n = (A124479 (n + 2) : ℝ)

end A124479

/-! ## A124479.P7213732644630747435

`∑[∑[A184985(n+1)²]]`
-/

namespace A124479.P7213732644630747435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P7213732644630747435

namespace A124479

/-- `∑[∑[A184985(n+1)²]]` -/
def P7213732644630747435.Spec : Prop :=
  ∀ n, P7213732644630747435.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P11540799171696778563

`∑[∑[(A157928(n)+n)²]]`
-/

namespace A124479.P11540799171696778563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157928 n + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P11540799171696778563

namespace A124479

/-- `∑[∑[(A157928(n)+n)²]]` -/
def P11540799171696778563.Spec : Prop :=
  ∀ n, P11540799171696778563.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P17897289481811384355

`∑[∑[(n-A130773(n))²]]`
-/

namespace A124479.P17897289481811384355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A130773 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P17897289481811384355

namespace A124479

/-- `∑[∑[(n-A130773(n))²]]` -/
def P17897289481811384355.Spec : Prop :=
  ∀ n, P17897289481811384355.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P11737204983353074485

`∑[∑[(A046929(n+1)%2+n)²]]`
-/

namespace A124479.P11737204983353074485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A046929 (n + 1)) 2 + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P11737204983353074485

namespace A124479

/-- `∑[∑[(A046929(n+1)%2+n)²]]` -/
def P11737204983353074485.Spec : Prop :=
  ∀ n, P11737204983353074485.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P15031970739023838984

`∑[∑[(A004273(n)-A289207(n))²]]`
-/

namespace A124479.P15031970739023838984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n - A289207 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P15031970739023838984

namespace A124479

/-- `∑[∑[(A004273(n)-A289207(n))²]]` -/
def P15031970739023838984.Spec : Prop :=
  ∀ n, P15031970739023838984.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P15035980555441784971

`∑[∑[(A091225(A305419(n+1))+n)²]]`
-/

namespace A124479.P15035980555441784971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091225 (A305419 (n + 1)).toNat + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P15035980555441784971

namespace A124479

/-- `∑[∑[(A091225(A305419(n+1))+n)²]]` -/
def P15035980555441784971.Spec : Prop :=
  ∀ n, P15035980555441784971.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P4708760339435453845

`∑[∑[A209350(2*n)]-1]`
-/

namespace A124479.P4708760339435453845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209350 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P4708760339435453845

namespace A124479

/-- `∑[∑[A209350(2*n)]-1]` -/
def P4708760339435453845.Spec : Prop :=
  ∀ n, P4708760339435453845.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P550299204701672190

`∑[∑[(n+1)²%A000041(∑[n+1])]]`
-/

namespace A124479.P550299204701672190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A000041 (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P550299204701672190

namespace A124479

/-- `∑[∑[(n+1)²%A000041(∑[n+1])]]` -/
def P550299204701672190.Spec : Prop :=
  ∀ n, P550299204701672190.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P17042539251833435766

`∑[∑[(A284893(A332825(n+1)+1)+n)²]]`
-/

namespace A124479.P17042539251833435766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284893 (A332825 (n + 1) + 1).toNat + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P17042539251833435766

namespace A124479

/-- `∑[∑[(A284893(A332825(n+1)+1)+n)²]]` -/
def P17042539251833435766.Spec : Prop :=
  ∀ n, P17042539251833435766.a n = A124479 (n + 2)

end A124479

/-! ## A124479.P16043687592846561564

`∑[∑[A028253((n+1)²)]]`
-/

namespace A124479.P16043687592846561564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124479.P16043687592846561564

namespace A124479

/-- `∑[∑[A028253((n+1)²)]]` -/
def P16043687592846561564.Spec : Prop :=
  ∀ n, P16043687592846561564.a n = A124479 (n + 2)

end A124479

/-!
# A124480: Number of hook length posets with n elements.

The programs for A124480, there is no canonical definition to state claims against.
-/

/-! ## A124480.P3924957596746225750

`ogf((-1+2x^2+2x^3+5x^4+3x^5+7x^6)/(-1+2x+2x^2))`
-/

namespace A124480.P3924957596746225750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -2, -5, -3, -7] [1, -2, -2] n

end

end A124480.P3924957596746225750

/-! ## A124480.P7447440301616996524

`floor((n+1)*(a(n-2)+3/5))` with `a(0)=1, a(1)=2`
-/

namespace A124480.P7447440301616996524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n + 1 : ℚ) * ((a (n - 2) : ℚ) + (3 : ℚ) / 5)⌋

end

end A124480.P7447440301616996524

/-! ## A124480.P17433562537265785589

`A344604(2*n)-∑[floor((n/2)²)]`
-/

namespace A124480.P17433562537265785589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344604 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124480.P17433562537265785589

/-!
# A124481: Number of connected hook length posets, with n elements.

The programs for A124481, there is no canonical definition to state claims against.
-/

/-! ## A124481.P18359031312182368925

`A124483(n+1)-A326447(A004275(n))`
-/

namespace A124481.P18359031312182368925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124483 (n + 1) - A326447 (A004275 n).toNat

end

end A124481.P18359031312182368925

/-! ## A124481.P7096106526052290218

`A124483(n+1)-A213683(A289207(n))`
-/

namespace A124481.P7096106526052290218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124483 (n + 1) - A213683 (A289207 n).toNat

end

end A124481.P7096106526052290218

/-! ## A124481.P12012176665875953298

`xor(∑[A324180(n+1)], A245900(n+1))`
-/

namespace A124481.P12012176665875953298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A245900 (n + 1))

end

end A124481.P12012176665875953298

/-! ## A124481.P2730315881344159430

`A007306(A201950(n)+A046927(n))`
-/

namespace A124481.P2730315881344159430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A201950 n + A046927 n).toNat

end

end A124481.P2730315881344159430

/-!
# A124482: Number of indecomposable disconnected hook length posets with n elements.

The programs for A124482, there is no canonical definition to state claims against.
-/

/-! ## A124482.P9680720984931029654

`floor(A174461(n)/41)`
-/

namespace A124482.P9680720984931029654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174461 n : ℚ) / 41⌋

end

end A124482.P9680720984931029654

/-! ## A124482.P8028671469298674525

`floor(A042669(n)/92)`
-/

namespace A124482.P8028671469298674525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A042669 n : ℚ) / 92⌋

end

end A124482.P8028671469298674525

/-! ## A124482.P2933299042399096395

`floor(A041855(n)/94)`
-/

namespace A124482.P2933299042399096395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041855 n : ℚ) / 94⌋

end

end A124482.P2933299042399096395

/-! ## A124482.P17057179842162635032

`∑[A241062(∏{d}[n, #])]`
-/

namespace A124482.P17057179842162635032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241062 (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124482.P17057179842162635032

/-! ## A124482.P13413064111618538128

`∑[64%A147355(n+2)]`
-/

namespace A124482.P13413064111618538128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 64 (A147355 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124482.P13413064111618538128

/-!
# A124483: Number of connected jeu de taquin posets with n elements.

The programs for A124483, there is no canonical definition to state claims against.
-/

/-! ## A124483.P10701458727895190727

`A124481(n+1)+∑[A185143(n)]`
-/

namespace A124483.P10701458727895190727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124481 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124483.P10701458727895190727

/-! ## A124483.P11176784739144951382

`A326447(A004275(n))+A124481(n+1)`
-/

namespace A124483.P11176784739144951382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326447 (A004275 n).toNat + A124481 (n + 1)

end

end A124483.P11176784739144951382

/-! ## A124483.P15821840687069066747

`A213683(A289207(n))+A124481(n+1)`
-/

namespace A124483.P15821840687069066747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 (A289207 n).toNat + A124481 (n + 1)

end

end A124483.P15821840687069066747

/-! ## A124483.P1109405678773487365

`A326527(A047486(n+2))+A124481(n+1)`
-/

namespace A124483.P1109405678773487365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 (A047486 (n + 2)).toNat + A124481 (n + 1)

end

end A124483.P1109405678773487365

/-!
# A124484: Maximum number of unit squares aligned with unit-spaced horizontal lines that can be enclosed by a circle of radius n.

The programs for A124484, there is no canonical definition to state claims against.
-/

/-! ## A124484.P66726687052561678

`A374505(2*n)`
-/

namespace A124484.P66726687052561678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374505 (2 * n)

end

end A124484.P66726687052561678

/-! ## A124484.P984953327139380396

`record[A374505(A308182(n+1))]`
-/

namespace A124484.P984953327139380396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374505 (A308182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124484.P984953327139380396

/-! ## A124484.P9608243196484863519

`A111897(A057574(n))+A000567(n)`
-/

namespace A124484.P9608243196484863519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111897 (A057574 n).toNat + A000567 n

end

end A124484.P9608243196484863519

/-! ## A124484.P10722023252737857879

`A370820(A179554(n+1))+A000567(n)`
-/

namespace A124484.P10722023252737857879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (A179554 (n + 1)).toNat + A000567 n

end

end A124484.P10722023252737857879

/-!
# A124485: Numbers k such that both 2*k-1 and 4*k-1 are primes.

The programs for A124485, the canonical program `A124485.P12550147880287035741` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124485 has offset 1).

The definition of A124485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124485.P12550147880287035741

`(A005384(n+2)+1)/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A124485

/-- `(A005384(n+2)+1)/2` -/
def P12550147880287035741.Spec : Prop :=
  ∀ n, P12550147880287035741.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P7673218509122721088

`A152843(n+1)+2`
-/

namespace A124485.P7673218509122721088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152843 (n + 1) + 2

end

end A124485.P7673218509122721088

namespace A124485

/-- `A152843(n+1)+2` -/
def P7673218509122721088.Spec : Prop :=
  ∀ n, P7673218509122721088.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P8740247453182546580

`ceil(A005384(n+2)/2)`
-/

namespace A124485.P8740247453182546580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005384 (n + 2) : ℚ) / 2⌉

end

end A124485.P8740247453182546580

namespace A124485

/-- `ceil(A005384(n+2)/2)` -/
def P8740247453182546580.Spec : Prop :=
  ∀ n, P8740247453182546580.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P15025478909372375173

`∑[A014682(Δ[A005384(n+1)])]`
-/

namespace A124485.P15025478909372375173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124485.P15025478909372375173

namespace A124485

/-- `∑[A014682(Δ[A005384(n+1)])]` -/
def P15025478909372375173.Spec : Prop :=
  ∀ n, P15025478909372375173.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P18147241653729437917

`∑[A160413(Δ[A005384(n+1)])]`
-/

namespace A124485.P18147241653729437917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124485.P18147241653729437917

namespace A124485

/-- `∑[A160413(Δ[A005384(n+1)])]` -/
def P18147241653729437917.Spec : Prop :=
  ∀ n, P18147241653729437917.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P16013515829978502234

`A176045(n+2)/2`
-/

namespace A124485.P16013515829978502234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176045 (n + 2) : ℚ) / 2

end

end A124485.P16013515829978502234

namespace A124485

/-- `A176045(n+2)/2` -/
def P16013515829978502234.Spec : Prop :=
  ∀ n, P16013515829978502234.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P2536646518871273581

`round(A005385(n+2)/4)`
-/

namespace A124485.P2536646518871273581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005385 (n + 2) : ℚ) / 4)

end

end A124485.P2536646518871273581

namespace A124485

/-- `round(A005385(n+2)/4)` -/
def P2536646518871273581.Spec : Prop :=
  ∀ n, P2536646518871273581.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P319369416091211634

`A005384(n+2)²%A005385(n+2)`
-/

namespace A124485.P319369416091211634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (n + 2) ^ 2) (A005385 (n + 2))

end

end A124485.P319369416091211634

namespace A124485

/-- `A005384(n+2)²%A005385(n+2)` -/
def P319369416091211634.Spec : Prop :=
  ∀ n, P319369416091211634.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P12539544752674787039

`A005385(n+2)-A175666(n+2)/2`
-/

namespace A124485.P12539544752674787039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005385 (n + 2) : ℚ) - (A175666 (n + 2) : ℚ) / 2

end

end A124485.P12539544752674787039

namespace A124485

/-- `A005385(n+2)-A175666(n+2)/2` -/
def P12539544752674787039.Spec : Prop :=
  ∀ n, P12539544752674787039.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P18026251842776783405

`(A175666(n+2)-A077065(n+2))/2`
-/

namespace A124485.P18026251842776783405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175666 (n + 2) - A077065 (n + 2) : ℚ) / 2

end

end A124485.P18026251842776783405

namespace A124485

/-- `(A175666(n+2)-A077065(n+2))/2` -/
def P18026251842776783405.Spec : Prop :=
  ∀ n, P18026251842776783405.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P16933616031375775605

`(p?[A104635(n+1)]+1)/2`
-/

namespace A124485.P16933616031375775605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A124485.P16933616031375775605

namespace A124485

/-- `(p?[A104635(n+1)]+1)/2` -/
def P16933616031375775605.Spec : Prop :=
  ∀ n, P16933616031375775605.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P4491774679209979921

`A111333(A072192(n+2))`
-/

namespace A124485.P4491774679209979921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A072192 (n + 2)).toNat

end

end A124485.P4491774679209979921

namespace A124485

/-- `A111333(A072192(n+2))` -/
def P4491774679209979921.Spec : Prop :=
  ∀ n, P4491774679209979921.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P9569165166047211620

`∩[A005099(n+1), A006254(n+1)]`
-/

namespace A124485.P9569165166047211620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124485.P9569165166047211620

namespace A124485

/-- `∩[A005099(n+1), A006254(n+1)]` -/
def P9569165166047211620.Spec : Prop :=
  ∀ n, (P9569165166047211620.a n : ℤ) = A124485 (n + 1)

end A124485

/-! ## A124485.P8757225017493806628

`∩[A067076(n+1), A089986(n+1)]+2`
-/

namespace A124485.P8757225017493806628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A124485.P8757225017493806628

namespace A124485

/-- `∩[A067076(n+1), A089986(n+1)]+2` -/
def P8757225017493806628.Spec : Prop :=
  ∀ n, (P8757225017493806628.a n : ℤ) = A124485 (n + 1)

end A124485

/-! ## A124485.P15445392287295048710

`A014682(A005384(n+2)+1)`
-/

namespace A124485.P15445392287295048710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005384 (n + 2) + 1).toNat

end

end A124485.P15445392287295048710

namespace A124485

/-- `A014682(A005384(n+2)+1)` -/
def P15445392287295048710.Spec : Prop :=
  ∀ n, P15445392287295048710.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P11881934348601552813

`record[A000203(A112037(n+3))/2]`
-/

namespace A124485.P11881934348601552813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A112037 (n + 3)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124485.P11881934348601552813

namespace A124485

/-- `record[A000203(A112037(n+3))/2]` -/
def P11881934348601552813.Spec : Prop :=
  ∀ n, P11881934348601552813.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P18056826481338599982

`record[(A066670(n+1)+1)/2]`
-/

namespace A124485.P18056826481338599982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066670 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124485.P18056826481338599982

namespace A124485

/-- `record[(A066670(n+1)+1)/2]` -/
def P18056826481338599982.Spec : Prop :=
  ∀ n, P18056826481338599982.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P131682892526055076

`record[(n+2)/A305978(n+1)]`
-/

namespace A124485.P131682892526055076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A305978 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124485.P131682892526055076

namespace A124485

/-- `record[(n+2)/A305978(n+1)]` -/
def P131682892526055076.Spec : Prop :=
  ∀ n, P131682892526055076.a n = (A124485 (n + 1) : ℚ)

end A124485

/-! ## A124485.P17781328023236377667

`A302042(A005384(n+2)+1)`
-/

namespace A124485.P17781328023236377667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A005384 (n + 2) + 1).toNat

end

end A124485.P17781328023236377667

namespace A124485

/-- `A302042(A005384(n+2)+1)` -/
def P17781328023236377667.Spec : Prop :=
  ∀ n, P17781328023236377667.a n = A124485 (n + 1)

end A124485

/-! ## A124485.P17496491495469060191

`A024698(A266400(n+2))`
-/

namespace A124485.P17496491495469060191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024698 (A266400 (n + 2)).toNat

end

end A124485.P17496491495469060191

namespace A124485

/-- `A024698(A266400(n+2))` -/
def P17496491495469060191.Spec : Prop :=
  ∀ n, P17496491495469060191.a n = A124485 (n + 1)

end A124485

/-!
# A124486: Numbers k such that 2*k-1, 4*k-1 and 6*k-1 are primes.

The programs for A124486, there is no canonical definition to state claims against.
-/

/-! ## A124486.P8150558788570690416

`ceil(A067256(n+1)/2)`
-/

namespace A124486.P8150558788570690416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067256 (n + 1) : ℚ) / 2⌉

end

end A124486.P8150558788570690416

/-! ## A124486.P5348193471829747032

`(A067256(A000027(n+1))+1)/2`
-/

namespace A124486.P5348193471829747032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067256 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A124486.P5348193471829747032

/-! ## A124486.P10428061534128205440

`(A067256(n+1)+A033999(n)²)/2`
-/

namespace A124486.P10428061534128205440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067256 (n + 1) + A033999 n ^ 2 : ℚ) / 2

end

end A124486.P10428061534128205440

/-! ## A124486.P5037408302475142391

`floor((A067256(n+1)+A014709(n))/2)`
-/

namespace A124486.P5037408302475142391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) + A014709 n : ℚ) / 2⌋

end

end A124486.P5037408302475142391

/-! ## A124486.P13431270552193414326

`floor(A067256(n+1)/2)+A007318(C(2, n))`
-/

namespace A124486.P13431270552193414326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋ + A007318 (Nat.choose 2 n)

end

end A124486.P13431270552193414326

/-! ## A124486.P10237809562324880634

`floor(A067256(n+1)/2)+A000041(C(2, 2*n))`
-/

namespace A124486.P10237809562324880634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋ + A000041 (Nat.choose 2 (2 * n))

end

end A124486.P10237809562324880634

/-! ## A124486.P13519045410602768248

`round((A067256(n+1)/2)^A007318(C(2, n+2)))`
-/

namespace A124486.P13519045410602768248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A067256 (n + 1) : ℚ) / 2) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ))

end

end A124486.P13519045410602768248

/-! ## A124486.P11627843223372622820

`A000005(gcd(n, n+1))+floor(A067256(n+1)/2)`
-/

namespace A124486.P11627843223372622820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) + ⌊(A067256 (n + 1) : ℚ) / 2⌋

end

end A124486.P11627843223372622820

/-! ## A124486.P13778866610293150510

`floor(A067256(n+1)/2)+(1-A019590(n+1))!`
-/

namespace A124486.P13778866610293150510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋ + (Nat.factorial (1 - A019590 (n + 1)).toNat : ℤ)

end

end A124486.P13778866610293150510

/-! ## A124486.P10917768058437894892

`(A067256(n+1)-A057428(A020639(n+1)))/2`
-/

namespace A124486.P10917768058437894892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067256 (n + 1) - A057428 (A020639 (n + 1)).toNat : ℚ) / 2

end

end A124486.P10917768058437894892

/-! ## A124486.P7679920767543657395

`floor(A067256(n+1)/2)+A007318(A020639(2*(n+1)))`
-/

namespace A124486.P7679920767543657395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋ + A007318 (A020639 (2 * (n + 1))).toNat

end

end A124486.P7679920767543657395

/-! ## A124486.P5592527991527086216

`floor(A067256(n+1)/2)-A008683(A008578(n+3))`
-/

namespace A124486.P5592527991527086216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋ - A008683 (A008578 (n + 3)).toNat

end

end A124486.P5592527991527086216

/-! ## A124486.P4853356698437011533

`floor(A067256(n+1)/2)-A033999(2*n+1)`
-/

namespace A124486.P4853356698437011533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋ - A033999 (2 * n + 1)

end

end A124486.P4853356698437011533

/-! ## A124486.P643012821448265785

`(A067256(n+1)-A008683(A002144(n+1)))/2`
-/

namespace A124486.P643012821448265785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067256 (n + 1) - A008683 (A002144 (n + 1)).toNat : ℚ) / 2

end

end A124486.P643012821448265785

/-! ## A124486.P662579194948479567

`(A067256(n+1)+A014963(A050705(n+1)))/2`
-/

namespace A124486.P662579194948479567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067256 (n + 1) + A014963 (A050705 (n + 1)).toNat : ℚ) / 2

end

end A124486.P662579194948479567

/-! ## A124486.P11138302835538289316

`A014682(A067256(n+1)+1)`
-/

namespace A124486.P11138302835538289316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067256 (n + 1) + 1).toNat

end

end A124486.P11138302835538289316

/-! ## A124486.P13102076724654360662

`A000203(A067256(n+1))/A000005(A023217(n+1))`
-/

namespace A124486.P13102076724654360662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A067256 (n + 1)).toNat : ℚ) / (A000005 (A023217 (n + 1)).toNat : ℚ)

end

end A124486.P13102076724654360662

/-! ## A124486.P5378321744220364119

`A000203(A067256(n+1))/A000005(A040087(n+1))`
-/

namespace A124486.P5378321744220364119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A067256 (n + 1)).toNat : ℚ) / (A000005 (A040087 (n + 1)).toNat : ℚ)

end

end A124486.P5378321744220364119

/-! ## A124486.P13535909726027191510

`∩[A024898(n+1), A124485(n+1)]`
-/

namespace A124486.P13535909726027191510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124486.P13535909726027191510

/-! ## A124486.P14193297187293606054

`A302043(A067256(n+1)+1)`
-/

namespace A124486.P14193297187293606054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A067256 (n + 1) + 1).toNat

end

end A124486.P14193297187293606054

/-!
# A124487: Numbers k such that 2*k-1, 4*k-1, 6*k-1 and 8*k-1 are primes.

The programs for A124487, there is no canonical definition to state claims against.
-/

/-! ## A124487.P7771161091550475948

`ceil(A067257(n+1)/2)`
-/

namespace A124487.P7771161091550475948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067257 (n + 1) : ℚ) / 2⌉

end

end A124487.P7771161091550475948

/-! ## A124487.P3031078594271551024

`char[A027656(n)]+floor(A067257(n+1)/2)`
-/

namespace A124487.P3031078594271551024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(A067257 (n + 1) : ℚ) / 2⌋

end

end A124487.P3031078594271551024

/-! ## A124487.P7348034925882651437

`char[A061579(n)]+floor(A067257(n+1)/2)`
-/

namespace A124487.P7348034925882651437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(A067257 (n + 1) : ℚ) / 2⌋

end

end A124487.P7348034925882651437

/-! ## A124487.P11544679311767248057

`round(A067257(n+1)/A316828(2*n+3))`
-/

namespace A124487.P11544679311767248057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A067257 (n + 1) : ℚ) / (A316828 (2 * n + 3) : ℚ))

end

end A124487.P11544679311767248057

/-! ## A124487.P5865023992520570932

`floor(A067257(n+1)/2-A033999(2*n+1))`
-/

namespace A124487.P5865023992520570932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067257 (n + 1) : ℚ) / 2 - (A033999 (2 * n + 1) : ℚ)⌋

end

end A124487.P5865023992520570932

/-! ## A124487.P13969526919372795834

`A001222(A037153(n+1))+floor(A067257(n+1)/2)`
-/

namespace A124487.P13969526919372795834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037153 (n + 1)).toNat + ⌊(A067257 (n + 1) : ℚ) / 2⌋

end

end A124487.P13969526919372795834

/-! ## A124487.P13936602344376476823

`∩[A124486(n+1), A124493(n+1)]`
-/

namespace A124487.P13936602344376476823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124487.P13936602344376476823

/-! ## A124487.P17681483614021368675

`A014963(12*n+10)+floor(A067257(n+1)/2)`
-/

namespace A124487.P17681483614021368675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 10) + ⌊(A067257 (n + 1) : ℚ) / 2⌋

end

end A124487.P17681483614021368675

/-! ## A124487.P1087606568085990049

`ceil(p?[A126955(n+1)]/2)`
-/

namespace A124487.P1087606568085990049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A124487.P1087606568085990049

/-! ## A124487.P6934701524497705962

`(p?[A126955(n+1)]+A014963(6*(n+1)))/2`
-/

namespace A124487.P6934701524497705962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A014963 (6 * (n + 1)) : ℚ) / 2

end

end A124487.P6934701524497705962

/-!
# A124488: Numbers k such that 2*k-1, 4*k-1, 6*k-1, 8*k-1 and 10*k-1 are primes.

The programs for A124488, there is no canonical definition to state claims against.
-/

/-! ## A124488.P324058026939240867

`ceil(A067258(n+1)/2)`
-/

namespace A124488.P324058026939240867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067258 (n + 1) : ℚ) / 2⌉

end

end A124488.P324058026939240867

/-! ## A124488.P15315816108150005767

`record[(A067258(round(xor(1, n)/6)+1)+1)/2]`
-/

namespace A124488.P15315816108150005767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067258 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6) + 1).toNat + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124488.P15315816108150005767

/-! ## A124488.P2269550377639332630

`(A067258(A005843(n)/2+1)+1)/2`
-/

namespace A124488.P2269550377639332630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067258 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2 + 1)).toNat + 1 : ℚ) / 2

end

end A124488.P2269550377639332630

/-! ## A124488.P4366587454482820502

`(A067258(n+1)+1)/2%A050278(n+1)`
-/

namespace A124488.P4366587454482820502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067258 (n + 1) + 1 : ℚ) / (Int.tmod 2 (A050278 (n + 1)) : ℚ)

end

end A124488.P4366587454482820502

/-! ## A124488.P11609457649684118581

`round(sqrt(((A067258(n+1)+A010054(n))/2)²+1))`
-/

namespace A124488.P11609457649684118581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((A067258 (n + 1) + A010054 n : ℚ) / 2) ^ 2 + 1 : ℝ))

end

end A124488.P11609457649684118581

/-! ## A124488.P8418120677137785724

`(A067258(n+1)-A008683(A020483(n)))/2`
-/

namespace A124488.P8418120677137785724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067258 (n + 1) - A008683 (A020483 n).toNat : ℚ) / 2

end

end A124488.P8418120677137785724

/-! ## A124488.P1051705505610638876

`(A067258(A010685(2*n)+n)+1)/2`
-/

namespace A124488.P1051705505610638876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067258 (A010685 (2 * n) + (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A124488.P1051705505610638876

/-! ## A124488.P6220746712082580135

`(A067258(A057979(8*n)+n)+1)/2`
-/

namespace A124488.P6220746712082580135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067258 (A057979 (8 * n) + (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A124488.P6220746712082580135

/-!
# A124489: Numbers k such that 2*k-1, 4*k-1, 6*k-1, 8*k-1, 10*k-1 and 12*k-1 are primes.

The programs for A124489, there is no canonical definition to state claims against.
-/

/-! ## A124489.P6801376939067309217

`ceil(A101767(n+1)/2)`
-/

namespace A124489.P6801376939067309217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101767 (n + 1) : ℚ) / 2⌉

end

end A124489.P6801376939067309217

/-! ## A124489.P7077941562483403788

`or(round(A101767(n+1)/2), A000007(n))`
-/

namespace A124489.P7077941562483403788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A101767 (n + 1) : ℚ) / 2)) (A000007 n)

end

end A124489.P7077941562483403788

/-! ## A124489.P8873093136007686198

`A007318(C(2, n))*round(A101767(n+1)/2)`
-/

namespace A124489.P8873093136007686198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A101767 (n + 1) : ℚ) / 2)

end

end A124489.P8873093136007686198

/-! ## A124489.P9018453762188084295

`floor(A010156(2*n+1)+A101767(n+1)/2)`
-/

namespace A124489.P9018453762188084295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010156 (2 * n + 1) : ℚ) + (A101767 (n + 1) : ℚ) / 2⌋

end

end A124489.P9018453762188084295

/-! ## A124489.P17644656100704210342

`floor(A055396(2*(n+1))+A101767(n+1)/2)`
-/

namespace A124489.P17644656100704210342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055396 (2 * (n + 1)) : ℚ) + (A101767 (n + 1) : ℚ) / 2⌋

end

end A124489.P17644656100704210342

/-! ## A124489.P9062116639210290903

`floor(A006466(∑[n])+A101767(n+1)/2)`
-/

namespace A124489.P9062116639210290903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006466 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A101767 (n + 1) : ℚ) / 2⌋

end

end A124489.P9062116639210290903

/-! ## A124489.P3777206690333219878

`floor(A008284(∑[n+1])+A101767(n+1)/2)`
-/

namespace A124489.P3777206690333219878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008284 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A101767 (n + 1) : ℚ) / 2⌋

end

end A124489.P3777206690333219878

/-! ## A124489.P14270815773540098714

`floor(A014963(A000217(n+4))+A101767(n+1)/2)`
-/

namespace A124489.P14270815773540098714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A000217 (n + 4)).toNat : ℚ) + (A101767 (n + 1) : ℚ) / 2⌋

end

end A124489.P14270815773540098714

/-!
# A124490: Numbers n such that 2n-1, 4n-1, 6n-1, 8n-1, 10n-1, 12n-1 and 14n-1 are primes.

The programs for A124490, there is no canonical definition to state claims against.
-/

/-! ## A124490.P8909992495463359536

`ceil(A101768(n+1)/2)`
-/

namespace A124490.P8909992495463359536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101768 (n + 1) : ℚ) / 2⌉

end

end A124490.P8909992495463359536

/-! ## A124490.P1856518086266590655

`(A101768(A000027(n+1))+1)/2`
-/

namespace A124490.P1856518086266590655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101768 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A124490.P1856518086266590655

/-! ## A124490.P15261692731951750357

`(A101768(A289207(n+3))+1)/2`
-/

namespace A124490.P15261692731951750357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101768 (A289207 (n + 3)).toNat + 1 : ℚ) / 2

end

end A124490.P15261692731951750357

/-! ## A124490.P9914379883305576330

`floor((A371384(n)+A101768(n+1))/2)`
-/

namespace A124490.P9914379883305576330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A371384 n + A101768 (n + 1) : ℚ) / 2⌋

end

end A124490.P9914379883305576330

/-! ## A124490.P12896825594769699942

`(A101768(n+1)-A033999(2*n+1))/2`
-/

namespace A124490.P12896825594769699942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101768 (n + 1) - A033999 (2 * n + 1) : ℚ) / 2

end

end A124490.P12896825594769699942

/-!
# A124491: Numbers n such that 2n-1, 4n-1, 6n-1, 8n-1, 10n-1, 12n-1, 14n-1 and 16n-1 are primes.

The programs for A124491, there is no canonical definition to state claims against.
-/

/-! ## A124491.P17179849318106302489

`ceil(A101769(n+1)/2)`
-/

namespace A124491.P17179849318106302489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101769 (n + 1) : ℚ) / 2⌉

end

end A124491.P17179849318106302489

/-! ## A124491.P8804972079509820395

`(A101769(A249817(n+1))-1)/2+1`
-/

namespace A124491.P8804972079509820395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101769 (A249817 (n + 1)).toNat - 1 : ℚ) / 2 + 1

end

end A124491.P8804972079509820395

/-! ## A124491.P482885117649083169

`floor((A101769(n+1)+sqrt(A010122(n)))/2)`
-/

namespace A124491.P482885117649083169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A101769 (n + 1) : ℝ) + Real.sqrt (A010122 n : ℝ)) / 2⌋

end

end A124491.P482885117649083169

/-! ## A124491.P4086196691375457327

`floor((A101769(n+1)+sqrt(A082907(n)))/2)`
-/

namespace A124491.P4086196691375457327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A101769 (n + 1) : ℝ) + Real.sqrt (A082907 n : ℝ)) / 2⌋

end

end A124491.P4086196691375457327

/-!
# A124492: a(n) = least k such that 2*i*k - 1 is prime for 1 <= i <= n.

The programs for A124492, there is no canonical definition to state claims against.
-/

/-! ## A124492.P8220795576646263444

`ceil(A088651(n+1)/2)`
-/

namespace A124492.P8220795576646263444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088651 (n + 1) : ℚ) / 2⌉

end

end A124492.P8220795576646263444

/-! ## A124492.P3890101966582618507

`round(A088651(A000027(n+1))/2)`
-/

namespace A124492.P3890101966582618507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088651 (A000027 (n + 1)).toNat : ℚ) / 2)

end

end A124492.P3890101966582618507

/-! ## A124492.P7164402039275530550

`round(A088651(n+1)/A020639(A002203(n)))`
-/

namespace A124492.P7164402039275530550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088651 (n + 1) : ℚ) / (A020639 (A002203 n).toNat : ℚ))

end

end A124492.P7164402039275530550

/-! ## A124492.P16257545355096175889

`round(A088651(n+1)/A000005(A060210(n+1)))`
-/

namespace A124492.P16257545355096175889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088651 (n + 1) : ℚ) / (A000005 (A060210 (n + 1)).toNat : ℚ))

end

end A124492.P16257545355096175889

/-! ## A124492.P8180984893316446909

`round(A088651(n+1)/A000005(A060229(n+1)))`
-/

namespace A124492.P8180984893316446909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088651 (n + 1) : ℚ) / (A000005 (A060229 (n + 1)).toNat : ℚ))

end

end A124492.P8180984893316446909

/-!
# A124493: Numbers k for which 2*k-1, 4*k-1 and 8*k-1 are primes.

The programs for A124493, there is no canonical definition to state claims against.
-/

/-! ## A124493.P13219966508141479750

`ceil(A007700(n+2)/2)`
-/

namespace A124493.P13219966508141479750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007700 (n + 2) : ℚ) / 2⌉

end

end A124493.P13219966508141479750

/-! ## A124493.P1932876630177177863

`round(A066179(n+2)/8)`
-/

namespace A124493.P1932876630177177863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A066179 (n + 2) : ℚ) / 8)

end

end A124493.P1932876630177177863

/-! ## A124493.P18038218253767286234

`(A059455(n+2)+1)/4`
-/

namespace A124493.P18038218253767286234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059455 (n + 2) + 1 : ℚ) / 4

end

end A124493.P18038218253767286234

/-! ## A124493.P14714802847837508593

`∑[A038572(Δ[A007700(n+1)])]`
-/

namespace A124493.P14714802847837508593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124493.P14714802847837508593

/-! ## A124493.P1565300462910314169

`∑[A026741(Δ[A007700(n+1)])]`
-/

namespace A124493.P1565300462910314169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124493.P1565300462910314169

/-! ## A124493.P5853317639633610031

`∩[A005122(n+1), A124485(n+1)]`
-/

namespace A124493.P5853317639633610031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124493.P5853317639633610031

/-! ## A124493.P4782645008586941201

`A000203(A059455(n+2))/4`
-/

namespace A124493.P4782645008586941201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A059455 (n + 2)).toNat : ℚ) / 4

end

end A124493.P4782645008586941201

/-! ## A124493.P10921352222292771388

`A380421(A075133(n+2))`
-/

namespace A124493.P10921352222292771388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380421 (A075133 (n + 2)).toNat

end

end A124493.P10921352222292771388

/-! ## A124493.P12255733304577454331

`lt[2, A067849(n+1)]+2`
-/

namespace A124493.P12255733304577454331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A124493.P12255733304577454331

/-! ## A124493.P11658993023279070504

`lt[2, A063377(2*n+1)]+1`
-/

namespace A124493.P11658993023279070504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A124493.P11658993023279070504

/-!
# A124494: Numbers k for which 2*k-1, 4*k-1, 8*k-1 and 16*k-1 are primes.

The programs for A124494, there is no canonical definition to state claims against.
-/

/-! ## A124494.P9304269479071578007

`ceil(A023272(n+2)/2)`
-/

namespace A124494.P9304269479071578007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023272 (n + 2) : ℚ) / 2⌉

end

end A124494.P9304269479071578007

/-! ## A124494.P3119150333371936342

`round(A023272(gcd(n, n+1)+n+1)/2)`
-/

namespace A124494.P3119150333371936342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023272 (Nat.gcd n (n + 1) + (n + 1)) : ℚ) / 2)

end

end A124494.P3119150333371936342

/-! ## A124494.P12531374431356716932

`round(A023272(n+2)/2)%A017502(n)`
-/

namespace A124494.P12531374431356716932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A023272 (n + 2) : ℚ) / 2)) (A017502 n)

end

end A124494.P12531374431356716932

/-! ## A124494.P2005220535865344204

`round(A000007(n+1)+A023272(n+2)/2)`
-/

namespace A124494.P2005220535865344204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A023272 (n + 2) : ℚ) / 2)

end

end A124494.P2005220535865344204

/-! ## A124494.P4768883288729868538

`A007318(C(2, n))*round(A023272(n+2)/2)`
-/

namespace A124494.P4768883288729868538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A023272 (n + 2) : ℚ) / 2)

end

end A124494.P4768883288729868538

/-! ## A124494.P5338367009354464481

`(A023272(n+2)+1)/A020639(2*(n+1))`
-/

namespace A124494.P5338367009354464481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023272 (n + 2) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A124494.P5338367009354464481

/-! ## A124494.P4019505896913746982

`∩[A101790(n+1), A124493(n+1)]`
-/

namespace A124494.P4019505896913746982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124494.P4019505896913746982

/-! ## A124494.P6571126231729638379

`∑[A318516(Δ[A023272(n+1)])]`
-/

namespace A124494.P6571126231729638379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124494.P6571126231729638379

/-! ## A124494.P2456360137955119262

`∩[A101790(n+1), A124485(n+1)]`
-/

namespace A124494.P2456360137955119262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124494.P2456360137955119262

/-! ## A124494.P9243835215108903556

`∑[A038572(Δ[A023272(n+1)])]`
-/

namespace A124494.P9243835215108903556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124494.P9243835215108903556

/-!
# A124495: G.f.: A(x) = 1/[1-x - Sum_{n>=1} A001147(n)*x^(2n) ] where A001147(n) = (2n)!/(n!*2^n) is the double factorials.

The programs for A124495, there is no canonical definition to state claims against.
-/

/-! ## A124495.P809567178007355023

`or(A076876(n), A187081(A005316(n)))`
-/

namespace A124495.P809567178007355023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A076876 n) (A187081 (A005316 n).toNat)

end

end A124495.P809567178007355023

/-!
# A124496: Triangle read by rows: T(n,k) is the number of set partitions of {1,2,...,n} in which the size of the last block is k, 1<=k<=n; the blocks are ordered with increasing least elements.

The programs for A124496, there is no canonical definition to state claims against.
-/

/-! ## A124496.P3154533312250175995

`A186020(comp[∑[n]])`
-/

namespace A124496.P3154533312250175995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A124496.P3154533312250175995

/-! ## A124496.P3469411357481014399

`A121207(A099375(n)+n)`
-/

namespace A124496.P3469411357481014399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A099375 n + (n : ℤ)).toNat

end

end A124496.P3469411357481014399

/-! ## A124496.P665084389004091901

`A121207(A061579(comp[∑[n]]))`
-/

namespace A124496.P665084389004091901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A124496.P665084389004091901

/-! ## A124496.P8836980088525679867

`A121207(A038722(n+1)+A003056(n))`
-/

namespace A124496.P8836980088525679867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A038722 (n + 1) + A003056 n).toNat

end

end A124496.P8836980088525679867

/-! ## A124496.P18363108334703564882

`or(A000007(n), A186020(A014132(n+1)))`
-/

namespace A124496.P18363108334703564882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186020 (A014132 (n + 1)).toNat)

end

end A124496.P18363108334703564882

/-! ## A124496.P1107217461323405007

`A121207(A002024(n+1)+A038722(n+1)-1)`
-/

namespace A124496.P1107217461323405007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A002024 (n + 1) + (A038722 (n + 1) - 1)).toNat

end

end A124496.P1107217461323405007

/-! ## A124496.P10593634339022464042

`A186020(A014132(n+1)+A000007(n))-A000007(n)`
-/

namespace A124496.P10593634339022464042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A014132 (n + 1) + A000007 n).toNat - A000007 n

end

end A124496.P10593634339022464042

/-! ## A124496.P6810774495420994259

`A001222(A001122(n+1))*A186020(A014132(n+1))`
-/

namespace A124496.P6810774495420994259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001122 (n + 1)).toNat * A186020 (A014132 (n + 1)).toNat

end

end A124496.P6810774495420994259

/-! ## A124496.P9674295043401741122

`A186020(A014132(n+1))%A155163(n+1)`
-/

namespace A124496.P9674295043401741122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (A014132 (n + 1)).toNat) (A155163 (n + 1))

end

end A124496.P9674295043401741122

/-! ## A124496.P17508565991489944145

`A186020(A014132(n+1))%A048577(n)`
-/

namespace A124496.P17508565991489944145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (A014132 (n + 1)).toNat) (A048577 n)

end

end A124496.P17508565991489944145

/-!
# A124497: Number of 1-2-3 trees with n edges and with thinning limbs.

The programs for A124497, there is no canonical definition to state claims against.
-/

/-! ## A124497.P12761290511833832415

`A349796(n)+A034826(A061147(n+1))`
-/

namespace A124497.P12761290511833832415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349796 n + A034826 (A061147 (n + 1)).toNat

end

end A124497.P12761290511833832415

/-! ## A124497.P426873956137230933

`A349796(n)+A034826(A061497(n+1))`
-/

namespace A124497.P426873956137230933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349796 n + A034826 (A061497 (n + 1)).toNat

end

end A124497.P426873956137230933

/-! ## A124497.P13187489452595001682

`A349796(n*A109014(n))+A145547(n+1)`
-/

namespace A124497.P13187489452595001682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349796 ((n : ℤ) * A109014 n).toNat + A145547 (n + 1)

end

end A124497.P13187489452595001682

/-! ## A124497.P4828597177027831638

`(A349796(n)+A145547(A061497(n+1)))^A109014(n)`
-/

namespace A124497.P4828597177027831638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349796 n + A145547 (A061497 (n + 1)).toNat : ℚ) ^ (A109014 n : ℤ)

end

end A124497.P4828597177027831638

/-! ## A124497.P12199591770022274591

`(A349796(n)+A145547(A061497(n+1)))%A038159(n)`
-/

namespace A124497.P12199591770022274591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349796 n + A145547 (A061497 (n + 1)).toNat) (A038159 n)

end

end A124497.P12199591770022274591

/-!
# A124499: Number of 1-2-3-4 trees with n edges and with thinning limbs. A 1-2-3-4 tree is an ordered tree with vertices of outdegree at most 4. A rooted tree with thinning limbs is such that if a node has k children, all its children have at most k children.

The programs for A124499, there is no canonical definition to state claims against.
-/

/-! ## A124499.P16699660075183778814

`A100196(A193621(n)+A117440(n))`
-/

namespace A124499.P16699660075183778814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A193621 n + A117440 n).toNat

end

end A124499.P16699660075183778814

/-! ## A124499.P3915489091516819210

`A100196(xor(A193621(n), A289207(n)))`
-/

namespace A124499.P3915489091516819210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.xor (A193621 n) (A289207 n)).toNat

end

end A124499.P3915489091516819210

/-! ## A124499.P5256843365462349300

`A100196(A193621(n)-A220839(n+1))`
-/

namespace A124499.P5256843365462349300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A193621 n - A220839 (n + 1)).toNat

end

end A124499.P5256843365462349300

/-! ## A124499.P4358278025249066066

`A187188(A342340(n)+A005043(n+4))`
-/

namespace A124499.P4358278025249066066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A342340 n + A005043 (n + 4)).toNat

end

end A124499.P4358278025249066066

/-! ## A124499.P3257148619882928432

`A100196(xor(A049372(n+1), A193621(n)))`
-/

namespace A124499.P3257148619882928432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.xor (A049372 (n + 1)) (A193621 n)).toNat

end

end A124499.P3257148619882928432

