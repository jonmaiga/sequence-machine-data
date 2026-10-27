import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A330400: Numbers at which the sum of the iterated unitary totient function (A329153) attains a record.

The programs for A330400, there is no canonical definition to state claims against.
-/

/-! ## A330400.P15476201936299750745

`eq[A102097(A005941(n+1)), A327778(n)]`
-/

namespace A330400.P15476201936299750745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A005941 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330400.P15476201936299750745

/-! ## A330400.P16098098882079696711

`∑[A348610(∑[A022168(n)])]`
-/

namespace A330400.P16098098882079696711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330400.P16098098882079696711

/-! ## A330400.P13629062894405984096

`∑[A348610(∑[A157154(n)])]`
-/

namespace A330400.P13629062894405984096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157154 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330400.P13629062894405984096

/-! ## A330400.P12000467040732000148

`∑[∑{d}[A038548(A042937(n)), #]]`
-/

namespace A330400.P12000467040732000148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A042937 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330400.P12000467040732000148

/-! ## A330400.P13636136135461119312

`eq[A038189(n), A282699(n+1)]`
-/

namespace A330400.P13636136135461119312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330400.P13636136135461119312

/-!
# A330401: Lexicographically earliest sequence of distinct positive terms with an associate sequence t such that t(0) = 0, and for any n > 0, at least one of t(n-1) - a(n) or t(n-1) + a(n) is a palindrome; in case t(n-1) - a(n) is a palindrome, set t(n) = t(n-1) - a(n), otherwise set t(n) = t(n-1) + a(n).

The programs for A330401, there is no canonical definition to state claims against.
-/

/-! ## A330401.P13116522324394701454

`abs(Δ[A330420(n)])`
-/

namespace A330401.P13116522324394701454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330401.P13116522324394701454

/-! ## A330401.P16129973541728365599

`gcd(Δ[A330420(n)], A000038(n))`
-/

namespace A330401.P16129973541728365599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A330401.P16129973541728365599

/-! ## A330401.P14618827765712993267

`∑{d}[Δ[A330420(n)], A000010(#)]`
-/

namespace A330401.P14618827765712993267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A330401.P14618827765712993267

/-! ## A330401.P1714609015955396654

`abs(A330420(n+1)-A330420(n))`
-/

namespace A330401.P1714609015955396654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330420 (n + 1) - A330420 n|

end

end A330401.P1714609015955396654

/-! ## A330401.P4943649482926878484

`lcm(Δ[A330420(n)], A001511(2*n+1))`
-/

namespace A330401.P4943649482926878484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A001511 (2 * n + 1))

end

end A330401.P4943649482926878484

/-! ## A330401.P12312065237458274562

`A056926(Δ[A330420(n)]²)`
-/

namespace A330401.P12312065237458274562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330401.P12312065237458274562

/-! ## A330401.P10371293571393400065

`A262689(Δ[A330420(n)]²)`
-/

namespace A330401.P10371293571393400065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330401.P10371293571393400065

/-! ## A330401.P9097916433978114942

`A018851(Δ[A330420(n)]²)`
-/

namespace A330401.P9097916433978114942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330401.P9097916433978114942

/-! ## A330401.P4926558971321109192

`A000196(Δ[A330420(n)]²)`
-/

namespace A330401.P4926558971321109192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330401.P4926558971321109192

/-!
# A330402: Lexicographically earliest sequence of distinct positive terms with an associate sequence t such that t(0) = 0, and for any n > 0, at least one of t(n-1) - a(n) or t(n-1) + a(n) is a prime number; in case t(n-1) - a(n) is a prime number, set t(n) = t(n-1) - a(n), otherwise set t(n) = t(n-1) + a(n).

The programs for A330402, there is no canonical definition to state claims against.
-/

/-! ## A330402.P12081030062128611668

`abs(Δ[A330421(n)])`
-/

namespace A330402.P12081030062128611668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330402.P12081030062128611668

/-! ## A330402.P16704835626639319454

`gcd(Δ[A330421(n)], A000038(n))`
-/

namespace A330402.P16704835626639319454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A330402.P16704835626639319454

/-! ## A330402.P16839050123752103393

`lcm(Δ[A330421(n)], A106400(n))`
-/

namespace A330402.P16839050123752103393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A106400 n)

end

end A330402.P16839050123752103393

/-! ## A330402.P10713299229870926762

`∑{d}[Δ[A330421(n)], A000010(#)]`
-/

namespace A330402.P10713299229870926762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A330402.P10713299229870926762

/-! ## A330402.P8336345149243658342

`abs(A330421(n+1)-A330421(n))`
-/

namespace A330402.P8336345149243658342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330421 (n + 1) - A330421 n|

end

end A330402.P8336345149243658342

/-! ## A330402.P771327310446971598

`A056926(Δ[A330421(n)]²)`
-/

namespace A330402.P771327310446971598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330402.P771327310446971598

/-! ## A330402.P8265910595365477270

`A000188(Δ[A330421(n)]²)`
-/

namespace A330402.P8265910595365477270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330402.P8265910595365477270

/-! ## A330402.P11307832221583919905

`A000196(Δ[A330421(n)]²)`
-/

namespace A330402.P11307832221583919905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330402.P11307832221583919905

/-!
# A330403: Lexicographically earliest sequence of distinct positive terms with an associate sequence t such that t(0) = 0, and for any n > 0, at least one of t(n-1) - a(n) or t(n-1) + a(n) is a square; in case t(n-1) - a(n) is a square, set t(n) = t(n-1) - a(n), otherwise set t(n) = t(n-1) + a(n).

The programs for A330403, there is no canonical definition to state claims against.
-/

/-! ## A330403.P17135564404341982711

`abs(Δ[A330422(n)])`
-/

namespace A330403.P17135564404341982711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330403.P17135564404341982711

/-! ## A330403.P7116618827185230115

`gcd(Δ[A330422(n)], A000038(n))`
-/

namespace A330403.P7116618827185230115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A330403.P7116618827185230115

/-! ## A330403.P12255452753018994309

`lcm(Δ[A330422(n)], A020985(n))`
-/

namespace A330403.P12255452753018994309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A330403.P12255452753018994309

/-! ## A330403.P9177415509426101884

`∑{d}[Δ[A330422(n)], A000010(#)]`
-/

namespace A330403.P9177415509426101884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A330403.P9177415509426101884

/-! ## A330403.P2885764057268363877

`abs(A330422(n+1)-A330422(n))`
-/

namespace A330403.P2885764057268363877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330422 (n + 1) - A330422 n|

end

end A330403.P2885764057268363877

/-! ## A330403.P7040809623509799274

`A262689(Δ[A330422(n)]²)`
-/

namespace A330403.P7040809623509799274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330403.P7040809623509799274

/-! ## A330403.P12923907727617506805

`A000188(Δ[A330422(n)]²)`
-/

namespace A330403.P12923907727617506805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330403.P12923907727617506805

/-! ## A330403.P13602230228464740312

`A000196(Δ[A330422(n)]²)`
-/

namespace A330403.P13602230228464740312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330403.P13602230228464740312

/-! ## A330403.P6529966210248933679

`A037213(Δ[A330422(n)]²)`
-/

namespace A330403.P6529966210248933679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330403.P6529966210248933679

/-! ## A330403.P9325265971369196647

`A306284(Δ[A330422(n)]²)`
-/

namespace A330403.P9325265971369196647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306284 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330403.P9325265971369196647

/-!
# A330404: Least nonsquare k that is a quadratic residue modulo n.

The programs for A330404, there is no canonical definition to state claims against.
-/

/-! ## A330404.P606136217136048140

`A340102(A167487(n))+A194738(n+1)`
-/

namespace A330404.P606136217136048140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A167487 n).toNat + A194738 (n + 1)

end

end A330404.P606136217136048140

/-!
# A330405: a(1) = 0; thereafter a(n) = (a(n-1)^2+1) mod n.

The programs for A330405, the canonical program `A330405.P15580130165177529061` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330405 has offset 1).

The definition of A330405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)²+1)%(n+1)` (program `A330405.P15580130165177529061`, by `A330405.P15580130165177529061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330405.P15580130165177529061

`(a(n-1)²+1)%(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330405

/-- `(a(n-1)²+1)%(n+1)` -/
def P15580130165177529061.Spec : Prop :=
  ∀ n, (P15580130165177529061.a n : ℤ) = A330405 (n + 1)

theorem P15580130165177529061.correct : P15580130165177529061.Spec := by
  intro n
  simp only [A330405, Nat.add_sub_cancel]

end A330405

/-! ## A330405.P17040860048567545414

`(a(n-1)^2+1)%(n+1)` with `a(0)=0`
-/

namespace A330405.P17040860048567545414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) ^ 2 + 1) % (n + 1)

end

end A330405.P17040860048567545414

namespace A330405

/-- `(a(n-1)^2+1)%(n+1)` -/
def P17040860048567545414.Spec : Prop :=
  ∀ n, (P17040860048567545414.a n : ℤ) = A330405 (n + 1)

theorem P17040860048567545414.correct : P17040860048567545414.Spec := by
  intro n
  simp only [A330405, Nat.add_sub_cancel, A330405.P17040860048567545414.a, A330405.P15580130165177529061.a, SequenceMachineLib.memo_apply]

end A330405

/-! ## A330405.P569915904998044888

`(a(n-1)*a(n-1)+1)%(n+1)` with `a(0)=0`
-/

namespace A330405.P569915904998044888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) * a (n - 1) + 1) % (n + 1)

end

end A330405.P569915904998044888

namespace A330405

/-- `(a(n-1)*a(n-1)+1)%(n+1)` -/
def P569915904998044888.Spec : Prop :=
  ∀ n, (P569915904998044888.a n : ℤ) = A330405 (n + 1)

theorem P569915904998044888.correct : P569915904998044888.Spec := by
  intro n
  simp only [A330405, Nat.add_sub_cancel, A330405.P569915904998044888.a, A330405.P15580130165177529061.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A330405

/-! ## A330405.P12089096049518261984

`(A059100(a(n-1))-1)%(n+1)` with `a(0)=0`
-/

namespace A330405.P12089096049518261984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A059100 (a (n - 1)).toNat - 1) (n + 1 : ℤ)

end

end A330405.P12089096049518261984

namespace A330405

/-- `(A059100(a(n-1))-1)%(n+1)` -/
def P12089096049518261984.Spec : Prop :=
  ∀ n, P12089096049518261984.a n = A330405 (n + 1)

end A330405

/-! ## A330405.P9670940177796943792

`(A000290(a(n-1))+1)%(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A330405.P9670940177796943792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (A000290 (a (n - 1)).toNat + 1) (n + 1 : ℤ)

end

end A330405.P9670940177796943792

namespace A330405

/-- `(A000290(a(n-1))+1)%(n+1)` -/
def P9670940177796943792.Spec : Prop :=
  ∀ n, P9670940177796943792.a n = A330405 (n + 1)

end A330405

/-! ## A330405.P14311635677839963635

`(A002061(a(n-1))+a(n-1))%(n+1)` with `a(0)=0`
-/

namespace A330405.P14311635677839963635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A002061 (a (n - 1)).toNat + a (n - 1)) (n + 1 : ℤ)

end

end A330405.P14311635677839963635

namespace A330405

/-- `(A002061(a(n-1))+a(n-1))%(n+1)` -/
def P14311635677839963635.Spec : Prop :=
  ∀ n, P14311635677839963635.a n = A330405 (n + 1)

end A330405

/-!
# A330406: a(n) is the smallest prime q such that q^((p-1)/2) == -1 (mod p), where p = A002144(n) is the n-th prime congruent to 1 mod 4.

The programs for A330406, there is no canonical definition to state claims against.
-/

/-! ## A330406.P7423293310150209972

`A020649(p?[4*n+1])`
-/

namespace A330406.P7423293310150209972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A330406.P7423293310150209972

/-! ## A330406.P2719079459477634634

`A227196(p?[4*n+1])`
-/

namespace A330406.P2719079459477634634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A330406.P2719079459477634634

/-! ## A330406.P17726965205836977534

`p?[A354974(p?[2*n+1])]`
-/

namespace A330406.P17726965205836977534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330406.P17726965205836977534

/-! ## A330406.P16526980744665661158

`A227195(p?[4*n+1])+1`
-/

namespace A330406.P16526980744665661158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A330406.P16526980744665661158

/-! ## A330406.P13399995994428860394

`A020649(or(1, p?[4*n-7]-1))`
-/

namespace A330406.P13399995994428860394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A330406.P13399995994428860394

/-! ## A330406.P3274385828641367408

`A020649(A002144(n+1))`
-/

namespace A330406.P3274385828641367408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A002144 (n + 1)).toNat

end

end A330406.P3274385828641367408

/-! ## A330406.P16304243484321816872

`A112048(A005098(n+1))`
-/

namespace A330406.P16304243484321816872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112048 (A005098 (n + 1)).toNat

end

end A330406.P16304243484321816872

/-! ## A330406.P9338069771372100941

`A053760(A080147(n+1))`
-/

namespace A330406.P9338069771372100941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (A080147 (n + 1)).toNat

end

end A330406.P9338069771372100941

/-! ## A330406.P1066407141753541

`A053761(A119681(n+1))`
-/

namespace A330406.P1066407141753541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053761 (A119681 (n + 1)).toNat

end

end A330406.P1066407141753541

/-! ## A330406.P5344298846521901396

`A112046(A104636(n+1))`
-/

namespace A330406.P5344298846521901396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A104636 (n + 1)).toNat

end

end A330406.P5344298846521901396

/-! ## A330406.P15431554566712455521

`A020649(A002313(n+2))`
-/

namespace A330406.P15431554566712455521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A002313 (n + 2)).toNat

end

end A330406.P15431554566712455521

/-! ## A330406.P5074352930445295344

`A020649(A280084(n+2))`
-/

namespace A330406.P5074352930445295344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A280084 (n + 2)).toNat

end

end A330406.P5074352930445295344

/-! ## A330406.P15003120764750006671

`p?[A354974(A000040(n+2))]`
-/

namespace A330406.P15003120764750006671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330406.P15003120764750006671

/-! ## A330406.P16385983232433908586

`A112046(2*A005098(n+1))`
-/

namespace A330406.P16385983232433908586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (2 * A005098 (n + 1)).toNat

end

end A330406.P16385983232433908586

/-! ## A330406.P6972926303848061593

`A227196(record[A014963(4*n+9)])`
-/

namespace A330406.P6972926303848061593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330406.P6972926303848061593

/-! ## A330406.P5897123923396060452

`p?[A053760(n+2)*A088192(n+2)]`
-/

namespace A330406.P5897123923396060452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 2) * A088192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330406.P5897123923396060452

/-!
# A330407: Number of ordered integer pairs (b,c) with -n <= b <= n and -n <= c <= n such that both roots of x^2 + b*x + c = 0 are distinct integers.

The programs for A330407, there is no canonical definition to state claims against.
-/

/-! ## A330407.P13994120116349568205

`A096276(3*n)-A049320(A116119(n+1))`
-/

namespace A330407.P13994120116349568205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (3 * n) - A049320 (A116119 (n + 1)).toNat

end

end A330407.P13994120116349568205

/-! ## A330407.P10246886923293530322

`A279849(A082582(n))+A046691(n)`
-/

namespace A330407.P10246886923293530322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279849 (A082582 n).toNat + A046691 n

end

end A330407.P10246886923293530322

/-! ## A330407.P3000899077993542324

`A046691(n)+gcd(A202592(n), A312572(n))`
-/

namespace A330407.P3000899077993542324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + (Int.gcd (A202592 n) (A312572 n) : ℤ)

end

end A330407.P3000899077993542324

/-!
# A330408: Table of A(n,k) read by antidiagonals, where A(1,k)=k; A(n,k) is the least multiple of n >= A(n-1,k).

The programs for A330408, there is no canonical definition to state claims against.
-/

/-! ## A330408.P9813737229522161812

`gcd(A111332(2*(n+1)), A219347(n))*A131818(n+1)`
-/

namespace A330408.P9813737229522161812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A111332 (2 * (n + 1))) (A219347 n) : ℤ) * A131818 (n + 1)

end

end A330408.P9813737229522161812

/-! ## A330408.P16805496804552929773

`A002260(n+1)*A004427(A245062(n+1))`
-/

namespace A330408.P16805496804552929773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004427 (A245062 (n + 1)).toNat

end

end A330408.P16805496804552929773

/-! ## A330408.P2787351155388620331

`A131818(n+1)%A235441(3*n+1)*A219347(n)`
-/

namespace A330408.P2787351155388620331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131818 (n + 1)) (A235441 (3 * n + 1)) * A219347 n

end

end A330408.P2787351155388620331

/-! ## A330408.P8281477303606586249

`A004427(A245062(n+1))*A004736(A038722(n+1))`
-/

namespace A330408.P8281477303606586249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A245062 (n + 1)).toNat * A004736 (A038722 (n + 1)).toNat

end

end A330408.P8281477303606586249

/-! ## A330408.P18394930747380168226

`A004427(A245062(n+1))*A256660(A256661(n+1))`
-/

namespace A330408.P18394930747380168226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A245062 (n + 1)).toNat * A256660 (A256661 (n + 1)).toNat

end

end A330408.P18394930747380168226

/-!
# A330409: Semiprimes of the form p(6p - 1).

The programs for A330409, the canonical program `A330409.P9787691834635988053` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330409 has offset 1).

The definition of A330409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158015, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330409.P9787691834635988053

`A049452(A158015(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A330409

/-- `A049452(A158015(n+1))` -/
def P9787691834635988053.Spec : Prop :=
  ∀ n, P9787691834635988053.a n = A330409 (n + 1)

theorem P9787691834635988053.correct : P9787691834635988053.Spec := by
  intro n
  simp only [A330409, Nat.add_sub_cancel]

end A330409

/-! ## A330409.P6786538635580910327

`p?[6*A000040(n+1)-1]*A158015(n+1)`
-/

namespace A330409.P6786538635580910327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A158015 (n + 1)

end

end A330409.P6786538635580910327

namespace A330409

/-- `p?[6*A000040(n+1)-1]*A158015(n+1)` -/
def P6786538635580910327.Spec : Prop :=
  ∀ n, P6786538635580910327.a n = A330409 (n + 1)

end A330409

/-! ## A330409.P18034556008586302335

`A049452(p?[A024898(n+1)])`
-/

namespace A330409.P18034556008586302335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A330409.P18034556008586302335

namespace A330409

/-- `A049452(p?[A024898(n+1)])` -/
def P18034556008586302335.Spec : Prop :=
  ∀ n, P18034556008586302335.a n = A330409 (n + 1)

end A330409

/-! ## A330409.P11621079025510032838

`∩[A245365(n+1), A049452(n)]`
-/

namespace A330409.P11621079025510032838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P11621079025510032838

namespace A330409

/-- `∩[A245365(n+1), A049452(n)]` -/
def P11621079025510032838.Spec : Prop :=
  ∀ n, (P11621079025510032838.a n : ℤ) = A330409 (n + 1)

end A330409

/-! ## A330409.P13234035061137744087

`record[A020639(A016969(n+1))*A020639(n+2)]`
-/

namespace A330409.P13234035061137744087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016969 (n + 1)).toNat * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330409.P13234035061137744087

namespace A330409

/-- `record[A020639(A016969(n+1))*A020639(n+2)]` -/
def P13234035061137744087.Spec : Prop :=
  ∀ n, P13234035061137744087.a n = A330409 (n + 1)

end A330409

/-! ## A330409.P15122311129501909081

`A000326(2*A158015(n+1))`
-/

namespace A330409.P15122311129501909081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * A158015 (n + 1)).toNat

end

end A330409.P15122311129501909081

namespace A330409

/-- `A000326(2*A158015(n+1))` -/
def P15122311129501909081.Spec : Prop :=
  ∀ n, P15122311129501909081.a n = A330409 (n + 1)

end A330409

/-! ## A330409.P16254071648824160905

`∩[A245365(n+1), A104585(n)]`
-/

namespace A330409.P16254071648824160905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P16254071648824160905

namespace A330409

/-- `∩[A245365(n+1), A104585(n)]` -/
def P16254071648824160905.Spec : Prop :=
  ∀ n, (P16254071648824160905.a n : ℤ) = A330409 (n + 1)

end A330409

/-! ## A330409.P1075697451709467332

`∩[A036498(n+1), A245365(n+1)]`
-/

namespace A330409.P1075697451709467332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P1075697451709467332

namespace A330409

/-- `∩[A036498(n+1), A245365(n+1)]` -/
def P1075697451709467332.Spec : Prop :=
  ∀ n, (P1075697451709467332.a n : ℤ) = A330409 (n + 1)

end A330409

/-! ## A330409.P10854969712451943882

`A000326(A158015(n+1)+A158015(n+1))`
-/

namespace A330409.P10854969712451943882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A158015 (n + 1) + A158015 (n + 1)).toNat

end

end A330409.P10854969712451943882

namespace A330409

/-- `A000326(A158015(n+1)+A158015(n+1))` -/
def P10854969712451943882.Spec : Prop :=
  ∀ n, P10854969712451943882.a n = A330409 (n + 1)

end A330409

/-! ## A330409.P13295648032713230726

`∩[A245365(n+1), A008822(n)]`
-/

namespace A330409.P13295648032713230726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P13295648032713230726

namespace A330409

/-- `∩[A245365(n+1), A008822(n)]` -/
def P13295648032713230726.Spec : Prop :=
  ∀ n, (P13295648032713230726.a n : ℤ) = A330409 (n + 1)

end A330409

/-! ## A330409.P289265763985084644

`∩[A245365(n+1), A320259(n)]`
-/

namespace A330409.P289265763985084644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P289265763985084644

namespace A330409

/-- `∩[A245365(n+1), A320259(n)]` -/
def P289265763985084644.Spec : Prop :=
  ∀ n, (P289265763985084644.a n : ℤ) = A330409 (n + 1)

end A330409

/-! ## A330409.P16106345755109281392

`∩[A245365(n+1), A320666(n+1)]`
-/

namespace A330409.P16106345755109281392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P16106345755109281392

namespace A330409

/-- `∩[A245365(n+1), A320666(n+1)]` -/
def P16106345755109281392.Spec : Prop :=
  ∀ n, (P16106345755109281392.a n : ℤ) = A330409 (n + 1)

end A330409

/-! ## A330409.P13779518571900683318

`∩[A245365(n+1), A230550(n+2)]`
-/

namespace A330409.P13779518571900683318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230550 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330409.P13779518571900683318

namespace A330409

/-- `∩[A245365(n+1), A230550(n+2)]` -/
def P13779518571900683318.Spec : Prop :=
  ∀ n, (P13779518571900683318.a n : ℤ) = A330409 (n + 1)

end A330409

/-!
# A330410: a(n) = 6*prime(n) - 1.

The programs for A330410, the canonical program `A330410.P2415443686084045229` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330410 has offset 1).

The definition of A330410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*A000040(n+1)-1` (program `A330410.P2415443686084045229`, by `A330410.P2415443686084045229.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330410.P2415443686084045229

`6*A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330410

/-- `6*A000040(n+1)-1` -/
def P2415443686084045229.Spec : Prop :=
  ∀ n, P2415443686084045229.a n = A330410 (n + 1)

theorem P2415443686084045229.correct : P2415443686084045229.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel]

end A330410

/-! ## A330410.P15775889869853581800

`A016969(A000040(n+1)-1)`
-/

namespace A330410.P15775889869853581800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A000040 (n + 1) - 1).toNat

end

end A330410.P15775889869853581800

namespace A330410

/-- `A016969(A000040(n+1)-1)` -/
def P15775889869853581800.Spec : Prop :=
  ∀ n, P15775889869853581800.a n = A330410 (n + 1)

end A330410

/-! ## A330410.P8339575885306915401

`A138636(n+1)-1`
-/

namespace A330410.P8339575885306915401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1) - 1

end

end A330410.P8339575885306915401

namespace A330410

/-- `A138636(n+1)-1` -/
def P8339575885306915401.Spec : Prop :=
  ∀ n, P8339575885306915401.a n = A330410 (n + 1)

end A330410

/-! ## A330410.P8898294841296203404

`A129071(n+1)-8`
-/

namespace A330410.P8898294841296203404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129071 (n + 1) - 8

end

end A330410.P8898294841296203404

namespace A330410

/-- `A129071(n+1)-8` -/
def P8898294841296203404.Spec : Prop :=
  ∀ n, P8898294841296203404.a n = A330410 (n + 1)

theorem P8898294841296203404.correct : P8898294841296203404.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P8898294841296203404.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129071, A129071.P12117128813833994904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P5327053944053994620

`Δ[6*A007504(n)]-1`
-/

namespace A330410.P5327053944053994620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A330410.P5327053944053994620

namespace A330410

/-- `Δ[6*A007504(n)]-1` -/
def P5327053944053994620.Spec : Prop :=
  ∀ n, P5327053944053994620.a n = A330410 (n + 1)

end A330410

/-! ## A330410.P3166741346877727187

`2*A001748(n+1)-1`
-/

namespace A330410.P3166741346877727187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1) - 1

end

end A330410.P3166741346877727187

namespace A330410

/-- `2*A001748(n+1)-1` -/
def P3166741346877727187.Spec : Prop :=
  ∀ n, P3166741346877727187.a n = A330410 (n + 1)

theorem P3166741346877727187.correct : P3166741346877727187.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P3166741346877727187.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P10337012532392782709

`3*A100484(n+1)-1`
-/

namespace A330410.P10337012532392782709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A100484 (n + 1) - 1

end

end A330410.P10337012532392782709

namespace A330410

/-- `3*A100484(n+1)-1` -/
def P10337012532392782709.Spec : Prop :=
  ∀ n, P10337012532392782709.a n = A330410 (n + 1)

theorem P10337012532392782709.correct : P10337012532392782709.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P10337012532392782709.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P15984279386599045490

`3*A037168(n+1)+5`
-/

namespace A330410.P15984279386599045490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037168 (n + 1) + 5

end

end A330410.P15984279386599045490

namespace A330410

/-- `3*A037168(n+1)+5` -/
def P15984279386599045490.Spec : Prop :=
  ∀ n, P15984279386599045490.a n = A330410 (n + 1)

theorem P15984279386599045490.correct : P15984279386599045490.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P15984279386599045490.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P8955286130763994549

`3*A072055(n+1)-4`
-/

namespace A330410.P8955286130763994549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A072055 (n + 1) - 4

end

end A330410.P8955286130763994549

namespace A330410

/-- `3*A072055(n+1)-4` -/
def P8955286130763994549.Spec : Prop :=
  ∀ n, P8955286130763994549.a n = A330410 (n + 1)

theorem P8955286130763994549.correct : P8955286130763994549.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P8955286130763994549.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P7603021277049947718

`A006093(n+1)+A001750(n+1)`
-/

namespace A330410.P7603021277049947718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A001750 (n + 1)

end

end A330410.P7603021277049947718

namespace A330410

/-- `A006093(n+1)+A001750(n+1)` -/
def P7603021277049947718.Spec : Prop :=
  ∀ n, P7603021277049947718.a n = A330410 (n + 1)

theorem P7603021277049947718.correct : P7603021277049947718.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P7603021277049947718.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P4048799312685048102

`A132227(n+1)+A129075(n+1)`
-/

namespace A330410.P4048799312685048102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132227 (n + 1) + A129075 (n + 1)

end

end A330410.P4048799312685048102

namespace A330410

/-- `A132227(n+1)+A129075(n+1)` -/
def P4048799312685048102.Spec : Prop :=
  ∀ n, P4048799312685048102.a n = A330410 (n + 1)

theorem P4048799312685048102.correct : P4048799312685048102.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P4048799312685048102.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129075, A129075.P13202692514194674557.a, A132227, A132227.P15905893461630851685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P14623613275633258235

`A129073(n+1)-A140353(n+1)`
-/

namespace A330410.P14623613275633258235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129073 (n + 1) - A140353 (n + 1)

end

end A330410.P14623613275633258235

namespace A330410

/-- `A129073(n+1)-A140353(n+1)` -/
def P14623613275633258235.Spec : Prop :=
  ∀ n, P14623613275633258235.a n = A330410 (n + 1)

theorem P14623613275633258235.correct : P14623613275633258235.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P14623613275633258235.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129073, A129073.P9510338880644237870.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P539053686683071700

`A272470(n+1)-A008864(n+1)`
-/

namespace A330410.P539053686683071700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) - A008864 (n + 1)

end

end A330410.P539053686683071700

namespace A330410

/-- `A272470(n+1)-A008864(n+1)` -/
def P539053686683071700.Spec : Prop :=
  ∀ n, P539053686683071700.a n = A330410 (n + 1)

theorem P539053686683071700.correct : P539053686683071700.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P539053686683071700.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A272470, A272470.P18354335613044509669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P11507539226800806072

`A000040(n+1)+A001750(n+1)-1`
-/

namespace A330410.P11507539226800806072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001750 (n + 1) - 1)

end

end A330410.P11507539226800806072

namespace A330410

/-- `A000040(n+1)+A001750(n+1)-1` -/
def P11507539226800806072.Spec : Prop :=
  ∀ n, P11507539226800806072.a n = A330410 (n + 1)

theorem P11507539226800806072.correct : P11507539226800806072.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P11507539226800806072.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P15876143943092465224

`A272470(n+1)-(A000040(n+1)+1)`
-/

namespace A330410.P15876143943092465224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) - (A000040 (n + 1) + 1)

end

end A330410.P15876143943092465224

namespace A330410

/-- `A272470(n+1)-(A000040(n+1)+1)` -/
def P15876143943092465224.Spec : Prop :=
  ∀ n, P15876143943092465224.a n = A330410 (n + 1)

theorem P15876143943092465224.correct : P15876143943092465224.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P15876143943092465224.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A272470, A272470.P18354335613044509669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P8818635003731632965

`A001748(n+1)+A100484(n+1)+A006093(n+1)`
-/

namespace A330410.P8818635003731632965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A100484 (n + 1) + A006093 (n + 1))

end

end A330410.P8818635003731632965

namespace A330410

/-- `A001748(n+1)+A100484(n+1)+A006093(n+1)` -/
def P8818635003731632965.Spec : Prop :=
  ∀ n, P8818635003731632965.a n = A330410 (n + 1)

theorem P8818635003731632965.correct : P8818635003731632965.Spec := by
  intro n
  simp only [A330410, Nat.add_sub_cancel, A330410.P8818635003731632965.a, A330410.P2415443686084045229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A006093, A006093.P2906174024863549003.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330410

/-! ## A330410.P9485294477347476626

`(A138406(n+1)-A138421(n+1))/A138421(n+1)`
-/

namespace A330410.P9485294477347476626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) - A138421 (n + 1) : ℚ) / (A138421 (n + 1) : ℚ)

end

end A330410.P9485294477347476626

namespace A330410

/-- `(A138406(n+1)-A138421(n+1))/A138421(n+1)` -/
def P9485294477347476626.Spec : Prop :=
  ∀ n, P9485294477347476626.a n = (A330410 (n + 1) : ℚ)

end A330410

/-! ## A330410.P5010320628620672753

`(A138455(n+1)-A138438(n+1))/A138438(n+1)`
-/

namespace A330410.P5010320628620672753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) - A138438 (n + 1) : ℚ) / (A138438 (n + 1) : ℚ)

end

end A330410.P5010320628620672753

namespace A330410

/-- `(A138455(n+1)-A138438(n+1))/A138438(n+1)` -/
def P5010320628620672753.Spec : Prop :=
  ∀ n, P5010320628620672753.a n = (A330410 (n + 1) : ℚ)

end A330410

/-! ## A330410.P12693864633446366601

`2*A112773(n+2)-1`
-/

namespace A330410.P12693864633446366601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112773 (n + 2) - 1

end

end A330410.P12693864633446366601

namespace A330410

/-- `2*A112773(n+2)-1` -/
def P12693864633446366601.Spec : Prop :=
  ∀ n, P12693864633446366601.a n = A330410 (n + 1)

end A330410

/-! ## A330410.P13470547064693431509

`A001748(n+1)+A006093(n+1)+A001747(n+2)`
-/

namespace A330410.P13470547064693431509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A006093 (n + 1) + A001747 (n + 2))

end

end A330410.P13470547064693431509

namespace A330410

/-- `A001748(n+1)+A006093(n+1)+A001747(n+2)` -/
def P13470547064693431509.Spec : Prop :=
  ∀ n, P13470547064693431509.a n = A330410 (n + 1)

end A330410

/-!
# A330412: Integers m such that sigma(m) + sigma(8*m) = 18*m.

The programs for A330412, there is no canonical definition to state claims against.
-/

/-! ## A330412.P18435899159258098497

`2^A002236(n+1)*A050524(n+1)`
-/

namespace A330412.P18435899159258098497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002236 (n + 1) : ℤ) * (A050524 (n + 1) : ℚ)

end

end A330412.P18435899159258098497

/-!
# A330413: Integers m such that sigma(m) + sigma(16*m) = 34*m.

The programs for A330413, there is no canonical definition to state claims against.
-/

/-! ## A330413.P6686232244171543918

`2^A001774(n+1)*(17*2^A001774(n+1)-1)`
-/

namespace A330413.P6686232244171543918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001774 (n + 1) : ℤ) * (17 * (2 : ℚ) ^ (A001774 (n + 1) : ℤ) - 1)

end

end A330413.P6686232244171543918

/-!
# A330415: Coefficient of h(y) in Sum_{k > 0, i > 0} x_i^k = p(1) + p(2) + p(3) + ..., where h is the basis of homogeneous symmetric functions, p is the basis of power-sum symmetric functions, and y is the integer partition with Heinz number n.

The programs for A330415, the canonical program `A330415.P2332703762766219287` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330415 has offset 1).

The definition of A330415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330415.P2332703762766219287

`∑{d}[n+1, A049084(#)*A355939((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A330415

/-- `∑{d}[n+1, A049084(#)*A355939((n+1)/#)]` -/
def P2332703762766219287.Spec : Prop :=
  ∀ n, P2332703762766219287.a n = A330415 (n + 1)

theorem P2332703762766219287.correct : P2332703762766219287.Spec := by
  intro n
  simp only [A330415, Nat.add_sub_cancel]

end A330415

/-! ## A330415.P5403890659558968317

`∑{d}[n+1, A066328(#)*A341444((n+1)/#)]`
-/

namespace A330415.P5403890659558968317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066328 d * A341444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330415.P5403890659558968317

namespace A330415

/-- `∑{d}[n+1, A066328(#)*A341444((n+1)/#)]` -/
def P5403890659558968317.Spec : Prop :=
  ∀ n, P5403890659558968317.a n = A330415 (n + 1)

end A330415

/-! ## A330415.P601398954628496629

`A062157(A056239(n+1))*A330417(n+1)`
-/

namespace A330415.P601398954628496629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A056239 (n + 1)).toNat * A330417 (n + 1)

end

end A330415.P601398954628496629

namespace A330415

/-- `A062157(A056239(n+1))*A330417(n+1)` -/
def P601398954628496629.Spec : Prop :=
  ∀ n, P601398954628496629.a n = A330415 (n + 1)

end A330415

/-! ## A330415.P9635929330611448566

`A195017(A105560(n+1))*A319225(n+1)`
-/

namespace A330415.P9635929330611448566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A105560 (n + 1)).toNat * A319225 (n + 1)

end

end A330415.P9635929330611448566

namespace A330415

/-- `A195017(A105560(n+1))*A319225(n+1)` -/
def P9635929330611448566.Spec : Prop :=
  ∀ n, P9635929330611448566.a n = A330415 (n + 1)

end A330415

/-! ## A330415.P9506044627704073644

`A304438(A061142(n+1))*A319225(n+1)`
-/

namespace A330415.P9506044627704073644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A061142 (n + 1)).toNat * A319225 (n + 1)

end

end A330415.P9506044627704073644

namespace A330415

/-- `A304438(A061142(n+1))*A319225(n+1)` -/
def P9506044627704073644.Spec : Prop :=
  ∀ n, P9506044627704073644.a n = A330415 (n + 1)

end A330415

/-! ## A330415.P13447244742131563011

`A304438(A248692(n+1))*A330417(n+1)`
-/

namespace A330415.P13447244742131563011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A248692 (n + 1)).toNat * A330417 (n + 1)

end

end A330415.P13447244742131563011

namespace A330415

/-- `A304438(A248692(n+1))*A330417(n+1)` -/
def P13447244742131563011.Spec : Prop :=
  ∀ n, P13447244742131563011.a n = A330415 (n + 1)

end A330415

/-!
# A330416: a(n) = (number of times a(n-2) has already appeared) + (number of times a(n-3) has already appeared), starting with a(n) = n for n<3.

The programs for A330416, there is no canonical definition to state claims against.
-/

/-! ## A330416.P15018458327923380774

`A056239(A253565(n))/A064547(A075059(n))`
-/

namespace A330416.P15018458327923380774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A253565 n).toNat : ℚ) / (A064547 (A075059 n).toNat : ℚ)

end

end A330416.P15018458327923380774

/-!
# A330417: Coefficient of e(y) in Sum_{k > 0, i > 0} x_i^k = p(1) + p(2) + p(3) + ..., where e is the basis of elementary symmetric functions, p is the basis of power-sum symmetric functions, and y is the integer partition with Heinz number n.

The programs for A330417, the canonical program `A330417.P10781931345175970852` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330417 has offset 1).

The definition of A330417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330417.P10781931345175970852

`abs(A330415(n+1))*A321753(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A330417

/-- `abs(A330415(n+1))*A321753(n+1)` -/
def P10781931345175970852.Spec : Prop :=
  ∀ n, P10781931345175970852.a n = A330417 (n + 1)

theorem P10781931345175970852.correct : P10781931345175970852.Spec := by
  intro n
  simp only [A330417, Nat.add_sub_cancel]

end A330417

/-! ## A330417.P11655623326905744549

`A062157(A056239(n+1))*A330415(n+1)`
-/

namespace A330417.P11655623326905744549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A056239 (n + 1)).toNat * A330415 (n + 1)

end

end A330417.P11655623326905744549

namespace A330417

/-- `A062157(A056239(n+1))*A330415(n+1)` -/
def P11655623326905744549.Spec : Prop :=
  ∀ n, P11655623326905744549.a n = A330417 (n + 1)

end A330417

/-! ## A330417.P13281182460916664939

`(A319225(n+1)*A321753(n+1))%A158187(n)`
-/

namespace A330417.P13281182460916664939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319225 (n + 1) * A321753 (n + 1)) (A158187 n)

end

end A330417.P13281182460916664939

namespace A330417

/-- `(A319225(n+1)*A321753(n+1))%A158187(n)` -/
def P13281182460916664939.Spec : Prop :=
  ∀ n, P13281182460916664939.a n = A330417 (n + 1)

end A330417

/-! ## A330417.P1107631257313815856

`A304438(A248692(n+1))*A330415(n+1)`
-/

namespace A330417.P1107631257313815856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A248692 (n + 1)).toNat * A330415 (n + 1)

end

end A330417.P1107631257313815856

namespace A330417

/-- `A304438(A248692(n+1))*A330415(n+1)` -/
def P1107631257313815856.Spec : Prop :=
  ∀ n, P1107631257313815856.a n = A330417 (n + 1)

end A330417

/-!
# A330419: a(n) is the number of terms in A330418 with exactly n digits.

The programs for A330419, there is no canonical definition to state claims against.
-/

/-! ## A330419.P14615832998921883427

`A113308(A057434(n+1))-n`
-/

namespace A330419.P14615832998921883427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113308 (A057434 (n + 1)).toNat - (n : ℤ)

end

end A330419.P14615832998921883427

/-! ## A330419.P6004057511017877371

`A345167(A006882(n)+A000007(n))`
-/

namespace A330419.P6004057511017877371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A006882 n + A000007 n).toNat

end

end A330419.P6004057511017877371

/-! ## A330419.P184956260291649968

`A345167(A006882(n))+A025155(n)`
-/

namespace A330419.P184956260291649968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A006882 n).toNat + A025155 n

end

end A330419.P184956260291649968

/-!
# A330422: Running totals in A330403.

The programs for A330422, there is no canonical definition to state claims against.
-/

/-! ## A330422.P10898948341491870343

`A325149(A100035(n+1))%A377041(3*(n+1))`
-/

namespace A330422.P10898948341491870343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325149 (A100035 (n + 1)).toNat) (A377041 (3 * (n + 1)))

end

end A330422.P10898948341491870343

/-!
# A330426: Primes P where the distance to the nearest prime is greater than 2*log(P).

The programs for A330426, there is no canonical definition to state claims against.
-/

/-! ## A330426.P10783215937250391973

`∩[A081531(n+1), A003961(A081531(n+1))]`
-/

namespace A330426.P10783215937250391973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A081531 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330426.P10783215937250391973

/-!
# A330428: Smallest prime p such that both nearest primes up and down are farther away than n*log(p).

The programs for A330428, there is no canonical definition to state claims against.
-/

/-! ## A330428.P3997628952523694603

`A102723(A216762(∑[∏{e}[n+1, #+1]]))`
-/

namespace A330428.P3997628952523694603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102723 (A216762 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330428.P3997628952523694603

/-!
# A330432: Number of permutations sigma of [n] such that k * sigma(k) >= n for 1 <= k <= n.

The programs for A330432, there is no canonical definition to state claims against.
-/

/-! ## A330432.P5747126253484353088

`A329382(C(A000041(n), floor(n/2)))`
-/

namespace A330432.P5747126253484353088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (Nat.choose (A000041 n).toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A330432.P5747126253484353088

/-!
# A330436: a(n) = n * n!! - Sum_{k=1..n-1} k!! * a(n-k).

The programs for A330436, there is no canonical definition to state claims against.
-/

/-! ## A330436.P15616573664869474516

`A307064(n+2)+A307064(n+3)`
-/

namespace A330436.P15616573664869474516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307064 (n + 2) + A307064 (n + 3)

end

end A330436.P15616573664869474516

/-! ## A330436.P639871778117524594

`A005047(A087188(n)+A084708(n+1))`
-/

namespace A330436.P639871778117524594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005047 (A087188 n + A084708 (n + 1)).toNat

end

end A330436.P639871778117524594

/-!
# A330437: Length of trajectory of n under the map n -> n - 1 + n/gpf(n) or 0 if no fixed point is reached, where gpf(n) is the greatest prime factor of n.

The programs for A330437, there is no canonical definition to state claims against.
-/

/-! ## A330437.P4179625475624940478

`A102671(A000040(A348717(n+1))²)`
-/

namespace A330437.P4179625475624940478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A000040 (A348717 (n + 1)).toNat ^ 2).toNat

end

end A330437.P4179625475624940478

/-! ## A330437.P7522812756716433755

`A107800(A037225(A324118(n+1))²)`
-/

namespace A330437.P7522812756716433755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107800 (A037225 (A324118 (n + 1)).toNat ^ 2).toNat

end

end A330437.P7522812756716433755

/-! ## A330437.P9338334134181321764

`A008619(A305079(∑[A195892(n+1)]))`
-/

namespace A330437.P9338334134181321764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A305079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A330437.P9338334134181321764

/-! ## A330437.P8490969337055859097

`A066247(n+1)+A006466(A219206(n))`
-/

namespace A330437.P8490969337055859097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + A006466 (A219206 n).toNat

end

end A330437.P8490969337055859097

/-!
# A330438: Numbers k such that k^2-2 and k^3-2 are prime.

The programs for A330438, there is no canonical definition to state claims against.
-/

/-! ## A330438.P991642941450929486

`∩[A028870(n+1), A038599(n+1)]`
-/

namespace A330438.P991642941450929486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330438.P991642941450929486

/-! ## A330438.P17033352630498608517

`∩[A038599(n+1), A089623(n+1)+1]`
-/

namespace A330438.P17033352630498608517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330438.P17033352630498608517

/-! ## A330438.P5391210546448142862

`∩[A038599(n+1), record[A308085(n+1)+1+n]]`
-/

namespace A330438.P5391210546448142862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330438.P5391210546448142862

/-! ## A330438.P16841811389773453091

`∩[A038599(n+1), lt[A056927(n+2)+1, 4]+2]`
-/

namespace A330438.P16841811389773453091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 2) + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A330438.P16841811389773453091

/-! ## A330438.P85863580913031594

`∩[A038599(n+1), A020725(A089623(n+1))]`
-/

namespace A330438.P85863580913031594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A089623 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330438.P85863580913031594

/-! ## A330438.P7327219504308501678

`∩[eq[n+1, A056895(2*n+1)]+2, A038599(n+1)]`
-/

namespace A330438.P7327219504308501678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056895 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A330438.P7327219504308501678

/-!
# A330439: Number of times g(n) appears in [g(0),g(1),...,g(n)], where g = A316774.

The programs for A330439, there is no canonical definition to state claims against.
-/

/-! ## A330439.P3612180433966365793

`A167969(A074966(n+2))`
-/

namespace A330439.P3612180433966365793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A074966 (n + 2)).toNat

end

end A330439.P3612180433966365793

/-! ## A330439.P18407712637916203478

`A167969(A193813(n+2)+1)`
-/

namespace A330439.P18407712637916203478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A193813 (n + 2) + 1).toNat

end

end A330439.P18407712637916203478

/-! ## A330439.P855309722024339269

`A001221(A203638(3*n+2)+A002264(2*n))`
-/

namespace A330439.P855309722024339269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A203638 (3 * n + 2) + A002264 (2 * n)).toNat

end

end A330439.P855309722024339269

/-! ## A330439.P12828232570395545726

`A365721(A300251(2*(n+2))^A227551(n+3))`
-/

namespace A330439.P12828232570395545726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365721 (SequenceMachineLib.roundAway ((A300251 (2 * (n + 2)) : ℚ) ^ (A227551 (n + 3) : ℤ))).toNat

end

end A330439.P12828232570395545726

/-! ## A330439.P606945757962187534

`A262257(A174504(n+1))+1`
-/

namespace A330439.P606945757962187534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 (A174504 (n + 1)).toNat + 1

end

end A330439.P606945757962187534

/-!
# A330440: Numbers k such that A316774(k) != A316774(j) for all 0 <= j < k.

The programs for A330440, there is no canonical definition to state claims against.
-/

/-! ## A330440.P2235830680059541216

`record[n/A330439(n)]`
-/

namespace A330440.P2235830680059541216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A330439 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330440.P2235830680059541216

/-! ## A330440.P16354490432481591179

`record[A316905(A316774(n))]`
-/

namespace A330440.P16354490432481591179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316905 (A316774 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330440.P16354490432481591179

/-! ## A330440.P875510605513037406

`eq[1, A330439(n)]`
-/

namespace A330440.P875510605513037406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330440.P875510605513037406

/-! ## A330440.P16017269506150351488

`A330587(∑[n+1])`
-/

namespace A330440.P16017269506150351488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330440.P16017269506150351488

/-! ## A330440.P699977365473300927

`eq[1, char[A316905(n)]]`
-/

namespace A330440.P699977365473300927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316905 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330440.P699977365473300927

/-! ## A330440.P14020084109803734257

`lt[A330439(n), A000005(A005384(n+1))]`
-/

namespace A330440.P14020084109803734257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005384 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330440.P14020084109803734257

/-! ## A330440.P9447289325585161452

`lt[A330439(n), A000005(A034962(n+1))]`
-/

namespace A330440.P9447289325585161452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034962 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330440.P9447289325585161452

/-!
# A330441: Semiprimes p*q such that the concatenations of p and q in both orders are prime.

The programs for A330441, there is no canonical definition to state claims against.
-/

/-! ## A330441.P1800604917184477537

`record[∏{p}[A217263(n+1), #]]`
-/

namespace A330441.P1800604917184477537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330441.P1800604917184477537

/-! ## A330441.P2493164186725020214

`record[A007913(A217263(n+1))]`
-/

namespace A330441.P2493164186725020214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A217263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330441.P2493164186725020214

/-! ## A330441.P871195300698501889

`filter[A217263(n+1), A008966(#)]`
-/

namespace A330441.P871195300698501889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A330441.P871195300698501889

/-! ## A330441.P12801624174603420962

`filter[A217263(n+1), A064911(#)]`
-/

namespace A330441.P12801624174603420962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A330441.P12801624174603420962

/-! ## A330441.P4465997333320576480

`filter[A217263(n+1), A065043(#)]`
-/

namespace A330441.P4465997333320576480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A330441.P4465997333320576480

/-!
# A330443: Least m >= 0 such that (n+m)(n+m+1)/2 - n(n-3)/2 is prime, or -1 if no such m exists.

The programs for A330443, there is no canonical definition to state claims against.
-/

/-! ## A330443.P6735584486648928880

`or(A330502(n)-n, -char[3])`
-/

namespace A330443.P6735584486648928880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A330502 n - (n : ℤ)) (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A330443.P6735584486648928880

/-! ## A330443.P2026257764257267669

`(A330502(n)-n)%p?[A222232(n)]`
-/

namespace A330443.P2026257764257267669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330502 n - (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A330443.P2026257764257267669

/-! ## A330443.P8051201507035439089

`A330502(n)-n%(A330501(n)+2)`
-/

namespace A330443.P8051201507035439089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330502 n - Int.tmod (n : ℤ) (A330501 n + 2)

end

end A330443.P8051201507035439089

/-! ## A330443.P8827270274258899495

`A330502(n)-n-char[3]*A158052(n+1)`
-/

namespace A330443.P8827270274258899495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330502 n - (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A158052 (n + 1)

end

end A330443.P8827270274258899495

/-! ## A330443.P4012634219730342084

`xor(A330502(n)-n, char[3]*A048675(n+1))`
-/

namespace A330443.P4012634219730342084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A330502 n - (n : ℤ)) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A048675 (n + 1))

end

end A330443.P4012634219730342084

/-! ## A330443.P18168199403487595034

`A000038(A330501(n))+A330502(n)-n`
-/

namespace A330443.P18168199403487595034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A330501 n).toNat + (A330502 n - (n : ℤ))

end

end A330443.P18168199403487595034

/-!
# A330444: a(n) = Sum_{k=1..n} Stirling2(n,k) * (k-1)! * phi(k), where phi = A000010.

The programs for A330444, there is no canonical definition to state claims against.
-/

/-! ## A330444.P243575483979109921

`A038608(A267060(n+1))+A005649(n)`
-/

namespace A330444.P243575483979109921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A267060 (n + 1)).toNat + A005649 n

end

end A330444.P243575483979109921

/-! ## A330444.P9825447378871354403

`∑[A028310(A115855(n+1)*A230232(n))]`
-/

namespace A330444.P9825447378871354403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A115855 (n + 1) * A230232 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330444.P9825447378871354403

/-!
# A330445: Expansion of e.g.f.: Sum_{k>=1} log(1 + (exp(x) - 1)^k)/k.

The programs for A330445, there is no canonical definition to state claims against.
-/

/-! ## A330445.P5125484115991947200

`A098170(a(n-1)-a(n-3)+2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A330445.P5125484115991947200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 5] fun n a =>
  A098170 (a (n - 1) - a (n - 3) + 2).toNat

end

end A330445.P5125484115991947200

/-!
# A330447: a(n) is the smallest index k such that {0,1,2,...,n} is a subset of { A316774(j) : 0 <= j <= k }.

The programs for A330447, there is no canonical definition to state claims against.
-/

/-! ## A330447.P2742564005349031116

`A330448(n)+A316905(n)`
-/

namespace A330447.P2742564005349031116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330448 n + A316905 n

end

end A330447.P2742564005349031116

/-! ## A330447.P16100281181510124158

`A330448(A187829(n+1))+A330440(n+1)`
-/

namespace A330447.P16100281181510124158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330448 (A187829 (n + 1)).toNat + A330440 (n + 1)

end

end A330447.P16100281181510124158

/-! ## A330447.P3008291361471121949

`A330587(∑[A187829(n+1)])+A330448(n+1)`
-/

namespace A330447.P3008291361471121949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A330448 (n + 1)

end

end A330447.P3008291361471121949

/-!
# A330448: a(n) = A330447(n) - A316905(n).

The programs for A330448, there is no canonical definition to state claims against.
-/

/-! ## A330448.P11863160043062281218

`A330447(n)-A316905(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330448.P11863160043062281218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330447 n - A316905 n

end

end A330448.P11863160043062281218

/-!
# A330449: Expansion of e.g.f. Sum_{k>=1} (exp(x) - 1)^k / (k * (1 - (exp(x) - 1)^k)^2).

The programs for A330449, there is no canonical definition to state claims against.
-/

/-! ## A330449.P14617991946697422246

`A245450(∑[∑[A326754(n+3)^n]])`
-/

namespace A330449.P14617991946697422246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326754 (n + 3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245450 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330449.P14617991946697422246

/-!
# A330451: a(n) = a(n-3) + 20*n - 30 for n > 2, with a(0)=0, a(1)=3, a(2)=13.

The programs for A330451, the canonical program `A330451.P4215825857966408815` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330451 has offset 0).

The definition of A330451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+20*n-30` (program `A330451.P4215825857966408815`, by `A330451.P4215825857966408815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330451.P1015940593974685601

`floor(10*n²/3)`
-/

namespace A330451.P1015940593974685601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * n ^ 2 : ℚ) / 3⌋

end

end A330451.P1015940593974685601

namespace A330451

/-- `floor(10*n²/3)` -/
def P1015940593974685601.Spec : Prop :=
  ∀ n, P1015940593974685601.a n = A330451 n

end A330451

/-! ## A330451.P4215825857966408815

`a(n-3)+20*n-30` with `a(0)=0, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330451

/-- `a(n-3)+20*n-30` -/
def P4215825857966408815.Spec : Prop :=
  ∀ n, P4215825857966408815.a n = A330451 n

theorem P4215825857966408815.correct : P4215825857966408815.Spec := by
  intro n
  simp only [A330451]

end A330451

/-! ## A330451.P2153685476179517987

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=7, a(3)=7, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A330451.P2153685476179517987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7, 7, 6] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330451.P2153685476179517987

namespace A330451

/-- `∑[∑[floor(a(n-3))]]` -/
def P2153685476179517987.Spec : Prop :=
  ∀ n, (P2153685476179517987.a n : ℤ) = A330451 n

end A330451

/-! ## A330451.P8328648721223397361

`round(A033583(n)/3)`
-/

namespace A330451.P8328648721223397361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033583 n : ℚ) / 3)

end

end A330451.P8328648721223397361

namespace A330451

/-- `round(A033583(n)/3)` -/
def P8328648721223397361.Spec : Prop :=
  ∀ n, P8328648721223397361.a n = A330451 n

end A330451

/-! ## A330451.P5997332308849330328

`ceil(A005901(n)/3)-1`
-/

namespace A330451.P5997332308849330328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005901 n : ℚ) / 3⌉ - 1

end

end A330451.P5997332308849330328

namespace A330451

/-- `ceil(A005901(n)/3)-1` -/
def P5997332308849330328.Spec : Prop :=
  ∀ n, P5997332308849330328.a n = A330451 n

end A330451

/-! ## A330451.P6072993648963508187

`A256320(n)+2*n²`
-/

namespace A330451.P6072993648963508187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + (2 * n ^ 2 : ℤ)

end

end A330451.P6072993648963508187

namespace A330451

/-- `A256320(n)+2*n²` -/
def P6072993648963508187.Spec : Prop :=
  ∀ n, P6072993648963508187.a n = A330451 n

end A330451

/-! ## A330451.P3077686794980270046

`3*n²+A000212(n)`
-/

namespace A330451.P3077686794980270046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) + A000212 n

end

end A330451.P3077686794980270046

namespace A330451

/-- `3*n²+A000212(n)` -/
def P3077686794980270046.Spec : Prop :=
  ∀ n, P3077686794980270046.a n = A330451 n

end A330451

/-! ## A330451.P5843580564563388423

`(2*n)²-A071619(n)`
-/

namespace A330451.P5843580564563388423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A071619 n

end

end A330451.P5843580564563388423

namespace A330451

/-- `(2*n)²-A071619(n)` -/
def P5843580564563388423.Spec : Prop :=
  ∀ n, P5843580564563388423.a n = A330451 n

end A330451

/-! ## A330451.P14776958195936957883

`A256321(n)+A032527(n)`
-/

namespace A330451.P14776958195936957883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256321 n + A032527 n

end

end A330451.P14776958195936957883

namespace A330451

/-- `A256321(n)+A032527(n)` -/
def P14776958195936957883.Spec : Prop :=
  ∀ n, P14776958195936957883.a n = A330451 n

end A330451

/-! ## A330451.P10166674639002935672

`A227541(n)+A069905(n)`
-/

namespace A330451.P10166674639002935672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227541 n + A069905 n

end

end A330451.P10166674639002935672

namespace A330451

/-- `A227541(n)+A069905(n)` -/
def P10166674639002935672.Spec : Prop :=
  ∀ n, P10166674639002935672.a n = A330451 n

end A330451

/-! ## A330451.P920994780214846627

`A222170(n)+A113422(n)`
-/

namespace A330451.P920994780214846627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n + A113422 n

end

end A330451.P920994780214846627

namespace A330451

/-- `A222170(n)+A113422(n)` -/
def P920994780214846627.Spec : Prop :=
  ∀ n, P920994780214846627.a n = A330451 n

end A330451

/-! ## A330451.P15016495311298452037

`A398058(n)+A000326(n)`
-/

namespace A330451.P15016495311298452037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398058 n + A000326 n

end

end A330451.P15016495311298452037

namespace A330451

/-- `A398058(n)+A000326(n)` -/
def P15016495311298452037.Spec : Prop :=
  ∀ n, P15016495311298452037.a n = A330451 n

end A330451

/-! ## A330451.P8037205685606769426

`A397972(n)+A005476(n)`
-/

namespace A330451.P8037205685606769426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A005476 n

end

end A330451.P8037205685606769426

namespace A330451

/-- `A397972(n)+A005476(n)` -/
def P8037205685606769426.Spec : Prop :=
  ∀ n, P8037205685606769426.a n = A330451 n

end A330451

/-! ## A330451.P1595831030061056460

`A022265(n)-A001840(n)`
-/

namespace A330451.P1595831030061056460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A001840 n

end

end A330451.P1595831030061056460

namespace A330451

/-- `A022265(n)-A001840(n)` -/
def P1595831030061056460.Spec : Prop :=
  ∀ n, P1595831030061056460.a n = A330451 n

end A330451

/-! ## A330451.P4218398039210515808

`A053755(n)-A084672(n)`
-/

namespace A330451.P4218398039210515808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n - A084672 n

end

end A330451.P4218398039210515808

namespace A330451

/-- `A053755(n)-A084672(n)` -/
def P4218398039210515808.Spec : Prop :=
  ∀ n, P4218398039210515808.a n = A330451 n

end A330451

/-! ## A330451.P14272511688912363179

`A033429(n)-A113422(n)`
-/

namespace A330451.P14272511688912363179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - A113422 n

end

end A330451.P14272511688912363179

namespace A330451

/-- `A033429(n)-A113422(n)` -/
def P14272511688912363179.Spec : Prop :=
  ∀ n, P14272511688912363179.a n = A330451 n

end A330451

/-! ## A330451.P10059493947635068310

`A299255(n)-A005893(n)`
-/

namespace A330451.P10059493947635068310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n - A005893 n

end

end A330451.P10059493947635068310

namespace A330451

/-- `A299255(n)-A005893(n)` -/
def P10059493947635068310.Spec : Prop :=
  ∀ n, P10059493947635068310.a n = A330451 n

end A330451

/-! ## A330451.P2459671396428293953

`A005897(n)-A299259(n)`
-/

namespace A330451.P2459671396428293953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A299259 n

end

end A330451.P2459671396428293953

namespace A330451

/-- `A005897(n)-A299259(n)` -/
def P2459671396428293953.Spec : Prop :=
  ∀ n, P2459671396428293953.a n = A330451 n

end A330451

/-! ## A330451.P3896797093373614006

`A007742(n)-A320259(n)`
-/

namespace A330451.P3896797093373614006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - A320259 n

end

end A330451.P3896797093373614006

namespace A330451

/-- `A007742(n)-A320259(n)` -/
def P3896797093373614006.Spec : Prop :=
  ∀ n, P3896797093373614006.a n = A330451 n

end A330451

/-! ## A330451.P14142396820857923385

`A256322(n)-A077043(n)`
-/

namespace A330451.P14142396820857923385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256322 n - A077043 n

end

end A330451.P14142396820857923385

namespace A330451

/-- `A256322(n)-A077043(n)` -/
def P14142396820857923385.Spec : Prop :=
  ∀ n, P14142396820857923385.a n = A330451 n

end A330451

/-!
# A330453: Number of strict multiset partitions of multiset partitions of integer partitions of n.

The programs for A330453, there is no canonical definition to state claims against.
-/

/-! ## A330453.P15800288299400843954

`A062108(A217782(n))+A052998(n+1)`
-/

namespace A330453.P15800288299400843954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A217782 n).toNat + A052998 (n + 1)

end

end A330453.P15800288299400843954

/-! ## A330453.P7859955834789891767

`A243283(A099015(n))`
-/

namespace A330453.P7859955834789891767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A099015 n).toNat

end

end A330453.P7859955834789891767

/-! ## A330453.P3479053179430429952

`A292987(A307128(n))`
-/

namespace A330453.P3479053179430429952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (A307128 n).toNat

end

end A330453.P3479053179430429952

/-!
# A330454: Number of sets of nonempty sets of nonempty multisets of positive integers with total sum n.

The programs for A330454, there is no canonical definition to state claims against.
-/

/-! ## A330454.P13856231441425423773

`A077470(A075853(n+1))`
-/

namespace A330454.P13856231441425423773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077470 (A075853 (n + 1)).toNat

end

end A330454.P13856231441425423773

/-! ## A330454.P617829229672011468

`A077470(or(A002266(n), A152172(n)))`
-/

namespace A330454.P617829229672011468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077470 (Int.lor (A002266 n) (A152172 n)).toNat

end

end A330454.P617829229672011468

/-! ## A330454.P17729928542849169241

`A100196(A030227(2*n+1))-A242249(n)`
-/

namespace A330454.P17729928542849169241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A030227 (2 * n + 1)).toNat - A242249 n

end

end A330454.P17729928542849169241

/-! ## A330454.P9426672152797508288

`A077470(A035615(n)+A033182(3*n+2))`
-/

namespace A330454.P9426672152797508288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077470 (A035615 n + A033182 (3 * n + 2)).toNat

end

end A330454.P9426672152797508288

/-!
# A330455: Number of sets of nonempty multisets of nonempty sets of positive integers with total sum n.

The programs for A330455, there is no canonical definition to state claims against.
-/

/-! ## A330455.P1082661813094352344

`A161205(A301578(n))`
-/

namespace A330455.P1082661813094352344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A301578 n).toNat

end

end A330455.P1082661813094352344

/-! ## A330455.P13979119009887189777

`A229219(A365854(n))`
-/

namespace A330455.P13979119009887189777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A365854 n).toNat

end

end A330455.P13979119009887189777

/-! ## A330455.P5125154514195627616

`A046155(A131772(n)+A098184(n))`
-/

namespace A330455.P5125154514195627616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A131772 n + A098184 n).toNat

end

end A330455.P5125154514195627616

/-! ## A330455.P17049157959689927984

`A026819(A348921(n)+A098184(n))`
-/

namespace A330455.P17049157959689927984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A348921 n + A098184 n).toNat

end

end A330455.P17049157959689927984

/-!
# A330456: Number of multisets of nonempty sets of nonempty sets of positive integers with total sum n.

The programs for A330456, there is no canonical definition to state claims against.
-/

/-! ## A330456.P7679515977134059469

`A000194(A204573(n+1))+ceil(2^(n-1))`
-/

namespace A330456.P7679515977134059469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A204573 (n + 1)).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A330456.P7679515977134059469

/-! ## A330456.P16628401305375384520

`A011782(n)+A000194(A204573(n+1))`
-/

namespace A330456.P16628401305375384520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A000194 (A204573 (n + 1)).toNat

end

end A330456.P16628401305375384520

/-! ## A330456.P1933493245580745311

`A204519(A032555(n+1))+A011782(n)`
-/

namespace A330456.P1933493245580745311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A032555 (n + 1)).toNat + A011782 n

end

end A330456.P1933493245580745311

/-! ## A330456.P1653198861646685213

`A204519(A082217(n+1))+A011782(n)`
-/

namespace A330456.P1653198861646685213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A082217 (n + 1)).toNat + A011782 n

end

end A330456.P1653198861646685213

/-!
# A330457: Number of multisets of nonempty multisets of nonempty sets of positive integers with total sum n.

The programs for A330457, there is no canonical definition to state claims against.
-/

/-! ## A330457.P4997296385901501470

`or(1, A000006(A149596(n)))`
-/

namespace A330457.P4997296385901501470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000006 (A149596 n).toNat)

end

end A330457.P4997296385901501470

/-! ## A330457.P7794084318675971324

`∑[A018584(n+1)%A018290(n+1)]+1`
-/

namespace A330457.P7794084318675971324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018584 (n + 1)) (A018290 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A330457.P7794084318675971324

/-! ## A330457.P12320466742922282812

`A283877(n)+A159070(A000108(n))`
-/

namespace A330457.P12320466742922282812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n + A159070 (A000108 n).toNat

end

end A330457.P12320466742922282812

/-!
# A330458: Number of multisets of nonempty sets of nonempty multisets of positive integers with total sum n.

The programs for A330458, there is no canonical definition to state claims against.
-/

/-! ## A330458.P8046164724875848903

`A008618(A334458(n)+A001911(2*(n+1)))`
-/

namespace A330458.P8046164724875848903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A334458 n + A001911 (2 * (n + 1))).toNat

end

end A330458.P8046164724875848903

/-! ## A330458.P1622334249939776414

`A135135(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A330458.P1622334249939776414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135135 (a (n - 1) + 1).toNat

end

end A330458.P1622334249939776414

/-! ## A330458.P15342422556667222085

`A135135(A027826(n))`
-/

namespace A330458.P15342422556667222085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135135 (A027826 n).toNat

end

end A330458.P15342422556667222085

/-!
# A330460: Triangle read by rows where T(n,k) is the number of set partitions with k blocks and total sum n.

The programs for A330460, there is no canonical definition to state claims against.
-/

/-! ## A330460.P10608309655700559990

`A330462(n)/A175244(A174116(n))`
-/

namespace A330460.P10608309655700559990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330462 n : ℚ) / (A175244 (A174116 n).toNat : ℚ)

end

end A330460.P10608309655700559990

/-! ## A330460.P8826547625982855962

`A362370(lt[n, A291451(n)+1])`
-/

namespace A330460.P8826547625982855962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291451 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A330460.P8826547625982855962

/-! ## A330460.P13584005445878850054

`A330462(n)/A139434(A120042(n))`
-/

namespace A330460.P13584005445878850054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330462 n : ℚ) / (A139434 (A120042 n).toNat : ℚ)

end

end A330460.P13584005445878850054

/-! ## A330460.P15639493541897709840

`A330462(n)/A347456(A190252(n))`
-/

namespace A330460.P15639493541897709840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330462 n : ℚ) / (A347456 (A190252 n).toNat : ℚ)

end

end A330460.P15639493541897709840

/-! ## A330460.P15720085732626788736

`A330462(n)/A354579(A038367(n+1))`
-/

namespace A330460.P15720085732626788736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330462 n : ℚ) / (A354579 (A038367 (n + 1)).toNat : ℚ)

end

end A330460.P15720085732626788736

/-!
# A330461: Array read by antidiagonals where A(n,k) is the number of multiset partitions with k levels that are strict at all levels and have total sum n.

The programs for A330461, there is no canonical definition to state claims against.
-/

/-! ## A330461.P17676244656461691504

`A055642(A331567(n))`
-/

namespace A330461.P17676244656461691504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A331567 n).toNat

end

end A330461.P17676244656461691504

/-! ## A330461.P10880480612420912268

`A167439(A208673(n+1))`
-/

namespace A330461.P10880480612420912268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A208673 (n + 1)).toNat

end

end A330461.P10880480612420912268

/-! ## A330461.P7165467145616904702

`A331853(A208615(n+1))`
-/

namespace A330461.P7165467145616904702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331853 (A208615 (n + 1)).toNat

end

end A330461.P7165467145616904702

/-! ## A330461.P4984888253872770826

`A229895(A361948(n+1))`
-/

namespace A330461.P4984888253872770826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229895 (A361948 (n + 1)).toNat

end

end A330461.P4984888253872770826

/-! ## A330461.P16173520740213721905

`A275853(A347618(n+1))`
-/

namespace A330461.P16173520740213721905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A347618 (n + 1)).toNat

end

end A330461.P16173520740213721905

/-!
# A330462: Triangle read by rows where T(n,k) is the number of k-element sets of nonempty sets of positive integers with total sum n.

The programs for A330462, there is no canonical definition to state claims against.
-/

/-! ## A330462.P5593423280059248783

`and(A005811(A005900(n+1)), A353846(n))`
-/

namespace A330462.P5593423280059248783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A005900 (n + 1)).toNat) (A353846 n)

end

end A330462.P5593423280059248783

/-! ## A330462.P15776916339699285721

`A353846(n*A347045(n+1))`
-/

namespace A330462.P15776916339699285721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 ((n : ℤ) * A347045 (n + 1)).toNat

end

end A330462.P15776916339699285721

/-! ## A330462.P3891912006135184900

`A055090(A330490(n+1))*A330460(n)`
-/

namespace A330462.P3891912006135184900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A330490 (n + 1)).toNat * A330460 n

end

end A330462.P3891912006135184900

/-! ## A330462.P4713638431988327359

`A056594(A141091(n+4))*A353846(n)`
-/

namespace A330462.P4713638431988327359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A141091 (n + 4)).toNat * A353846 n

end

end A330462.P4713638431988327359

/-! ## A330462.P11130442379798291960

`A353846(n)%A217309(A122141(n+1))`
-/

namespace A330462.P11130442379798291960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353846 n) (A217309 (A122141 (n + 1)).toNat)

end

end A330462.P11130442379798291960

/-!
# A330463: Triangle read by rows where T(n,k) is the number of k-element sets of nonempty multisets of positive integers with total sum n.

The programs for A330463, there is no canonical definition to state claims against.
-/

/-! ## A330463.P17380704704705280198

`A177903(A325188(n)*A327884(n))`
-/

namespace A330463.P17380704704705280198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A325188 n * A327884 n).toNat

end

end A330463.P17380704704705280198

/-! ## A330463.P8789387229395844075

`A177903(A084938(n)*A169803(n))`
-/

namespace A330463.P8789387229395844075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A084938 n * A169803 n).toNat

end

end A330463.P8789387229395844075

/-! ## A330463.P3953067791450488012

`A255970(n)%A255916(A255937(n))`
-/

namespace A330463.P3953067791450488012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255970 n) (A255916 (A255937 n).toNat)

end

end A330463.P3953067791450488012

/-! ## A330463.P1608031554005468488

`A023416(A139748(n))*A320179(n+1)`
-/

namespace A330463.P1608031554005468488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A139748 n).toNat * A320179 (n + 1)

end

end A330463.P1608031554005468488

/-! ## A330463.P9882913726879065365

`A023416(A139748(n)^A320179(n+1))`
-/

namespace A330463.P9882913726879065365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A139748 n : ℚ) ^ (A320179 (n + 1) : ℤ))).toNat

end

end A330463.P9882913726879065365

/-!
# A330464: Number of non-isomorphic weight-n sets of set-systems with distinct multiset unions.

The programs for A330464, there is no canonical definition to state claims against.
-/

/-! ## A330464.P14025579608277078696

`A074416(n+1)+A002843(A096258(2*n+3))`
-/

namespace A330464.P14025579608277078696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074416 (n + 1) + A002843 (A096258 (2 * n + 3)).toNat

end

end A330464.P14025579608277078696

/-! ## A330464.P6530032603891949960

`A366509((n+1)^n)`
-/

namespace A330464.P6530032603891949960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366509 ((n + 1) ^ n)

end

end A330464.P6530032603891949960

/-!
# A330465: Number of non-isomorphic series-reduced rooted trees whose leaves are multisets with a total of n elements.

The programs for A330465, there is no canonical definition to state claims against.
-/

/-! ## A330465.P8890797804362008709

`A116619(A228421(n)+1)`
-/

namespace A330465.P8890797804362008709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (A228421 n + 1).toNat

end

end A330465.P8890797804362008709

/-!
# A330466: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into k consecutive parts that differ by 2, n >= 1, k >= 1, and the first element of column k is in row k^2.

The programs for A330466, there is no canonical definition to state claims against.
-/

/-! ## A330466.P12511554190335596938

`A161906(∑[A303300(n+1)])*A303300(n+1)`
-/

namespace A330466.P12511554190335596938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A303300 (n + 1)

end

end A330466.P12511554190335596938

/-! ## A330466.P9571741686936626802

`A334462(A138100(n+1))`
-/

namespace A330466.P9571741686936626802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334462 (A138100 (n + 1)).toNat

end

end A330466.P9571741686936626802

/-! ## A330466.P16618803071734120062

`A334462(A137937(n)+2)`
-/

namespace A330466.P16618803071734120062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334462 (A137937 n + 2).toNat

end

end A330466.P16618803071734120062

/-! ## A330466.P13291910094894839335

`A334462(A137913(n))`
-/

namespace A330466.P13291910094894839335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334462 (A137913 n).toNat

end

end A330466.P13291910094894839335

/-! ## A330466.P863788899477076338

`A334540(A265334(n+1)+1)`
-/

namespace A330466.P863788899477076338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334540 (A265334 (n + 1) + 1).toNat

end

end A330466.P863788899477076338

/-!
# A330467: Number of series-reduced rooted trees whose leaves are multisets whose multiset union is a strongly normal multiset of size n.

The programs for A330467, there is no canonical definition to state claims against.
-/

/-! ## A330467.P13929060241201693281

`A172236(n+1)+A007095(A321587(n))`
-/

namespace A330467.P13929060241201693281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (n + 1) + A007095 (A321587 n).toNat

end

end A330467.P13929060241201693281

/-! ## A330467.P16311117807664940910

`A052382(A324903(n+1)+A321587(n))`
-/

namespace A330467.P16311117807664940910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A324903 (n + 1) + A321587 n).toNat

end

end A330467.P16311117807664940910

/-!
# A330468: Numbers k where the difference (least prime > 10^k) - (greatest prime < 10^k) sets a record.

The programs for A330468, there is no canonical definition to state claims against.
-/

/-! ## A330468.P7978981921040890293

`record[and(A113340(n+1), A291267(2*n+3))]`
-/

namespace A330468.P7978981921040890293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113340 (n + 1)) (A291267 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330468.P7978981921040890293

/-! ## A330468.P12208008829028269819

`floor((A172459(n+1)+floor(A010101(n+1)/2))/4)`
-/

namespace A330468.P12208008829028269819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172459 (n + 1) + ⌊(A010101 (n + 1) : ℚ) / 2⌋ : ℚ) / 4⌋

end

end A330468.P12208008829028269819

/-! ## A330468.P7188401204474461082

`A284849(A010101(n+1))+A057895(n)`
-/

namespace A330468.P7188401204474461082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284849 (A010101 (n + 1)).toNat + A057895 n

end

end A330468.P7188401204474461082

/-! ## A330468.P11275014150329681169

`A249856(A045956(n+2))+A045975(n+1)`
-/

namespace A330468.P11275014150329681169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A045956 (n + 2)).toNat + A045975 (n + 1)

end

end A330468.P11275014150329681169

/-! ## A330468.P7013369355548947319

`eq[A007814(A210551(2*(n+1))), A129407(n)]`
-/

namespace A330468.P7013369355548947319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A210551 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330468.P7013369355548947319

/-!
# A330469: Number of series-reduced rooted trees whose leaves are multisets with a total of n elements covering an initial interval of positive integers.

The programs for A330469, there is no canonical definition to state claims against.
-/

/-! ## A330469.P5581338409248499054

`A086753(A149489(n))`
-/

namespace A330469.P5581338409248499054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086753 (A149489 n).toNat

end

end A330469.P5581338409248499054

/-! ## A330469.P1927642319515196498

`A285702(A258969(n)-n)`
-/

namespace A330469.P1927642319515196498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285702 (A258969 n - (n : ℤ)).toNat

end

end A330469.P1927642319515196498

/-!
# A330470: Number of non-isomorphic series/singleton-reduced rooted trees on a multiset of size n.

The programs for A330470, there is no canonical definition to state claims against.
-/

/-! ## A330470.P1816029102094000092

`A228898(A148342(n))`
-/

namespace A330470.P1816029102094000092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228898 (A148342 n).toNat

end

end A330470.P1816029102094000092

/-! ## A330470.P16731360117518722119

`A122651(A351013(∑[n]))`
-/

namespace A330470.P16731360117518722119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A351013 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330470.P16731360117518722119

/-!
# A330471: Number of series/singleton-reduced rooted trees on strongly normal multisets of size n.

The programs for A330471, there is no canonical definition to state claims against.
-/

/-! ## A330471.P5157230898806540016

`A316652(gcd(25*n, n!))`
-/

namespace A330471.P5157230898806540016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316652 (Nat.gcd (25 * n) (Nat.factorial n))

end

end A330471.P5157230898806540016

/-! ## A330471.P10870121100499182896

`A316652(n^(round(sqrt(n+1))-1))`
-/

namespace A330471.P10870121100499182896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316652 (SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1 : ℤ))).toNat

end

end A330471.P10870121100499182896

/-!
# A330473: Regular triangle where T(n,k) is the number of non-isomorphic multiset partitions of k-element multiset partitions of multisets of size n.

The programs for A330473, there is no canonical definition to state claims against.
-/

/-! ## A330473.P12725531529352313330

`A255903(n)+A070138(A081614(n))`
-/

namespace A330473.P12725531529352313330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 n + A070138 (A081614 n).toNat

end

end A330473.P12725531529352313330

/-! ## A330473.P14173085182190920976

`A006928(A052912(n))*A255903(n)`
-/

namespace A330473.P14173085182190920976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A052912 n).toNat * A255903 n

end

end A330473.P14173085182190920976

/-! ## A330473.P1142046579748176128

`A000034(A220212(n))*A255903(n)`
-/

namespace A330473.P1142046579748176128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A220212 n).toNat * A255903 n

end

end A330473.P1142046579748176128

/-! ## A330473.P13138502718832226029

`A280801(A047749(n))*A326500(n)`
-/

namespace A330473.P13138502718832226029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280801 (A047749 n).toNat * A326500 n

end

end A330473.P13138502718832226029

/-! ## A330473.P17747825388147768212

`A000034(A006864(n+1))*A255903(n)`
-/

namespace A330473.P17747825388147768212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006864 (n + 1)).toNat * A255903 n

end

end A330473.P17747825388147768212

/-!
# A330474: Number of non-isomorphic balanced reduced multisystems of weight n.

The programs for A330474, there is no canonical definition to state claims against.
-/

/-! ## A330474.P14192417243233832689

`(2*n-1)*a(n-1)/gcd(n, a(n-1))-(∏{p}[n+1, 1-#]+1+n)` with `a(0)=1, a(1)=1`
-/

namespace A330474.P14192417243233832689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) - ((∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ) : ℤ) : ℚ)

end

end A330474.P14192417243233832689

/-!
# A330475: Number of balanced reduced multisystems whose atoms constitute a strongly normal multiset of size n.

The programs for A330475, there is no canonical definition to state claims against.
-/

/-! ## A330475.P11924025340320544363

`A293957(∑[∑[gcd(6, n%5)%5]-1])+1`
-/

namespace A330475.P11924025340320544363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293957 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A330475.P11924025340320544363

/-! ## A330475.P10466119302857114210

`A027869(xor(9, A081136(n)))`
-/

namespace A330475.P10466119302857114210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 (Int.xor 9 (A081136 n)).toNat

end

end A330475.P10466119302857114210

/-!
# A330476: a(n) = Sum_{m=2..n} floor(n/m)^2.

The programs for A330476, the canonical program `A330476.P692965498575692381` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330476 has offset 1).

The definition of A330476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330476.P692965498575692381

`∑[∑{d}[n+1, #-1]+∑{d}[n+1, #]-Δ[n²]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330476

/-- `∑[∑{d}[n+1, #-1]+∑{d}[n+1, #]-Δ[n²]]` -/
def P692965498575692381.Spec : Prop :=
  ∀ n, P692965498575692381.a n = A330476 (n + 1)

theorem P692965498575692381.correct : P692965498575692381.Spec := by
  intro n
  simp only [A330476, Nat.add_sub_cancel]

end A330476

/-! ## A330476.P10440718762538293922

`∑[∑{d}[n+1, #-1]-n+∑{d}[n+1, #]-(n+1)]`
-/

namespace A330476.P10440718762538293922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) - (n : ℤ) + (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330476.P10440718762538293922

namespace A330476

/-- `∑[∑{d}[n+1, #-1]-n+∑{d}[n+1, #]-(n+1)]` -/
def P10440718762538293922.Spec : Prop :=
  ∀ n, P10440718762538293922.a n = A330476 (n + 1)

theorem P10440718762538293922.correct : P10440718762538293922.Spec := by
  intro n
  simp only [A330476, Nat.add_sub_cancel, A330476.P10440718762538293922.f2, A330476.P10440718762538293922.f3, A330476.P10440718762538293922.f1, A330476.P10440718762538293922.a, A330476.P692965498575692381.f2, A330476.P692965498575692381.f3, A330476.P692965498575692381.f4, A330476.P692965498575692381.f1, A330476.P692965498575692381.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A330476

/-! ## A330476.P1952387018136581917

`A222548(n+1)-(n+1)²`
-/

namespace A330476.P1952387018136581917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222548 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A330476.P1952387018136581917

namespace A330476

/-- `A222548(n+1)-(n+1)²` -/
def P1952387018136581917.Spec : Prop :=
  ∀ n, P1952387018136581917.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P479789766742065246

`∑[A129235(n+1)]-(n+1)²`
-/

namespace A330476.P479789766742065246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A330476.P479789766742065246

namespace A330476

/-- `∑[A129235(n+1)]-(n+1)²` -/
def P479789766742065246.Spec : Prop :=
  ∀ n, P479789766742065246.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P3231626959703289459

`A153485(n+1)+A152967(n+1)`
-/

namespace A330476.P3231626959703289459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) + A152967 (n + 1)

end

end A330476.P3231626959703289459

namespace A330476

/-- `A153485(n+1)+A152967(n+1)` -/
def P3231626959703289459.Spec : Prop :=
  ∀ n, P3231626959703289459.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P797492702028614591

`A236632(n+1)-A004125(n+1)`
-/

namespace A330476.P797492702028614591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) - A004125 (n + 1)

end

end A330476.P797492702028614591

namespace A330476

/-- `A236632(n+1)-A004125(n+1)` -/
def P797492702028614591.Spec : Prop :=
  ∀ n, P797492702028614591.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P9119648594514486856

`A294016(n+1)-A006218(n+1)`
-/

namespace A330476.P9119648594514486856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294016 (n + 1) - A006218 (n + 1)

end

end A330476.P9119648594514486856

namespace A330476

/-- `A294016(n+1)-A006218(n+1)` -/
def P9119648594514486856.Spec : Prop :=
  ∀ n, P9119648594514486856.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P17059442774004215425

`A222548(n+1)%A162395(n+1)`
-/

namespace A330476.P17059442774004215425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222548 (n + 1)) (A162395 (n + 1))

end

end A330476.P17059442774004215425

namespace A330476

/-- `A222548(n+1)%A162395(n+1)` -/
def P17059442774004215425.Spec : Prop :=
  ∀ n, P17059442774004215425.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P9080250406603397

`∑[A152770(n+1)+A001065(n+1)]`
-/

namespace A330476.P9080250406603397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330476.P9080250406603397

namespace A330476

/-- `∑[A152770(n+1)+A001065(n+1)]` -/
def P9080250406603397.Spec : Prop :=
  ∀ n, P9080250406603397.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P14341616846741112241

`∑[A237588(n+1)+A065608(n+1)]`
-/

namespace A330476.P14341616846741112241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A065608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330476.P14341616846741112241

namespace A330476

/-- `∑[A237588(n+1)+A065608(n+1)]` -/
def P14341616846741112241.Spec : Prop :=
  ∀ n, P14341616846741112241.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P3510403102659328510

`2*A153485(n+1)-A002541(n+1)`
-/

namespace A330476.P3510403102659328510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153485 (n + 1) - A002541 (n + 1)

end

end A330476.P3510403102659328510

namespace A330476

/-- `2*A153485(n+1)-A002541(n+1)` -/
def P3510403102659328510.Spec : Prop :=
  ∀ n, P3510403102659328510.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P16254324283608240854

`A024916(n+1)-(A006218(n+1)+A004125(n+1))`
-/

namespace A330476.P16254324283608240854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - (A006218 (n + 1) + A004125 (n + 1))

end

end A330476.P16254324283608240854

namespace A330476

/-- `A024916(n+1)-(A006218(n+1)+A004125(n+1))` -/
def P16254324283608240854.Spec : Prop :=
  ∀ n, P16254324283608240854.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P2039365717148476388

`A244048(n+2)+A152967(n+1)`
-/

namespace A330476.P2039365717148476388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 2) + A152967 (n + 1)

end

end A330476.P2039365717148476388

namespace A330476

/-- `A244048(n+2)+A152967(n+1)` -/
def P2039365717148476388.Spec : Prop :=
  ∀ n, P2039365717148476388.a n = A330476 (n + 1)

end A330476

/-! ## A330476.P2892127413820222104

`A222548(A269910(2*(n+1))+n)%(n+1)²`
-/

namespace A330476.P2892127413820222104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222548 (A269910 (2 * (n + 1)) + (n : ℤ)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A330476.P2892127413820222104

namespace A330476

/-- `A222548(A269910(2*(n+1))+n)%(n+1)²` -/
def P2892127413820222104.Spec : Prop :=
  ∀ n, P2892127413820222104.a n = A330476 (n + 1)

end A330476

/-!
# A330477: Semiprimes (A001358) p*q such that p*q+p+q is also a semiprime.

The programs for A330477, there is no canonical definition to state claims against.
-/

/-! ## A330477.P13546271132889452331

`filter[A095191(n+1), A064911(#)]`
-/

namespace A330477.P13546271132889452331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A330477.P13546271132889452331

/-! ## A330477.P1252876246714457003

`filter[A095191(n+1), A101040(#)]`
-/

namespace A330477.P1252876246714457003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A330477.P1252876246714457003

/-! ## A330477.P3890907183490477676

`filter[A095191(n+2), A353799(#)]`
-/

namespace A330477.P3890907183490477676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A330477.P3890907183490477676

/-! ## A330477.P17500367356291986440

`∩[A001358(n+1), A095191(n+1)]`
-/

namespace A330477.P17500367356291986440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P17500367356291986440

/-! ## A330477.P16038072334442020591

`∩[A095191(n+1), A176540(n+1)]`
-/

namespace A330477.P16038072334442020591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P16038072334442020591

/-! ## A330477.P12824513908954026202

`∩[A095191(n+1), A186621(n+1)+1]`
-/

namespace A330477.P12824513908954026202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P12824513908954026202

/-! ## A330477.P9230069145747538340

`∩[A088707(n+1)-1, A095191(n+1)]`
-/

namespace A330477.P9230069145747538340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P9230069145747538340

/-! ## A330477.P11867772460766895188

`∩[A095191(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A330477.P11867772460766895188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P11867772460766895188

/-! ## A330477.P15956331793202606695

`∩[A095191(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A330477.P15956331793202606695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P15956331793202606695

/-! ## A330477.P3989597164256133381

`∩[A037143(n+1), A095191(n+1)]`
-/

namespace A330477.P3989597164256133381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330477.P3989597164256133381

/-!
# A330488: Primes p such that p+2 is prime and p+A001414(p+1)+(p+2) is prime.

The programs for A330488, there is no canonical definition to state claims against.
-/

/-! ## A330488.P12697846986217381267

`A340060(n+1)-1`
-/

namespace A330488.P12697846986217381267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340060 (n + 1) - 1

end

end A330488.P12697846986217381267

/-! ## A330488.P11227239401067201347

`A008836(A026424(n+1))+lcm(2, A340060(n+1))`
-/

namespace A330488.P11227239401067201347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A026424 (n + 1)).toNat + (Int.lcm 2 (A340060 (n + 1)) : ℤ)

end

end A330488.P11227239401067201347

/-! ## A330488.P17663671199878244509

`A008683(A180950(n+1))+A340060(n+1)%A069473(n)`
-/

namespace A330488.P17663671199878244509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A180950 (n + 1)).toNat + Int.tmod (A340060 (n + 1)) (A069473 n)

end

end A330488.P17663671199878244509

/-! ## A330488.P12985928124482689629

`∑{p}[A340060(n+1)+A057428(n), #]`
-/

namespace A330488.P12985928124482689629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340060 (n + 1) + A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A330488.P12985928124482689629

/-! ## A330488.P7354391579508029401

`A340145(A340154(n+1))+A340060(n+1)`
-/

namespace A330488.P7354391579508029401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340145 (A340154 (n + 1)).toNat + A340060 (n + 1)

end

end A330488.P7354391579508029401

/-! ## A330488.P11327736309354769837

`A001414(A340060(n+1)+A057428(n))`
-/

namespace A330488.P11327736309354769837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A340060 (n + 1) + A057428 n).toNat

end

end A330488.P11327736309354769837

/-! ## A330488.P15928028737068051326

`A006530(A340060(n+1)+A260196(n+2))`
-/

namespace A330488.P15928028737068051326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340060 (n + 1) + A260196 (n + 2)).toNat

end

end A330488.P15928028737068051326

/-! ## A330488.P9661352284904930730

`A020639(A340060(n+1)+A033999(2*n+1))`
-/

namespace A330488.P9661352284904930730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A340060 (n + 1) + A033999 (2 * n + 1)).toNat

end

end A330488.P9661352284904930730

/-! ## A330488.P81745287862885484

`A000038(n)+A006530(A340060(n+1)+A057428(n))`
-/

namespace A330488.P81745287862885484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + A006530 (A340060 (n + 1) + A057428 n).toNat

end

end A330488.P81745287862885484

/-!
# A330489: a(n) is equal to a(n-1) plus (a(n-1) written in base n but interpreted in base n+1), with a(1)=1.

The programs for A330489, there is no canonical definition to state claims against.
-/

/-! ## A330489.P4204171340285169714

`A105515(A000079(n)*A294675(n+1))`
-/

namespace A330489.P4204171340285169714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (A000079 n * A294675 (n + 1)).toNat

end

end A330489.P4204171340285169714

/-! ## A330489.P13435515881946848049

`A185195(A150291(n))`
-/

namespace A330489.P13435515881946848049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A150291 n).toNat

end

end A330489.P13435515881946848049

/-! ## A330489.P11262204819848682653

`∑[A331614(A000898(n))]`
-/

namespace A330489.P11262204819848682653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331614 (A000898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330489.P11262204819848682653

/-! ## A330489.P18434577838494221558

`A055086(A022017(n+1))`
-/

namespace A330489.P18434577838494221558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A022017 (n + 1)).toNat

end

end A330489.P18434577838494221558

/-!
# A330491: Non-palindromic balanced primes in base 3.

The programs for A330491, there is no canonical definition to state claims against.
-/

/-! ## A330491.P2522650625630962075

`p?[A256083(n+1)]`
-/

namespace A330491.P2522650625630962075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330491.P2522650625630962075

/-! ## A330491.P18265991844438157976

`record[p?[A256083(A052938(n))]]`
-/

namespace A330491.P18265991844438157976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330491.P18265991844438157976

/-! ## A330491.P3768528288151007453

`∩[A122731(n+1), A256083(n+1)]`
-/

namespace A330491.P3768528288151007453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P3768528288151007453

/-! ## A330491.P15239232619901569871

`∩[A124598(n+1), A256083(n+1)]`
-/

namespace A330491.P15239232619901569871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P15239232619901569871

/-! ## A330491.P9775691927964677986

`∩[A000040(n+1), A256083(n+1)]`
-/

namespace A330491.P9775691927964677986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P9775691927964677986

/-! ## A330491.P18354514813434919247

`∩[A004139(n+1), A256083(n+1)]`
-/

namespace A330491.P18354514813434919247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P18354514813434919247

/-! ## A330491.P4351850952769569939

`∩[A006005(n+1), A256083(n+1)]`
-/

namespace A330491.P4351850952769569939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P4351850952769569939

/-! ## A330491.P18009555857766832854

`∩[A008578(n+1), A256083(n+1)]`
-/

namespace A330491.P18009555857766832854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P18009555857766832854

/-! ## A330491.P14268669397520136687

`∩[A045319(n+1), A256083(n+1)]`
-/

namespace A330491.P14268669397520136687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P14268669397520136687

/-! ## A330491.P18352741655376799601

`∩[A045344(n+1), A256083(n+1)]`
-/

namespace A330491.P18352741655376799601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P18352741655376799601

/-! ## A330491.P14973697289098717766

`∩[A046022(n+1), A256083(n+1)]`
-/

namespace A330491.P14973697289098717766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P14973697289098717766

/-! ## A330491.P10129156073723922424

`∩[A054723(n+1), A256083(n+1)]`
-/

namespace A330491.P10129156073723922424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P10129156073723922424

/-! ## A330491.P11720886054056297355

`∩[A065091(n+1), A256083(n+1)]`
-/

namespace A330491.P11720886054056297355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P11720886054056297355

/-! ## A330491.P15040830510834895689

`∩[A065396(n+1), A256083(n+1)]`
-/

namespace A330491.P15040830510834895689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P15040830510834895689

/-! ## A330491.P12226116966908448117

`∩[A078132(n+1), A256083(n+1)]`
-/

namespace A330491.P12226116966908448117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P12226116966908448117

/-! ## A330491.P6744458191517568697

`∩[A087490(n+1), A256083(n+1)]`
-/

namespace A330491.P6744458191517568697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P6744458191517568697

/-! ## A330491.P15554110541147909839

`∩[A122259(n+1), A256083(n+1)]`
-/

namespace A330491.P15554110541147909839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P15554110541147909839

/-! ## A330491.P12795079344137489531

`∩[A178456(n+1), A256083(n+1)]`
-/

namespace A330491.P12795079344137489531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P12795079344137489531

/-! ## A330491.P15788772600113200885

`∩[A256083(n+1), A316971(n+1)]`
-/

namespace A330491.P15788772600113200885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P15788772600113200885

/-! ## A330491.P5287323369690176747

`∩[A256083(n+1), A318158(n+1)]`
-/

namespace A330491.P5287323369690176747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330491.P5287323369690176747

/-!
# A330492: a(n) = sum of second differences of the sorted divisors of n.

The programs for A330492, there is no canonical definition to state claims against.
-/

/-! ## A330492.P11606559647354625525

`Δ[A101505(n+2)]-1`
-/

namespace A330492.P11606559647354625525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A330492.P11606559647354625525

/-! ## A330492.P1736212830168641607

`2-A064916(n+2)+n`
-/

namespace A330492.P1736212830168641607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A064916 (n + 2) + (n : ℤ)

end

end A330492.P1736212830168641607

/-! ## A330492.P8700466226374656201

`3-A111234(n+2)+n`
-/

namespace A330492.P8700466226374656201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A111234 (n + 2) + (n : ℤ)

end

end A330492.P8700466226374656201

/-! ## A330492.P11214842995557736793

`A046666(n+2)-A089196(n+1)`
-/

namespace A330492.P11214842995557736793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2) - A089196 (n + 1)

end

end A330492.P11214842995557736793

/-! ## A330492.P5804442941201114763

`A060681(n+2)-A057237(n+2)`
-/

namespace A330492.P5804442941201114763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) - A057237 (n + 2)

end

end A330492.P5804442941201114763

/-! ## A330492.P647116732116839223

`A060681(n+2)+1-A020639(n+2)`
-/

namespace A330492.P647116732116839223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) + (1 - A020639 (n + 2))

end

end A330492.P647116732116839223

/-! ## A330492.P12162232903991845319

`(A032742(n+2)-1)*A057237(n+2)`
-/

namespace A330492.P12162232903991845319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 2) - 1) * A057237 (n + 2)

end

end A330492.P12162232903991845319

/-! ## A330492.P5901073361843726102

`2-A070935(n+2)%A087349(n+1)+n`
-/

namespace A330492.P5901073361843726102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A070935 (n + 2)) (A087349 (n + 1)) + (n : ℤ)

end

end A330492.P5901073361843726102

/-! ## A330492.P9811496135522594542

`A060681(n+2)-A000010(A020639(n+2))`
-/

namespace A330492.P9811496135522594542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) - A000010 (A020639 (n + 2)).toNat

end

end A330492.P9811496135522594542

/-! ## A330492.P8863947138778717595

`A020639(n+2)*A089196(n+1)-A089196(n+1)`
-/

namespace A330492.P8863947138778717595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A089196 (n + 1) - A089196 (n + 1)

end

end A330492.P8863947138778717595

/-! ## A330492.P12697993179955866808

`A323071(n+2)*A339913(n+2)-A020639(n+2)`
-/

namespace A330492.P12697993179955866808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323071 (n + 2) * A339913 (n + 2) - A020639 (n + 2)

end

end A330492.P12697993179955866808

/-! ## A330492.P11901031873006845305

`A046666(n+2)-A046666(n+2)/A020639(n+2)`
-/

namespace A330492.P11901031873006845305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (n + 2) : ℚ) - (A046666 (n + 2) : ℚ) / (A020639 (n + 2) : ℚ)

end

end A330492.P11901031873006845305

/-! ## A330492.P6489076965437778911

`A060681(n+2)-A060681(n+2)/A032742(n+2)`
-/

namespace A330492.P6489076965437778911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060681 (n + 2) : ℚ) - (A060681 (n + 2) : ℚ) / (A032742 (n + 2) : ℚ)

end

end A330492.P6489076965437778911

/-! ## A330492.P6116109214049234502

`A089196(n+1)/A032742(n+2)*A060681(n+2)`
-/

namespace A330492.P6116109214049234502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089196 (n + 1) : ℚ) / (A032742 (n + 2) : ℚ) * (A060681 (n + 2) : ℚ)

end

end A330492.P6116109214049234502

/-! ## A330492.P12695122906546505452

`lcm(A057237(n+2), A220096(n+2))-A057237(n+2)`
-/

namespace A330492.P12695122906546505452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057237 (n + 2)) (A220096 (n + 2)) : ℤ) - A057237 (n + 2)

end

end A330492.P12695122906546505452

/-!
# A330493: a(n) = Sum_{k=1..n} (-1)^(n-k) * Stirling1(n,k) * (k-1)! * tau(k), where tau = A000005.

The programs for A330493, there is no canonical definition to state claims against.
-/

/-! ## A330493.P11788906361945622276

`A099802(A000891(n))`
-/

namespace A330493.P11788906361945622276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A000891 n).toNat

end

end A330493.P11788906361945622276

/-!
# A330494: a(n) = Sum_{k=1..n} (-1)^(n-k) * Stirling1(n,k) * (k-1)! * sigma(k), where sigma = A000203.

The programs for A330494, there is no canonical definition to state claims against.
-/

/-! ## A330494.P10377567365175642723

`A094520(∑[A006388(n)]²)`
-/

namespace A330494.P10377567365175642723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094520 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A330494.P10377567365175642723

/-!
# A330495: a(n) = Sum_{k=1..n} (-1)^(n-k) * Stirling1(n,k) * (k-1)! * sigma_2(k), where sigma_2 = A001157.

The programs for A330495, there is no canonical definition to state claims against.
-/

/-! ## A330495.P9318430939989965369

`floor((A080765(10^n)+n)/4)`
-/

namespace A330495.P9318430939989965369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080765 (10 ^ n) + (n : ℤ) : ℚ) / 4⌋

end

end A330495.P9318430939989965369

/-!
# A330497: a(n) = n! * Sum_{k=0..n} (-1)^k * binomial(n,k) * n^(n - k) / k!.

The programs for A330497, there is no canonical definition to state claims against.
-/

/-! ## A330497.P3055382332065143002

`A216806(A132209(n))`
-/

namespace A330497.P3055382332065143002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A132209 n).toNat

end

end A330497.P3055382332065143002

/-!
# A330498: Expansion of e.g.f. Sum_{k>=1} log(1 + log(1/(1 - x))^k) / k.

The programs for A330498, there is no canonical definition to state claims against.
-/

/-! ## A330498.P7618724397003476541

`A186646(A205502(n))-A155112(n)`
-/

namespace A330498.P7618724397003476541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (A205502 n).toNat - A155112 n

end

end A330498.P7618724397003476541

/-! ## A330498.P7218582656442663324

`A005100(A076320(n+1))-A293734(n)`
-/

namespace A330498.P7218582656442663324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A076320 (n + 1)).toNat - A293734 n

end

end A330498.P7218582656442663324

/-! ## A330498.P15755724578539928450

`A325628(A335780(n+1))+A159602(n)-A155112(n)`
-/

namespace A330498.P15755724578539928450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325628 (A335780 (n + 1)).toNat + A159602 n - A155112 n

end

end A330498.P15755724578539928450

/-!
# A330499: Expansion of e.g.f. Sum_{k>=1} log(1 + log(1/(1 - x))^k).

The programs for A330499, there is no canonical definition to state claims against.
-/

/-! ## A330499.P769155364462438521

`A281668(A293076(n))`
-/

namespace A330499.P769155364462438521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281668 (A293076 n).toNat

end

end A330499.P769155364462438521

/-! ## A330499.P11625623355295079893

`A281668(A130624(n)+1)`
-/

namespace A330499.P11625623355295079893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281668 (A130624 n + 1).toNat

end

end A330499.P11625623355295079893

