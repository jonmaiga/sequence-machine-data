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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A138501: Expansion of (eta(q)^2 * eta(q^4)^4 / eta(q^2)^3)^2 in powers of q.

The programs for A138501, the canonical program `A138501.P13350798590411214149` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138501 has offset 1).

The definition of A138501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138501.P13350798590411214149

`(-1)^n*A050470(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138501

/-- `(-1)^n*A050470(n+1)` -/
def P13350798590411214149.Spec : Prop :=
  ∀ n, P13350798590411214149.a n = A138501 (n + 1)

theorem P13350798590411214149.correct : P13350798590411214149.Spec := by
  intro n
  simp only [A138501, Nat.add_sub_cancel]

end A138501

/-! ## A138501.P16152474545344126502

`A050470(n+1)/A033999(n)`
-/

namespace A138501.P16152474545344126502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050470 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A138501.P16152474545344126502

namespace A138501

/-- `A050470(n+1)/A033999(n)` -/
def P16152474545344126502.Spec : Prop :=
  ∀ n, P16152474545344126502.a n = (A138501 (n + 1) : ℚ)

end A138501

/-! ## A138501.P9869939665377306186

`A050470(n+1)/A121373(gcd(n+1, 2*n))`
-/

namespace A138501.P9869939665377306186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050470 (n + 1) : ℚ) / (A121373 (Nat.gcd (n + 1) (2 * n)) : ℚ)

end

end A138501.P9869939665377306186

namespace A138501

/-- `A050470(n+1)/A121373(gcd(n+1, 2*n))` -/
def P9869939665377306186.Spec : Prop :=
  ∀ n, P9869939665377306186.a n = (A138501 (n + 1) : ℚ)

end A138501

/-! ## A138501.P10596597762691535780

`∑{d}[n+1, A002654(#)*A338547((n+1)/#)]`
-/

namespace A138501.P10596597762691535780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A338547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138501.P10596597762691535780

namespace A138501

/-- `∑{d}[n+1, A002654(#)*A338547((n+1)/#)]` -/
def P10596597762691535780.Spec : Prop :=
  ∀ n, P10596597762691535780.a n = A138501 (n + 1)

end A138501

/-! ## A138501.P15238333539204806720

`∑{d}[n+1, A275966(#)*A321543((n+1)/#)]`
-/

namespace A138501.P15238333539204806720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275966 d * A321543 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138501.P15238333539204806720

namespace A138501

/-- `∑{d}[n+1, A275966(#)*A321543((n+1)/#)]` -/
def P15238333539204806720.Spec : Prop :=
  ∀ n, P15238333539204806720.a n = A138501 (n + 1)

end A138501

/-! ## A138501.P15707677672140880315

`∑{d}[n+1, A056594(#-1)*A162395((n+1)/#)]`
-/

namespace A138501.P15707677672140880315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138501.P15707677672140880315

namespace A138501

/-- `∑{d}[n+1, A056594(#-1)*A162395((n+1)/#)]` -/
def P15707677672140880315.Spec : Prop :=
  ∀ n, P15707677672140880315.a n = A138501 (n + 1)

end A138501

/-! ## A138501.P18253771835713003697

`A050470(n+1)*A120030(n)/A138504(n)`
-/

namespace A138501.P18253771835713003697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050470 (n + 1) * A120030 n : ℚ) / (A138504 n : ℚ)

end

end A138501.P18253771835713003697

namespace A138501

/-- `A050470(n+1)*A120030(n)/A138504(n)` -/
def P18253771835713003697.Spec : Prop :=
  ∀ n, P18253771835713003697.a n = (A138501 (n + 1) : ℚ)

end A138501

/-! ## A138501.P309265264348134479

`A050470(n+1)*A056594(2*n)`
-/

namespace A138501.P309265264348134479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) * A056594 (2 * n)

end

end A138501.P309265264348134479

namespace A138501

/-- `A050470(n+1)*A056594(2*n)` -/
def P309265264348134479.Spec : Prop :=
  ∀ n, P309265264348134479.a n = A138501 (n + 1)

end A138501

/-! ## A138501.P6563309002964138278

`A050470(n+1)*A101455(2*n+1)`
-/

namespace A138501.P6563309002964138278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) * A101455 (2 * n + 1)

end

end A138501.P6563309002964138278

namespace A138501

/-- `A050470(n+1)*A101455(2*n+1)` -/
def P6563309002964138278.Spec : Prop :=
  ∀ n, P6563309002964138278.a n = A138501 (n + 1)

end A138501

/-! ## A138501.P17278838908823701908

`∑{#}[n, A246953(#)*A246953(n-#)]`
-/

namespace A138501.P17278838908823701908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A246953 k * A246953 (n - k)

end

end A138501.P17278838908823701908

namespace A138501

/-- `∑{#}[n, A246953(#)*A246953(n-#)]` -/
def P17278838908823701908.Spec : Prop :=
  ∀ n, P17278838908823701908.a n = A138501 (n + 1)

end A138501

/-!
# A138502: Expansion of q^(-1/2) * (eta(q)^4 * eta(q^4)^2 / eta(q^2)^3)^2 in powers of q.

The programs for A138502, the canonical program `A138502.P2698045557476506495` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138502 has offset 0).

The definition of A138502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138502.P8117851571656354677

`(-1)^n*A122854(n)`
-/

namespace A138502.P8117851571656354677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122854 n

end

end A138502.P8117851571656354677

namespace A138502

/-- `(-1)^n*A122854(n)` -/
def P8117851571656354677.Spec : Prop :=
  ∀ n, P8117851571656354677.a n = A138502 n

end A138502

/-! ## A138502.P2698045557476506495

`A002173(2*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138502

/-- `A002173(2*n+1)` -/
def P2698045557476506495.Spec : Prop :=
  ∀ n, P2698045557476506495.a n = A138502 n

theorem P2698045557476506495.correct : P2698045557476506495.Spec := by
  intro n
  simp only [A138502]

end A138502

/-! ## A138502.P9147797907399435547

`A120030(n)*A122854(n)/A138504(n)`
-/

namespace A138502.P9147797907399435547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120030 n * A122854 n : ℚ) / (A138504 n : ℚ)

end

end A138502.P9147797907399435547

namespace A138502

/-- `A120030(n)*A122854(n)/A138504(n)` -/
def P9147797907399435547.Spec : Prop :=
  ∀ n, P9147797907399435547.a n = (A138502 n : ℚ)

end A138502

/-! ## A138502.P16310015196097853457

`A138505(Δ[n²])`
-/

namespace A138502.P16310015196097853457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138505 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138502.P16310015196097853457

namespace A138502

/-- `A138505(Δ[n²])` -/
def P16310015196097853457.Spec : Prop :=
  ∀ n, P16310015196097853457.a n = A138502 n

end A138502

/-! ## A138502.P9474971927293985762

`A138504(2*n+1)/4`
-/

namespace A138502.P9474971927293985762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138504 (2 * n + 1) : ℚ) / 4

end

end A138502.P9474971927293985762

namespace A138502

/-- `A138504(2*n+1)/4` -/
def P9474971927293985762.Spec : Prop :=
  ∀ n, P9474971927293985762.a n = (A138502 n : ℚ)

end A138502

/-! ## A138502.P13664859029878514548

`ceil(A138504(n+1+n)/4)`
-/

namespace A138502.P13664859029878514548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138504 (n + 1 + n) : ℚ) / 4⌉

end

end A138502.P13664859029878514548

namespace A138502

/-- `ceil(A138504(n+1+n)/4)` -/
def P13664859029878514548.Spec : Prop :=
  ∀ n, P13664859029878514548.a n = A138502 n

end A138502

/-! ## A138502.P15763483015044259472

`A033999(n)*A050470(2*n+1)`
-/

namespace A138502.P15763483015044259472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A050470 (2 * n + 1)

end

end A138502.P15763483015044259472

namespace A138502

/-- `A033999(n)*A050470(2*n+1)` -/
def P15763483015044259472.Spec : Prop :=
  ∀ n, P15763483015044259472.a n = A138502 n

end A138502

/-! ## A138502.P17330309813712889815

`A033999(n)*A138501(2*n+1)`
-/

namespace A138502.P17330309813712889815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138501 (2 * n + 1)

end

end A138502.P17330309813712889815

namespace A138502

/-- `A033999(n)*A138501(2*n+1)` -/
def P17330309813712889815.Spec : Prop :=
  ∀ n, P17330309813712889815.a n = A138502 n

end A138502

/-! ## A138502.P16614980891766721079

`A050458(2*n+1)*A056594(2*n)`
-/

namespace A138502.P16614980891766721079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050458 (2 * n + 1) * A056594 (2 * n)

end

end A138502.P16614980891766721079

namespace A138502

/-- `A050458(2*n+1)*A056594(2*n)` -/
def P16614980891766721079.Spec : Prop :=
  ∀ n, P16614980891766721079.a n = A138502 n

end A138502

/-! ## A138502.P13862856959523428389

`A050470(2*n+1)*A056594(2*n)`
-/

namespace A138502.P13862856959523428389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (2 * n + 1) * A056594 (2 * n)

end

end A138502.P13862856959523428389

namespace A138502

/-- `A050470(2*n+1)*A056594(2*n)` -/
def P13862856959523428389.Spec : Prop :=
  ∀ n, P13862856959523428389.a n = A138502 n

end A138502

/-! ## A138502.P13052671539701587592

`A050450(2*n+1)-A050453(2*n+1)`
-/

namespace A138502.P13052671539701587592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050450 (2 * n + 1) - A050453 (2 * n + 1)

end

end A138502.P13052671539701587592

namespace A138502

/-- `A050450(2*n+1)-A050453(2*n+1)` -/
def P13052671539701587592.Spec : Prop :=
  ∀ n, P13052671539701587592.a n = A138502 n

end A138502

/-! ## A138502.P1633528575621869780

`A050458(2*n+1)*A101455(2*n+1)`
-/

namespace A138502.P1633528575621869780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050458 (2 * n + 1) * A101455 (2 * n + 1)

end

end A138502.P1633528575621869780

namespace A138502

/-- `A050458(2*n+1)*A101455(2*n+1)` -/
def P1633528575621869780.Spec : Prop :=
  ∀ n, P1633528575621869780.a n = A138502 n

end A138502

/-! ## A138502.P12576217615505745485

`A050470(2*n+1)*A101455(2*n+1)`
-/

namespace A138502.P12576217615505745485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (2 * n + 1) * A101455 (2 * n + 1)

end

end A138502.P12576217615505745485

namespace A138502

/-- `A050470(2*n+1)*A101455(2*n+1)` -/
def P12576217615505745485.Spec : Prop :=
  ∀ n, P12576217615505745485.a n = A138502 n

end A138502

/-! ## A138502.P11520683381776181645

`∑{#}[n, A246954(#)*A246954(n-#)]`
-/

namespace A138502.P11520683381776181645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A246954 k * A246954 (n - k)

end

end A138502.P11520683381776181645

namespace A138502

/-- `∑{#}[n, A246954(#)*A246954(n-#)]` -/
def P11520683381776181645.Spec : Prop :=
  ∀ n, P11520683381776181645.a n = A138502 n

end A138502

/-!
# A138503: a(n) = Sum_{d|n} (-1)^(d-1)*d^3.

The programs for A138503, the canonical program `A138503.P12556879654800362698` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138503 has offset 1).

The definition of A138503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138503.P12078473571380298350

`∑{d}[n+1, (-1)^(#-1)*#^3]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138503.P12078473571380298350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ ((d : ℤ) - 1 : ℤ) * (d ^ 3 : ℚ)

end

end A138503.P12078473571380298350

namespace A138503

/-- `∑{d}[n+1, (-1)^(#-1)*#^3]` -/
def P12078473571380298350.Spec : Prop :=
  ∀ n, P12078473571380298350.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P12556879654800362698

`(-1)^n*A008457(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138503

/-- `(-1)^n*A008457(n+1)` -/
def P12556879654800362698.Spec : Prop :=
  ∀ n, P12556879654800362698.a n = A138503 (n + 1)

theorem P12556879654800362698.correct : P12556879654800362698.Spec := by
  intro n
  simp only [A138503, Nat.add_sub_cancel]

end A138503

/-! ## A138503.P6102107756196882292

`A008457(n+1)/(-1)^n`
-/

namespace A138503.P6102107756196882292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A138503.P6102107756196882292

namespace A138503

/-- `A008457(n+1)/(-1)^n` -/
def P6102107756196882292.Spec : Prop :=
  ∀ n, P6102107756196882292.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P16680104835589634734

`A008457(n+1)*A033999(n)`
-/

namespace A138503.P16680104835589634734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008457 (n + 1) * A033999 n

end

end A138503.P16680104835589634734

namespace A138503

/-- `A008457(n+1)*A033999(n)` -/
def P16680104835589634734.Spec : Prop :=
  ∀ n, P16680104835589634734.a n = A138503 (n + 1)

theorem P16680104835589634734.correct : P16680104835589634734.Spec := by
  intro n
  simp only [A138503, Nat.add_sub_cancel, A138503.P16680104835589634734.a, A138503.P12556879654800362698.a, A008457, A008457.P5125644175477456083.f1, A008457.P5125644175477456083.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138503

/-! ## A138503.P481527164909954443

`2*A051000(n+1)-A001158(n+1)`
-/

namespace A138503.P481527164909954443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051000 (n + 1) - A001158 (n + 1)

end

end A138503.P481527164909954443

namespace A138503

/-- `2*A051000(n+1)-A001158(n+1)` -/
def P481527164909954443.Spec : Prop :=
  ∀ n, P481527164909954443.a n = A138503 (n + 1)

end A138503

/-! ## A138503.P16686686560802738973

`(2-A318935(n+1))*A051000(n+1)`
-/

namespace A138503.P16686686560802738973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A318935 (n + 1)) * A051000 (n + 1)

end

end A138503.P16686686560802738973

namespace A138503

/-- `(2-A318935(n+1))*A051000(n+1)` -/
def P16686686560802738973.Spec : Prop :=
  ∀ n, P16686686560802738973.a n = A138503 (n + 1)

end A138503

/-! ## A138503.P9501896122362194348

`A035016(n+1)/A035016(gcd(n, n+1))`
-/

namespace A138503.P9501896122362194348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 (n + 1) : ℚ) / (A035016 (Nat.gcd n (n + 1)) : ℚ)

end

end A138503.P9501896122362194348

namespace A138503

/-- `A035016(n+1)/A035016(gcd(n, n+1))` -/
def P9501896122362194348.Spec : Prop :=
  ∀ n, P9501896122362194348.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P13908506572517551589

`A008457(n+1)/A000143(n)*A035016(n)`
-/

namespace A138503.P13908506572517551589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) : ℚ) / (A000143 n : ℚ) * (A035016 n : ℚ)

end

end A138503.P13908506572517551589

namespace A138503

/-- `A008457(n+1)/A000143(n)*A035016(n)` -/
def P13908506572517551589.Spec : Prop :=
  ∀ n, P13908506572517551589.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P4279901238470392193

`2*A001158(A000265(n+1))-A001158(n+1)`
-/

namespace A138503.P4279901238470392193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001158 (A000265 (n + 1)).toNat - A001158 (n + 1)

end

end A138503.P4279901238470392193

namespace A138503

/-- `2*A001158(A000265(n+1))-A001158(n+1)` -/
def P4279901238470392193.Spec : Prop :=
  ∀ n, P4279901238470392193.a n = A138503 (n + 1)

end A138503

/-! ## A138503.P4080498134018815291

`A008457(n+1)*A064027(n+1)/A321543(n+1)`
-/

namespace A138503.P4080498134018815291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) * A064027 (n + 1) : ℚ) / (A321543 (n + 1) : ℚ)

end

end A138503.P4080498134018815291

namespace A138503

/-- `A008457(n+1)*A064027(n+1)/A321543(n+1)` -/
def P4080498134018815291.Spec : Prop :=
  ∀ n, P4080498134018815291.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P3178245106697231071

`A035016(n+1)/A035016(A000593(xor(n, n+1)+1))`
-/

namespace A138503.P3178245106697231071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 (n + 1) : ℚ) / (A035016 (A000593 (Nat.xor n (n + 1) + 1)).toNat : ℚ)

end

end A138503.P3178245106697231071

namespace A138503

/-- `A035016(n+1)/A035016(A000593(xor(n, n+1)+1))` -/
def P3178245106697231071.Spec : Prop :=
  ∀ n, P3178245106697231071.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P12790898607288189411

`A007331(2*n+1)/A035016(2*n+1)*A035016(n+1)`
-/

namespace A138503.P12790898607288189411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 (2 * n + 1) : ℚ) / (A035016 (2 * n + 1) : ℚ) * (A035016 (n + 1) : ℚ)

end

end A138503.P12790898607288189411

namespace A138503

/-- `A007331(2*n+1)/A035016(2*n+1)*A035016(n+1)` -/
def P12790898607288189411.Spec : Prop :=
  ∀ n, P12790898607288189411.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P242125122360525075

`A008457(2*n+1)/A035016(2*n+1)*A035016(n+1)`
-/

namespace A138503.P242125122360525075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (2 * n + 1) : ℚ) / (A035016 (2 * n + 1) : ℚ) * (A035016 (n + 1) : ℚ)

end

end A138503.P242125122360525075

namespace A138503

/-- `A008457(2*n+1)/A035016(2*n+1)*A035016(n+1)` -/
def P242125122360525075.Spec : Prop :=
  ∀ n, P242125122360525075.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P11009455354101613265

`A008457(n+1)/A224364(n)*A281683(n)`
-/

namespace A138503.P11009455354101613265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) : ℚ) / (A224364 n : ℚ) * (A281683 n : ℚ)

end

end A138503.P11009455354101613265

namespace A138503

/-- `A008457(n+1)/A224364(n)*A281683(n)` -/
def P11009455354101613265.Spec : Prop :=
  ∀ n, P11009455354101613265.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P8088710431970787807

`A002408(2*n+1)/A035016(2*n+1)*A035016(n+1)`
-/

namespace A138503.P8088710431970787807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002408 (2 * n + 1) : ℚ) / (A035016 (2 * n + 1) : ℚ) * (A035016 (n + 1) : ℚ)

end

end A138503.P8088710431970787807

namespace A138503

/-- `A002408(2*n+1)/A035016(2*n+1)*A035016(n+1)` -/
def P8088710431970787807.Spec : Prop :=
  ∀ n, P8088710431970787807.a n = (A138503 (n + 1) : ℚ)

end A138503

/-! ## A138503.P11804381468231800478

`A008430(∑[n])/A035016(n)`
-/

namespace A138503.P11804381468231800478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008430 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A035016 n : ℚ)

end

end A138503.P11804381468231800478

namespace A138503

/-- `A008430(∑[n])/A035016(n)` -/
def P11804381468231800478.Spec : Prop :=
  ∀ n, P11804381468231800478.a n = (A138503 (n + 1) : ℚ)

end A138503

/-!
# A138504: Expansion of (eta(q^2)^9 / (eta(q)^2 * eta(q^4)^4))^2 in powers of q.

The programs for A138504, there is no canonical definition to state claims against.
-/

/-! ## A138504.P4427144850252959172

`(-1)^n*A120030(n)`
-/

namespace A138504.P4427144850252959172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A120030 n

end

end A138504.P4427144850252959172

/-! ## A138504.P1263717564632361581

`A120030(n)/A033999(n)`
-/

namespace A138504.P1263717564632361581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120030 n : ℚ) / (A033999 n : ℚ)

end

end A138504.P1263717564632361581

/-! ## A138504.P435518126421878242

`A120030(n)*A152163(Δ[A004526(n)])`
-/

namespace A138504.P435518126421878242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120030 n * A152163 (f1 (n + 1) - f1 n).toNat

end

end A138504.P435518126421878242

/-! ## A138504.P10813830368065150195

`A120030(n)/A056594(2*n)`
-/

namespace A138504.P10813830368065150195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120030 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A138504.P10813830368065150195

/-! ## A138504.P7450065304549394379

`A120030(n)/A099443(A016873(n))`
-/

namespace A138504.P7450065304549394379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120030 n : ℚ) / (A099443 (A016873 n).toNat : ℚ)

end

end A138504.P7450065304549394379

/-! ## A138504.P3577858253725235812

`A014972(n)*A120030(n)/A128692(n)`
-/

namespace A138504.P3577858253725235812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 n * A120030 n : ℚ) / (A128692 n : ℚ)

end

end A138504.P3577858253725235812

/-! ## A138504.P16333292813362470232

`A014972(n+1)*A120030(n)/A115977(n+1)`
-/

namespace A138504.P16333292813362470232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 (n + 1) * A120030 n : ℚ) / (A115977 (n + 1) : ℚ)

end

end A138504.P16333292813362470232

/-! ## A138504.P7773842176106287594

`∑{#}[n, A319078(#)*A319078(n-#)]`
-/

namespace A138504.P7773842176106287594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A319078 k * A319078 (n - k)

end

end A138504.P7773842176106287594

/-!
# A138505: Expansion of ((phi(q) * phi(-q^2)^2)^2 - 1) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A138505, the canonical program `A138505.P14452217802365060205` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138505 has offset 1).

The definition of A138505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138505.P14452217802365060205

`(-1)^n*A002173(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138505

/-- `(-1)^n*A002173(n+1)` -/
def P14452217802365060205.Spec : Prop :=
  ∀ n, P14452217802365060205.a n = A138505 (n + 1)

theorem P14452217802365060205.correct : P14452217802365060205.Spec := by
  intro n
  simp only [A138505, Nat.add_sub_cancel]

end A138505

/-! ## A138505.P6950820048972366580

`A138504(n+1)/4`
-/

namespace A138505.P6950820048972366580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138504 (n + 1) : ℚ) / 4

end

end A138505.P6950820048972366580

namespace A138505

/-- `A138504(n+1)/4` -/
def P6950820048972366580.Spec : Prop :=
  ∀ n, P6950820048972366580.a n = (A138505 (n + 1) : ℚ)

end A138505

/-! ## A138505.P16172487415259507755

`A002173(n+1)*A033999(n)`
-/

namespace A138505.P16172487415259507755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A033999 n

end

end A138505.P16172487415259507755

namespace A138505

/-- `A002173(n+1)*A033999(n)` -/
def P16172487415259507755.Spec : Prop :=
  ∀ n, P16172487415259507755.a n = A138505 (n + 1)

theorem P16172487415259507755.correct : P16172487415259507755.Spec := by
  intro n
  simp only [A138505, Nat.add_sub_cancel, A138505.P16172487415259507755.a, A138505.P14452217802365060205.a, A002173, A002173.P7206352416500240550.a, A033999, A033999.P17703899380244199787.a, A050450, A050450.P4021675749699126775.a, A050453, A050453.P6605765519543064582.f1, A050453.P6605765519543064582.a, A050999, A050999.P18306880422002560695.a, A062828, A062828.P6719252676437091402.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138505

/-! ## A138505.P229199504466697676

`A002173(n+1)*A122854(n)/A138502(n)`
-/

namespace A138505.P229199504466697676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002173 (n + 1) * A122854 n : ℚ) / (A138502 n : ℚ)

end

end A138505.P229199504466697676

namespace A138505

/-- `A002173(n+1)*A122854(n)/A138502(n)` -/
def P229199504466697676.Spec : Prop :=
  ∀ n, P229199504466697676.a n = (A138505 (n + 1) : ℚ)

end A138505

/-! ## A138505.P5991948580251043067

`A002173(n+1)/A033999(n)^A134204(n)`
-/

namespace A138505.P5991948580251043067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002173 (n + 1) : ℚ) / (A033999 n : ℚ) ^ (A134204 n : ℤ)

end

end A138505.P5991948580251043067

namespace A138505

/-- `A002173(n+1)/A033999(n)^A134204(n)` -/
def P5991948580251043067.Spec : Prop :=
  ∀ n, P5991948580251043067.a n = (A138505 (n + 1) : ℚ)

end A138505

/-! ## A138505.P7975534451777815648

`A002173(n+1)/A033999(n)^A339969(n)`
-/

namespace A138505.P7975534451777815648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002173 (n + 1) : ℚ) / (A033999 n : ℚ) ^ (A339969 n : ℤ)

end

end A138505.P7975534451777815648

namespace A138505

/-- `A002173(n+1)/A033999(n)^A339969(n)` -/
def P7975534451777815648.Spec : Prop :=
  ∀ n, P7975534451777815648.a n = (A138505 (n + 1) : ℚ)

end A138505

/-! ## A138505.P4271416745887221239

`A002173(n+1)/A033999(n+2)`
-/

namespace A138505.P4271416745887221239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002173 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A138505.P4271416745887221239

namespace A138505

/-- `A002173(n+1)/A033999(n+2)` -/
def P4271416745887221239.Spec : Prop :=
  ∀ n, P4271416745887221239.a n = (A138505 (n + 1) : ℚ)

end A138505

/-! ## A138505.P11121960032707646523

`A002173(n+1)*A056594(2*n)`
-/

namespace A138505.P11121960032707646523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A056594 (2 * n)

end

end A138505.P11121960032707646523

namespace A138505

/-- `A002173(n+1)*A056594(2*n)` -/
def P11121960032707646523.Spec : Prop :=
  ∀ n, P11121960032707646523.a n = A138505 (n + 1)

end A138505

/-! ## A138505.P18040231273459028083

`A002173(n+1)*A034947(2*n+1)`
-/

namespace A138505.P18040231273459028083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A034947 (2 * n + 1)

end

end A138505.P18040231273459028083

namespace A138505

/-- `A002173(n+1)*A034947(2*n+1)` -/
def P18040231273459028083.Spec : Prop :=
  ∀ n, P18040231273459028083.a n = A138505 (n + 1)

end A138505

/-! ## A138505.P14730631407958396501

`A002173(n+1)*A101455(2*n+1)`
-/

namespace A138505.P14730631407958396501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A101455 (2 * n + 1)

end

end A138505.P14730631407958396501

namespace A138505

/-- `A002173(n+1)*A101455(2*n+1)` -/
def P14730631407958396501.Spec : Prop :=
  ∀ n, P14730631407958396501.a n = A138505 (n + 1)

end A138505

/-! ## A138505.P12740331478768324357

`A002173(n+1)*A112299(2*n+1)`
-/

namespace A138505.P12740331478768324357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A112299 (2 * n + 1)

end

end A138505.P12740331478768324357

namespace A138505

/-- `A002173(n+1)*A112299(2*n+1)` -/
def P12740331478768324357.Spec : Prop :=
  ∀ n, P12740331478768324357.a n = A138505 (n + 1)

end A138505

/-! ## A138505.P11817988811176739816

`A002173(n+1)*A257196(2*n+1)`
-/

namespace A138505.P11817988811176739816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A257196 (2 * n + 1)

end

end A138505.P11817988811176739816

namespace A138505

/-- `A002173(n+1)*A257196(2*n+1)` -/
def P11817988811176739816.Spec : Prop :=
  ∀ n, P11817988811176739816.a n = A138505 (n + 1)

end A138505

/-! ## A138505.P2961964944745388985

`A034947(2*n+1)*A034947(n+1)*A050458(n+1)`
-/

namespace A138505.P2961964944745388985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A034947 (n + 1) * A050458 (n + 1)

end

end A138505.P2961964944745388985

namespace A138505

/-- `A034947(2*n+1)*A034947(n+1)*A050458(n+1)` -/
def P2961964944745388985.Spec : Prop :=
  ∀ n, P2961964944745388985.a n = A138505 (n + 1)

end A138505

/-! ## A138505.P3728155479607877555

`A050470(2*n+1)/A120030(2*n+1)*A120030(n+1)`
-/

namespace A138505.P3728155479607877555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050470 (2 * n + 1) : ℚ) / (A120030 (2 * n + 1) : ℚ) * (A120030 (n + 1) : ℚ)

end

end A138505.P3728155479607877555

namespace A138505

/-- `A050470(2*n+1)/A120030(2*n+1)*A120030(n+1)` -/
def P3728155479607877555.Spec : Prop :=
  ∀ n, P3728155479607877555.a n = (A138505 (n + 1) : ℚ)

end A138505

/-!
# A138506: Expansion of f(q)^5 / f(q^5) in powers of q where f() is a Ramanujan theta function.

The programs for A138506, there is no canonical definition to state claims against.
-/

/-! ## A138506.P15379615056047454771

`(-1)^n*A109064(n)`
-/

namespace A138506.P15379615056047454771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109064 n

end

end A138506.P15379615056047454771

/-! ## A138506.P275077468438059552

`A113259(A026741(n))`
-/

namespace A138506.P275077468438059552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (A026741 n).toNat

end

end A138506.P275077468438059552

/-! ## A138506.P3745919791394043846

`A113259(A106611(n))`
-/

namespace A138506.P3745919791394043846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (A106611 n).toNat

end

end A138506.P3745919791394043846

/-! ## A138506.P753208260578480401

`A109064(n)/A033999(n)`
-/

namespace A138506.P753208260578480401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 n : ℚ) / (A033999 n : ℚ)

end

end A138506.P753208260578480401

/-! ## A138506.P17800319805887934135

`A113259(gcd(n, A000217(n)))`
-/

namespace A138506.P17800319805887934135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (Int.gcd (n : ℤ) (A000217 n))

end

end A138506.P17800319805887934135

/-! ## A138506.P58272642401490202

`A109064(lcm(2, n))`
-/

namespace A138506.P58272642401490202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (Nat.lcm 2 n)

end

end A138506.P58272642401490202

/-! ## A138506.P18219581158356262083

`A109064(n*(1+n%2))`
-/

namespace A138506.P18219581158356262083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (n * (1 + n % 2))

end

end A138506.P18219581158356262083

/-! ## A138506.P11012945470476784077

`A109064(n*gcd(2, n+1))`
-/

namespace A138506.P11012945470476784077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (n * Nat.gcd 2 (n + 1))

end

end A138506.P11012945470476784077

/-! ## A138506.P10278570578075494791

`A109064(A109043(n))`
-/

namespace A138506.P10278570578075494791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (A109043 n).toNat

end

end A138506.P10278570578075494791

/-! ## A138506.P11050207545318350085

`A113259(A195140(n))`
-/

namespace A138506.P11050207545318350085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (A195140 n).toNat

end

end A138506.P11050207545318350085

/-! ## A138506.P14181882690016824892

`A109064(A109051(n))`
-/

namespace A138506.P14181882690016824892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (A109051 n).toNat

end

end A138506.P14181882690016824892

/-! ## A138506.P15461040573508083391

`A113259(A317325(n))`
-/

namespace A138506.P15461040573508083391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (A317325 n).toNat

end

end A138506.P15461040573508083391

/-!
# A138507: Expansion of (f(q)^5 / f(q^5) - 1) / 5 in powers of q where f() is a Ramanujan theta function.

The programs for A138507, the canonical program `A138507.P4063493995487370764` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138507 has offset 1).

The definition of A138507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138507.P15311377590004145494

`A138506(n+1)/5`
-/

namespace A138507.P15311377590004145494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138506 (n + 1) : ℚ) / 5

end

end A138507.P15311377590004145494

namespace A138507

/-- `A138506(n+1)/5` -/
def P15311377590004145494.Spec : Prop :=
  ∀ n, P15311377590004145494.a n = (A138507 (n + 1) : ℚ)

end A138507

/-! ## A138507.P4063493995487370764

`(-1)^n*A109091(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A138507

/-- `(-1)^n*A109091(n+1)` -/
def P4063493995487370764.Spec : Prop :=
  ∀ n, P4063493995487370764.a n = A138507 (n + 1)

theorem P4063493995487370764.correct : P4063493995487370764.Spec := by
  intro n
  simp only [A138507, Nat.add_sub_cancel]

end A138507

/-! ## A138507.P14532157741177348770

`floor(A138506(Δ[n²]-n)/5)`
-/

namespace A138507.P14532157741177348770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138506 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 5⌋

end

end A138507.P14532157741177348770

namespace A138507

/-- `floor(A138506(Δ[n²]-n)/5)` -/
def P14532157741177348770.Spec : Prop :=
  ∀ n, P14532157741177348770.a n = A138507 (n + 1)

end A138507

/-! ## A138507.P4895882339304473693

`A113260(A026741(n+1))`
-/

namespace A138507.P4895882339304473693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113260 (A026741 (n + 1)).toNat

end

end A138507.P4895882339304473693

namespace A138507

/-- `A113260(A026741(n+1))` -/
def P4895882339304473693.Spec : Prop :=
  ∀ n, P4895882339304473693.a n = A138507 (n + 1)

end A138507

/-! ## A138507.P9851287352950748969

`A109091(n+1)/A033999(n)`
-/

namespace A138507.P9851287352950748969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109091 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A138507.P9851287352950748969

namespace A138507

/-- `A109091(n+1)/A033999(n)` -/
def P9851287352950748969.Spec : Prop :=
  ∀ n, P9851287352950748969.a n = (A138507 (n + 1) : ℚ)

end A138507

/-! ## A138507.P18097723281742152448

`A109091(n+1)/A008683(2-(-1)^n)`
-/

namespace A138507.P18097723281742152448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109091 (n + 1) : ℚ) / (A008683 (2 - (-1) ^ n).toNat : ℚ)

end

end A138507.P18097723281742152448

namespace A138507

/-- `A109091(n+1)/A008683(2-(-1)^n)` -/
def P18097723281742152448.Spec : Prop :=
  ∀ n, P18097723281742152448.a n = (A138507 (n + 1) : ℚ)

end A138507

/-! ## A138507.P15113430878446360590

`A109091(n+1)/((-1)^n)%A000040(n+1)`
-/

namespace A138507.P15113430878446360590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109091 (n + 1) : ℚ) / (Int.tmod ((-1) ^ n) (A000040 (n + 1)) : ℚ)

end

end A138507.P15113430878446360590

namespace A138507

/-- `A109091(n+1)/((-1)^n)%A000040(n+1)` -/
def P15113430878446360590.Spec : Prop :=
  ∀ n, P15113430878446360590.a n = (A138507 (n + 1) : ℚ)

end A138507

/-! ## A138507.P9487481568643635920

`A113260(A106611(n+1))`
-/

namespace A138507.P9487481568643635920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113260 (A106611 (n + 1)).toNat

end

end A138507.P9487481568643635920

namespace A138507

/-- `A113260(A106611(n+1))` -/
def P9487481568643635920.Spec : Prop :=
  ∀ n, P9487481568643635920.a n = A138507 (n + 1)

end A138507

/-! ## A138507.P2747525478407534452

`A109064(lcm(2, n+1))/5`
-/

namespace A138507.P2747525478407534452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 (Nat.lcm 2 (n + 1)) : ℚ) / 5

end

end A138507.P2747525478407534452

namespace A138507

/-- `A109064(lcm(2, n+1))/5` -/
def P2747525478407534452.Spec : Prop :=
  ∀ n, P2747525478407534452.a n = (A138507 (n + 1) : ℚ)

end A138507

/-! ## A138507.P2983133600286043942

`A113260(A195140(n+1))`
-/

namespace A138507.P2983133600286043942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113260 (A195140 (n + 1)).toNat

end

end A138507.P2983133600286043942

namespace A138507

/-- `A113260(A195140(n+1))` -/
def P2983133600286043942.Spec : Prop :=
  ∀ n, P2983133600286043942.a n = A138507 (n + 1)

end A138507

/-! ## A138507.P11323058805247932559

`A113260(A317325(n+1))`
-/

namespace A138507.P11323058805247932559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113260 (A317325 (n + 1)).toNat

end

end A138507.P11323058805247932559

namespace A138507

/-- `A113260(A317325(n+1))` -/
def P11323058805247932559.Spec : Prop :=
  ∀ n, P11323058805247932559.a n = A138507 (n + 1)

end A138507

/-!
# A138508: Semiprime analog of Riesel problem: start with n; repeatedly double and add 1 until reach a semiprime. Sequence gives number of steps to reach a semiprime or 0 if no semiprime is ever reached.

The programs for A138508, there is no canonical definition to state claims against.
-/

/-! ## A138508.P9698142166961554014

`floor(log2(A189657(n))-A000523(n+1))`
-/

namespace A138508.P9698142166961554014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A189657 n : ℝ) - (A000523 (n + 1) : ℝ)⌋

end

end A138508.P9698142166961554014

/-! ## A138508.P971029408269493944

`A000120(A189657(n))-A000120(n+1)`
-/

namespace A138508.P971029408269493944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A189657 n).toNat - A000120 (n + 1)

end

end A138508.P971029408269493944

/-! ## A138508.P8577728875837689350

`A000523(A189657(n))-A000523(n+1)`
-/

namespace A138508.P8577728875837689350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A189657 n).toNat - A000523 (n + 1)

end

end A138508.P8577728875837689350

/-! ## A138508.P3970767686791886339

`A099396(A189657(n))-A099396(n+1)`
-/

namespace A138508.P3970767686791886339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (A189657 n).toNat - A099396 (n + 1)

end

end A138508.P3970767686791886339

/-!
# A138509: Janet (or left-step) periodic table from right to left. 120 terms. 8 rows, 32 columns without spaces.

The programs for A138509, there is no canonical definition to state claims against.
-/

/-! ## A138509.P10971666178788342929

`A168342(∑[log2(gcd(2, n))])-n%2`
-/

namespace A138509.P10971666178788342929
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A138509.P10971666178788342929

/-! ## A138509.P16839486202892779785

`A168342(A008619(n))-n%2`
-/

namespace A138509.P16839486202892779785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A138509.P16839486202892779785

/-! ## A138509.P1209704826993622751

`A168342(floor(n/2)+1)-A000035(n)`
-/

namespace A138509.P1209704826993622751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (⌊(n : ℚ) / 2⌋ + 1).toNat - A000035 n

end

end A138509.P1209704826993622751

/-! ## A138509.P16111727662278805558

`A168342(A008619(n))-A134452(n)²`
-/

namespace A138509.P16111727662278805558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - A134452 n ^ 2

end

end A138509.P16111727662278805558

/-! ## A138509.P4070172554648763093

`A168342(A008619(n))-log2(A000034(n))`
-/

namespace A138509.P4070172554648763093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A168342 (A008619 n).toNat : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A138509.P4070172554648763093

/-! ## A138509.P13561409741146279641

`A168342(A008619(n))-Δ[A004526(n)]`
-/

namespace A138509.P13561409741146279641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - (f1 (n + 1) - f1 n)

end

end A138509.P13561409741146279641

/-! ## A138509.P12721858426934530891

`A168342(A008619(n))-char[A005408(n)]`
-/

namespace A138509.P12721858426934530891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A138509.P12721858426934530891

/-! ## A138509.P13101807003516402537

`A168342(A008619(n))-char[A000265(n+1)]`
-/

namespace A138509.P13101807003516402537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A138509.P13101807003516402537

/-! ## A138509.P5705605933589206869

`A168342(A008619(n))-val(A020639(n+1), 2)`
-/

namespace A138509.P5705605933589206869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2 : ℤ)

end

end A138509.P5705605933589206869

/-! ## A138509.P8745221310391333695

`A168342(A008619(n))-A057979(A006519(n+1))`
-/

namespace A138509.P8745221310391333695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - A057979 (A006519 (n + 1)).toNat

end

end A138509.P8745221310391333695

/-! ## A138509.P18430653783029832302

`A168342(A008619(n))-A057979(A057979(n²))`
-/

namespace A138509.P18430653783029832302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n).toNat - A057979 (A057979 (n ^ 2)).toNat

end

end A138509.P18430653783029832302

/-!
# A138510: Smallest number b such that in base b the prime factors of the n-th semiprime (A001358) have equal lengths.

The programs for A138510, there is no canonical definition to state claims against.
-/

/-! ## A138510.P12979434939377690325

`A251725(A001358(n+1))`
-/

namespace A138510.P12979434939377690325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A001358 (n + 1)).toNat

end

end A138510.P12979434939377690325

/-! ## A138510.P6962021912081940738

`A251725(A176540(n+2))`
-/

namespace A138510.P6962021912081940738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A176540 (n + 2)).toNat

end

end A138510.P6962021912081940738

/-! ## A138510.P6179162555143330336

`A251725(eq[2, A226378(n)])`
-/

namespace A138510.P6179162555143330336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138510.P6179162555143330336

/-! ## A138510.P9780688125121952132

`A251725(sqrt(A074985(n+1)))`
-/

namespace A138510.P9780688125121952132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A138510.P9780688125121952132

/-! ## A138510.P320149562033670813

`A251725(A186621(n+1)+1)`
-/

namespace A138510.P320149562033670813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A186621 (n + 1) + 1).toNat

end

end A138510.P320149562033670813

/-! ## A138510.P12219178201497182560

`A251725(eq[2, A001222(n+1)]+1)`
-/

namespace A138510.P12219178201497182560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A138510.P12219178201497182560

/-! ## A138510.P5221291245958659469

`A251725(A175708(n+1)+n+1)`
-/

namespace A138510.P5221291245958659469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A175708 (n + 1) + (n + 1 : ℤ)).toNat

end

end A138510.P5221291245958659469

/-! ## A138510.P15898832226439452629

`A251725(A084126(n+1)*A084127(n+1))`
-/

namespace A138510.P15898832226439452629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A084126 (n + 1) * A084127 (n + 1)).toNat

end

end A138510.P15898832226439452629

/-!
# A138511: Semiprimes where the larger prime factor is greater than the square of the smaller prime factor, short: semiprimes p*q, p^2 < q.

The programs for A138511, there is no canonical definition to state claims against.
-/

/-! ## A138511.P3696041078389577174

`filter[A344180(n), A353475(#)]`
-/

namespace A138511.P3696041078389577174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P3696041078389577174

/-! ## A138511.P5483489551862132602

`filter[A001358(n+3), A353475(#)]`
-/

namespace A138511.P5483489551862132602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P5483489551862132602

/-! ## A138511.P5795014536093154485

`eq[1, A353475(n+1)]+1`
-/

namespace A138511.P5795014536093154485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138511.P5795014536093154485

/-! ## A138511.P9582940912278869836

`filter[A253569(n+1), A064911(#)]`
-/

namespace A138511.P9582940912278869836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A138511.P9582940912278869836

/-! ## A138511.P15811049007118017723

`filter[A253569(n+1), A065043(#)]`
-/

namespace A138511.P15811049007118017723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A138511.P15811049007118017723

/-! ## A138511.P6855898758984733116

`filter[A253569(n+1), A101040(#)]`
-/

namespace A138511.P6855898758984733116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A138511.P6855898758984733116

/-! ## A138511.P6276625935737376281

`filter[A253569(n+1), A123927(#)]`
-/

namespace A138511.P6276625935737376281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A138511.P6276625935737376281

/-! ## A138511.P16906732613189426050

`filter[A089995(n+1), A353475(#)]`
-/

namespace A138511.P16906732613189426050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P16906732613189426050

/-! ## A138511.P11322663276827754036

`filter[A006881(n+1), A353475(#)]`
-/

namespace A138511.P11322663276827754036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P11322663276827754036

/-! ## A138511.P13893418595990432260

`filter[A161918(n+1), A353475(#)]`
-/

namespace A138511.P13893418595990432260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P13893418595990432260

/-! ## A138511.P7637382002817761118

`filter[A068993(n+1), A353475(#)]`
-/

namespace A138511.P7637382002817761118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P7637382002817761118

/-! ## A138511.P12514878828113798469

`filter[A030513(n+1), A353475(#)]`
-/

namespace A138511.P12514878828113798469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P12514878828113798469

/-! ## A138511.P8638274330907556310

`filter[A007422(n+1), A353475(#)]`
-/

namespace A138511.P8638274330907556310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P8638274330907556310

/-! ## A138511.P13280719409422443298

`filter[A332269(n+1), A353475(#)]`
-/

namespace A138511.P13280719409422443298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P13280719409422443298

/-! ## A138511.P17050424136188451990

`A001358(eq[A084127(n+1)+1, A138510(n+1)]+1)`
-/

namespace A138511.P17050424136188451990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A138511.P17050424136188451990

/-! ## A138511.P35654571301123328

`filter[A176540(n+1), A353475(#)]`
-/

namespace A138511.P35654571301123328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P35654571301123328

/-! ## A138511.P8206443319733877836

`filter[A323644(n+1), A353475(#)]`
-/

namespace A138511.P8206443319733877836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P8206443319733877836

/-! ## A138511.P17330394229149029392

`filter[A367590(n+1), A353475(#)]`
-/

namespace A138511.P17330394229149029392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P17330394229149029392

/-! ## A138511.P11385016032651073413

`filter[A346041(n+1), A353475(#)]`
-/

namespace A138511.P11385016032651073413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P11385016032651073413

/-! ## A138511.P5327470748069516345

`filter[A085155(n+1), A353475(#)]`
-/

namespace A138511.P5327470748069516345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P5327470748069516345

/-!
# A138512: Expansion of q * f(q^5)^5 / f(q) in powers of q where f() is a Ramanujan theta function.

The programs for A138512, the canonical program `A138512.P8340756777299700199` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138512 has offset 1).

The definition of A138512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138512.P8340756777299700199

`(-1)^n*A053723(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A138512

/-- `(-1)^n*A053723(n)` -/
def P8340756777299700199.Spec : Prop :=
  ∀ n, P8340756777299700199.a n = A138512 (n + 1)

theorem P8340756777299700199.correct : P8340756777299700199.Spec := by
  intro n
  simp only [A138512, Nat.add_sub_cancel]

end A138512

/-! ## A138512.P17001966477329335735

`A053723(n)/∑[A280560(n)]`
-/

namespace A138512.P17001966477329335735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053723 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A138512.P17001966477329335735

namespace A138512

/-- `A053723(n)/∑[A280560(n)]` -/
def P17001966477329335735.Spec : Prop :=
  ∀ n, P17001966477329335735.a n = (A138512 (n + 1) : ℚ)

end A138512

/-! ## A138512.P7008497009257409088

`A053723(n)*A113185(n)/A132069(n)`
-/

namespace A138512.P7008497009257409088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053723 n * A113185 n : ℚ) / (A132069 n : ℚ)

end

end A138512.P7008497009257409088

namespace A138512

/-- `A053723(n)*A113185(n)/A132069(n)` -/
def P7008497009257409088.Spec : Prop :=
  ∀ n, P7008497009257409088.a n = (A138512 (n + 1) : ℚ)

end A138512

/-! ## A138512.P4043101374553339691

`A053723(n)*A109064(n)/A138506(n)`
-/

namespace A138512.P4043101374553339691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053723 n * A109064 n : ℚ) / (A138506 n : ℚ)

end

end A138512.P4043101374553339691

namespace A138512

/-- `A053723(n)*A109064(n)/A138506(n)` -/
def P4043101374553339691.Spec : Prop :=
  ∀ n, P4043101374553339691.a n = (A138512 (n + 1) : ℚ)

end A138512

/-! ## A138512.P14940108760595758300

`A110712(n+1)+A138483(n+1)-A053723(n)`
-/

namespace A138512.P14940108760595758300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110712 (n + 1) + (A138483 (n + 1) - A053723 n)

end

end A138512.P14940108760595758300

namespace A138512

/-- `A110712(n+1)+A138483(n+1)-A053723(n)` -/
def P14940108760595758300.Spec : Prop :=
  ∀ n, P14940108760595758300.a n = A138512 (n + 1)

end A138512

/-! ## A138512.P8341883605319566117

`A129303(n+1)+A138557(n+1)-A053723(n)`
-/

namespace A138512.P8341883605319566117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1) + (A138557 (n + 1) - A053723 n)

end

end A138512.P8341883605319566117

namespace A138512

/-- `A129303(n+1)+A138557(n+1)-A053723(n)` -/
def P8341883605319566117.Spec : Prop :=
  ∀ n, P8341883605319566117.a n = A138512 (n + 1)

end A138512

/-! ## A138512.P7645434663620550471

`-(A053723(n)*A087204(3*n+4))`
-/

namespace A138512.P7645434663620550471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A053723 n * A087204 (3 * n + 4))

end

end A138512.P7645434663620550471

namespace A138512

/-- `-(A053723(n)*A087204(3*n+4))` -/
def P7645434663620550471.Spec : Prop :=
  ∀ n, P7645434663620550471.a n = A138512 (n + 1)

end A138512

/-!
# A138513: a(n) = 8*a(n-1) - 5*a(n-2).

The programs for A138513, the canonical program `A138513.P17604297291865136125` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138513 has offset 1).

The definition of A138513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-5*a(n-2)` (program `A138513.P17604297291865136125`, by `A138513.P17604297291865136125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138513.P13173886670386507676

`ogf((1-5x)/(1-8x+5x^2))`
-/

namespace A138513.P13173886670386507676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -8, 5] n

end

end A138513.P13173886670386507676

namespace A138513

/-- `ogf((1-5x)/(1-8x+5x^2))` -/
def P13173886670386507676.Spec : Prop :=
  ∀ n, P13173886670386507676.a n = A138513 (n + 1)

end A138513

/-! ## A138513.P17604297291865136125

`8*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138513

/-- `8*a(n-1)-5*a(n-2)` -/
def P17604297291865136125.Spec : Prop :=
  ∀ n, P17604297291865136125.a n = A138513 (n + 1)

theorem P17604297291865136125.correct : P17604297291865136125.Spec := by
  intro n
  simp only [A138513, Nat.add_sub_cancel]

end A138513

/-! ## A138513.P8573849928639052390

`∑[2*A190977(n)]+1`
-/

namespace A138513.P8573849928639052390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A138513.P8573849928639052390

namespace A138513

/-- `∑[2*A190977(n)]+1` -/
def P8573849928639052390.Spec : Prop :=
  ∀ n, P8573849928639052390.a n = A138513 (n + 1)

end A138513

/-! ## A138513.P18331922526135605751

`∑[xor(2*A190977(n), A000007(n))]`
-/

namespace A138513.P18331922526135605751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A190977 n) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138513.P18331922526135605751

namespace A138513

/-- `∑[xor(2*A190977(n), A000007(n))]` -/
def P18331922526135605751.Spec : Prop :=
  ∀ n, P18331922526135605751.a n = A138513 (n + 1)

end A138513

/-! ## A138513.P10108967501539724254

`xor((A000041(n)%2)!, ∑[2*A190977(n)])`
-/

namespace A138513.P10108967501539724254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138513.P10108967501539724254

namespace A138513

/-- `xor((A000041(n)%2)!, ∑[2*A190977(n)])` -/
def P10108967501539724254.Spec : Prop :=
  ∀ n, P10108967501539724254.a n = A138513 (n + 1)

end A138513

/-! ## A138513.P8972677057931657026

`∑[2*A190977(n*a(A257170(2*n)))]` with `a(0)=1`
-/

namespace A138513.P8972677057931657026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * A190977 ((n : ℤ) * f1 (A257170 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138513.P8972677057931657026

namespace A138513

/-- `∑[2*A190977(n*a(A257170(2*n)))]` -/
def P8972677057931657026.Spec : Prop :=
  ∀ n, P8972677057931657026.a n = A138513 (n + 1)

end A138513

/-!
# A138514: Expansion of q^(-1/8) * eta(q^2)^4 / (eta(q) * eta(q^4)) in powers of q.

The programs for A138514, the canonical program `A138514.P7438257026829659494` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138514 has offset 0).

The definition of A138514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138514.P15684636165898212896

`(-1)^n*A030204(n)`
-/

namespace A138514.P15684636165898212896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030204 n

end

end A138514.P15684636165898212896

namespace A138514

/-- `(-1)^n*A030204(n)` -/
def P15684636165898212896.Spec : Prop :=
  ∀ n, P15684636165898212896.a n = A138514 n

end A138514

/-! ## A138514.P481373508706537369

`(-1)^floor((n+1)/2)*A083650(n)`
-/

namespace A138514.P481373508706537369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A083650 n : ℚ)

end

end A138514.P481373508706537369

namespace A138514

/-- `(-1)^floor((n+1)/2)*A083650(n)` -/
def P481373508706537369.Spec : Prop :=
  ∀ n, P481373508706537369.a n = (A138514 n : ℚ)

end A138514

/-! ## A138514.P9535880951900939260

`A030204(n)*A033999(n)`
-/

namespace A138514.P9535880951900939260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A033999 n

end

end A138514.P9535880951900939260

namespace A138514

/-- `A030204(n)*A033999(n)` -/
def P9535880951900939260.Spec : Prop :=
  ∀ n, P9535880951900939260.a n = A138514 n

end A138514

/-! ## A138514.P15169030127763505143

`A083650(n)*A087960(n)`
-/

namespace A138514.P15169030127763505143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 n * A087960 n

end

end A138514.P15169030127763505143

namespace A138514

/-- `A083650(n)*A087960(n)` -/
def P15169030127763505143.Spec : Prop :=
  ∀ n, P15169030127763505143.a n = A138514 n

end A138514

/-! ## A138514.P13735851206839695166

`A030204(n)*A062157(n+1)`
-/

namespace A138514.P13735851206839695166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A062157 (n + 1)

end

end A138514.P13735851206839695166

namespace A138514

/-- `A030204(n)*A062157(n+1)` -/
def P13735851206839695166.Spec : Prop :=
  ∀ n, P13735851206839695166.a n = A138514 n

end A138514

/-! ## A138514.P7438257026829659494

`2*A244526(n)-A226192(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138514

/-- `2*A244526(n)-A226192(n)` -/
def P7438257026829659494.Spec : Prop :=
  ∀ n, P7438257026829659494.a n = A138514 n

theorem P7438257026829659494.correct : P7438257026829659494.Spec := by
  intro n
  simp only [A138514]

end A138514

/-! ## A138514.P9357679669280947732

`A030204(n)*A309873(A020639(n+1))`
-/

namespace A138514.P9357679669280947732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A309873 (A020639 (n + 1)).toNat

end

end A138514.P9357679669280947732

namespace A138514

/-- `A030204(n)*A309873(A020639(n+1))` -/
def P9357679669280947732.Spec : Prop :=
  ∀ n, P9357679669280947732.a n = A138514 n

end A138514

/-! ## A138514.P8722693086416363369

`A030204(n)/A057077(A057077(n)+n)`
-/

namespace A138514.P8722693086416363369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030204 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A138514.P8722693086416363369

namespace A138514

/-- `A030204(n)/A057077(A057077(n)+n)` -/
def P8722693086416363369.Spec : Prop :=
  ∀ n, P8722693086416363369.a n = (A138514 n : ℚ)

end A138514

/-! ## A138514.P1469261815062376182

`A030204(n)*A055975(A055975(n+1)+n)`
-/

namespace A138514.P1469261815062376182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A055975 (A055975 (n + 1) + (n : ℤ)).toNat

end

end A138514.P1469261815062376182

namespace A138514

/-- `A030204(n)*A055975(A055975(n+1)+n)` -/
def P1469261815062376182.Spec : Prop :=
  ∀ n, P1469261815062376182.a n = A138514 n

end A138514

/-! ## A138514.P386710297574304413

`A030204(n)*A057077(2*n)`
-/

namespace A138514.P386710297574304413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A057077 (2 * n)

end

end A138514.P386710297574304413

namespace A138514

/-- `A030204(n)*A057077(2*n)` -/
def P386710297574304413.Spec : Prop :=
  ∀ n, P386710297574304413.a n = A138514 n

end A138514

/-! ## A138514.P6930114098458177873

`A083650(n)*A162285(2*n)`
-/

namespace A138514.P6930114098458177873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 n * A162285 (2 * n)

end

end A138514.P6930114098458177873

namespace A138514

/-- `A083650(n)*A162285(2*n)` -/
def P6930114098458177873.Spec : Prop :=
  ∀ n, P6930114098458177873.a n = A138514 n

end A138514

/-! ## A138514.P5265402634382786255

`A030204(n)*A055975(2*n+1)`
-/

namespace A138514.P5265402634382786255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A055975 (2 * n + 1)

end

end A138514.P5265402634382786255

namespace A138514

/-- `A030204(n)*A055975(2*n+1)` -/
def P5265402634382786255.Spec : Prop :=
  ∀ n, P5265402634382786255.a n = A138514 n

end A138514

/-! ## A138514.P17361935953453567994

`A244526(A017173(n))+A244526(n)`
-/

namespace A138514.P17361935953453567994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (A017173 n).toNat + A244526 n

end

end A138514.P17361935953453567994

namespace A138514

/-- `A244526(A017173(n))+A244526(n)` -/
def P17361935953453567994.Spec : Prop :=
  ∀ n, P17361935953453567994.a n = A138514 n

end A138514

/-! ## A138514.P11111956940179876030

`A030204(n)*A309873(n²+1)`
-/

namespace A138514.P11111956940179876030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A309873 (n ^ 2 + 1)

end

end A138514.P11111956940179876030

namespace A138514

/-- `A030204(n)*A309873(n²+1)` -/
def P11111956940179876030.Spec : Prop :=
  ∀ n, P11111956940179876030.a n = A138514 n

end A138514

/-!
# A138515: Expansion of q^(-1/4) * eta(q^2)^8 / (eta(q) * eta(q^4))^2 in powers of q.

The programs for A138515, there is no canonical definition to state claims against.
-/

/-! ## A138515.P1340936081591520829

`(-1)^n*A002171(n)`
-/

namespace A138515.P1340936081591520829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002171 n

end

end A138515.P1340936081591520829

/-! ## A138515.P10928232260570455061

`A002171(n)*A033999(n)`
-/

namespace A138515.P10928232260570455061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 n * A033999 n

end

end A138515.P10928232260570455061

/-! ## A138515.P3265405473235515446

`A002171(n)*A062157(n+1)`
-/

namespace A138515.P3265405473235515446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 n * A062157 (n + 1)

end

end A138515.P3265405473235515446

/-! ## A138515.P499718951513059445

`A002171(n)*A030211(n)/A134461(n)`
-/

namespace A138515.P499718951513059445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002171 n * A030211 n : ℚ) / (A134461 n : ℚ)

end

end A138515.P499718951513059445

/-! ## A138515.P13117153016000528855

`A002171(n)*A009531(A005408(n))`
-/

namespace A138515.P13117153016000528855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 n * A009531 (A005408 n).toNat

end

end A138515.P13117153016000528855

/-! ## A138515.P12345395934155827416

`A002171(n)/A062157(A008619(2*n))`
-/

namespace A138515.P12345395934155827416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002171 n : ℚ) / (A062157 (A008619 (2 * n)).toNat : ℚ)

end

end A138515.P12345395934155827416

/-! ## A138515.P799384580304251739

`A002171(n)*A056594(2*n)`
-/

namespace A138515.P799384580304251739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 n * A056594 (2 * n)

end

end A138515.P799384580304251739

/-! ## A138515.P5612724681903987873

`∑{#}[n, A138514(#)*A138514(n-#)]`
-/

namespace A138515.P5612724681903987873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A138514 k * A138514 (n - k)

end

end A138515.P5612724681903987873

/-!
# A138517: Expansion of (phi(-q^5) / phi(-q))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A138517, there is no canonical definition to state claims against.
-/

/-! ## A138517.P18114754627360368231

`record[A000034(n)*A210458(n+1)]`
-/

namespace A138517.P18114754627360368231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A210458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138517.P18114754627360368231

/-! ## A138517.P3203406411301679072

`(A060576(n+1)+1)*A228864(2*n)`
-/

namespace A138517.P3203406411301679072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060576 (n + 1) + 1) * A228864 (2 * n)

end

end A138517.P3203406411301679072

/-! ## A138517.P10265997155744057658

`record[A040000(n)*A138520(n)]`
-/

namespace A138517.P10265997155744057658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A138520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138517.P10265997155744057658

/-! ## A138517.P7548545976754803938

`A040000(n)*A138520(2*n)`
-/

namespace A138517.P7548545976754803938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A138520 (2 * n)

end

end A138517.P7548545976754803938

/-! ## A138517.P1199374210616985077

`(2-A000007(n))*A138520(2*n)`
-/

namespace A138517.P1199374210616985077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A138520 (2 * n)

end

end A138517.P1199374210616985077

/-! ## A138517.P8861589468266065558

`record[A138520(n+1)+lcm(2, A138520(n+1))]`
-/

namespace A138517.P8861589468266065558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138520 (n + 1) + (Int.lcm 2 (A138520 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138517.P8861589468266065558

/-! ## A138517.P10099381700575523962

`record[A020639(A003958(n+1))*A138520(n)]`
-/

namespace A138517.P10099381700575523962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003958 (n + 1)).toNat * A138520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138517.P10099381700575523962

/-! ## A138517.P8777236415168454700

`A020639(A003958(2*n+1))*A138520(2*n)`
-/

namespace A138517.P8777236415168454700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003958 (2 * n + 1)).toNat * A138520 (2 * n)

end

end A138517.P8777236415168454700

/-! ## A138517.P14043038190886966935

`∑{#}[n, A138526(#)*A138526(n-#)]`
-/

namespace A138517.P14043038190886966935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A138526 k * A138526 (n - k)

end

end A138517.P14043038190886966935

/-! ## A138517.P11310142246720053688

`A000122(n²)*A138520(2*n)`
-/

namespace A138517.P11310142246720053688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A138520 (2 * n)

end

end A138517.P11310142246720053688

/-!
# A138518: Expansion of (phi(-q) / phi(-q^5))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A138518, there is no canonical definition to state claims against.
-/

/-! ## A138518.P14822976688581487443

`A285349(n)-A285348(n)%A285585(n)`
-/

namespace A138518.P14822976688581487443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285349 n - Int.tmod (A285348 n) (A285585 n)

end

end A138518.P14822976688581487443

/-! ## A138518.P9018267468728988694

`∑{#}[n, A138527(#)*A138527(n-#)]`
-/

namespace A138518.P9018267468728988694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A138527 k * A138527 (n - k)

end

end A138518.P9018267468728988694

/-!
# A138519: Expansion of q * (psi(q^5) / psi(q))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A138519, there is no canonical definition to state claims against.
-/

/-! ## A138519.P5724342529225650270

`(-1)^n*A210458(n+1)`
-/

namespace A138519.P5724342529225650270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A210458 (n + 1)

end

end A138519.P5724342529225650270

/-! ## A138519.P13307364564660894451

`-A138520(n+1)`
-/

namespace A138519.P13307364564660894451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138520 (n + 1)

end

end A138519.P13307364564660894451

/-! ## A138519.P9757502970764792394

`A033999(n)*A228864(n+1)`
-/

namespace A138519.P9757502970764792394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A228864 (n + 1)

end

end A138519.P9757502970764792394

/-! ## A138519.P16225644927030122127

`A210458(n+1)/A033999(n)`
-/

namespace A138519.P16225644927030122127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210458 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A138519.P16225644927030122127

/-! ## A138519.P10046078294188459841

`A210458(n+1)/A138520(n)*A228864(n)`
-/

namespace A138519.P10046078294188459841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210458 (n + 1) : ℚ) / (A138520 n : ℚ) * (A228864 n : ℚ)

end

end A138519.P10046078294188459841

/-! ## A138519.P15289520530156384754

`A228864(n+1)/A138520(n)*A228864(n)`
-/

namespace A138519.P15289520530156384754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228864 (n + 1) : ℚ) / (A138520 n : ℚ) * (A228864 n : ℚ)

end

end A138519.P15289520530156384754

/-! ## A138519.P10470889897409497509

`Δ[a(n-1)-A138520(n)]` with `a(0)=1`
-/

namespace A138519.P10470889897409497509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A138520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138519.P10470889897409497509

/-! ## A138519.P1937287505941382589

`A000007(n+1)-A138520(n+1)`
-/

namespace A138519.P1937287505941382589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A138520 (n + 1)

end

end A138519.P1937287505941382589

/-! ## A138519.P7209743056352318403

`A000038(n+1)-A138520(n+1)`
-/

namespace A138519.P7209743056352318403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A138520 (n + 1)

end

end A138519.P7209743056352318403

/-! ## A138519.P118306954746051000

`2-(A138520(n+1)+A040000(n+1))`
-/

namespace A138519.P118306954746051000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A138520 (n + 1) + A040000 (n + 1))

end

end A138519.P118306954746051000

/-! ## A138519.P1003940931664737571

`A323878(2*n+1)-A138520(n+1)`
-/

namespace A138519.P1003940931664737571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323878 (2 * n + 1) - A138520 (n + 1)

end

end A138519.P1003940931664737571

/-! ## A138519.P18302943303714833103

`2-(A138520(n+1)+A020639(2*(n+1)))`
-/

namespace A138519.P18302943303714833103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A138520 (n + 1) + A020639 (2 * (n + 1)))

end

end A138519.P18302943303714833103

/-! ## A138519.P14670783442448116563

`A095813(n+1)-(A138522(n+1)+A138520(n+1))`
-/

namespace A138519.P14670783442448116563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095813 (n + 1) - (A138522 (n + 1) + A138520 (n + 1))

end

end A138519.P14670783442448116563

/-! ## A138519.P6094730334739805617

`A210458(n+1)-(A228864(n+1)+A138520(n+1))`
-/

namespace A138519.P6094730334739805617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210458 (n + 1) - (A228864 (n + 1) + A138520 (n + 1))

end

end A138519.P6094730334739805617

/-! ## A138519.P17261362996313739961

`A210458(n+1)/A138521(n)*A225701(n)`
-/

namespace A138519.P17261362996313739961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210458 (n + 1) : ℚ) / (A138521 n : ℚ) * (A225701 n : ℚ)

end

end A138519.P17261362996313739961

/-! ## A138519.P18267347470506954221

`A228864(n+1)/A138521(n)*A225701(n)`
-/

namespace A138519.P18267347470506954221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228864 (n + 1) : ℚ) / (A138521 n : ℚ) * (A225701 n : ℚ)

end

end A138519.P18267347470506954221

/-! ## A138519.P9897605419038775252

`-(A138521(n+1)/5)`
-/

namespace A138519.P9897605419038775252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A138521 (n + 1) : ℚ) / 5)

end

end A138519.P9897605419038775252

/-! ## A138519.P4379294476928760951

`1-(A138520(n+1)+A033999(2*n))`
-/

namespace A138519.P4379294476928760951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A138520 (n + 1) + A033999 (2 * n))

end

end A138519.P4379294476928760951

/-! ## A138519.P13496692602738874366

`A033999(2*n+1)*A138520(n+1)`
-/

namespace A138519.P13496692602738874366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A138520 (n + 1)

end

end A138519.P13496692602738874366

/-! ## A138519.P6317445946700332693

`A213419(5*(n+1))`
-/

namespace A138519.P6317445946700332693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213419 (5 * (n + 1))

end

end A138519.P6317445946700332693

/-!
# A138520: Expansion of 1 - q * (psi(q^5) / psi(q))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A138520, there is no canonical definition to state claims against.
-/

/-! ## A138520.P4271316389039659195

`(-1)^n*A228864(n)`
-/

namespace A138520.P4271316389039659195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A228864 n

end

end A138520.P4271316389039659195

/-! ## A138520.P7849821727982909828

`ceil(A138521(n)/5)`
-/

namespace A138520.P7849821727982909828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138521 n : ℚ) / 5⌉

end

end A138520.P7849821727982909828

/-!
# A138521: Expansion of chi(-q)^5 / chi(-q^5) in powers of q where chi() is a Ramanujan theta function.

The programs for A138521, there is no canonical definition to state claims against.
-/

/-! ## A138521.P8621065765397042614

`(-1)^n*A225701(n)`
-/

namespace A138521.P8621065765397042614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A225701 n

end

end A138521.P8621065765397042614

/-! ## A138521.P3577130467357791223

`A225701(n)/A062157(n+1)`
-/

namespace A138521.P3577130467357791223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225701 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A138521.P3577130467357791223

/-! ## A138521.P13594688791340804759

`(a(A000038(n))+4)*A138520(n)` with `a(0)=1`
-/

namespace A138521.P13594688791340804759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (A000038 n).toNat + 4) * A138520 n

end

end A138521.P13594688791340804759

/-! ## A138521.P1885438093744473093

`(a(A323878(2*n+3))+4)*A138520(n)` with `a(0)=1`
-/

namespace A138521.P1885438093744473093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (A323878 (2 * n + 3)).toNat + 4) * A138520 n

end

end A138521.P1885438093744473093

/-! ## A138521.P16912896740679184647

`A138519(n+1)*A225701(n)/A210458(n+1)`
-/

namespace A138521.P16912896740679184647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138519 (n + 1) * A225701 n : ℚ) / (A210458 (n + 1) : ℚ)

end

end A138521.P16912896740679184647

/-!
# A138522: Expansion of f(q, q^3)^2 / (f(q, q^4) * f(q^2, q^3)) in powers of q where f(, ) is the Ramanujan general theta function.

The programs for A138522, there is no canonical definition to state claims against.
-/

/-! ## A138522.P3896201460936454879

`A095813(floor(1/(n+1)+n))`
-/

namespace A138522.P3896201460936454879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095813 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A138522.P3896201460936454879

/-! ## A138522.P15955017909761999883

`ceil(A258040(2*n)/2)`
-/

namespace A138522.P15955017909761999883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258040 (2 * n) : ℚ) / 2⌉

end

end A138522.P15955017909761999883

/-!
# A138523: a(n) = Sum_{k=1..n} (2k-1)!.

The programs for A138523, the canonical program `A138523.P16578679417551604186` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138523 has offset 1).

The definition of A138523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138523.P16578679417551604186

`(4*(n+1)²-6*(n+1)+3)*a(n-1)-2*n*(2*(n+1)-1)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138523

/-- `(4*(n+1)²-6*(n+1)+3)*a(n-1)-2*n*(2*(n+1)-1)*a(n-2)` -/
def P16578679417551604186.Spec : Prop :=
  ∀ n, P16578679417551604186.a n = A138523 (n + 1)

theorem P16578679417551604186.correct : P16578679417551604186.Spec := by
  intro n
  simp only [A138523, Nat.add_sub_cancel]

end A138523

/-! ## A138523.P12274639890275607766

`∑[Δ[n²]!]`
-/

namespace A138523.P12274639890275607766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138523.P12274639890275607766

namespace A138523

/-- `∑[Δ[n²]!]` -/
def P12274639890275607766.Spec : Prop :=
  ∀ n, (P12274639890275607766.a n : ℤ) = A138523 (n + 1)

end A138523

/-! ## A138523.P18418489905969730300

`∑[record[xor(1, n)!]]`
-/

namespace A138523.P18418489905969730300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138523.P18418489905969730300

namespace A138523

/-- `∑[record[xor(1, n)!]]` -/
def P18418489905969730300.Spec : Prop :=
  ∀ n, (P18418489905969730300.a n : ℤ) = A138523 (n + 1)

end A138523

/-! ## A138523.P12377530702594216948

`∑[record[(lcm(2, n)/2)!]]`
-/

namespace A138523.P12377530702594216948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138523.P12377530702594216948

namespace A138523

/-- `∑[record[(lcm(2, n)/2)!]]` -/
def P12377530702594216948.Spec : Prop :=
  ∀ n, (P12377530702594216948.a n : ℤ) = A138523 (n + 1)

end A138523

/-! ## A138523.P12051269670152982710

`∑[record[-∏[-(n+1)]]]`
-/

namespace A138523.P12051269670152982710
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138523.P12051269670152982710

namespace A138523

/-- `∑[record[-∏[-(n+1)]]]` -/
def P12051269670152982710.Spec : Prop :=
  ∀ n, P12051269670152982710.a n = A138523 (n + 1)

end A138523

/-!
# A138524: a(n) = Sum_{k=1..n} (2*k)!.

The programs for A138524, there is no canonical definition to state claims against.
-/

/-! ## A138524.P15606087272209904334

`∑[(2*(n+1))!]`
-/

namespace A138524.P15606087272209904334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138524.P15606087272209904334

/-! ## A138524.P10701472706288586192

`∑[record[-∏[-(n+2)]]]`
-/

namespace A138524.P10701472706288586192
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138524.P10701472706288586192

/-! ## A138524.P10459352870619124946

`∑[lcm(2, (n+2+n)!)]`
-/

namespace A138524.P10459352870619124946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.factorial (n + 2 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138524.P10459352870619124946

/-! ## A138524.P15651425029674631057

`or(2, ∑[(n+2+n)!])`
-/

namespace A138524.P15651425029674631057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138524.P15651425029674631057

/-! ## A138524.P1484058383616455840

`and(∑[(Δ[n²]+1)!], -1)`
-/

namespace A138524.P1484058383616455840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A138524.P1484058383616455840

/-!
# A138525: a(n) = Sum_{k=0..n} (2*k)!.

The programs for A138525, there is no canonical definition to state claims against.
-/

/-! ## A138525.P1306657152087528395

`∑[(2*n)!]`
-/

namespace A138525.P1306657152087528395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138525.P1306657152087528395

/-! ## A138525.P3761542128919580942

`∑[record[∏[xor(1, -n)]]]`
-/

namespace A138525.P3761542128919580942
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138525.P3761542128919580942

/-! ## A138525.P11298978964313639769

`∑[record[(n%4+n)!]]`
-/

namespace A138525.P11298978964313639769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138525.P11298978964313639769

/-! ## A138525.P1926308609998321623

`∑[record[and(n, n+1)!]]`
-/

namespace A138525.P1926308609998321623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138525.P1926308609998321623

/-! ## A138525.P16725867422406194518

`∑[abs(record[∏[-(n+1)]])]`
-/

namespace A138525.P16725867422406194518
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138525.P16725867422406194518

/-!
# A138526: Expansion of phi(-q^5) / phi(-q) in powers of q where phi() is a Ramanujan theta function.

The programs for A138526, there is no canonical definition to state claims against.
-/

/-! ## A138526.P18321988996284883673

`abs(A261968(n))`
-/

namespace A138526.P18321988996284883673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261968 n|

end

end A138526.P18321988996284883673

/-! ## A138526.P2138869980776676935

`A033999(n)*A261968(n)`
-/

namespace A138526.P2138869980776676935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261968 n

end

end A138526.P2138869980776676935

/-! ## A138526.P11357054018632384041

`gcd(A000038(n), A261968(n))`
-/

namespace A138526.P11357054018632384041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261968 n)

end

end A138526.P11357054018632384041

/-! ## A138526.P14999276456326459981

`lcm(A000034(n), A261968(n))`
-/

namespace A138526.P14999276456326459981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261968 n)

end

end A138526.P14999276456326459981

/-! ## A138526.P6696521133199951369

`record[A146162(n)]`
-/

namespace A138526.P6696521133199951369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138526.P6696521133199951369

/-! ## A138526.P11273694551441973231

`record[A147702(n)]`
-/

namespace A138526.P11273694551441973231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138526.P11273694551441973231

/-! ## A138526.P3201936866938432030

`A146162(4*n)`
-/

namespace A138526.P3201936866938432030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 (4 * n)

end

end A138526.P3201936866938432030

/-! ## A138526.P13913271493726057834

`A147702(4*n)`
-/

namespace A138526.P13913271493726057834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147702 (4 * n)

end

end A138526.P13913271493726057834

/-! ## A138526.P15320682724026007763

`record[A138527(n)]`
-/

namespace A138526.P15320682724026007763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138526.P15320682724026007763

/-! ## A138526.P10376435940883006407

`A138527(5*n)`
-/

namespace A138526.P10376435940883006407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138527 (5 * n)

end

end A138526.P10376435940883006407

/-! ## A138526.P14731451010524424621

`abs(A144377(5*n))`
-/

namespace A138526.P14731451010524424621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144377 (5 * n)|

end

end A138526.P14731451010524424621

/-!
# A138527: Expansion of phi(-q) / phi(-q^5) in powers of q where phi() is a Ramanujan theta function.

The programs for A138527, there is no canonical definition to state claims against.
-/

/-! ## A138527.P10000575740565671850

`(-1)^n*A144377(n)`
-/

namespace A138527.P10000575740565671850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A144377 n

end

end A138527.P10000575740565671850

/-! ## A138527.P5550743504851929357

`A138526(n)*A144377(n)/A261968(n)`
-/

namespace A138527.P5550743504851929357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138526 n * A144377 n : ℚ) / (A261968 n : ℚ)

end

end A138527.P5550743504851929357

/-!
# A138528: a(1) = 1. The n-th run (after the initial 1) of A138529(n) terms is (1,2,3,...,A138529(n)), where A138529(n) = Sum_{k=1..n} a(k).

The programs for A138528, there is no canonical definition to state claims against.
-/

/-! ## A138528.P8019361094660445272

`A028310(Δ[A138529(A028310(n))])`
-/

namespace A138528.P8019361094660445272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138529 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A138528.P8019361094660445272

/-! ## A138528.P4648244648490744613

`A168265(2*n+1)/A020639(A379716(n+1))`
-/

namespace A138528.P4648244648490744613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168265 (2 * n + 1) : ℚ) / (A020639 (A379716 (n + 1)).toNat : ℚ)

end

end A138528.P4648244648490744613

/-! ## A138528.P6422138334899217700

`A002260(lt[A035253(n), A293881(n)])`
-/

namespace A138528.P6422138334899217700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138528.P6422138334899217700

/-! ## A138528.P3397813971151280574

`A083773(lt[A035253(n), A293881(n)])`
-/

namespace A138528.P3397813971151280574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083773 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138528.P3397813971151280574

/-! ## A138528.P11074444799531374754

`A002260(lt[A285831(3*n+2), A395080(n)])`
-/

namespace A138528.P11074444799531374754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285831 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138528.P11074444799531374754

/-!
# A138529: a(n) = Sum_{k=1..n} A138528(k).

The programs for A138529, there is no canonical definition to state claims against.
-/

/-! ## A138529.P7657084477363015599

`∑[A138528(1+n)]`
-/

namespace A138529.P7657084477363015599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138529.P7657084477363015599

/-! ## A138529.P3756144221284296574

`A033999(n)²*∑[A138528(Δ[n²]-n)]`
-/

namespace A138529.P3756144221284296574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138529.P3756144221284296574

/-! ## A138529.P5116601050322812794

`a(n-1)+A138528(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A138529.P5116601050322812794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A138528 (n + 1) + A000007 n)

end

end A138529.P5116601050322812794

/-! ## A138529.P9965726424375752803

`a(n-1)+A057427(n)*A138528(n+1)` with `a(0)=1`
-/

namespace A138529.P9965726424375752803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A138528 (n + 1)

end

end A138529.P9965726424375752803

/-! ## A138529.P15962892763403297479

`∑[A138528(Δ[n²]-n)%A272255(n)]`
-/

namespace A138529.P15962892763403297479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) (A272255 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138529.P15962892763403297479

/-! ## A138529.P4695600563345868598

`A028310(∑[A138528(Δ[n²]-n)])`
-/

namespace A138529.P4695600563345868598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138529.P4695600563345868598

/-! ## A138529.P6036971800423483713

`∑[A138528(Δ[n²]-n)]*A010052(n²)`
-/

namespace A138529.P6036971800423483713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010052 (n ^ 2)

end

end A138529.P6036971800423483713

/-! ## A138529.P17942204003046733691

`Δ[eq[1, A138528(n+2)]]`
-/

namespace A138529.P17942204003046733691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A138529.P17942204003046733691

/-! ## A138529.P639053451798411705

`A138528(eq[2, A138528(n+2)])`
-/

namespace A138529.P639053451798411705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138529.P639053451798411705

/-! ## A138529.P14061476157216980976

`record[A138528(n+1)/A138528(n+2)]`
-/

namespace A138529.P14061476157216980976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138528 (n + 1) : ℚ) / (A138528 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138529.P14061476157216980976

/-!
# A138530: Triangle read by rows: T(n,k) = sum of digits of n in base k representation, 1<=k<=n.

The programs for A138530, there is no canonical definition to state claims against.
-/

/-! ## A138530.P14975970152796673697

`∑{digits}[A063432(n+1), #]`
-/

namespace A138530.P14975970152796673697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138530.P14975970152796673697

/-! ## A138530.P15451534906197011037

`∑{digits}[A082492(A038722(n+1)), #]`
-/

namespace A138530.P15451534906197011037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A038722 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138530.P15451534906197011037

/-! ## A138530.P3580170031784392483

`∑{digits}[A082492(A061579(n)+1), #]`
-/

namespace A138530.P3580170031784392483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A061579 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138530.P3580170031784392483

/-! ## A138530.P3933307771753736163

`∑{digits}[A082492(A093995(n+1)-n), #]`
-/

namespace A138530.P3933307771753736163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A093995 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138530.P3933307771753736163

/-! ## A138530.P734286156759572771

`∑{digits}[A082492(A278818(n)), #]`
-/

namespace A138530.P734286156759572771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A278818 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138530.P734286156759572771

/-!
# A138531: Decimal expansion of 109739369/111111111.

The programs for A138531, the canonical program `A138531.P3659409668878288247` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138531 has offset 0).

The definition of A138531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138531.P3659409668878288247

`9-n%9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138531

/-- `9-n%9` -/
def P3659409668878288247.Spec : Prop :=
  ∀ n, P3659409668878288247.a n = A138531 n

theorem P3659409668878288247.correct : P3659409668878288247.Spec := by
  intro n
  simp only [A138531]

end A138531

/-!
# A138532: Expansion of psi(x) / psi(x^5) in powers of x where psi() is a Ramanujan theta function.

The programs for A138532, there is no canonical definition to state claims against.
-/

/-! ## A138532.P1993181167299477600

`A033999(n)*A145708(n)`
-/

namespace A138532.P1993181167299477600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145708 n

end

end A138532.P1993181167299477600

/-! ## A138532.P13908226468551495507

`A145708(n)*A269529(A120880(n))`
-/

namespace A138532.P13908226468551495507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 n * A269529 (A120880 n).toNat

end

end A138532.P13908226468551495507

/-! ## A138532.P12320754577018496414

`A145708(Δ[A008619(n)])*A145708(n)`
-/

namespace A138532.P12320754577018496414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (f1 (n + 1) - f1 n).toNat * A145708 n

end

end A138532.P12320754577018496414

/-! ## A138532.P16994428036960495792

`A036026(n)/A116494(n)*A145708(n)`
-/

namespace A138532.P16994428036960495792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036026 n : ℚ) / (A116494 n : ℚ) * (A145708 n : ℚ)

end

end A138532.P16994428036960495792

/-! ## A138532.P880237648898613276

`A145708(n)/A145708(Δ[A008619(n)]²)`
-/

namespace A138532.P880237648898613276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145708 n : ℚ) / (A145708 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A138532.P880237648898613276

/-! ## A138532.P349428431751339430

`A034947(2*n+1)*A145708(n)`
-/

namespace A138532.P349428431751339430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A145708 n

end

end A138532.P349428431751339430

/-! ## A138532.P739119405340235133

`A162852(n+1)%2*A145708(n)`
-/

namespace A138532.P739119405340235133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162852 (n + 1)) 2 * A145708 n

end

end A138532.P739119405340235133

/-!
# A138534: Super least prime signatures; LCM of all signatures with n factors.

The programs for A138534, there is no canonical definition to state claims against.
-/

/-! ## A138534.P542626066606061738

`∏[∏{d}[n, A000040(#)]]`
-/

namespace A138534.P542626066606061738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000040 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A138534.P542626066606061738

/-! ## A138534.P15530912112823530770

`∏[∏{d}[n, A008578(#+1)]]`
-/

namespace A138534.P15530912112823530770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A008578 (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A138534.P15530912112823530770

/-! ## A138534.P3458639797924234139

`a(n-1)*A275700(n)` with `a(0)=1`
-/

namespace A138534.P3458639797924234139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A275700 n

end

end A138534.P3458639797924234139

/-! ## A138534.P9916079966732383551

`∏[A275700(A028310(n))]/2`
-/

namespace A138534.P9916079966732383551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275700 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A138534.P9916079966732383551

/-! ## A138534.P13396561315387696133

`∏[A275700(n+1)]/A275700(n+1)`
-/

namespace A138534.P13396561315387696133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275700 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A275700 (n + 1) : ℚ)

end

end A138534.P13396561315387696133

/-!
# A138535: Odd primes p_n for which A140140(n) < (p_n-1)/2, where p_n = n-th odd prime (A065091).

The programs for A138535, there is no canonical definition to state claims against.
-/

/-! ## A138535.P14237950694411098455

`p?[A137576(A140140(n+1)%A139791(n+1))]`
-/

namespace A138535.P14237950694411098455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (Int.tmod (A140140 (n + 1)) (A139791 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138535.P14237950694411098455

/-!
# A138536: Odd primes p_n for which A140140(n)=(p_n-1)/2, where p_n = n-th odd prime (A065091).

The programs for A138536, there is no canonical definition to state claims against.
-/

/-! ## A138536.P11871794052228303238

`p?[2*A140140(n+1)+1]`
-/

namespace A138536.P11871794052228303238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140140 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138536.P11871794052228303238

/-! ## A138536.P16539687723657222755

`p?[A005408(A140140(n+1))]`
-/

namespace A138536.P16539687723657222755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A140140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138536.P16539687723657222755

/-! ## A138536.P6294751894845202022

`p?[A144396(record[A140140(n+1)])]`
-/

namespace A138536.P6294751894845202022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138536.P6294751894845202022

/-! ## A138536.P10961253962771598623

`p?[A237292(record[A140140(n+1)])]`
-/

namespace A138536.P10961253962771598623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138536.P10961253962771598623

/-! ## A138536.P17333479745917921395

`p?[A294386(record[A140140(n+1)])]`
-/

namespace A138536.P17333479745917921395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138536.P17333479745917921395

/-!
# A138538: Numbers m such that A043555(m) = A043555(m^2).

The programs for A138538, there is no canonical definition to state claims against.
-/

/-! ## A138538.P2345663581960056621

`eq[A043555(n²), A043555(n)]`
-/

namespace A138538.P2345663581960056621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138538.P2345663581960056621

/-!
# A138539: Primes p_n for which A140141(n) < 2p_n, where p_n = n-th prime (A000040).

The programs for A138539, there is no canonical definition to state claims against.
-/

/-! ## A138539.P9822875100842519490

`A058341(n%a(n-1))` with `a(0)=2`
-/

namespace A138539.P9822875100842519490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A058341 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A138539.P9822875100842519490

/-! ## A138539.P14304920229252824575

`A058341(and(n, or(n, a(n-1))))` with `a(0)=2`
-/

namespace A138539.P14304920229252824575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A058341 (Int.land (n : ℤ) (Int.lor (n : ℤ) (a (n - 1)))).toNat

end

end A138539.P14304920229252824575

/-! ## A138539.P3079780645408474327

`∪[A057999(n), A058341(n+1)]`
-/

namespace A138539.P3079780645408474327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138539.P3079780645408474327

/-! ## A138539.P17326408492888593242

`A058341(A028310(n))-floor(acot(n))`
-/

namespace A138539.P17326408492888593242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A138539.P17326408492888593242

/-! ## A138539.P5757503104414977098

`∪[A005109(n+1), A058341(n+1)]`
-/

namespace A138539.P5757503104414977098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138539.P5757503104414977098

/-! ## A138539.P15348188846245688949

`∪[A006686(n+1), A058341(n+1)]`
-/

namespace A138539.P15348188846245688949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138539.P15348188846245688949

/-! ## A138539.P17848486276561764464

`∪[A007352(n+1), A058341(n+1)]`
-/

namespace A138539.P17848486276561764464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138539.P17848486276561764464

/-! ## A138539.P7063806537390033190

`∪[A037896(n+1), A058341(n+1)]`
-/

namespace A138539.P7063806537390033190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138539.P7063806537390033190

/-! ## A138539.P2254297862011662548

`∪[A038537(n+1), A058341(n+1)]`
-/

namespace A138539.P2254297862011662548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138539.P2254297862011662548

/-! ## A138539.P9028893473162126526

`p?[comp[A323169(n+1)]]`
-/

namespace A138539.P9028893473162126526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138539.P9028893473162126526

/-!
# A138540: Moment sequence of tr(A) in USp(6).

The programs for A138540, there is no canonical definition to state claims against.
-/

/-! ## A138540.P13559955677835045886

`∑{#}[n, (-1)^(n-#)*C(n, #)*A007578(#)]`
-/

namespace A138540.P13559955677835045886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A007578 k : ℚ)

end

end A138540.P13559955677835045886

/-! ## A138540.P9352435488031340253

`A059841(n)*A136092(A004526(n))`
-/

namespace A138540.P9352435488031340253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136092 (A004526 n).toNat

end

end A138540.P9352435488031340253

/-! ## A138540.P7682751440273573782

`A059841(n)*A136092(A089196(n+1))`
-/

namespace A138540.P7682751440273573782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136092 (A089196 (n + 1)).toNat

end

end A138540.P7682751440273573782

/-! ## A138540.P6202568540197949528

`A059841(n)*A136092(n-A110654(n))`
-/

namespace A138540.P6202568540197949528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136092 ((n : ℤ) - A110654 n).toNat

end

end A138540.P6202568540197949528

/-! ## A138540.P5143803261114828118

`A059841(n)*A136092(A065033(n*A059841(n)))`
-/

namespace A138540.P5143803261114828118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136092 (A065033 ((n : ℤ) * A059841 n).toNat).toNat

end

end A138540.P5143803261114828118

/-!
# A138541: Moment sequence of tr(A^2) in USp(6).

The programs for A138541, there is no canonical definition to state claims against.
-/

/-! ## A138541.P2718282670819490366

`∑{#}[n, (-1)^(n-#)*C(n, #)*A138542(#)]`
-/

namespace A138541.P2718282670819490366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A138542 k : ℚ)

end

end A138541.P2718282670819490366

/-!
# A138542: Central moment sequence of tr(A^2) in USp(6).

The programs for A138542, there is no canonical definition to state claims against.
-/

/-! ## A138542.P3820845847703842880

`∑{#}[n, C(n, #)*A138541(#)]`
-/

namespace A138542.P3820845847703842880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A138541 k

end

end A138542.P3820845847703842880

/-!
# A138543: Moment sequence of tr(A^3) in USp(6).

The programs for A138543, there is no canonical definition to state claims against.
-/

/-! ## A138543.P9415977537062080142

`A059841(n)*A136046(A004525(n))`
-/

namespace A138543.P9415977537062080142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136046 (A004525 n).toNat

end

end A138543.P9415977537062080142

/-! ## A138543.P3504700229537513300

`A059841(n)*A136046(A004526(n))`
-/

namespace A138543.P3504700229537513300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136046 (A004526 n).toNat

end

end A138543.P3504700229537513300

/-! ## A138543.P11094327423708936718

`A059841(n)*A136046(A142150(n))`
-/

namespace A138543.P11094327423708936718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136046 (A142150 n).toNat

end

end A138543.P11094327423708936718

/-! ## A138543.P7446490480229264097

`A136046(A142150(n))*A331218(n)`
-/

namespace A138543.P7446490480229264097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136046 (A142150 n).toNat * A331218 n

end

end A138543.P7446490480229264097

/-! ## A138543.P10328786645667778807

`A136046(A142150(n))-log2(A000034(n))`
-/

namespace A138543.P10328786645667778807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136046 (A142150 n).toNat : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A138543.P10328786645667778807

/-!
# A138544: Moment sequence of tr(A^4) in USp(6).

The programs for A138544, there is no canonical definition to state claims against.
-/

/-! ## A138544.P11800770359879156410

`∑{#}[n, (-1)^(n-#)*C(n, #)*A138545(#)]`
-/

namespace A138544.P11800770359879156410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A138545 k : ℚ)

end

end A138544.P11800770359879156410

/-! ## A138544.P12839118902277677751

`A048766(A000172(n))*A126930(n)`
-/

namespace A138544.P12839118902277677751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000172 n).toNat * A126930 n

end

end A138544.P12839118902277677751

/-!
# A138545: Central moment sequence of tr(A^4) in USp(6).

The programs for A138545, there is no canonical definition to state claims against.
-/

/-! ## A138545.P10061508818369793724

`∑{#}[n, C(n, #)*A138544(#)]`
-/

namespace A138545.P10061508818369793724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A138544 k

end

end A138545.P10061508818369793724

/-!
# A138546: Moment sequence of tr(A^5) in USp(6).

The programs for A138546, there is no canonical definition to state claims against.
-/

/-! ## A138546.P5976339635474539613

`A086618(A004526(n))*A126869(n)`
-/

namespace A138546.P5976339635474539613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 (A004526 n).toNat * A126869 n

end

end A138546.P5976339635474539613

/-! ## A138546.P18200287613249404704

`A138544(n%or(1, n))-n%2`
-/

namespace A138546.P18200287613249404704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138544 (n % Nat.lor 1 n) - ((n % 2 : ℕ) : ℤ)

end

end A138546.P18200287613249404704

/-! ## A138546.P6515857272136048398

`A059841(n)*A138544(n)`
-/

namespace A138546.P6515857272136048398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A138544 n

end

end A138546.P6515857272136048398

/-! ## A138546.P17362879937844278736

`A138544(n)*A331218(n)`
-/

namespace A138546.P17362879937844278736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138544 n * A331218 n

end

end A138546.P17362879937844278736

/-! ## A138546.P15702792882355221023

`lcm(A014893(n), A138544(n))`
-/

namespace A138546.P15702792882355221023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014893 n) (A138544 n)

end

end A138546.P15702792882355221023

/-!
# A138547: Moment sequence of tr(A^6) in USp(6).

The programs for A138547, there is no canonical definition to state claims against.
-/

/-! ## A138547.P3553978935100438087

`∑{#}[n, (-1)^(n-#)*C(n, #)*A138548(#)]`
-/

namespace A138547.P3553978935100438087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A138548 k : ℚ)

end

end A138547.P3553978935100438087

/-!
# A138548: Central moment sequence of tr(A^6) in USp(6).

The programs for A138548, there is no canonical definition to state claims against.
-/

/-! ## A138548.P2522533026823478159

`∑{#}[n, C(n, #)*A138547(#)]`
-/

namespace A138548.P2522533026823478159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A138547 k

end

end A138548.P2522533026823478159

/-!
# A138549: Moment sequence of t^2 coefficient in det(tI-A) for random matrix A in USp(6).

The programs for A138549, there is no canonical definition to state claims against.
-/

/-! ## A138549.P13140816106503044541

`∑{#}[n, C(n, #)*A138550(#)]`
-/

namespace A138549.P13140816106503044541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A138550 k

end

end A138549.P13140816106503044541

/-! ## A138549.P14453773958359491741

`A289497(A109155(n))`
-/

namespace A138549.P14453773958359491741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A109155 n).toNat

end

end A138549.P14453773958359491741

/-! ## A138549.P5898428603193448966

`A034973(A052755(n))+1`
-/

namespace A138549.P5898428603193448966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A052755 n).toNat + 1

end

end A138549.P5898428603193448966

/-!
# A138550: Central moment sequence of t^2 coefficient in det(tI-A) for random matrix A in USp(6).

The programs for A138550, there is no canonical definition to state claims against.
-/

/-! ## A138550.P5697424828844295656

`∑{#}[n, (-1)^(n-#)*C(n, #)*A138549(#)]`
-/

namespace A138550.P5697424828844295656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A138549 k : ℚ)

end

end A138550.P5697424828844295656

/-! ## A138550.P9441482597516634691

`A105513(A002931(n+1))+A059841(n)`
-/

namespace A138550.P9441482597516634691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105513 (A002931 (n + 1)).toNat + A059841 n

end

end A138550.P9441482597516634691

/-! ## A138550.P8575006694225685720

`A008647(3*n)+A008647(A300626(n))`
-/

namespace A138550.P8575006694225685720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (3 * n) + A008647 (A300626 n).toNat

end

end A138550.P8575006694225685720

/-! ## A138550.P2774121796628463574

`A349907(n+1)+A105513(A002931(n+1))`
-/

namespace A138550.P2774121796628463574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (n + 1) + A105513 (A002931 (n + 1)).toNat

end

end A138550.P2774121796628463574

/-!
# A138551: Moment sequence of t^3 coefficient in det(tI-A) for random matrix A in USp(6).

The programs for A138551, there is no canonical definition to state claims against.
-/

/-! ## A138551.P13800158370929255470

`A059841(n)*A136039(A004526(n))`
-/

namespace A138551.P13800158370929255470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136039 (A004526 n).toNat

end

end A138551.P13800158370929255470

/-! ## A138551.P11325973902914094735

`A059841(n)*A136039(A089196(n+1))`
-/

namespace A138551.P11325973902914094735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136039 (A089196 (n + 1)).toNat

end

end A138551.P11325973902914094735

/-! ## A138551.P1189492398743760733

`A059841(n)*A136039(n-A110654(n))`
-/

namespace A138551.P1189492398743760733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136039 ((n : ℤ) - A110654 n).toNat

end

end A138551.P1189492398743760733

/-! ## A138551.P15455276618857072867

`A059841(n)*A136039(A110654(n*A059841(n)))`
-/

namespace A138551.P15455276618857072867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136039 (A110654 ((n : ℤ) * A059841 n).toNat).toNat

end

end A138551.P15455276618857072867

/-! ## A138551.P17882514623414317834

`A059841(n)*A136039(A110654(n))`
-/

namespace A138551.P17882514623414317834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A136039 (A110654 n).toNat

end

end A138551.P17882514623414317834

/-!
# A138552: Returning walks of length 2n on the upper half of the square lattice, distinct under reflections about the y-axis.

The programs for A138552, the canonical program `A138552.P4734613694061573768` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138552 has offset 0).

The definition of A138552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138552.P4734613694061573768

`(A000891(n)+A000108(n))/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138552

/-- `(A000891(n)+A000108(n))/2` -/
def P4734613694061573768.Spec : Prop :=
  ∀ n, P4734613694061573768.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P5906915003966786571

`(A000891(n)+abs(A168491(n)))/2`
-/

namespace A138552.P5906915003966786571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000891 n + |A168491 n| : ℚ) / 2

end

end A138552.P5906915003966786571

namespace A138552

/-- `(A000891(n)+abs(A168491(n)))/2` -/
def P5906915003966786571.Spec : Prop :=
  ∀ n, P5906915003966786571.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P8752239697347804541

`(A120588(n+1)+A000891(n))/2`
-/

namespace A138552.P8752239697347804541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) + A000891 n : ℚ) / 2

end

end A138552.P8752239697347804541

namespace A138552

/-- `(A120588(n+1)+A000891(n))/2` -/
def P8752239697347804541.Spec : Prop :=
  ∀ n, P8752239697347804541.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P15005662610379246074

`A000108(n)*(A001700(n)+1)/2`
-/

namespace A138552.P15005662610379246074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * (A001700 n + 1) : ℚ) / 2

end

end A138552.P15005662610379246074

namespace A138552

/-- `A000108(n)*(A001700(n)+1)/2` -/
def P15005662610379246074.Spec : Prop :=
  ∀ n, P15005662610379246074.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P9895492009615355192

`(A126120(2*n)+A005558(2*n))/2`
-/

namespace A138552.P9895492009615355192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126120 (2 * n) + A005558 (2 * n) : ℚ) / 2

end

end A138552.P9895492009615355192

namespace A138552

/-- `(A126120(2*n)+A005558(2*n))/2` -/
def P9895492009615355192.Spec : Prop :=
  ∀ n, P9895492009615355192.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P14714080976992983399

`A112849(n+1)/(n+1)*A088218(n)`
-/

namespace A138552.P14714080976992983399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112849 (n + 1) : ℚ) / (n + 1 : ℚ) * (A088218 n : ℚ)

end

end A138552.P14714080976992983399

namespace A138552

/-- `A112849(n+1)/(n+1)*A088218(n)` -/
def P14714080976992983399.Spec : Prop :=
  ∀ n, P14714080976992983399.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P1265535748075014115

`A089408(2*n+1)/2*A006481(2*(n+1))`
-/

namespace A138552.P1265535748075014115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 (2 * n + 1) : ℚ) / 2 * (A006481 (2 * (n + 1)) : ℚ)

end

end A138552.P1265535748075014115

namespace A138552

/-- `A089408(2*n+1)/2*A006481(2*(n+1))` -/
def P1265535748075014115.Spec : Prop :=
  ∀ n, P1265535748075014115.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P3228116103624902590

`C(C(2*n+1, n)+1, 2)/(2*n+1)`
-/

namespace A138552.P3228116103624902590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (2 * n + 1) n + 1) 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A138552.P3228116103624902590

namespace A138552

/-- `C(C(2*n+1, n)+1, 2)/(2*n+1)` -/
def P3228116103624902590.Spec : Prop :=
  ∀ n, P3228116103624902590.a n = (A138552 n : ℚ)

end A138552

/-! ## A138552.P16071243976202963245

`(A000984(n)+A000894(n))/(2*(n+1))`
-/

namespace A138552.P16071243976202963245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n + A000894 n : ℚ) / (2 * (n + 1) : ℚ)

end

end A138552.P16071243976202963245

namespace A138552

/-- `(A000984(n)+A000894(n))/(2*(n+1))` -/
def P16071243976202963245.Spec : Prop :=
  ∀ n, P16071243976202963245.a n = (A138552 n : ℚ)

end A138552

/-!
# A138553: Table read by rows: T(n,k) is the number of divisors of k that are <= n.

The programs for A138553, there is no canonical definition to state claims against.
-/

/-! ## A138553.P13603425619440726073

`A102354(A016885(A296070(n+1))²)`
-/

namespace A138553.P13603425619440726073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A016885 (A296070 (n + 1)).toNat ^ 2).toNat

end

end A138553.P13603425619440726073

/-! ## A138553.P9057250061655039544

`A342518(A347050(n+4)+A174889(3*(n+1)))`
-/

namespace A138553.P9057250061655039544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (A347050 (n + 4) + A174889 (3 * (n + 1))).toNat

end

end A138553.P9057250061655039544

/-! ## A138553.P157228729905697074

`A333750(n+4)+A066247(A241509(2*(n+2)))`
-/

namespace A138553.P157228729905697074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (n + 4) + A066247 (A241509 (2 * (n + 2))).toNat

end

end A138553.P157228729905697074

/-! ## A138553.P12436631902399806190

`gcd(A000010(A175317(n+1)), A068108(n+5))`
-/

namespace A138553.P12436631902399806190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A175317 (n + 1)).toNat) (A068108 (n + 5))

end

end A138553.P12436631902399806190

/-! ## A138553.P13106973016330074230

`gcd(A010815(A007865(n)), A068108(n+5))`
-/

namespace A138553.P13106973016330074230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A007865 n).toNat) (A068108 (n + 5))

end

end A138553.P13106973016330074230

/-!
# A138554: Minimal value of sum k_i when sum (k_i)^2 = n.

The programs for A138554, there is no canonical definition to state claims against.
-/

/-! ## A138554.P9735842975711302489

`A007953(A055016(n)^A304042(n))`
-/

namespace A138554.P9735842975711302489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A055016 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A138554.P9735842975711302489

/-! ## A138554.P726708226100051039

`A007953(A259372(n)^A304042(n))`
-/

namespace A138554.P726708226100051039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A259372 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A138554.P726708226100051039

/-! ## A138554.P15366834998442755011

`A326746(A055016(n)^A304042(n))`
-/

namespace A138554.P15366834998442755011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (SequenceMachineLib.roundAway ((A055016 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A138554.P15366834998442755011

/-! ## A138554.P2970095779485717367

`∑{digits}[A259372(n), #]%A014418(A270181(n))`
-/

namespace A138554.P2970095779485717367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A014418 (A270181 n).toNat)

end

end A138554.P2970095779485717367

/-! ## A138554.P3498752216203889092

`A000038(∑[A000040(n+1)]+1)-A064877(n)+n`
-/

namespace A138554.P3498752216203889092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - A064877 n + (n : ℤ)

end

end A138554.P3498752216203889092

/-!
# A138557: Expansion of eta(q)^2 * eta(q^4)^2 * eta(q^10)^7 / (eta(q^2)^3 * eta(q^5)^2 * eta(q^20)^2) in powers of q.

The programs for A138557, the canonical program `A138557.P2808803708478524220` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138557 has offset 1).

The definition of A138557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138557.P2808803708478524220

`(-1)^n*A129303(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A138557

/-- `(-1)^n*A129303(n+1)` -/
def P2808803708478524220.Spec : Prop :=
  ∀ n, P2808803708478524220.a n = A138557 (n + 1)

theorem P2808803708478524220.correct : P2808803708478524220.Spec := by
  intro n
  simp only [A138557, Nat.add_sub_cancel]

end A138557

/-! ## A138557.P7298078597533142604

`∑{d}[n+1, A019590(#)*A110712((n+1)/#)]`
-/

namespace A138557.P7298078597533142604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A110712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138557.P7298078597533142604

namespace A138557

/-- `∑{d}[n+1, A019590(#)*A110712((n+1)/#)]` -/
def P7298078597533142604.Spec : Prop :=
  ∀ n, P7298078597533142604.a n = A138557 (n + 1)

end A138557

/-! ## A138557.P14530976954032382530

`∑{d}[n+1, A035202(#)*A325596((n+1)/#)]`
-/

namespace A138557.P14530976954032382530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035202 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138557.P14530976954032382530

namespace A138557

/-- `∑{d}[n+1, A035202(#)*A325596((n+1)/#)]` -/
def P14530976954032382530.Spec : Prop :=
  ∀ n, P14530976954032382530.a n = A138557 (n + 1)

end A138557

/-! ## A138557.P9522518481597889962

`A129303(n+1)/A113185(n)*A132069(n)`
-/

namespace A138557.P9522518481597889962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129303 (n + 1) : ℚ) / (A113185 n : ℚ) * (A132069 n : ℚ)

end

end A138557.P9522518481597889962

namespace A138557

/-- `A129303(n+1)/A113185(n)*A132069(n)` -/
def P9522518481597889962.Spec : Prop :=
  ∀ n, P9522518481597889962.a n = (A138557 (n + 1) : ℚ)

end A138557

/-! ## A138557.P15027428673223242718

`A138512(n+1)+A053723(n)-A129303(n+1)`
-/

namespace A138557.P15027428673223242718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138512 (n + 1) + (A053723 n - A129303 (n + 1))

end

end A138557.P15027428673223242718

namespace A138557

/-- `A138512(n+1)+A053723(n)-A129303(n+1)` -/
def P15027428673223242718.Spec : Prop :=
  ∀ n, P15027428673223242718.a n = A138557 (n + 1)

end A138557

/-! ## A138557.P2190321290284616576

`A110712(n+1)+A138483(n+1)-A129303(n+1)`
-/

namespace A138557.P2190321290284616576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110712 (n + 1) + (A138483 (n + 1) - A129303 (n + 1))

end

end A138557.P2190321290284616576

namespace A138557

/-- `A110712(n+1)+A138483(n+1)-A129303(n+1)` -/
def P2190321290284616576.Spec : Prop :=
  ∀ n, P2190321290284616576.a n = A138557 (n + 1)

end A138557

/-! ## A138557.P2356485332018058803

`A111580(n+1)*A129303(n+1)/A138558(n+1)`
-/

namespace A138557.P2356485332018058803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) * A129303 (n + 1) : ℚ) / (A138558 (n + 1) : ℚ)

end

end A138557.P2356485332018058803

namespace A138557

/-- `A111580(n+1)*A129303(n+1)/A138558(n+1)` -/
def P2356485332018058803.Spec : Prop :=
  ∀ n, P2356485332018058803.a n = (A138557 (n + 1) : ℚ)

end A138557

/-! ## A138557.P12010863659409866321

`A129303(n+1)*A153881(A258409(n+2))`
-/

namespace A138557.P12010863659409866321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1) * A153881 (A258409 (n + 2)).toNat

end

end A138557.P12010863659409866321

namespace A138557

/-- `A129303(n+1)*A153881(A258409(n+2))` -/
def P12010863659409866321.Spec : Prop :=
  ∀ n, P12010863659409866321.a n = A138557 (n + 1)

end A138557

/-! ## A138557.P8868401852062222877

`A129303(n+1)/A153881(A258409(n+6))`
-/

namespace A138557.P8868401852062222877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129303 (n + 1) : ℚ) / (A153881 (A258409 (n + 6)).toNat : ℚ)

end

end A138557.P8868401852062222877

namespace A138557

/-- `A129303(n+1)/A153881(A258409(n+6))` -/
def P8868401852062222877.Spec : Prop :=
  ∀ n, P8868401852062222877.a n = (A138557 (n + 1) : ℚ)

end A138557

/-!
# A138558: Expansion of eta(q^2)^7 * eta(q^5)^2 * eta(q^20)^2 / (eta(q)^2 * eta(q^4)^2 * eta(q^10)^3) in powers of q.

The programs for A138558, the canonical program `A138558.P8696964352118287343` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138558 has offset 1).

The definition of A138558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111580, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138558.P8696964352118287343

`(-1)^n*A111580(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138558

/-- `(-1)^n*A111580(n+1)` -/
def P8696964352118287343.Spec : Prop :=
  ∀ n, P8696964352118287343.a n = A138558 (n + 1)

theorem P8696964352118287343.correct : P8696964352118287343.Spec := by
  intro n
  simp only [A138558, Nat.add_sub_cancel]

end A138558

/-! ## A138558.P3067512408770016139

`A111580(n+1)/A033999(n)`
-/

namespace A138558.P3067512408770016139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A138558.P3067512408770016139

namespace A138558

/-- `A111580(n+1)/A033999(n)` -/
def P3067512408770016139.Spec : Prop :=
  ∀ n, P3067512408770016139.a n = (A138558 (n + 1) : ℚ)

end A138558

/-! ## A138558.P6203410939105436378

`A111580(n+1)*A129303(n+1)/A138557(n+1)`
-/

namespace A138558.P6203410939105436378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) * A129303 (n + 1) : ℚ) / (A138557 (n + 1) : ℚ)

end

end A138558.P6203410939105436378

namespace A138558

/-- `A111580(n+1)*A129303(n+1)/A138557(n+1)` -/
def P6203410939105436378.Spec : Prop :=
  ∀ n, P6203410939105436378.a n = (A138558 (n + 1) : ℚ)

end A138558

/-! ## A138558.P16833197602825876931

`A111580(n+1)/A056594(2*n)`
-/

namespace A138558.P16833197602825876931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) : ℚ) / (A056594 (2 * n) : ℚ)

end

end A138558.P16833197602825876931

namespace A138558

/-- `A111580(n+1)/A056594(2*n)` -/
def P16833197602825876931.Spec : Prop :=
  ∀ n, P16833197602825876931.a n = (A138558 (n + 1) : ℚ)

end A138558

/-! ## A138558.P2847939302555406644

`A111580(n+1)*A132367(3*n)`
-/

namespace A138558.P2847939302555406644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111580 (n + 1) * A132367 (3 * n)

end

end A138558.P2847939302555406644

namespace A138558

/-- `A111580(n+1)*A132367(3*n)` -/
def P2847939302555406644.Spec : Prop :=
  ∀ n, P2847939302555406644.a n = A138558 (n + 1)

end A138558

/-! ## A138558.P6057100305991544537

`A111580(n+1)/A010892(A017233(n))`
-/

namespace A138558.P6057100305991544537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) : ℚ) / (A010892 (A017233 n).toNat : ℚ)

end

end A138558.P6057100305991544537

namespace A138558

/-- `A111580(n+1)/A010892(A017233(n))` -/
def P6057100305991544537.Spec : Prop :=
  ∀ n, P6057100305991544537.a n = (A138558 (n + 1) : ℚ)

end A138558

/-!
# A138564: a(1) = 1; a(n) = a(n-1) + (n!)^3.

The programs for A138564, the canonical program `A138564.P15328388259499455085` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138564 has offset 1).

The definition of A138564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n+1)!^3` (program `A138564.P15328388259499455085`, by `A138564.P15328388259499455085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138564.P15328388259499455085

`a(n-1)+(n+1)!^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138564

/-- `a(n-1)+(n+1)!^3` -/
def P15328388259499455085.Spec : Prop :=
  ∀ n, (P15328388259499455085.a n : ℤ) = A138564 (n + 1)

theorem P15328388259499455085.correct : P15328388259499455085.Spec := by
  intro n
  simp only [A138564, Nat.add_sub_cancel]

end A138564

/-! ## A138564.P997544014951367668

`∑[∏[Δ[∑[n]²]]]`
-/

namespace A138564.P997544014951367668
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138564.P997544014951367668

namespace A138564

/-- `∑[∏[Δ[∑[n]²]]]` -/
def P997544014951367668.Spec : Prop :=
  ∀ n, P997544014951367668.a n = A138564 (n + 1)

end A138564

/-! ## A138564.P5625107408024381598

`or(1, ∑[(n+1)!^3])`
-/

namespace A138564.P5625107408024381598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138564.P5625107408024381598

namespace A138564

/-- `or(1, ∑[(n+1)!^3])` -/
def P5625107408024381598.Spec : Prop :=
  ∀ n, (P5625107408024381598.a n : ℤ) = A138564 (n + 1)

end A138564

/-! ## A138564.P12889189028224249124

`or(1, ∑[∏[(n+1)^3]])`
-/

namespace A138564.P12889189028224249124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138564.P12889189028224249124

namespace A138564

/-- `or(1, ∑[∏[(n+1)^3]])` -/
def P12889189028224249124.Spec : Prop :=
  ∀ n, (P12889189028224249124.a n : ℤ) = A138564 (n + 1)

end A138564

/-! ## A138564.P6452036223931058104

`abs(∑[(-(n+1)!)^3])`
-/

namespace A138564.P6452036223931058104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.factorial (n + 1) : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A138564.P6452036223931058104

namespace A138564

/-- `abs(∑[(-(n+1)!)^3])` -/
def P6452036223931058104.Spec : Prop :=
  ∀ n, P6452036223931058104.a n = A138564 (n + 1)

end A138564

/-!
# A138565: Array read by rows: T(n,k) is the number of automorphisms of the k-th Abelian group of order n, where the ordering is such that the rows are nondecreasing.

The programs for A138565, there is no canonical definition to state claims against.
-/

/-! ## A138565.P17100359302681413544

`A137316(lt[A147982(n), A147967(n+1)])`
-/

namespace A138565.P17100359302681413544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137316 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138565.P17100359302681413544

/-!
# A138566: Numbers n whose digits satisfy the following Diophantine equation: P = (X1* ... *Xr)/(X1+ ... +Xr), where P = prime number, Xi = digits of n.

The programs for A138566, there is no canonical definition to state claims against.
-/

/-! ## A138566.P1191203780232260627

`∩[A062519(n+1), A272592(n+1)]`
-/

namespace A138566.P1191203780232260627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138566.P1191203780232260627

/-! ## A138566.P15866209641796321538

`record[A062519(n+1)*A347618(A062509(n+1))]`
-/

namespace A138566.P15866209641796321538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062519 (n + 1) * A347618 (A062509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138566.P15866209641796321538

/-!
# A138567: Variant of A082467 if we regard 1 as a prime.

The programs for A138567, there is no canonical definition to state claims against.
-/

/-! ## A138567.P8675368612279934890

`n+1-or(1, A241686(n+1)%(n+1))`
-/

namespace A138567.P8675368612279934890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.lor 1 (Int.tmod (A241686 (n + 1)) (n + 1 : ℤ))

end

end A138567.P8675368612279934890

/-! ## A138567.P2701954150936191926

`1-A241686(A171526(n+1))+n`
-/

namespace A138567.P2701954150936191926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A241686 (A171526 (n + 1)).toNat + (n : ℤ)

end

end A138567.P2701954150936191926

/-! ## A138567.P6827296742737259275

`n-A029578(A333636(2*(n+1)))`
-/

namespace A138567.P6827296742737259275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A029578 (A333636 (2 * (n + 1))).toNat

end

end A138567.P6827296742737259275

/-! ## A138567.P5098141225621425864

`abs(A029578(A333636(2*(n+1)))+A001489(n))`
-/

namespace A138567.P5098141225621425864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029578 (A333636 (2 * (n + 1))).toNat + A001489 n|

end

end A138567.P5098141225621425864

/-! ## A138567.P14511978395360691773

`n-A029578(A154800(2*n+1))`
-/

namespace A138567.P14511978395360691773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A029578 (A154800 (2 * n + 1)).toNat

end

end A138567.P14511978395360691773

/-!
# A138569: First differences of A137776.

The programs for A138569, the canonical program `A138569.P6926071866085161601` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138569 has offset 0).

The definition of A138569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138569.P16246157248515895329

`ogf((x-3x^3+3x^5+x^6-2x^7)/(1-4x^2+6x^4-4x^6))`
-/

namespace A138569.P16246157248515895329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -3, 0, 3, 1, -2] [1, 0, -4, 0, 6, 0, -4] n

end

end A138569.P16246157248515895329

namespace A138569

/-- `ogf((x-3x^3+3x^5+x^6-2x^7)/(1-4x^2+6x^4-4x^6))` -/
def P16246157248515895329.Spec : Prop :=
  ∀ n, P16246157248515895329.a n = A138569 n

end A138569

/-! ## A138569.P6926071866085161601

`4*a(n-2)-6*a(n-4)+4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138569

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)` -/
def P6926071866085161601.Spec : Prop :=
  ∀ n, P6926071866085161601.a n = A138569 n

theorem P6926071866085161601.correct : P6926071866085161601.Spec := by
  intro n
  simp only [A138569]

end A138569

/-! ## A138569.P16236238383196902710

`Δ[A137776(n)]`
-/

namespace A138569.P16236238383196902710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138569.P16236238383196902710

namespace A138569

/-- `Δ[A137776(n)]` -/
def P16236238383196902710.Spec : Prop :=
  ∀ n, P16236238383196902710.a n = A138569 n

end A138569

/-! ## A138569.P14879817870822033402

`A137776(n+1)-A137776(n)`
-/

namespace A138569.P14879817870822033402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (n + 1) - A137776 n

end

end A138569.P14879817870822033402

namespace A138569

/-- `A137776(n+1)-A137776(n)` -/
def P14879817870822033402.Spec : Prop :=
  ∀ n, P14879817870822033402.a n = A138569 n

end A138569

/-! ## A138569.P13908348147104100376

`A158780(n)-A137171(2*(n+1))`
-/

namespace A138569.P13908348147104100376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n - A137171 (2 * (n + 1))

end

end A138569.P13908348147104100376

namespace A138569

/-- `A158780(n)-A137171(2*(n+1))` -/
def P13908348147104100376.Spec : Prop :=
  ∀ n, P13908348147104100376.a n = A138569 n

end A138569

/-! ## A138569.P5300575356304937397

`A137776(n+1)+A137776(n)/A134824(n+2)`
-/

namespace A138569.P5300575356304937397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137776 (n + 1) : ℚ) + (A137776 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A138569.P5300575356304937397

namespace A138569

/-- `A137776(n+1)+A137776(n)/A134824(n+2)` -/
def P5300575356304937397.Spec : Prop :=
  ∀ n, P5300575356304937397.a n = (A138569 n : ℚ)

end A138569

/-!
# A138570: Numbers that set records for the number by which they must be multiplied to double the number of divisors.

The programs for A138570, there is no canonical definition to state claims against.
-/

/-! ## A138570.P17804176724229766666

`record[A135060(A344180(n))]`
-/

namespace A138570.P17804176724229766666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P17804176724229766666

/-! ## A138570.P6356711617302897194

`record[A135060(A026233(n+1))]`
-/

namespace A138570.P6356711617302897194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A026233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P6356711617302897194

/-! ## A138570.P5692576198572947776

`record[A135060(A032742(n+1))]`
-/

namespace A138570.P5692576198572947776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P5692576198572947776

/-! ## A138570.P4770962343710882293

`record[A135060(A277813(n+1))]`
-/

namespace A138570.P4770962343710882293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A277813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P4770962343710882293

/-! ## A138570.P9854820585879307718

`record[A135060(A057979(n+2))]`
-/

namespace A138570.P9854820585879307718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A057979 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P9854820585879307718

/-! ## A138570.P16438026036178229112

`A135060(A140297(n+1)-1)`
-/

namespace A138570.P16438026036178229112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A140297 (n + 1) - 1).toNat

end

end A138570.P16438026036178229112

/-! ## A138570.P211297462828741995

`record[A135060(A008620(A028242(n)))]`
-/

namespace A138570.P211297462828741995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A008620 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P211297462828741995

/-! ## A138570.P11044641286733821540

`record[A135060(A008619(A057979(n)))]`
-/

namespace A138570.P11044641286733821540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A008619 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P11044641286733821540

/-! ## A138570.P16506588554779567872

`record[A135060(A008620(A071975(n+1)))]`
-/

namespace A138570.P16506588554779567872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A008620 (A071975 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138570.P16506588554779567872

/-! ## A138570.P9004258140801528751

`A135060(∑[runs[A135060(n+1)]])`
-/

namespace A138570.P9004258140801528751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138570.P9004258140801528751

/-!
# A138573: a(n) = 2*a(n-1) + 2*a(n-2) + 2*a(n-3) - a(n-4); a(0)=0, a(1)=1, a(2)=2, a(3)=5.

The programs for A138573, the canonical program `A138573.P16889924034756105502` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138573 has offset 0).

The definition of A138573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A138573.P16889924034756105502`, by `A138573.P16889924034756105502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138573.P11289092755518130713

`ogf((x-x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A138573.P11289092755518130713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -2, -2, -2, 1] n

end

end A138573.P11289092755518130713

namespace A138573

/-- `ogf((x-x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P11289092755518130713.Spec : Prop :=
  ∀ n, P11289092755518130713.a n = A138573 n

end A138573

/-! ## A138573.P16889924034756105502

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138573

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P16889924034756105502.Spec : Prop :=
  ∀ n, P16889924034756105502.a n = A138573 n

theorem P16889924034756105502.correct : P16889924034756105502.Spec := by
  intro n
  simp only [A138573]

end A138573

/-! ## A138573.P12508939169559825182

`A143056(n+1)²+A272665(n+1)²`
-/

namespace A138573.P12508939169559825182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143056 (n + 1) ^ 2 + A272665 (n + 1) ^ 2

end

end A138573.P12508939169559825182

namespace A138573

/-- `A143056(n+1)²+A272665(n+1)²` -/
def P12508939169559825182.Spec : Prop :=
  ∀ n, P12508939169559825182.a n = A138573 n

end A138573

/-! ## A138573.P18348475493120290529

`(((ϕ+sqrt(ϕ))^n+(ϕ-sqrt(ϕ))^n)/2-(-1)^n*cos(n*atan(sqrt(ϕ))))/sqrt(5)`
-/

namespace A138573.P18348475493120290529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((Real.goldenRatio + Real.sqrt Real.goldenRatio) ^ n + (Real.goldenRatio - Real.sqrt Real.goldenRatio) ^ n) / 2 - ((-1) ^ n : ℝ) * Real.cos ((n : ℝ) * Real.arctan (Real.sqrt Real.goldenRatio))) / Real.sqrt (5 : ℝ)

end

end A138573.P18348475493120290529

namespace A138573

/-- `(((ϕ+sqrt(ϕ))^n+(ϕ-sqrt(ϕ))^n)/2-(-1)^n*cos(n*atan(sqrt(ϕ))))/sqrt(5)` -/
def P18348475493120290529.Spec : Prop :=
  ∀ n, P18348475493120290529.a n = (A138573 n : ℝ)

end A138573

/-! ## A138573.P11910006818702376987

`A206625(2*n)`
-/

namespace A138573.P11910006818702376987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n)

end

end A138573.P11910006818702376987

namespace A138573

/-- `A206625(2*n)` -/
def P11910006818702376987.Spec : Prop :=
  ∀ n, P11910006818702376987.a n = A138573 n

end A138573

/-! ## A138573.P18293100507646150324

`record[A206625(A029578(n))]`
-/

namespace A138573.P18293100507646150324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138573.P18293100507646150324

namespace A138573

/-- `record[A206625(A029578(n))]` -/
def P18293100507646150324.Spec : Prop :=
  ∀ n, P18293100507646150324.a n = A138573 n

end A138573

/-! ## A138573.P17053741635113717211

`record[A206625(A131380(n))]`
-/

namespace A138573.P17053741635113717211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138573.P17053741635113717211

namespace A138573

/-- `record[A206625(A131380(n))]` -/
def P17053741635113717211.Spec : Prop :=
  ∀ n, P17053741635113717211.a n = A138573 n

end A138573

/-! ## A138573.P467245778713664427

`A317973(n)-A045821(n)`
-/

namespace A138573.P467245778713664427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317973 n - A045821 n

end

end A138573.P467245778713664427

namespace A138573

/-- `A317973(n)-A045821(n)` -/
def P467245778713664427.Spec : Prop :=
  ∀ n, P467245778713664427.a n = A138573 n

end A138573

/-! ## A138573.P4872563037587981738

`A192234(n+1)+A045821(n)`
-/

namespace A138573.P4872563037587981738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1) + A045821 n

end

end A138573.P4872563037587981738

namespace A138573

/-- `A192234(n+1)+A045821(n)` -/
def P4872563037587981738.Spec : Prop :=
  ∀ n, P4872563037587981738.a n = A138573 n

end A138573

/-! ## A138573.P17167388991083805007

`A317974(n+1)+A317974(n)`
-/

namespace A138573.P17167388991083805007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 1) + A317974 n

end

end A138573.P17167388991083805007

namespace A138573

/-- `A317974(n+1)+A317974(n)` -/
def P17167388991083805007.Spec : Prop :=
  ∀ n, P17167388991083805007.a n = A138573 n

end A138573

/-! ## A138573.P18177814282340428491

`A192237(n+2)-A192237(n)`
-/

namespace A138573.P18177814282340428491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 2) - A192237 n

end

end A138573.P18177814282340428491

namespace A138573

/-- `A192237(n+2)-A192237(n)` -/
def P18177814282340428491.Spec : Prop :=
  ∀ n, P18177814282340428491.a n = A138573 n

end A138573

/-! ## A138573.P11168844028288712253

`A192237(n+1)+A192237(n+1)+A192234(n)`
-/

namespace A138573.P11168844028288712253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 1) + (A192237 (n + 1) + A192234 n)

end

end A138573.P11168844028288712253

namespace A138573

/-- `A192237(n+1)+A192237(n+1)+A192234(n)` -/
def P11168844028288712253.Spec : Prop :=
  ∀ n, P11168844028288712253.a n = A138573 n

end A138573

/-! ## A138573.P999232915773228735

`Δ[A192237(n+1)+A192237(n)]`
-/

namespace A138573.P999232915773228735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 1) + A192237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138573.P999232915773228735

namespace A138573

/-- `Δ[A192237(n+1)+A192237(n)]` -/
def P999232915773228735.Spec : Prop :=
  ∀ n, P999232915773228735.a n = A138573 n

end A138573

/-! ## A138573.P9800589066040978046

`(A192234(n)+record[A192234(n)])/2`
-/

namespace A138573.P9800589066040978046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192234 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A138573.P9800589066040978046

namespace A138573

/-- `(A192234(n)+record[A192234(n)])/2` -/
def P9800589066040978046.Spec : Prop :=
  ∀ n, P9800589066040978046.a n = (A138573 n : ℚ)

end A138573

/-! ## A138573.P12048187790443904905

`A038989(n+1)-A192236(n+1)`
-/

namespace A138573.P12048187790443904905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 (n + 1) - A192236 (n + 1)

end

end A138573.P12048187790443904905

namespace A138573

/-- `A038989(n+1)-A192236(n+1)` -/
def P12048187790443904905.Spec : Prop :=
  ∀ n, P12048187790443904905.a n = A138573 n

end A138573

/-! ## A138573.P11720240468698583338

`A138574(n+1)-A389120(n+1)`
-/

namespace A138573.P11720240468698583338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 1) - A389120 (n + 1)

end

end A138573.P11720240468698583338

namespace A138573

/-- `A138574(n+1)-A389120(n+1)` -/
def P11720240468698583338.Spec : Prop :=
  ∀ n, P11720240468698583338.a n = A138573 n

end A138573

/-! ## A138573.P14456354936805710838

`2*A138574(n+1)-A112835(2*n+1)`
-/

namespace A138573.P14456354936805710838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138574 (n + 1) - A112835 (2 * n + 1)

end

end A138573.P14456354936805710838

namespace A138573

/-- `2*A138574(n+1)-A112835(2*n+1)` -/
def P14456354936805710838.Spec : Prop :=
  ∀ n, P14456354936805710838.a n = A138573 n

end A138573

/-! ## A138573.P5289677222604669251

`A387018(n+1)-(A389120(n+1)+A389120(n))`
-/

namespace A138573.P5289677222604669251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387018 (n + 1) - (A389120 (n + 1) + A389120 n)

end

end A138573.P5289677222604669251

namespace A138573

/-- `A387018(n+1)-(A389120(n+1)+A389120(n))` -/
def P5289677222604669251.Spec : Prop :=
  ∀ n, P5289677222604669251.a n = A138573 n

end A138573

/-!
# A138574: a(n) = 2*a(n-1) + 2*a(n-2) + 2*a(n-3) - a(n-4); a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=25.

The programs for A138574, the canonical program `A138574.P6076670531325123912` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138574 has offset 0).

The definition of A138574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A138574.P6076670531325123912`, by `A138574.P6076670531325123912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138574.P18344214252999056779

`ogf((x+x^2+x^3-x^4)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A138574.P18344214252999056779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, -1] [1, -2, -2, -2, 1] n

end

end A138574.P18344214252999056779

namespace A138574

/-- `ogf((x+x^2+x^3-x^4)/(1-2x-2x^2-2x^3+x^4))` -/
def P18344214252999056779.Spec : Prop :=
  ∀ n, P18344214252999056779.a n = A138574 n

end A138574

/-! ## A138574.P6076670531325123912

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=25`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138574

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P6076670531325123912.Spec : Prop :=
  ∀ n, P6076670531325123912.a n = A138574 n

theorem P6076670531325123912.correct : P6076670531325123912.Spec := by
  intro n
  simp only [A138574]

end A138574

/-! ## A138574.P1754938378067554598

`A192235(A028310(n))+A192234(n)`
-/

namespace A138574.P1754938378067554598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192235 (A028310 n).toNat + A192234 n

end

end A138574.P1754938378067554598

namespace A138574

/-- `A192235(A028310(n))+A192234(n)` -/
def P1754938378067554598.Spec : Prop :=
  ∀ n, P1754938378067554598.a n = A138574 n

end A138574

/-! ## A138574.P425132699139198577

`A038989(n)-A138573(A028310(n))`
-/

namespace A138574.P425132699139198577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n - A138573 (A028310 n).toNat

end

end A138574.P425132699139198577

namespace A138574

/-- `A038989(n)-A138573(A028310(n))` -/
def P425132699139198577.Spec : Prop :=
  ∀ n, P425132699139198577.a n = A138574 n

end A138574

/-! ## A138574.P7015974972295963623

`A038989(n)-A138573(A000007(n)+n)`
-/

namespace A138574.P7015974972295963623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n - A138573 (A000007 n + (n : ℤ)).toNat

end

end A138574.P7015974972295963623

namespace A138574

/-- `A038989(n)-A138573(A000007(n)+n)` -/
def P7015974972295963623.Spec : Prop :=
  ∀ n, P7015974972295963623.a n = A138574 n

end A138574

/-! ## A138574.P1955871652119595121

`A038989(n)-A000007(n)-A138573(n)`
-/

namespace A138574.P1955871652119595121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n - A000007 n - A138573 n

end

end A138574.P1955871652119595121

namespace A138574

/-- `A038989(n)-A000007(n)-A138573(n)` -/
def P1955871652119595121.Spec : Prop :=
  ∀ n, P1955871652119595121.a n = A138574 n

end A138574

/-! ## A138574.P15969152817405590159

`(A038989(n)-A138573(n))*char[A117910(n)]`
-/

namespace A138574.P15969152817405590159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038989 n - A138573 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A138574.P15969152817405590159

namespace A138574

/-- `(A038989(n)-A138573(n))*char[A117910(n)]` -/
def P15969152817405590159.Spec : Prop :=
  ∀ n, P15969152817405590159.a n = A138574 n

end A138574

/-! ## A138574.P12925491412189927034

`A192236(n+1)%Δ[A038989(n)]`
-/

namespace A138574.P12925491412189927034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192236 (n + 1)) (f1 (n + 1) - f1 n)

end

end A138574.P12925491412189927034

namespace A138574

/-- `A192236(n+1)%Δ[A038989(n)]` -/
def P12925491412189927034.Spec : Prop :=
  ∀ n, P12925491412189927034.a n = A138574 n

end A138574

/-!
# A138576: Numbers k such that 2^(2*k - 1) - 1 is prime.

The programs for A138576, there is no canonical definition to state claims against.
-/

/-! ## A138576.P5205167316150288218

`A146768(n+1)+1`
-/

namespace A138576.P5205167316150288218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146768 (n + 1) + 1

end

end A138576.P5205167316150288218

/-! ## A138576.P486045942458637874

`(A000043(n+2)+1)/2`
-/

namespace A138576.P486045942458637874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000043 (n + 2) + 1 : ℚ) / 2

end

end A138576.P486045942458637874

/-! ## A138576.P6407294426969513270

`A139481(n+2)+2`
-/

namespace A138576.P6407294426969513270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139481 (n + 2) + 2

end

end A138576.P6407294426969513270

/-! ## A138576.P12748591986994630563

`ceil(A174265(n+1)/2)`
-/

namespace A138576.P12748591986994630563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174265 (n + 1) : ℚ) / 2⌉

end

end A138576.P12748591986994630563

/-! ## A138576.P8899968289164427321

`ceil(A000043(n+2)/2)`
-/

namespace A138576.P8899968289164427321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000043 (n + 2) : ℚ) / 2⌉

end

end A138576.P8899968289164427321

/-! ## A138576.P15076029430172084266

`A139480(n+2)/2+2`
-/

namespace A138576.P15076029430172084266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139480 (n + 2) : ℚ) / 2 + 2

end

end A138576.P15076029430172084266

/-!
# A138577: Numbers k such that 2^(2*k-3) - 3 is prime.

The programs for A138577, there is no canonical definition to state claims against.
-/

/-! ## A138577.P13688523345216416093

`eq[A057673(2*n+1), 3]+2`
-/

namespace A138577.P13688523345216416093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 2

end

end A138577.P13688523345216416093

/-! ## A138577.P4802862865814810349

`record[A001057(A050414(n+1))+1]`
-/

namespace A138577.P4802862865814810349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A050414 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138577.P4802862865814810349

/-! ## A138577.P746995480354040089

`record[A133622(A050414(n+1)+1)]`
-/

namespace A138577.P746995480354040089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A050414 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138577.P746995480354040089

/-! ## A138577.P5706856264201165439

`eq[A057673(A004274(n)), A122553(n)]`
-/

namespace A138577.P5706856264201165439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A004274 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138577.P5706856264201165439

/-! ## A138577.P1227514919517856254

`eq[A057673(A004274(n)), A158799(n)]`
-/

namespace A138577.P1227514919517856254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A004274 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138577.P1227514919517856254

/-!
# A138578: Numbers k such that 2^(2*k-7) - 7 is prime.

The programs for A138578, there is no canonical definition to state claims against.
-/

/-! ## A138578.P10332293228286172058

`(A059609(n+1)+7)/2`
-/

namespace A138578.P10332293228286172058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059609 (n + 1) + 7 : ℚ) / 2

end

end A138578.P10332293228286172058

/-! ## A138578.P14135183880477090454

`A000265(A059609(n+1)+7)`
-/

namespace A138578.P14135183880477090454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A059609 (n + 1) + 7).toNat

end

end A138578.P14135183880477090454

/-! ## A138578.P12047652217674966617

`A014682(A059609(n+1)+7)`
-/

namespace A138578.P12047652217674966617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A059609 (n + 1) + 7).toNat

end

end A138578.P12047652217674966617

/-! ## A138578.P5356104230363222507

`A273943(A059609(n+1)+7)`
-/

namespace A138578.P5356104230363222507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A059609 (n + 1) + 7).toNat

end

end A138578.P5356104230363222507

/-!
# A138579: Numbers k such that 2^(2*k-9) - 9 is prime.

The programs for A138579, there is no canonical definition to state claims against.
-/

/-! ## A138579.P7862229291857063146

`(A059610(n+2)+9)/2`
-/

namespace A138579.P7862229291857063146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059610 (n + 2) + 9 : ℚ) / 2

end

end A138579.P7862229291857063146

/-!
# A138580: Numbers k such that 2^(2*k-13) - 13 is prime.

The programs for A138580, there is no canonical definition to state claims against.
-/

/-! ## A138580.P3566762341917061830

`(A096818(n+2)+13)/2`
-/

namespace A138580.P3566762341917061830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096818 (n + 2) + 13 : ℚ) / 2

end

end A138580.P3566762341917061830

/-!
# A138582: Numbers k such that 2^(2*k-19) - 19 is prime.

The programs for A138582, there is no canonical definition to state claims against.
-/

/-! ## A138582.P13557868093010619097

`(A096819(n+1)+19)/2`
-/

namespace A138582.P13557868093010619097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096819 (n + 1) + 19 : ℚ) / 2

end

end A138582.P13557868093010619097

/-! ## A138582.P8946997404448208007

`A014682(A096819(n+1)+19)`
-/

namespace A138582.P8946997404448208007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096819 (n + 1) + 19).toNat

end

end A138582.P8946997404448208007

/-! ## A138582.P15908959380833843053

`A273943(A096819(n+1)+19)`
-/

namespace A138582.P15908959380833843053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A096819 (n + 1) + 19).toNat

end

end A138582.P15908959380833843053

/-!
# A138584: Palindromic primes using only digits 3 and 5.

The programs for A138584, there is no canonical definition to state claims against.
-/

/-! ## A138584.P14056829129226665459

`∩[A020462(n+1), A045336(n+1)]`
-/

namespace A138584.P14056829129226665459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138584.P14056829129226665459

/-! ## A138584.P12981486677893103400

`∩[A020462(n+1), A088562(n+1)]`
-/

namespace A138584.P12981486677893103400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138584.P12981486677893103400

/-! ## A138584.P1718160124015500758

`∩[A020462(n+1), A159471(n+1)]`
-/

namespace A138584.P1718160124015500758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138584.P1718160124015500758

/-! ## A138584.P11807591749215190582

`∩[A045336(n+1), A284379(n+1)]`
-/

namespace A138584.P11807591749215190582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138584.P11807591749215190582

/-! ## A138584.P3982593388016239702

`∩[A088562(n+1), A284379(n+1)]`
-/

namespace A138584.P3982593388016239702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138584.P3982593388016239702

/-!
# A138585: The sequence is formed by concatenating subsequences S1, S2, ... each of finite length. S1 consists of the element 1. The n-th subsequence consist of numbers {(n/2)*(n/2 - 1)+ 1, ..., (n/2)*(n/2 + 1)} for n even, {((n-1)/2)^2, ..., (n-1)/2 * ((n-1)/2 + 2)} for n odd.

The programs for A138585, the canonical program `A138585.P8523475872901714175` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138585 has offset 1).

The definition of A138585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138585.P12348006547456428772

`n-a(n-col(n)-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A138585.P12348006547456428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) - a ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1).toNat

end

end A138585.P12348006547456428772

namespace A138585

/-- `n-a(n-col(n)-1)` -/
def P12348006547456428772.Spec : Prop :=
  ∀ n, P12348006547456428772.a n = A138585 (n + 1)

theorem P12348006547456428772.correct : P12348006547456428772.Spec := by
  intro n
  simp only [A138585, Nat.add_sub_cancel, A138585.P12348006547456428772.a, A138585.P8523475872901714175.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138585

/-! ## A138585.P8523475872901714175

`n-a(n-A002260(n+1))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138585

/-- `n-a(n-A002260(n+1))` -/
def P8523475872901714175.Spec : Prop :=
  ∀ n, P8523475872901714175.a n = A138585 (n + 1)

theorem P8523475872901714175.correct : P8523475872901714175.Spec := by
  intro n
  simp only [A138585, Nat.add_sub_cancel]

end A138585

/-! ## A138585.P2047399904438938392

`floor(A000982(n+1)/A000982(A002024(n+1)))`
-/

namespace A138585.P2047399904438938392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000982 (n + 1) : ℚ) / (A000982 (A002024 (n + 1)).toNat : ℚ)⌋

end

end A138585.P2047399904438938392

namespace A138585

/-- `floor(A000982(n+1)/A000982(A002024(n+1)))` -/
def P2047399904438938392.Spec : Prop :=
  ∀ n, P2047399904438938392.a n = A138585 (n + 1)

end A138585

/-! ## A138585.P12851698854107922553

`A065033(A116941(n))`
-/

namespace A138585.P12851698854107922553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A116941 n).toNat

end

end A138585.P12851698854107922553

namespace A138585

/-- `A065033(A116941(n))` -/
def P12851698854107922553.Spec : Prop :=
  ∀ n, P12851698854107922553.a n = A138585 (n + 1)

end A138585

/-! ## A138585.P662722980824888343

`floor(sqrt(1+A002620(A074147(n+1))))`
-/

namespace A138585.P662722980824888343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (1 + A002620 (A074147 (n + 1)).toNat)

end

end A138585.P662722980824888343

namespace A138585

/-- `floor(sqrt(1+A002620(A074147(n+1))))` -/
def P662722980824888343.Spec : Prop :=
  ∀ n, P662722980824888343.a n = A138585 (n + 1)

end A138585

/-! ## A138585.P7812706855964240583

`A004526(A074147(floor(1/(n+1)+n+1)))`
-/

namespace A138585.P7812706855964240583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074147 ⌊1 / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat).toNat

end

end A138585.P7812706855964240583

namespace A138585

/-- `A004526(A074147(floor(1/(n+1)+n+1)))` -/
def P7812706855964240583.Spec : Prop :=
  ∀ n, P7812706855964240583.a n = A138585 (n + 1)

end A138585

/-! ## A138585.P17780830057465031630

`n+1-A110655(A093995(n+1))%(n+1)`
-/

namespace A138585.P17780830057465031630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A110655 (A093995 (n + 1)).toNat) (n + 1 : ℤ)

end

end A138585.P17780830057465031630

namespace A138585

/-- `n+1-A110655(A093995(n+1))%(n+1)` -/
def P17780830057465031630.Spec : Prop :=
  ∀ n, P17780830057465031630.a n = A138585 (n + 1)

end A138585

/-!
# A138586: a(1) = 1; a(n) = a(n-1) + (n!)^7.

The programs for A138586, the canonical program `A138586.P10558124652730472065` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138586 has offset 1).

The definition of A138586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n+1)!^7` (program `A138586.P10558124652730472065`, by `A138586.P10558124652730472065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138586.P10558124652730472065

`a(n-1)+(n+1)!^7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138586

/-- `a(n-1)+(n+1)!^7` -/
def P10558124652730472065.Spec : Prop :=
  ∀ n, (P10558124652730472065.a n : ℤ) = A138586 (n + 1)

theorem P10558124652730472065.correct : P10558124652730472065.Spec := by
  intro n
  simp only [A138586, Nat.add_sub_cancel]

end A138586

/-! ## A138586.P11980148516252918020

`∑[(n+1)!^7]`
-/

namespace A138586.P11980148516252918020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138586.P11980148516252918020

namespace A138586

/-- `∑[(n+1)!^7]` -/
def P11980148516252918020.Spec : Prop :=
  ∀ n, (P11980148516252918020.a n : ℤ) = A138586 (n + 1)

end A138586

/-! ## A138586.P4002715084948654916

`∑[∏[(n+1)^7]]`
-/

namespace A138586.P4002715084948654916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138586.P4002715084948654916

namespace A138586

/-- `∑[∏[(n+1)^7]]` -/
def P4002715084948654916.Spec : Prop :=
  ∀ n, (P4002715084948654916.a n : ℤ) = A138586 (n + 1)

end A138586

/-! ## A138586.P18297227809020386150

`Δ[abs(∑[∑[n!^7]]-n)]`
-/

namespace A138586.P18297227809020386150
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138586.P18297227809020386150

namespace A138586

/-- `Δ[abs(∑[∑[n!^7]]-n)]` -/
def P18297227809020386150.Spec : Prop :=
  ∀ n, P18297227809020386150.a n = A138586 (n + 1)

end A138586

/-! ## A138586.P14730248268523848960

`∏[(n+1)^7]+a(n-1)` with `a(0)=1`
-/

namespace A138586.P14730248268523848960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A138586.P14730248268523848960

namespace A138586

/-- `∏[(n+1)^7]+a(n-1)` -/
def P14730248268523848960.Spec : Prop :=
  ∀ n, (P14730248268523848960.a n : ℤ) = A138586 (n + 1)

end A138586

/-!
# A138587: The union of all entries of A024495, A131708 and A024493 sorted into natural order.

The programs for A138587, the canonical program `A138587.P3368848007345646980` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138587 has offset 0).

The definition of A138587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138587.P3368848007345646980

`ogf((x+3x^2+4x^3+5x^4+4x^5+2x^6)/(1+x-x^2-x^3-2x^4-2x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138587

/-- `ogf((x+3x^2+4x^3+5x^4+4x^5+2x^6)/(1+x-x^2-x^3-2x^4-2x^5))` -/
def P3368848007345646980.Spec : Prop :=
  ∀ n, P3368848007345646980.a n = A138587 n

theorem P3368848007345646980.correct : P3368848007345646980.Spec := by
  intro n
  simp only [A138587]

end A138587

/-! ## A138587.P5508617581687332512

`record[A000975(A002265(n))+A000035(n)]`
-/

namespace A138587.P5508617581687332512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A002265 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138587.P5508617581687332512

namespace A138587

/-- `record[A000975(A002265(n))+A000035(n)]` -/
def P5508617581687332512.Spec : Prop :=
  ∀ n, P5508617581687332512.a n = A138587 n

end A138587

/-! ## A138587.P3044575137202397708

`record[A000975(A103221(n))-A163810(n)]`
-/

namespace A138587.P3044575137202397708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A103221 n).toNat - A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138587.P3044575137202397708

namespace A138587

/-- `record[A000975(A103221(n))-A163810(n)]` -/
def P3044575137202397708.Spec : Prop :=
  ∀ n, P3044575137202397708.a n = A138587 n

end A138587

/-! ## A138587.P8949540810647146171

`∪[A000975(n)+1, A000975(n)]`
-/

namespace A138587.P8949540810647146171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138587.P8949540810647146171

namespace A138587

/-- `∪[A000975(n)+1, A000975(n)]` -/
def P8949540810647146171.Spec : Prop :=
  ∀ n, (P8949540810647146171.a n : ℤ) = A138587 n

end A138587

/-! ## A138587.P14953386968304253740

`∪[A083322(n+1), A131708(n)]`
-/

namespace A138587.P14953386968304253740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138587.P14953386968304253740

namespace A138587

/-- `∪[A083322(n+1), A131708(n)]` -/
def P14953386968304253740.Spec : Prop :=
  ∀ n, (P14953386968304253740.a n : ℤ) = A138587 n

end A138587

/-! ## A138587.P2940368694927734127

`record[A018240(n+3)-A078008(n)]`
-/

namespace A138587.P2940368694927734127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018240 (n + 3) - A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138587.P2940368694927734127

namespace A138587

/-- `record[A018240(n+3)-A078008(n)]` -/
def P2940368694927734127.Spec : Prop :=
  ∀ n, P2940368694927734127.a n = A138587 n

end A138587

/-! ## A138587.P10658724023067165381

`record[A005578(A003056(n))-A060016(n+1)]`
-/

namespace A138587.P10658724023067165381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A003056 n).toNat - A060016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138587.P10658724023067165381

namespace A138587

/-- `record[A005578(A003056(n))-A060016(n+1)]` -/
def P10658724023067165381.Spec : Prop :=
  ∀ n, P10658724023067165381.a n = A138587 n

end A138587

/-! ## A138587.P8417862051535044691

`record[A025581(n)+A000975(A002262(n))]`
-/

namespace A138587.P8417862051535044691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000975 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138587.P8417862051535044691

namespace A138587

/-- `record[A025581(n)+A000975(A002262(n))]` -/
def P8417862051535044691.Spec : Prop :=
  ∀ n, P8417862051535044691.a n = A138587 n

end A138587

/-!
# A138588: a(n) = the least integer > n such that r(1)|a(n), r(2)|(a(n)+1), r(3)|(a(n)+2),... and r(n)|(a(n)+n-1), where (r(1),r(2),r(3),...,r(n)) is some permutation of (1,2,3,...,n).

The programs for A138588, there is no canonical definition to state claims against.
-/

/-! ## A138588.P7234915137521144752

`A000005(C(A269360(n+1), A162217(n+1)))`
-/

namespace A138588.P7234915137521144752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A269360 (n + 1)).toNat (A162217 (n + 1)).toNat)

end

end A138588.P7234915137521144752

/-! ## A138588.P4077589169897834221

`A000005(A120004(2*n+1)*A120017(n+2))`
-/

namespace A138588.P4077589169897834221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A120004 (2 * n + 1) * A120017 (n + 2)).toNat

end

end A138588.P4077589169897834221

/-!
# A138589: a(n) = 5^n mod 4^n.

The programs for A138589, the canonical program `A138589.P12190300562253992034` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138589 has offset 0).

The definition of A138589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%(4^n)` (program `A138589.P12190300562253992034`, by `A138589.P12190300562253992034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138589.P12190300562253992034

`(5^n)%(4^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A138589

/-- `(5^n)%(4^n)` -/
def P12190300562253992034.Spec : Prop :=
  ∀ n, (P12190300562253992034.a n : ℤ) = A138589 n

theorem P12190300562253992034.correct : P12190300562253992034.Spec := by
  intro n
  simp only [A138589]

end A138589

/-! ## A138589.P10878301254148260879

`and(4^n-1, 5^n)`
-/

namespace A138589.P10878301254148260879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - 1) (5 ^ n : ℤ)

end

end A138589.P10878301254148260879

namespace A138589

/-- `and(4^n-1, 5^n)` -/
def P10878301254148260879.Spec : Prop :=
  ∀ n, P10878301254148260879.a n = A138589 n

end A138589

/-! ## A138589.P1377673129434029879

`A139738(n)/2^n`
-/

namespace A138589.P1377673129434029879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139738 n : ℚ) / (2 ^ n : ℚ)

end

end A138589.P1377673129434029879

namespace A138589

/-- `A139738(n)/2^n` -/
def P1377673129434029879.Spec : Prop :=
  ∀ n, P1377673129434029879.a n = (A138589 n : ℚ)

end A138589

/-! ## A138589.P15262033430948394081

`and(A155619(n), A155626(n))-1`
-/

namespace A138589.P15262033430948394081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155619 n) (A155626 n) - 1

end

end A138589.P15262033430948394081

namespace A138589

/-- `and(A155619(n), A155626(n))-1` -/
def P15262033430948394081.Spec : Prop :=
  ∀ n, P15262033430948394081.a n = A138589 n

end A138589

/-!
# A138590: a(n) = Fibonacci(9*n).

The programs for A138590, the canonical program `A138590.P15660582422791403849` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138590 has offset 0).

The definition of A138590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(9*n)` (program `A138590.P15660582422791403849`, by `A138590.P15660582422791403849.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138590.P10878425532703794140

`ogf(34x/(1-76x-x^2))`
-/

namespace A138590.P10878425532703794140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 34] [1, -76, -1] n

end

end A138590.P10878425532703794140

namespace A138590

/-- `ogf(34x/(1-76x-x^2))` -/
def P10878425532703794140.Spec : Prop :=
  ∀ n, P10878425532703794140.a n = A138590 n

end A138590

/-! ## A138590.P8186439268492087151

`76*a(n-1)+a(n-2)` with `a(0)=0, a(1)=34`
-/

namespace A138590.P8186439268492087151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 34] fun n a =>
  76 * a (n - 1) + a (n - 2)

end

end A138590.P8186439268492087151

namespace A138590

/-- `76*a(n-1)+a(n-2)` -/
def P8186439268492087151.Spec : Prop :=
  ∀ n, (P8186439268492087151.a n : ℤ) = A138590 n

end A138590

/-! ## A138590.P15660582422791403849

`A000045(9*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138590

/-- `A000045(9*n)` -/
def P15660582422791403849.Spec : Prop :=
  ∀ n, P15660582422791403849.a n = A138590 n

theorem P15660582422791403849.correct : P15660582422791403849.Spec := by
  intro n
  simp only [A138590]

end A138590

/-! ## A138590.P9899969234747074279

`34*A049669(n)`
-/

namespace A138590.P9899969234747074279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * A049669 n

end

end A138590.P9899969234747074279

namespace A138590

/-- `34*A049669(n)` -/
def P9899969234747074279.Spec : Prop :=
  ∀ n, P9899969234747074279.a n = A138590 n

end A138590

/-! ## A138590.P1662179873518895113

`A014445(3*n)`
-/

namespace A138590.P1662179873518895113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (3 * n)

end

end A138590.P1662179873518895113

namespace A138590

/-- `A014445(3*n)` -/
def P1662179873518895113.Spec : Prop :=
  ∀ n, P1662179873518895113.a n = A138590 n

theorem P1662179873518895113.correct : P1662179873518895113.Spec := by
  intro n
  simp only [A138590, Nat.add_sub_cancel, A138590.P1662179873518895113.a, A138590.P15660582422791403849.a, A000045, A000045.P11838749114346432762.a, A014445, A014445.P8589215430509792563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138590

/-! ## A138590.P585288238966786731

`A117647(6*n)`
-/

namespace A138590.P585288238966786731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (6 * n)

end

end A138590.P585288238966786731

namespace A138590

/-- `A117647(6*n)` -/
def P585288238966786731.Spec : Prop :=
  ∀ n, P585288238966786731.a n = A138590 n

end A138590

/-! ## A138590.P11145027232697826676

`A104221(9*n)`
-/

namespace A138590.P11145027232697826676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (9 * n)

end

end A138590.P11145027232697826676

namespace A138590

/-- `A104221(9*n)` -/
def P11145027232697826676.Spec : Prop :=
  ∀ n, P11145027232697826676.a n = A138590 n

end A138590

/-! ## A138590.P584308776381200516

`A116585(9*n)`
-/

namespace A138590.P584308776381200516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116585 (9 * n)

end

end A138590.P584308776381200516

namespace A138590

/-- `A116585(9*n)` -/
def P584308776381200516.Spec : Prop :=
  ∀ n, P584308776381200516.a n = A138590 n

end A138590

/-! ## A138590.P17578188151065282365

`2*A001076(3*n)`
-/

namespace A138590.P17578188151065282365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 (3 * n)

end

end A138590.P17578188151065282365

namespace A138590

/-- `2*A001076(3*n)` -/
def P17578188151065282365.Spec : Prop :=
  ∀ n, P17578188151065282365.a n = A138590 n

end A138590

/-! ## A138590.P13039532532874994130

`A212804(9*n+1)`
-/

namespace A138590.P13039532532874994130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (9 * n + 1)

end

end A138590.P13039532532874994130

namespace A138590

/-- `A212804(9*n+1)` -/
def P13039532532874994130.Spec : Prop :=
  ∀ n, P13039532532874994130.a n = A138590 n

end A138590

/-!
# A138591: Sums of two or more consecutive nonnegative integers.

The programs for A138591, the canonical program `A138591.P13503904033525948997` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138591 has offset 1).

The definition of A138591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138591.P13503904033525948997

`n+1+A000523(n+1+A000523(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138591

/-- `n+1+A000523(n+1+A000523(n+1))` -/
def P13503904033525948997.Spec : Prop :=
  ∀ n, P13503904033525948997.a n = A138591 (n + 1)

theorem P13503904033525948997.correct : P13503904033525948997.Spec := by
  intro n
  simp only [A138591, Nat.add_sub_cancel]

end A138591

/-! ## A138591.P7253331228546313240

`comp[2*T(n-1,k)]` with `a(0)=2`
-/

namespace A138591.P7253331228546313240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * SequenceMachineLib.triUp f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P7253331228546313240

namespace A138591

/-- `comp[2*T(n-1,k)]` -/
def P7253331228546313240.Spec : Prop :=
  ∀ n, (P7253331228546313240.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P3683291961294301974

`comp[2*T(n-1,k-1)]` with `a(0)=2`
-/

namespace A138591.P3683291961294301974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * SequenceMachineLib.triUpLeft f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P3683291961294301974

namespace A138591

/-- `comp[2*T(n-1,k-1)]` -/
def P3683291961294301974.Spec : Prop :=
  ∀ n, (P3683291961294301974.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P17125739640574776452

`comp[2*T(n-2,k-1)]` with `a(0)=2`
-/

namespace A138591.P17125739640574776452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * SequenceMachineLib.triUp2Left f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P17125739640574776452

namespace A138591

/-- `comp[2*T(n-2,k-1)]` -/
def P17125739640574776452.Spec : Prop :=
  ∀ n, (P17125739640574776452.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P3193674012104928896

`comp[and(n, 1-n)]`
-/

namespace A138591.P3193674012104928896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P3193674012104928896

namespace A138591

/-- `comp[and(n, 1-n)]` -/
def P3193674012104928896.Spec : Prop :=
  ∀ n, (P3193674012104928896.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P5232190638294965072

`comp[Δ[∏[gcd(2, n)]]]`
-/

namespace A138591.P5232190638294965072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P5232190638294965072

namespace A138591

/-- `comp[Δ[∏[gcd(2, n)]]]` -/
def P5232190638294965072.Spec : Prop :=
  ∀ n, (P5232190638294965072.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P15541459118917247571

`comp[abs(xor(n, -n))]`
-/

namespace A138591.P15541459118917247571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P15541459118917247571

namespace A138591

/-- `comp[abs(xor(n, -n))]` -/
def P15541459118917247571.Spec : Prop :=
  ∀ n, (P15541459118917247571.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P13945679029400704674

`comp[-xor(n, -n)]`
-/

namespace A138591.P13945679029400704674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P13945679029400704674

namespace A138591

/-- `comp[-xor(n, -n)]` -/
def P13945679029400704674.Spec : Prop :=
  ∀ n, (P13945679029400704674.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P11640361537763028255

`lt[0, and(n, n-2)]`
-/

namespace A138591.P11640361537763028255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138591.P11640361537763028255

namespace A138591

/-- `lt[0, and(n, n-2)]` -/
def P11640361537763028255.Spec : Prop :=
  ∀ n, (P11640361537763028255.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P17405418303659913005

`comp[∑[2^n]]+1`
-/

namespace A138591.P17405418303659913005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A138591.P17405418303659913005

namespace A138591

/-- `comp[∑[2^n]]+1` -/
def P17405418303659913005.Spec : Prop :=
  ∀ n, (P17405418303659913005.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P15622828519485965958

`comp[or(1, 2^n)-1]`
-/

namespace A138591.P15622828519485965958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P15622828519485965958

namespace A138591

/-- `comp[or(1, 2^n)-1]` -/
def P15622828519485965958.Spec : Prop :=
  ∀ n, (P15622828519485965958.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P9426812398054373398

`comp[1-or(n, 1-n)]`
-/

namespace A138591.P9426812398054373398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor (n : ℤ) (1 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P9426812398054373398

namespace A138591

/-- `comp[1-or(n, 1-n)]` -/
def P9426812398054373398.Spec : Prop :=
  ∀ n, (P9426812398054373398.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P4712051621605018289

`comp[xor(n, n-1)+1]`
-/

namespace A138591.P4712051621605018289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P4712051621605018289

namespace A138591

/-- `comp[xor(n, n-1)+1]` -/
def P4712051621605018289.Spec : Prop :=
  ∀ n, (P4712051621605018289.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P7582142160554938812

`comp[(2^n)%(3^n)]`
-/

namespace A138591.P7582142160554938812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 3 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P7582142160554938812

namespace A138591

/-- `comp[(2^n)%(3^n)]` -/
def P7582142160554938812.Spec : Prop :=
  ∀ n, (P7582142160554938812.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P1012551430680261473

`comp[∑{e}[2^n, 2^#]]`
-/

namespace A138591.P1012551430680261473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P1012551430680261473

namespace A138591

/-- `comp[∑{e}[2^n, 2^#]]` -/
def P1012551430680261473.Spec : Prop :=
  ∀ n, (P1012551430680261473.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P12087939748154976309

`comp[record[and(n+1, -n)]]`
-/

namespace A138591.P12087939748154976309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138591.P12087939748154976309

namespace A138591

/-- `comp[record[and(n+1, -n)]]` -/
def P12087939748154976309.Spec : Prop :=
  ∀ n, (P12087939748154976309.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P3568444154131706224

`comp[∑{p}[2^n, #^n]]`
-/

namespace A138591.P3568444154131706224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P3568444154131706224

namespace A138591

/-- `comp[∑{p}[2^n, #^n]]` -/
def P3568444154131706224.Spec : Prop :=
  ∀ n, (P3568444154131706224.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P6878498543396530822

`∑[runs[xor(n, n²-1)]]`
-/

namespace A138591.P6878498543396530822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n ^ 2 : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138591.P6878498543396530822

namespace A138591

/-- `∑[runs[xor(n, n²-1)]]` -/
def P6878498543396530822.Spec : Prop :=
  ∀ n, (P6878498543396530822.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P4173131772688862108

`comp[2*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A138591.P4173131772688862108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A138591.P4173131772688862108

namespace A138591

/-- `comp[2*a(n-1)]` -/
def P4173131772688862108.Spec : Prop :=
  ∀ n, (P4173131772688862108.a n : ℤ) = A138591 (n + 1)

end A138591

/-! ## A138591.P7145515236038215426

`eq[0, C(and(n, 1-n), n)]`
-/

namespace A138591.P7145515236038215426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (1 - (n : ℤ))).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138591.P7145515236038215426

namespace A138591

/-- `eq[0, C(and(n, 1-n), n)]` -/
def P7145515236038215426.Spec : Prop :=
  ∀ n, (P7145515236038215426.a n : ℤ) = A138591 (n + 1)

end A138591

/-!
# A138592: Sums of 4 or more consecutive nonnegative integers.

The programs for A138592, there is no canonical definition to state claims against.
-/

/-! ## A138592.P8480576937726463062

`∪[A057714(n+1), A138593(n+1)]`
-/

namespace A138592.P8480576937726463062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P8480576937726463062

/-! ## A138592.P12247273042907028291

`∪[A073760(n+1), A138593(n+1)]`
-/

namespace A138592.P12247273042907028291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P12247273042907028291

/-! ## A138592.P12555382958772209730

`∪[A080364(n+1), A138593(n+1)]`
-/

namespace A138592.P12555382958772209730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P12555382958772209730

/-! ## A138592.P11499953625321649879

`∪[A085232(n+1), A138593(n+1)]`
-/

namespace A138592.P11499953625321649879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P11499953625321649879

/-! ## A138592.P7116437223111257037

`∪[A085234(n+1), A138593(n+1)]`
-/

namespace A138592.P7116437223111257037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P7116437223111257037

/-! ## A138592.P5178601523545255208

`∪[A115036(n+1), A138593(n+1)]`
-/

namespace A138592.P5178601523545255208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P5178601523545255208

/-! ## A138592.P5155597423603003879

`∪[A132982(n+1), A138593(n+1)]`
-/

namespace A138592.P5155597423603003879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P5155597423603003879

/-! ## A138592.P562106595523850786

`∪[A138593(n+1), A230766(n+1)]`
-/

namespace A138592.P562106595523850786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P562106595523850786

/-! ## A138592.P2083601326005351566

`∪[A138593(n+1), A325230(n+1)]`
-/

namespace A138592.P2083601326005351566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P2083601326005351566

/-! ## A138592.P17986183608530126507

`∪[A138593(n+1), A396597(n+1)]`
-/

namespace A138592.P17986183608530126507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P17986183608530126507

/-! ## A138592.P15535785847153962955

`lt[2, A317840(A138153(n+1))]`
-/

namespace A138592.P15535785847153962955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138592.P15535785847153962955

/-! ## A138592.P16237340070447019286

`∪[A138593(n+1), A332766(n+1)]`
-/

namespace A138592.P16237340070447019286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138592.P16237340070447019286

/-!
# A138593: Sums of 5 or more consecutive nonnegative integers.

The programs for A138593, there is no canonical definition to state claims against.
-/

/-! ## A138593.P11771983255225349684

`lt[A101350(A298712(n+1)), A025879(n)]`
-/

namespace A138593.P11771983255225349684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101350 (A298712 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138593.P11771983255225349684

/-! ## A138593.P8006139602928662471

`lt[A171573(A171562(n+1)), A171565(3*n)]`
-/

namespace A138593.P8006139602928662471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171573 (A171562 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138593.P8006139602928662471

/-! ## A138593.P1641941088119217289

`lt[A203571(n), A219180(A265494(n+1))]`
-/

namespace A138593.P1641941088119217289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (A265494 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138593.P1641941088119217289

/-!
# A138594: Sums of 6 or more consecutive nonnegative integers.

The programs for A138594, there is no canonical definition to state claims against.
-/

/-! ## A138594.P11789947541234329329

`A080036(A138593(n+1)^A250662(n))`
-/

namespace A138594.P11789947541234329329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (SequenceMachineLib.roundAway ((A138593 (n + 1) : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A138594.P11789947541234329329

/-! ## A138594.P13698076265995300800

`A080036(C(A138593(n+1), A250662(n)))`
-/

namespace A138594.P13698076265995300800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (Nat.choose (A138593 (n + 1)).toNat (A250662 n).toNat)

end

end A138594.P13698076265995300800

/-! ## A138594.P3288561966254635889

`A080036(A250662(n)²²*A138593(n+1))`
-/

namespace A138594.P3288561966254635889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 ((A250662 n ^ 2) ^ 2 * A138593 (n + 1)).toNat

end

end A138594.P3288561966254635889

/-! ## A138594.P4194417980507949368

`A337813(2*n+5)-A070939(A000322(2*n))`
-/

namespace A138594.P4194417980507949368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337813 (2 * n + 5) - A070939 (A000322 (2 * n)).toNat

end

end A138594.P4194417980507949368

/-!
# A138596: Numbers k such that 2^(2*k-25) - 25 is prime.

The programs for A138596, there is no canonical definition to state claims against.
-/

/-! ## A138596.P2662859517387527003

`(A379020(n+1)+25)/2`
-/

namespace A138596.P2662859517387527003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379020 (n + 1) + 25 : ℚ) / 2

end

end A138596.P2662859517387527003

/-! ## A138596.P9090759107559313327

`A014682(A379020(n+1)+25)`
-/

namespace A138596.P9090759107559313327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A379020 (n + 1) + 25).toNat

end

end A138596.P9090759107559313327

/-! ## A138596.P14991873793265602217

`A273943(A379020(n+1)+25)`
-/

namespace A138596.P14991873793265602217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A379020 (n + 1) + 25).toNat

end

end A138596.P14991873793265602217

/-! ## A138596.P3098723641500044958

`12+A008619(A379020(n+1))`
-/

namespace A138596.P3098723641500044958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 + A008619 (A379020 (n + 1)).toNat

end

end A138596.P3098723641500044958

/-!
# A138597: Odd numbers k such that Hamming weight of k equals Hamming weight of k^3.

The programs for A138597, there is no canonical definition to state claims against.
-/

/-! ## A138597.P14209779497170834364

`∩[or(1, A118655(n+1)), A118655(n+1)]`
-/

namespace A138597.P14209779497170834364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A118655 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138597.P14209779497170834364

/-!
# A138598: Numbers k such that 2^(2*k-27)-27 is prime.

The programs for A138598, there is no canonical definition to state claims against.
-/

/-! ## A138598.P14371857695754286276

`A275767(n+1)+A222414(A060680(2*(n+2)))`
-/

namespace A138598.P14371857695754286276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275767 (n + 1) + A222414 (A060680 (2 * (n + 2))).toNat

end

end A138598.P14371857695754286276

