import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
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

/-!
# A009200: E.g.f. exp(sin(log(1+x))).

The programs for A009200, there is no canonical definition to state claims against.
-/

/-! ## A009200.P4832563968650891820

`A009586(n)+A009141(n)`
-/

namespace A009200.P4832563968650891820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009586 n + A009141 n

end

end A009200.P4832563968650891820

/-!
# A009202: Expansion of e.g.f.: exp(sin(sinh(x))).

The programs for A009202, there is no canonical definition to state claims against.
-/

/-! ## A009202.P8021061986313215502

`A009492(A050783(n+1))+1-n`
-/

namespace A009202.P8021061986313215502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009492 (A050783 (n + 1)).toNat + (1 - (n : ℤ))

end

end A009202.P8021061986313215502

/-! ## A009202.P2625037864073593481

`A024000(n)+A009492(A004882(n+1))`
-/

namespace A009202.P2625037864073593481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A009492 (A004882 (n + 1)).toNat

end

end A009202.P2625037864073593481

/-! ## A009202.P6370637786923832249

`A024000(n)+A009492(A004893(n+1))`
-/

namespace A009202.P6370637786923832249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A009492 (A004893 (n + 1)).toNat

end

end A009202.P6370637786923832249

/-! ## A009202.P16892914664228563359

`A024000(n)+A009492(A050783(n+1))`
-/

namespace A009202.P16892914664228563359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A009492 (A050783 (n + 1)).toNat

end

end A009202.P16892914664228563359

/-! ## A009202.P7001019400459759909

`2-A008616(C(n, 4)*2^(n-1))`
-/

namespace A009202.P7001019400459759909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008616 (SequenceMachineLib.roundAway ((Nat.choose n 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A009202.P7001019400459759909

/-!
# A009204: Expansion of e.g.f. exp(sin(tanh(x))).

The programs for A009204, there is no canonical definition to state claims against.
-/

/-! ## A009204.P5358610832330658425

`A009258(n)%p?[2^n-1]`
-/

namespace A009204.P5358610832330658425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009258 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A009204.P5358610832330658425

/-! ## A009204.P2151453252886495735

`A009258(A029574(n)+n)`
-/

namespace A009204.P2151453252886495735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009258 (A029574 n + (n : ℤ)).toNat

end

end A009204.P2151453252886495735

/-! ## A009204.P7349013712539760962

`A009258(n^A173503(n))`
-/

namespace A009204.P7349013712539760962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009258 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A173503 n : ℤ))).toNat

end

end A009204.P7349013712539760962

/-!
# A009205: a(n) = gcd(d(n), sigma(n)).

The programs for A009205, the canonical program `A009205.P2297388309160115762` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009205 has offset 1).

The definition of A009205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009205.P12372218387906358456

`A064840(n+1)/A009278(n+1)`
-/

namespace A009205.P12372218387906358456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A009278 (n + 1) : ℚ)

end

end A009205.P12372218387906358456

namespace A009205

/-- `A064840(n+1)/A009278(n+1)` -/
def P12372218387906358456.Spec : Prop :=
  ∀ n, P12372218387906358456.a n = (A009205 (n + 1) : ℚ)

end A009205

/-! ## A009205.P2297388309160115762

`gcd(A000005(n+1), A000203(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A009205

/-- `gcd(A000005(n+1), A000203(n+1))` -/
def P2297388309160115762.Spec : Prop :=
  ∀ n, (P2297388309160115762.a n : ℤ) = A009205 (n + 1)

theorem P2297388309160115762.correct : P2297388309160115762.Spec := by
  intro n
  simp only [A009205, Nat.add_sub_cancel]

end A009205

/-! ## A009205.P12550204527654343949

`gcd(∑{d}[n+1, #], ∏{e}[n+1, #+1])`
-/

namespace A009205.P12550204527654343949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A009205.P12550204527654343949

namespace A009205

/-- `gcd(∑{d}[n+1, #], ∏{e}[n+1, #+1])` -/
def P12550204527654343949.Spec : Prop :=
  ∀ n, (P12550204527654343949.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P14724143752294153120

`Δ[A006218(n)]/A057021(n+1)`
-/

namespace A009205.P14724143752294153120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057021 (n + 1) : ℚ)

end

end A009205.P14724143752294153120

namespace A009205

/-- `Δ[A006218(n)]/A057021(n+1)` -/
def P14724143752294153120.Spec : Prop :=
  ∀ n, P14724143752294153120.a n = (A009205 (n + 1) : ℚ)

end A009205

/-! ## A009205.P2461001948893132930

`gcd(Δ[A006218(n)], A000203(n+1))`
-/

namespace A009205.P2461001948893132930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000203 (n + 1))

end

end A009205.P2461001948893132930

namespace A009205

/-- `gcd(Δ[A006218(n)], A000203(n+1))` -/
def P2461001948893132930.Spec : Prop :=
  ∀ n, (P2461001948893132930.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P16261625373251725365

`gcd(Δ[A054519(n)], A094471(n+1))`
-/

namespace A009205.P16261625373251725365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A094471 (n + 1))

end

end A009205.P16261625373251725365

namespace A009205

/-- `gcd(Δ[A054519(n)], A094471(n+1))` -/
def P16261625373251725365.Spec : Prop :=
  ∀ n, (P16261625373251725365.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P16016849489157676373

`gcd(Δ[A160664(n)], A000005(n+1))`
-/

namespace A009205.P16016849489157676373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000005 (n + 1))

end

end A009205.P16016849489157676373

namespace A009205

/-- `gcd(Δ[A160664(n)], A000005(n+1))` -/
def P16016849489157676373.Spec : Prop :=
  ∀ n, (P16016849489157676373.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P6097501725866589189

`A000005(n+1)/A057021(n+1)`
-/

namespace A009205.P6097501725866589189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A057021 (n + 1) : ℚ)

end

end A009205.P6097501725866589189

namespace A009205

/-- `A000005(n+1)/A057021(n+1)` -/
def P6097501725866589189.Spec : Prop :=
  ∀ n, P6097501725866589189.a n = (A009205 (n + 1) : ℚ)

end A009205

/-! ## A009205.P13342482052323096483

`A000203(n+1)/A057020(n+1)`
-/

namespace A009205.P13342482052323096483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A057020 (n + 1) : ℚ)

end

end A009205.P13342482052323096483

namespace A009205

/-- `A000203(n+1)/A057020(n+1)` -/
def P13342482052323096483.Spec : Prop :=
  ∀ n, P13342482052323096483.a n = (A009205 (n + 1) : ℚ)

end A009205

/-! ## A009205.P11007911198574814081

`A324121(n+1)/A348969(n+1)`
-/

namespace A009205.P11007911198574814081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324121 (n + 1) : ℚ) / (A348969 (n + 1) : ℚ)

end

end A009205.P11007911198574814081

namespace A009205

/-- `A324121(n+1)/A348969(n+1)` -/
def P11007911198574814081.Spec : Prop :=
  ∀ n, P11007911198574814081.a n = (A009205 (n + 1) : ℚ)

end A009205

/-! ## A009205.P9793363977241369399

`gcd(A007503(n+1), A009278(n+1))`
-/

namespace A009205.P9793363977241369399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007503 (n + 1)) (A009278 (n + 1))

end

end A009205.P9793363977241369399

namespace A009205

/-- `gcd(A007503(n+1), A009278(n+1))` -/
def P9793363977241369399.Spec : Prop :=
  ∀ n, (P9793363977241369399.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P15625444196935581641

`gcd(A129235(n+1), A143348(n+1))`
-/

namespace A009205.P15625444196935581641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129235 (n + 1)) (A143348 (n + 1))

end

end A009205.P15625444196935581641

namespace A009205

/-- `gcd(A129235(n+1), A143348(n+1))` -/
def P15625444196935581641.Spec : Prop :=
  ∀ n, (P15625444196935581641.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P3071175332718342002

`gcd(A125518(n+1), A295313(n+1))`
-/

namespace A009205.P3071175332718342002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125518 (n + 1)) (A295313 (n + 1))

end

end A009205.P3071175332718342002

namespace A009205

/-- `gcd(A125518(n+1), A295313(n+1))` -/
def P3071175332718342002.Spec : Prop :=
  ∀ n, (P3071175332718342002.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P13257354049463781204

`gcd(A162664(n+1), A329484(n+1))`
-/

namespace A009205.P13257354049463781204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162664 (n + 1)) (A329484 (n + 1))

end

end A009205.P13257354049463781204

namespace A009205

/-- `gcd(A162664(n+1), A329484(n+1))` -/
def P13257354049463781204.Spec : Prop :=
  ∀ n, (P13257354049463781204.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P1707572056262123501

`gcd(1-A152771(n+1), A065608(n+1))`
-/

namespace A009205.P1707572056262123501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A152771 (n + 1)) (A065608 (n + 1))

end

end A009205.P1707572056262123501

namespace A009205

/-- `gcd(1-A152771(n+1), A065608(n+1))` -/
def P1707572056262123501.Spec : Prop :=
  ∀ n, (P1707572056262123501.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P9177751517789010639

`∑{d}[n+1, A008683(#)*A334579((n+1)/#)]`
-/

namespace A009205.P9177751517789010639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A009205.P9177751517789010639

namespace A009205

/-- `∑{d}[n+1, A008683(#)*A334579((n+1)/#)]` -/
def P9177751517789010639.Spec : Prop :=
  ∀ n, P9177751517789010639.a n = A009205 (n + 1)

end A009205

/-! ## A009205.P6851442577937409239

`gcd(A038040(n+1)/(n+1), A245092(2*n+1))`
-/

namespace A009205.P6851442577937409239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))) (A245092 (2 * n + 1))

end

end A009205.P6851442577937409239

namespace A009205

/-- `gcd(A038040(n+1)/(n+1), A245092(2*n+1))` -/
def P6851442577937409239.Spec : Prop :=
  ∀ n, (P6851442577937409239.a n : ℤ) = A009205 (n + 1)

end A009205

/-! ## A009205.P9117168065625275566

`A000005(n+1)*A000203(n+1)/A009278(n+1)`
-/

namespace A009205.P9117168065625275566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000203 (n + 1) : ℚ) / (A009278 (n + 1) : ℚ)

end

end A009205.P9117168065625275566

namespace A009205

/-- `A000005(n+1)*A000203(n+1)/A009278(n+1)` -/
def P9117168065625275566.Spec : Prop :=
  ∀ n, P9117168065625275566.a n = (A009205 (n + 1) : ℚ)

end A009205

/-! ## A009205.P16405573390933202175

`A009278(n+1)/(A057020(n+1)*A057021(n+1))`
-/

namespace A009205.P16405573390933202175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (A057020 (n + 1) * A057021 (n + 1) : ℚ)

end

end A009205.P16405573390933202175

namespace A009205

/-- `A009278(n+1)/(A057020(n+1)*A057021(n+1))` -/
def P16405573390933202175.Spec : Prop :=
  ∀ n, P16405573390933202175.a n = (A009205 (n + 1) : ℚ)

end A009205

/-!
# A009206: Expansion of e.g.f.: exp(sin(x))*x.

The programs for A009206, there is no canonical definition to state claims against.
-/

/-! ## A009206.P16439302545847070863

`n*A002017(abs(1-n))`
-/

namespace A009206.P16439302545847070863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002017 |1 - (n : ℤ)|.toNat

end

end A009206.P16439302545847070863

/-! ## A009206.P4441717400525300446

`A012892(n)+A012896(n)-A002017(n)`
-/

namespace A009206.P4441717400525300446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012892 n + (A012896 n - A002017 n)

end

end A009206.P4441717400525300446

/-! ## A009206.P4243857992079953655

`A012887(n)-A002017(n)`
-/

namespace A009206.P4243857992079953655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012887 n - A002017 n

end

end A009206.P4243857992079953655

/-!
# A009209: Expansion of e.g.f.: exp(sin(x))/exp(x).

The programs for A009209, there is no canonical definition to state claims against.
-/

/-! ## A009209.P6511864416587638764

`A009282(n)-2*A009622(n)`
-/

namespace A009209.P6511864416587638764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009282 n - 2 * A009622 n

end

end A009209.P6511864416587638764

/-! ## A009209.P16571327441783592249

`A009145(n)-A009590(n)*A033999(n)`
-/

namespace A009209.P16571327441783592249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n - A009590 n * A033999 n

end

end A009209.P16571327441783592249

/-! ## A009209.P13763789190701368355

`A009145(n)-A009590(n)/A033999(n+2)`
-/

namespace A009209.P13763789190701368355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009145 n : ℚ) - (A009590 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A009209.P13763789190701368355

/-! ## A009209.P17994990614208672054

`A009184(n)*A033999(n)-A009622(n)`
-/

namespace A009209.P17994990614208672054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 n * A033999 n - A009622 n

end

end A009209.P17994990614208672054

/-! ## A009209.P3190669139909052469

`A009282(n)-2*(A009184(n)+A009590(n)-A009145(n))`
-/

namespace A009209.P3190669139909052469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009282 n - 2 * (A009184 n + (A009590 n - A009145 n))

end

end A009209.P3190669139909052469

/-!
# A009212: E.g.f. exp(sin(x)*exp(x)).

The programs for A009212, there is no canonical definition to state claims against.
-/

/-! ## A009212.P5054648307514579545

`A009594(n)+A009147(n)`
-/

namespace A009212.P5054648307514579545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009594 n + A009147 n

end

end A009212.P5054648307514579545

/-! ## A009212.P18371676565656571072

`A065033(A351143(n)+record[A351143(n)])`
-/

namespace A009212.P18371676565656571072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A351143 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A009212.P18371676565656571072

/-! ## A009212.P10690079139742535305

`A093803(A351143(n)+record[A351143(n)])`
-/

namespace A009212.P10690079139742535305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A351143 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A009212.P10690079139742535305

/-! ## A009212.P7982410995983215047

`A110654(A351143(n)+record[A351143(n)])`
-/

namespace A009212.P7982410995983215047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A351143 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A009212.P7982410995983215047

/-!
# A009213: a(n) = gcd(d(n), phi(n)), where d is the number of divisors of n (A000005) and phi is Euler's totient function (A000010).

The programs for A009213, the canonical program `A009213.P12402477796330107786` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009213 has offset 1).

The definition of A009213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A009213.P12402477796330107786

`gcd(A000005(n+1), A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A009213

/-- `gcd(A000005(n+1), A000010(n+1))` -/
def P12402477796330107786.Spec : Prop :=
  ∀ n, (P12402477796330107786.a n : ℤ) = A009213 (n + 1)

theorem P12402477796330107786.correct : P12402477796330107786.Spec := by
  intro n
  simp only [A009213, Nat.add_sub_cancel]

end A009213

/-! ## A009213.P11375797122823190254

`gcd(n-A219428(n+1), ∑{d}[n+1, gcd(n, #)])`
-/

namespace A009213.P11375797122823190254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A219428 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A009213.P11375797122823190254

namespace A009213

/-- `gcd(n-A219428(n+1), ∑{d}[n+1, gcd(n, #)])` -/
def P11375797122823190254.Spec : Prop :=
  ∀ n, (P11375797122823190254.a n : ℤ) = A009213 (n + 1)

end A009213

/-! ## A009213.P8579347631226682279

`gcd(A032741(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A009213.P8579347631226682279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A009213.P8579347631226682279

namespace A009213

/-- `gcd(A032741(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P8579347631226682279.Spec : Prop :=
  ∀ n, (P8579347631226682279.a n : ℤ) = A009213 (n + 1)

end A009213

/-! ## A009213.P9919341618230585784

`gcd(Δ[A002088(n)], A000005(n+1))`
-/

namespace A009213.P9919341618230585784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000005 (n + 1))

end

end A009213.P9919341618230585784

namespace A009213

/-- `gcd(Δ[A002088(n)], A000005(n+1))` -/
def P9919341618230585784.Spec : Prop :=
  ∀ n, (P9919341618230585784.a n : ℤ) = A009213 (n + 1)

end A009213

/-! ## A009213.P7491981360303788003

`gcd(A000010(n+1), Δ[A006218(n)])`
-/

namespace A009213.P7491981360303788003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (f1 (n + 1) - f1 n)

end

end A009213.P7491981360303788003

namespace A009213

/-- `gcd(A000010(n+1), Δ[A006218(n)])` -/
def P7491981360303788003.Spec : Prop :=
  ∀ n, (P7491981360303788003.a n : ℤ) = A009213 (n + 1)

end A009213

/-! ## A009213.P2715407148992302843

`A062355(n+1)/A009279(n+1)`
-/

namespace A009213.P2715407148992302843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) / (A009279 (n + 1) : ℚ)

end

end A009213.P2715407148992302843

namespace A009213

/-- `A062355(n+1)/A009279(n+1)` -/
def P2715407148992302843.Spec : Prop :=
  ∀ n, P2715407148992302843.a n = (A009213 (n + 1) : ℚ)

end A009213

/-! ## A009213.P1870216824893404633

`A000005(n+1)/A279288(n+1)`
-/

namespace A009213.P1870216824893404633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A279288 (n + 1) : ℚ)

end

end A009213.P1870216824893404633

namespace A009213

/-- `A000005(n+1)/A279288(n+1)` -/
def P1870216824893404633.Spec : Prop :=
  ∀ n, P1870216824893404633.a n = (A009213 (n + 1) : ℚ)

end A009213

/-! ## A009213.P3952471818058030239

`A000010(n+1)/A279287(n+1)`
-/

namespace A009213.P3952471818058030239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A279287 (n + 1) : ℚ)

end

end A009213.P3952471818058030239

namespace A009213

/-- `A000010(n+1)/A279287(n+1)` -/
def P3952471818058030239.Spec : Prop :=
  ∀ n, P3952471818058030239.a n = (A009213 (n + 1) : ℚ)

end A009213

/-! ## A009213.P14497659847834794636

`gcd(A009279(n+1), A061468(n+1))`
-/

namespace A009213.P14497659847834794636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009279 (n + 1)) (A061468 (n + 1))

end

end A009213.P14497659847834794636

namespace A009213

/-- `gcd(A009279(n+1), A061468(n+1))` -/
def P14497659847834794636.Spec : Prop :=
  ∀ n, (P14497659847834794636.a n : ℤ) = A009213 (n + 1)

end A009213

/-! ## A009213.P7100595176888149175

`gcd(A329484(n+1), A358061(n+1))`
-/

namespace A009213.P7100595176888149175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329484 (n + 1)) (A358061 (n + 1))

end

end A009213.P7100595176888149175

namespace A009213

/-- `gcd(A329484(n+1), A358061(n+1))` -/
def P7100595176888149175.Spec : Prop :=
  ∀ n, (P7100595176888149175.a n : ℤ) = A009213 (n + 1)

end A009213

/-! ## A009213.P4927792775953960704

`(A063070(n+1)+A000005(n+1))/A279287(n+1)`
-/

namespace A009213.P4927792775953960704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063070 (n + 1) + A000005 (n + 1) : ℚ) / (A279287 (n + 1) : ℚ)

end

end A009213.P4927792775953960704

namespace A009213

/-- `(A063070(n+1)+A000005(n+1))/A279287(n+1)` -/
def P4927792775953960704.Spec : Prop :=
  ∀ n, P4927792775953960704.a n = (A009213 (n + 1) : ℚ)

end A009213

/-! ## A009213.P4258231263772757246

`(A000010(n+1)-A063070(n+1))/A279288(n+1)`
-/

namespace A009213.P4258231263772757246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A063070 (n + 1) : ℚ) / (A279288 (n + 1) : ℚ)

end

end A009213.P4258231263772757246

namespace A009213

/-- `(A000010(n+1)-A063070(n+1))/A279288(n+1)` -/
def P4258231263772757246.Spec : Prop :=
  ∀ n, P4258231263772757246.a n = (A009213 (n + 1) : ℚ)

end A009213

/-! ## A009213.P14689655951167226123

`gcd(A048865(n+1)+A048864(n+1), A032741(n+1)+1)`
-/

namespace A009213.P14689655951167226123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048865 (n + 1) + A048864 (n + 1)) (A032741 (n + 1) + 1)

end

end A009213.P14689655951167226123

namespace A009213

/-- `gcd(A048865(n+1)+A048864(n+1), A032741(n+1)+1)` -/
def P14689655951167226123.Spec : Prop :=
  ∀ n, (P14689655951167226123.a n : ℤ) = A009213 (n + 1)

end A009213

/-!
# A009214: E.g.f. exp(x*sin(x)) (even powers only).

The programs for A009214, there is no canonical definition to state claims against.
-/

/-! ## A009214.P15456161173158103186

`A004277(n)*A191298(n)`
-/

namespace A009214.P15456161173158103186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A191298 n

end

end A009214.P15456161173158103186

/-! ## A009214.P11401836592396423129

`record[A124625(n)]*A191298(n)`
-/

namespace A009214.P11401836592396423129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A191298 n

end

end A009214.P11401836592396423129

/-! ## A009214.P4196041931524192680

`A065033(4*n)*A191298(n)`
-/

namespace A009214.P4196041931524192680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * n) * A191298 n

end

end A009214.P4196041931524192680

/-! ## A009214.P479395269966314610

`A026741(A008574(n))*A191298(n)`
-/

namespace A009214.P479395269966314610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008574 n).toNat * A191298 n

end

end A009214.P479395269966314610

/-! ## A009214.P11420793230865313393

`A007318(A084849(n))*A191298(n)`
-/

namespace A009214.P11420793230865313393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A084849 n).toNat * A191298 n

end

end A009214.P11420793230865313393

/-!
# A009217: E.g.f. exp(sin(x)^2) (even powers only).

The programs for A009217, there is no canonical definition to state claims against.
-/

/-! ## A009217.P11762753429384306790

`A009596(n)+A009150(n)`
-/

namespace A009217.P11762753429384306790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009596 n + A009150 n

end

end A009217.P11762753429384306790

/-! ## A009217.P9000455956586004775

`A009150(n)+2*A024258(n)`
-/

namespace A009217.P9000455956586004775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009150 n + 2 * A024258 n

end

end A009217.P9000455956586004775

/-! ## A009217.P10816680858992614806

`A009150(n)+A024258(n)+A024258(n)%A013725(n)`
-/

namespace A009217.P10816680858992614806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009150 n + (A024258 n + Int.tmod (A024258 n) (A013725 n))

end

end A009217.P10816680858992614806

/-! ## A009217.P16536835780470326220

`A009150(n)+A024258(n)+A024258(A055648(n))`
-/

namespace A009217.P16536835780470326220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009150 n + (A024258 n + A024258 (A055648 n).toNat)

end

end A009217.P16536835780470326220

/-! ## A009217.P5083660339736069390

`A009150(n)+A024258(n)+A024258(A062003(n))`
-/

namespace A009217.P5083660339736069390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009150 n + (A024258 n + A024258 (A062003 n).toNat)

end

end A009217.P5083660339736069390

/-!
# A009218: Expansion of e.g.f. exp(sinh(log(1+x))).

The programs for A009218, there is no canonical definition to state claims against.
-/

/-! ## A009218.P2597634763991144192

`A009597(n)+A009151(n)`
-/

namespace A009218.P2597634763991144192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009597 n + A009151 n

end

end A009218.P2597634763991144192

/-!
# A009219: Expansion of e.g.f.: exp(sinh(sin(x))).

The programs for A009219, there is no canonical definition to state claims against.
-/

/-! ## A009219.P17648894673294197157

`1-A087734(A297009(n))`
-/

namespace A009219.P17648894673294197157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087734 (A297009 n).toNat

end

end A009219.P17648894673294197157

/-! ## A009219.P14147783292779133318

`2-A012111(A004869(n+1))`
-/

namespace A009219.P14147783292779133318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A012111 (A004869 (n + 1)).toNat

end

end A009219.P14147783292779133318

/-! ## A009219.P1197463830045451700

`2-A012111(A004880(n+1))`
-/

namespace A009219.P1197463830045451700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A012111 (A004880 (n + 1)).toNat

end

end A009219.P1197463830045451700

/-! ## A009219.P2646767670031334543

`2-or(1, A210530(A152094(n)))`
-/

namespace A009219.P2646767670031334543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (A210530 (A152094 n).toNat)

end

end A009219.P2646767670031334543

/-!
# A009220: Sum(a(n)*x^n/n!) = exp(sinh(sinh(x))).

The programs for A009220, there is no canonical definition to state claims against.
-/

/-! ## A009220.P198841467488554455

`or(A184955((3-n)²), A279840(n))`
-/

namespace A009220.P198841467488554455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184955 ((3 - (n : ℤ)) ^ 2).toNat) (A279840 n)

end

end A009220.P198841467488554455

/-! ## A009220.P9524632178662139723

`or(A184955(n+8)!, A279840(n))`
-/

namespace A009220.P9524632178662139723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A184955 (n + 8)).toNat : ℤ) (A279840 n)

end

end A009220.P9524632178662139723

/-! ## A009220.P16895468800764718515

`A279840(n)+A144078(A279840(n))`
-/

namespace A009220.P16895468800764718515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279840 n + A144078 (A279840 n).toNat

end

end A009220.P16895468800764718515

/-! ## A009220.P9281837599468762034

`or(A279840(n), A331381(A112356(n)))`
-/

namespace A009220.P9281837599468762034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279840 n) (A331381 (A112356 n).toNat)

end

end A009220.P9281837599468762034

/-!
# A009223: a(n) = gcd(sigma(n), phi(n)).

The programs for A009223, the canonical program `A009223.P16138447125390320102` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009223 has offset 1).

The definition of A009223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A009223.P16138447125390320102

`gcd(A000203(n+1), A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A009223

/-- `gcd(A000203(n+1), A000010(n+1))` -/
def P16138447125390320102.Spec : Prop :=
  ∀ n, (P16138447125390320102.a n : ℤ) = A009223 (n + 1)

theorem P16138447125390320102.correct : P16138447125390320102.Spec := by
  intro n
  simp only [A009223, Nat.add_sub_cancel]

end A009223

/-! ## A009223.P2879337094983073241

`gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑{d}[n+1, #])`
-/

namespace A009223.P2879337094983073241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A009223.P2879337094983073241

namespace A009223

/-- `gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑{d}[n+1, #])` -/
def P2879337094983073241.Spec : Prop :=
  ∀ n, (P2879337094983073241.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P5941135838071126969

`gcd(A000203(n+1), Δ[A002088(n)])`
-/

namespace A009223.P5941135838071126969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (f1 (n + 1) - f1 n)

end

end A009223.P5941135838071126969

namespace A009223

/-- `gcd(A000203(n+1), Δ[A002088(n)])` -/
def P5941135838071126969.Spec : Prop :=
  ∀ n, (P5941135838071126969.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P9291278176140683498

`gcd(Δ[A005728(n)], A051612(n+1))`
-/

namespace A009223.P9291278176140683498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A051612 (n + 1))

end

end A009223.P9291278176140683498

namespace A009223

/-- `gcd(Δ[A005728(n)], A051612(n+1))` -/
def P9291278176140683498.Spec : Prop :=
  ∀ n, (P9291278176140683498.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P16047771411198002913

`gcd(A000010(n+1), Δ[A160664(n)])`
-/

namespace A009223.P16047771411198002913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (f1 (n + 1) - f1 n)

end

end A009223.P16047771411198002913

namespace A009223

/-- `gcd(A000010(n+1), Δ[A160664(n)])` -/
def P16047771411198002913.Spec : Prop :=
  ∀ n, (P16047771411198002913.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P1528879415048003349

`A066087(n+1)+A066086(n+1)`
-/

namespace A009223.P1528879415048003349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1) + A066086 (n + 1)

end

end A009223.P1528879415048003349

namespace A009223

/-- `A066087(n+1)+A066086(n+1)` -/
def P1528879415048003349.Spec : Prop :=
  ∀ n, P1528879415048003349.a n = A009223 (n + 1)

end A009223

/-! ## A009223.P15883807772322282076

`A062354(n+1)/A009286(n+1)`
-/

namespace A009223.P15883807772322282076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ)

end

end A009223.P15883807772322282076

namespace A009223

/-- `A062354(n+1)/A009286(n+1)` -/
def P15883807772322282076.Spec : Prop :=
  ∀ n, P15883807772322282076.a n = (A009223 (n + 1) : ℚ)

end A009223

/-! ## A009223.P12531280896664069892

`A000010(n+1)/A289412(n+1)`
-/

namespace A009223.P12531280896664069892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A289412 (n + 1) : ℚ)

end

end A009223.P12531280896664069892

namespace A009223

/-- `A000010(n+1)/A289412(n+1)` -/
def P12531280896664069892.Spec : Prop :=
  ∀ n, P12531280896664069892.a n = (A009223 (n + 1) : ℚ)

end A009223

/-! ## A009223.P9798355211695097237

`A000203(n+1)/A289336(n+1)`
-/

namespace A009223.P9798355211695097237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A289336 (n + 1) : ℚ)

end

end A009223.P9798355211695097237

namespace A009223

/-- `A000203(n+1)/A289336(n+1)` -/
def P9798355211695097237.Spec : Prop :=
  ∀ n, P9798355211695097237.a n = (A009223 (n + 1) : ℚ)

end A009223

/-! ## A009223.P15723394835882393666

`gcd(A009286(n+1), A065387(n+1))`
-/

namespace A009223.P15723394835882393666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009286 (n + 1)) (A065387 (n + 1))

end

end A009223.P15723394835882393666

namespace A009223

/-- `gcd(A009286(n+1), A065387(n+1))` -/
def P15723394835882393666.Spec : Prop :=
  ∀ n, (P15723394835882393666.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P5562098457426306639

`gcd(A074400(n+1)/2, A077100(n+1))`
-/

namespace A009223.P5562098457426306639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)) (A077100 (n + 1))

end

end A009223.P5562098457426306639

namespace A009223

/-- `gcd(A074400(n+1)/2, A077100(n+1))` -/
def P5562098457426306639.Spec : Prop :=
  ∀ n, (P5562098457426306639.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P12320383557226689828

`gcd(A039649(n+1)-1, A000027(A000203(n+1)))`
-/

namespace A009223.P12320383557226689828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039649 (n + 1) - 1) (A000027 (A000203 (n + 1)).toNat)

end

end A009223.P12320383557226689828

namespace A009223

/-- `gcd(A039649(n+1)-1, A000027(A000203(n+1)))` -/
def P12320383557226689828.Spec : Prop :=
  ∀ n, (P12320383557226689828.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P16206191866978819060

`gcd(A245092(2*n+1), A245092(A000010(n+1)))`
-/

namespace A009223.P16206191866978819060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A245092 (2 * n + 1)) (A245092 (A000010 (n + 1)).toNat)

end

end A009223.P16206191866978819060

namespace A009223

/-- `gcd(A245092(2*n+1), A245092(A000010(n+1)))` -/
def P16206191866978819060.Spec : Prop :=
  ∀ n, (P16206191866978819060.a n : ℤ) = A009223 (n + 1)

end A009223

/-! ## A009223.P8431420781798642318

`A066087(n+1)+A322360(n+1)/A322359(n+1)`
-/

namespace A009223.P8431420781798642318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066087 (n + 1) : ℚ) + (A322360 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ)

end

end A009223.P8431420781798642318

namespace A009223

/-- `A066087(n+1)+A322360(n+1)/A322359(n+1)` -/
def P8431420781798642318.Spec : Prop :=
  ∀ n, P8431420781798642318.a n = (A009223 (n + 1) : ℚ)

end A009223

/-! ## A009223.P5934180744402851866

`A000010(n+1)*A000203(n+1)/A009286(n+1)`
-/

namespace A009223.P5934180744402851866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000203 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ)

end

end A009223.P5934180744402851866

namespace A009223

/-- `A000010(n+1)*A000203(n+1)/A009286(n+1)` -/
def P5934180744402851866.Spec : Prop :=
  ∀ n, P5934180744402851866.a n = (A009223 (n + 1) : ℚ)

end A009223

/-! ## A009223.P4478782811107829067

`gcd(Δ[A049643(n)], ∑{d}[n+1, #])`
-/

namespace A009223.P4478782811107829067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A009223.P4478782811107829067

namespace A009223

/-- `gcd(Δ[A049643(n)], ∑{d}[n+1, #])` -/
def P4478782811107829067.Spec : Prop :=
  ∀ n, (P4478782811107829067.a n : ℤ) = A009223 (n + 1)

end A009223

/-!
# A009224: Expansion of exp(sinh(x))*x.

The programs for A009224, there is no canonical definition to state claims against.
-/

/-! ## A009224.P15526781193370574979

`n*A003724(abs(1-n))`
-/

namespace A009224.P15526781193370574979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003724 |1 - (n : ℤ)|.toNat

end

end A009224.P15526781193370574979

/-! ## A009224.P9319094684699061271

`n*A124322(A002620(n))`
-/

namespace A009224.P9319094684699061271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124322 (A002620 n).toNat

end

end A009224.P9319094684699061271

/-! ## A009224.P12905349969401926631

`n*A124322(∑[A004526(n)])`
-/

namespace A009224.P12905349969401926631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124322 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009224.P12905349969401926631

/-! ## A009224.P4876664395031172555

`A013013(n)-A003724(n)`
-/

namespace A009224.P4876664395031172555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n - A003724 n

end

end A009224.P4876664395031172555

/-! ## A009224.P5044816776248309743

`A013013(n)-A124322(A002620(n+1))`
-/

namespace A009224.P5044816776248309743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n - A124322 (A002620 (n + 1)).toNat

end

end A009224.P5044816776248309743

/-! ## A009224.P3650233417113112289

`A013013(n)-A124322(A076921(n+1))`
-/

namespace A009224.P3650233417113112289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n - A124322 (A076921 (n + 1)).toNat

end

end A009224.P3650233417113112289

/-! ## A009224.P10866327376665284003

`A013013(n)-A124322(A182531(n+1))`
-/

namespace A009224.P10866327376665284003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n - A124322 (A182531 (n + 1)).toNat

end

end A009224.P10866327376665284003

/-!
# A009225: Expansion of exp(sinh(x))/cos(x).

The programs for A009225, there is no canonical definition to state claims against.
-/

/-! ## A009225.P13573271945646404696

`A046108(A352436(n))`
-/

namespace A009225.P13573271945646404696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A352436 n).toNat

end

end A009225.P13573271945646404696

/-! ## A009225.P15112632423725579724

`A046108(A353180(n))`
-/

namespace A009225.P15112632423725579724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A353180 n).toNat

end

end A009225.P15112632423725579724

/-! ## A009225.P9074290991900450929

`A094189(A018901(n)+2)`
-/

namespace A009225.P9074290991900450929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A018901 n + 2).toNat

end

end A009225.P9074290991900450929

/-!
# A009227: Expansion of e.g.f.: exp(sinh(x))/exp(x).

The programs for A009227, there is no canonical definition to state claims against.
-/

/-! ## A009227.P13052694480111648277

`A003724(n+1)-A009623(n)`
-/

namespace A009227.P13052694480111648277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 1) - A009623 n

end

end A009227.P13052694480111648277

/-! ## A009227.P18302834923020190169

`A009283(n)-2*A009623(n)`
-/

namespace A009227.P18302834923020190169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009283 n - 2 * A009623 n

end

end A009227.P18302834923020190169

/-! ## A009227.P10544838921679258054

`abs(abs(A009152(n))-A009598(n))`
-/

namespace A009227.P10544838921679258054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A009152 n| - A009598 n)|

end

end A009227.P10544838921679258054

/-! ## A009227.P1662733213113144956

`A009283(n)%A009623(A233583(n+1))`
-/

namespace A009227.P1662733213113144956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009283 n) (A009623 (A233583 (n + 1)).toNat)

end

end A009227.P1662733213113144956

/-! ## A009227.P15891079967681158097

`A003724(n+1)%A009623(A000038(n)+n)`
-/

namespace A009227.P15891079967681158097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003724 (n + 1)) (A009623 (A000038 n + (n : ℤ)).toNat)

end

end A009227.P15891079967681158097

/-! ## A009227.P16802881735437929749

`A003724(n+1)+A003724(n+1)-A009283(n)`
-/

namespace A009227.P16802881735437929749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 1) + (A003724 (n + 1) - A009283 n)

end

end A009227.P16802881735437929749

/-!
# A009229: Expansion of e.g.f. exp(sinh(x)*cosh(x)).

The programs for A009229, there is no canonical definition to state claims against.
-/

/-! ## A009229.P14191150632425731744

`A194523(∑[∏[A053585(n+1)]])`
-/

namespace A009229.P14191150632425731744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009229.P14191150632425731744

/-! ## A009229.P10154951468168310380

`A194523(∑[∏[A319677(n+1)]])`
-/

namespace A009229.P10154951468168310380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009229.P10154951468168310380

/-! ## A009229.P12332645486599779232

`A162226(A368766(n)+A286773(n))`
-/

namespace A009229.P12332645486599779232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A368766 n + A286773 n).toNat

end

end A009229.P12332645486599779232

/-!
# A009230: a(n) = lcm(n, d(n)).

The programs for A009230, the canonical program `A009230.P1819466597498337279` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009230 has offset 1).

The definition of A009230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009230.P1819466597498337279

`lcm(n+1, ∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009230

/-- `lcm(n+1, ∏{e}[n+1, #+1])` -/
def P1819466597498337279.Spec : Prop :=
  ∀ n, (P1819466597498337279.a n : ℤ) = A009230 (n + 1)

theorem P1819466597498337279.correct : P1819466597498337279.Spec := by
  intro n
  simp only [A009230, Nat.add_sub_cancel]

end A009230

/-! ## A009230.P9367065020498465500

`lcm(n+1, Δ[A006218(n)])`
-/

namespace A009230.P9367065020498465500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A009230.P9367065020498465500

namespace A009230

/-- `lcm(n+1, Δ[A006218(n)])` -/
def P9367065020498465500.Spec : Prop :=
  ∀ n, (P9367065020498465500.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P1024408868067894367

`(n+1)*A090387(n+1)`
-/

namespace A009230.P1024408868067894367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A090387 (n + 1)

end

end A009230.P1024408868067894367

namespace A009230

/-- `(n+1)*A090387(n+1)` -/
def P1024408868067894367.Spec : Prop :=
  ∀ n, P1024408868067894367.a n = A009230 (n + 1)

end A009230

/-! ## A009230.P2437829933580483253

`lcm(xor(n, -1), A000005(n+1))`
-/

namespace A009230.P2437829933580483253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A000005 (n + 1))

end

end A009230.P2437829933580483253

namespace A009230

/-- `lcm(xor(n, -1), A000005(n+1))` -/
def P2437829933580483253.Spec : Prop :=
  ∀ n, (P2437829933580483253.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P4407266010894325063

`lcm(C(n+1, n), A000005(C(n+1, n)))`
-/

namespace A009230.P4407266010894325063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (n + 1) n : ℤ) (A000005 (Nat.choose (n + 1) n))

end

end A009230.P4407266010894325063

namespace A009230

/-- `lcm(C(n+1, n), A000005(C(n+1, n)))` -/
def P4407266010894325063.Spec : Prop :=
  ∀ n, (P4407266010894325063.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P6789300787900921496

`lcm(-xor(n, -1), A000005(-xor(n, -1)))`
-/

namespace A009230.P6789300787900921496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-Int.xor (n : ℤ) (-1)) (A000005 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A009230.P6789300787900921496

namespace A009230

/-- `lcm(-xor(n, -1), A000005(-xor(n, -1)))` -/
def P6789300787900921496.Spec : Prop :=
  ∀ n, (P6789300787900921496.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P16754302433177765635

`Δ[A054519(n)]*A090395(n+1)`
-/

namespace A009230.P16754302433177765635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A090395 (n + 1)

end

end A009230.P16754302433177765635

namespace A009230

/-- `Δ[A054519(n)]*A090395(n+1)` -/
def P16754302433177765635.Spec : Prop :=
  ∀ n, P16754302433177765635.a n = A009230 (n + 1)

end A009230

/-! ## A009230.P3557353445951862238

`A000005(n+1)*A090395(n+1)`
-/

namespace A009230.P3557353445951862238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A090395 (n + 1)

end

end A009230.P3557353445951862238

namespace A009230

/-- `A000005(n+1)*A090395(n+1)` -/
def P3557353445951862238.Spec : Prop :=
  ∀ n, P3557353445951862238.a n = A009230 (n + 1)

end A009230

/-! ## A009230.P2281798864322845725

`A009191(n+1)*A378930(n+1)`
-/

namespace A009230.P2281798864322845725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) * A378930 (n + 1)

end

end A009230.P2281798864322845725

namespace A009230

/-- `A009191(n+1)*A378930(n+1)` -/
def P2281798864322845725.Spec : Prop :=
  ∀ n, P2281798864322845725.a n = A009230 (n + 1)

end A009230

/-! ## A009230.P17860960797015505871

`A038040(n+1)/A009191(n+1)`
-/

namespace A009230.P17860960797015505871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A009230.P17860960797015505871

namespace A009230

/-- `A038040(n+1)/A009191(n+1)` -/
def P17860960797015505871.Spec : Prop :=
  ∀ n, P17860960797015505871.a n = (A009230 (n + 1) : ℚ)

end A009230

/-! ## A009230.P17138089276773986872

`lcm(A009191(n+1), A352482(n+1))`
-/

namespace A009230.P17138089276773986872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009191 (n + 1)) (A352482 (n + 1))

end

end A009230.P17138089276773986872

namespace A009230

/-- `lcm(A009191(n+1), A352482(n+1))` -/
def P17138089276773986872.Spec : Prop :=
  ∀ n, (P17138089276773986872.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P7814183941156380771

`lcm(A160356(n+1), A329484(n+1))`
-/

namespace A009230.P7814183941156380771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160356 (n + 1)) (A329484 (n + 1))

end

end A009230.P7814183941156380771

namespace A009230

/-- `lcm(A160356(n+1), A329484(n+1))` -/
def P7814183941156380771.Spec : Prop :=
  ∀ n, (P7814183941156380771.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P6483466196909087481

`lcm(A032741(n+1)+1, A028310(n+1))`
-/

namespace A009230.P6483466196909087481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 (n + 1) + 1) (A028310 (n + 1))

end

end A009230.P6483466196909087481

namespace A009230

/-- `lcm(A032741(n+1)+1, A028310(n+1))` -/
def P6483466196909087481.Spec : Prop :=
  ∀ n, (P6483466196909087481.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P11739274158126244902

`∑{d}[n+1, A008683(#)*A334782((n+1)/#)]`
-/

namespace A009230.P11739274158126244902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334782 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A009230.P11739274158126244902

namespace A009230

/-- `∑{d}[n+1, A008683(#)*A334782((n+1)/#)]` -/
def P11739274158126244902.Spec : Prop :=
  ∀ n, P11739274158126244902.a n = A009230 (n + 1)

end A009230

/-! ## A009230.P5987429941915022962

`lcm(A038040(n+1)/(n+1), A000027(A000027(n+1)))`
-/

namespace A009230.P5987429941915022962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000027 (A000027 (n + 1)).toNat)

end

end A009230.P5987429941915022962

namespace A009230

/-- `lcm(A038040(n+1)/(n+1), A000027(A000027(n+1)))` -/
def P5987429941915022962.Spec : Prop :=
  ∀ n, (P5987429941915022962.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P4885771439703630735

`lcm(A000005(A052938(2*n)), A052938(2*n))`
-/

namespace A009230.P4885771439703630735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A052938 (2 * n)).toNat) (A052938 (2 * n))

end

end A009230.P4885771439703630735

namespace A009230

/-- `lcm(A000005(A052938(2*n)), A052938(2*n))` -/
def P4885771439703630735.Spec : Prop :=
  ∀ n, (P4885771439703630735.a n : ℤ) = A009230 (n + 1)

end A009230

/-! ## A009230.P8811908998000488724

`(n+1)*A183063(2*(n+1))/A009191(n+1)`
-/

namespace A009230.P8811908998000488724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A183063 (2 * (n + 1)) : ℚ) / (A009191 (n + 1) : ℚ))

end

end A009230.P8811908998000488724

namespace A009230

/-- `(n+1)*A183063(2*(n+1))/A009191(n+1)` -/
def P8811908998000488724.Spec : Prop :=
  ∀ n, P8811908998000488724.a n = (A009230 (n + 1) : ℚ)

end A009230

/-!
# A009231: Expansion of e.g.f. exp(sinh(x)*log(1+x)).

The programs for A009231, there is no canonical definition to state claims against.
-/

/-! ## A009231.P6515599173056953101

`A012514(n)+A009154(n)`
-/

namespace A009231.P6515599173056953101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 n + A009154 n

end

end A009231.P6515599173056953101

/-! ## A009231.P978285434429939054

`A012514(A004891(n+1))+A012313(n)`
-/

namespace A009231.P978285434429939054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 (A004891 (n + 1)).toNat + A012313 n

end

end A009231.P978285434429939054

/-! ## A009231.P8400451121484848921

`A000007(A051451(n+1))+A012514(n)+A012313(n)`
-/

namespace A009231.P8400451121484848921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051451 (n + 1)).toNat + (A012514 n + A012313 n)

end

end A009231.P8400451121484848921

/-!
# A009233: Expansion of e.g.f. exp(sinh(x)*x) (even powers only).

The programs for A009233, there is no canonical definition to state claims against.
-/

/-! ## A009233.P7805018966937524233

`A000005(A011545(n))-A009080(n)`
-/

namespace A009233.P7805018966937524233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011545 n).toNat - A009080 n

end

end A009233.P7805018966937524233

/-!
# A009234: Expansion of e.g.f.: exp(sinh(x)/cos(x)).

The programs for A009234, there is no canonical definition to state claims against.
-/

/-! ## A009234.P8543523048248573036

`or(1, A110657(A135312(n)))`
-/

namespace A009234.P8543523048248573036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110657 (A135312 n).toNat)

end

end A009234.P8543523048248573036

/-! ## A009234.P3423493649967942576

`and(-3, A080605(A005130(n)))`
-/

namespace A009234.P3423493649967942576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A080605 (A005130 n).toNat)

end

end A009234.P3423493649967942576

/-! ## A009234.P3304773854199375458

`A194640(or(n!, A002126(∑[n])))`
-/

namespace A009234.P3304773854199375458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor (Nat.factorial n : ℤ) (A002126 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A009234.P3304773854199375458

/-!
# A009235: E.g.f. exp( sinh(x) / exp(x) ) = exp( (1-exp(-2*x))/2 ).

The programs for A009235, there is no canonical definition to state claims against.
-/

/-! ## A009235.P3290842552258102177

`A309386(∑[n+3])`
-/

namespace A009235.P3290842552258102177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009235.P3290842552258102177

/-! ## A009235.P17092674795786866359

`A309386(A141214(n))+A055672(12*n²)`
-/

namespace A009235.P17092674795786866359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A141214 n).toNat + A055672 (12 * n ^ 2)

end

end A009235.P17092674795786866359

/-! ## A009235.P4718358912236799846

`A213276(A000217(n))*A309386(A141214(n))`
-/

namespace A009235.P4718358912236799846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000217 n).toNat * A309386 (A141214 n).toNat

end

end A009235.P4718358912236799846

/-!
# A009236: E.g.f. exp(sinh(x)^2) (even powers only).

The programs for A009236, there is no canonical definition to state claims against.
-/

/-! ## A009236.P9371705750783245603

`abs(A009150(n)-A009596(n))`
-/

namespace A009236.P9371705750783245603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009150 n - A009596 n|

end

end A009236.P9371705750783245603

/-!
# A009237: Expansion of exp(tan(log(1+x))).

The programs for A009237, there is no canonical definition to state claims against.
-/

/-! ## A009237.P1987394026163348571

`A009601(n)+A009156(n)`
-/

namespace A009237.P1987394026163348571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009601 n + A009156 n

end

end A009237.P1987394026163348571

/-!
# A009240: Expansion of exp(tan(tan(x))).

The programs for A009240, there is no canonical definition to state claims against.
-/

/-! ## A009240.P1336749415387534648

`1-A083254(2*n!)`
-/

namespace A009240.P1336749415387534648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A083254 (2 * Nat.factorial n)

end

end A009240.P1336749415387534648

/-! ## A009240.P2736858332644610379

`1-A083254(∏[a(n-1)+1])` with `a(0)=2, a(1)=1`
-/

namespace A009240.P2736858332644610379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A083254 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A009240.P2736858332644610379

/-! ## A009240.P16639261397421419557

`A006257(A233569(n!))`
-/

namespace A009240.P16639261397421419557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A233569 (Nat.factorial n)).toNat

end

end A009240.P16639261397421419557

/-!
# A009241: Expansion of e.g.f.: exp(tan(tanh(x))).

The programs for A009241, there is no canonical definition to state claims against.
-/

/-! ## A009241.P18100956083969190836

`A009716(A024663(n))+1-n`
-/

namespace A009241.P18100956083969190836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009716 (A024663 n).toNat + (1 - (n : ℤ))

end

end A009241.P18100956083969190836

/-! ## A009241.P8191753963490624601

`A009716(A004882(n+1))+1-n`
-/

namespace A009241.P8191753963490624601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009716 (A004882 (n + 1)).toNat + (1 - (n : ℤ))

end

end A009241.P8191753963490624601

/-! ## A009241.P4723598005074400425

`A009716(A004893(n+1))+1-n`
-/

namespace A009241.P4723598005074400425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009716 (A004893 (n + 1)).toNat + (1 - (n : ℤ))

end

end A009241.P4723598005074400425

/-! ## A009241.P18116118194884503543

`A024000(n)+A009716(A024663(n))`
-/

namespace A009241.P18116118194884503543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A009716 (A024663 n).toNat

end

end A009241.P18116118194884503543

/-! ## A009241.P9940540617774042685

`xor(A004442(n), A009716(A024663(n)))`
-/

namespace A009241.P9940540617774042685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A009716 (A024663 n).toNat)

end

end A009241.P9940540617774042685

/-!
# A009242: a(n) = lcm(n, sigma(n)).

The programs for A009242, the canonical program `A009242.P16226750933835637488` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009242 has offset 1).

The definition of A009242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000203(n+1))` (program `A009242.P16226750933835637488`, by `A009242.P16226750933835637488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009242.P11355656019912241994

`(n+1)*A017665(n+1)`
-/

namespace A009242.P11355656019912241994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017665 (n + 1)

end

end A009242.P11355656019912241994

namespace A009242

/-- `(n+1)*A017665(n+1)` -/
def P11355656019912241994.Spec : Prop :=
  ∀ n, P11355656019912241994.a n = A009242 (n + 1)

end A009242

/-! ## A009242.P16226750933835637488

`lcm(n+1, A000203(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009242

/-- `lcm(n+1, A000203(n+1))` -/
def P16226750933835637488.Spec : Prop :=
  ∀ n, (P16226750933835637488.a n : ℤ) = A009242 (n + 1)

theorem P16226750933835637488.correct : P16226750933835637488.Spec := by
  intro n
  simp only [A009242, Nat.add_sub_cancel]

end A009242

/-! ## A009242.P9816838993410678013

`A064987(n+1)/A009194(n+1)`
-/

namespace A009242.P9816838993410678013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A009242.P9816838993410678013

namespace A009242

/-- `A064987(n+1)/A009194(n+1)` -/
def P9816838993410678013.Spec : Prop :=
  ∀ n, P9816838993410678013.a n = (A009242 (n + 1) : ℚ)

end A009242

/-! ## A009242.P10388686278922110343

`lcm(n+1, Δ[A160664(n)])`
-/

namespace A009242.P10388686278922110343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A009242.P10388686278922110343

namespace A009242

/-- `lcm(n+1, Δ[A160664(n)])` -/
def P10388686278922110343.Spec : Prop :=
  ∀ n, (P10388686278922110343.a n : ℤ) = A009242 (n + 1)

end A009242

/-! ## A009242.P16471407427085159488

`A000203(n+1)*A017666(n+1)`
-/

namespace A009242.P16471407427085159488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A017666 (n + 1)

end

end A009242.P16471407427085159488

namespace A009242

/-- `A000203(n+1)*A017666(n+1)` -/
def P16471407427085159488.Spec : Prop :=
  ∀ n, P16471407427085159488.a n = A009242 (n + 1)

end A009242

/-! ## A009242.P5511756228850726624

`A009194(n+1)*A249670(n+1)`
-/

namespace A009242.P5511756228850726624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A249670 (n + 1)

end

end A009242.P5511756228850726624

namespace A009242

/-- `A009194(n+1)*A249670(n+1)` -/
def P5511756228850726624.Spec : Prop :=
  ∀ n, P5511756228850726624.a n = A009242 (n + 1)

end A009242

/-! ## A009242.P9600955192064018526

`lcm(A061019(n+1), A143348(n+1))`
-/

namespace A009242.P9600955192064018526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061019 (n + 1)) (A143348 (n + 1))

end

end A009242.P9600955192064018526

namespace A009242

/-- `lcm(A061019(n+1), A143348(n+1))` -/
def P9600955192064018526.Spec : Prop :=
  ∀ n, (P9600955192064018526.a n : ℤ) = A009242 (n + 1)

end A009242

/-! ## A009242.P6567006329112331875

`A017666(n+1)/2*A074400(n+1)`
-/

namespace A009242.P6567006329112331875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A009242.P6567006329112331875

namespace A009242

/-- `A017666(n+1)/2*A074400(n+1)` -/
def P6567006329112331875.Spec : Prop :=
  ∀ n, P6567006329112331875.a n = (A009242 (n + 1) : ℚ)

end A009242

/-! ## A009242.P13063288457356147511

`A000203(n+1)*(n+1)/A009194(n+1)`
-/

namespace A009242.P13063288457356147511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * (n + 1 : ℤ) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A009242.P13063288457356147511

namespace A009242

/-- `A000203(n+1)*(n+1)/A009194(n+1)` -/
def P13063288457356147511.Spec : Prop :=
  ∀ n, P13063288457356147511.a n = (A009242 (n + 1) : ℚ)

end A009242

/-! ## A009242.P16264276229976835042

`∑{d}[n+1, A008683(#)*A334783((n+1)/#)]`
-/

namespace A009242.P16264276229976835042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334783 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A009242.P16264276229976835042

namespace A009242

/-- `∑{d}[n+1, A008683(#)*A334783((n+1)/#)]` -/
def P16264276229976835042.Spec : Prop :=
  ∀ n, P16264276229976835042.a n = A009242 (n + 1)

end A009242

/-! ## A009242.P7358901054883681170

`lcm(n-A005408(n), A245092(A005408(n)))`
-/

namespace A009242.P7358901054883681170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A005408 n) (A245092 (A005408 n).toNat)

end

end A009242.P7358901054883681170

namespace A009242

/-- `lcm(n-A005408(n), A245092(A005408(n)))` -/
def P7358901054883681170.Spec : Prop :=
  ∀ n, (P7358901054883681170.a n : ℤ) = A009242 (n + 1)

end A009242

/-! ## A009242.P7850841818777955862

`A017666(n+1)*A339964(n+1)*A339965(n+1)`
-/

namespace A009242.P7850841818777955862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) * A339964 (n + 1) * A339965 (n + 1)

end

end A009242.P7850841818777955862

namespace A009242

/-- `A017666(n+1)*A339964(n+1)*A339965(n+1)` -/
def P7850841818777955862.Spec : Prop :=
  ∀ n, P7850841818777955862.a n = A009242 (n + 1)

end A009242

/-! ## A009242.P17210008888776872858

`A017666(n+1)/A000005(n+1)*A064840(n+1)`
-/

namespace A009242.P17210008888776872858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A064840 (n + 1) : ℚ)

end

end A009242.P17210008888776872858

namespace A009242

/-- `A017666(n+1)/A000005(n+1)*A064840(n+1)` -/
def P17210008888776872858.Spec : Prop :=
  ∀ n, P17210008888776872858.a n = (A009242 (n + 1) : ℚ)

end A009242

/-! ## A009242.P1594630764931317281

`A017666(n+1)/A003961(n+1)*A341529(n+1)`
-/

namespace A009242.P1594630764931317281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A341529 (n + 1) : ℚ)

end

end A009242.P1594630764931317281

namespace A009242

/-- `A017666(n+1)/A003961(n+1)*A341529(n+1)` -/
def P1594630764931317281.Spec : Prop :=
  ∀ n, P1594630764931317281.a n = (A009242 (n + 1) : ℚ)

end A009242

/-! ## A009242.P9083756638274863195

`lcm(A155085(n+1)-(n+1), A000027(A000027(n+1)))`
-/

namespace A009242.P9083756638274863195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155085 (n + 1) - (n + 1 : ℤ)) (A000027 (A000027 (n + 1)).toNat)

end

end A009242.P9083756638274863195

namespace A009242

/-- `lcm(A155085(n+1)-(n+1), A000027(A000027(n+1)))` -/
def P9083756638274863195.Spec : Prop :=
  ∀ n, (P9083756638274863195.a n : ℤ) = A009242 (n + 1)

end A009242

/-! ## A009242.P10087753430570543139

`lcm(A000203(A008619(2*n)), A008619(2*n))`
-/

namespace A009242.P10087753430570543139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A009242.P10087753430570543139

namespace A009242

/-- `lcm(A000203(A008619(2*n)), A008619(2*n))` -/
def P10087753430570543139.Spec : Prop :=
  ∀ n, (P10087753430570543139.a n : ℤ) = A009242 (n + 1)

end A009242

/-! ## A009242.P13143801548121427418

`lcm(∑{d}[A027656(2*n), #], A027656(2*n))`
-/

namespace A009242.P13143801548121427418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A027656 (2 * n))

end

end A009242.P13143801548121427418

namespace A009242

/-- `lcm(∑{d}[A027656(2*n), #], A027656(2*n))` -/
def P13143801548121427418.Spec : Prop :=
  ∀ n, (P13143801548121427418.a n : ℤ) = A009242 (n + 1)

end A009242

/-!
# A009243: Expansion of exp(tan(x))*x.

The programs for A009243, there is no canonical definition to state claims against.
-/

/-! ## A009243.P3634496346864911041

`n*A006229(abs(1-n))`
-/

namespace A009243.P3634496346864911041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006229 |1 - (n : ℤ)|.toNat

end

end A009243.P3634496346864911041

/-! ## A009243.P4830913853848743827

`A012924(n)-A006229(n)`
-/

namespace A009243.P4830913853848743827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012924 n - A006229 n

end

end A009243.P4830913853848743827

/-! ## A009243.P11055631986392531181

`A012924(n)-n!/A047692(n)*A047691(n)`
-/

namespace A009243.P11055631986392531181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012924 n : ℚ) - (Nat.factorial n : ℚ) / (A047692 n : ℚ) * (A047691 n : ℚ)

end

end A009243.P11055631986392531181

/-! ## A009243.P1595353931016186629

`A012929(n)+A012933(n)-A006229(n)`
-/

namespace A009243.P1595353931016186629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012929 n + (A012933 n - A006229 n)

end

end A009243.P1595353931016186629

/-! ## A009243.P14631923918160196228

`A012933(n)-A012929(n)*A057428(n)-A006229(n)`
-/

namespace A009243.P14631923918160196228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012933 n - A012929 n * A057428 n - A006229 n

end

end A009243.P14631923918160196228

/-!
# A009244: Expansion of e.g.f.: exp(tan(x))/cos(x).

The programs for A009244, there is no canonical definition to state claims against.
-/

/-! ## A009244.P4089121782417622383

`A266348(A006318(n)+n%2)`
-/

namespace A009244.P4089121782417622383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266348 (A006318 n + ((n % 2 : ℕ) : ℤ)).toNat

end

end A009244.P4089121782417622383

/-! ## A009244.P3530969296039024516

`A283467(∏[A248103(n+1)]+1)`
-/

namespace A009244.P3530969296039024516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (∏ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A009244.P3530969296039024516

/-! ## A009244.P11077792443778229480

`A283467(∏[A272611(n+1)]+1)`
-/

namespace A009244.P11077792443778229480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (∏ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A009244.P11077792443778229480

/-!
# A009246: Expansion of exp(tan(x))/exp(x).

The programs for A009246, there is no canonical definition to state claims against.
-/

/-! ## A009246.P852272208322852759

`A002264(lcm(3, A009266(n)))`
-/

namespace A009246.P852272208322852759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lcm 3 (A009266 n))

end

end A009246.P852272208322852759

/-! ## A009246.P15123094008570146981

`A002264(abs(3*A009266(n)))`
-/

namespace A009246.P15123094008570146981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 |3 * A009266 n|.toNat

end

end A009246.P15123094008570146981

/-! ## A009246.P18089033952032326701

`and(-A287329(2*n), A000111(n))`
-/

namespace A009246.P18089033952032326701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A287329 (2 * n)) (A000111 n)

end

end A009246.P18089033952032326701

/-! ## A009246.P16506241806585651229

`and(A074260(n+1), A270193(A074302(3*(n+1))))`
-/

namespace A009246.P16506241806585651229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074260 (n + 1)) (A270193 (A074302 (3 * (n + 1))).toNat)

end

end A009246.P16506241806585651229

/-!
# A009248: Expansion of e.g.f.: exp(tan(x).exp(x)).

The programs for A009248, there is no canonical definition to state claims against.
-/

/-! ## A009248.P10878602052775109077

`A009608(n)+A009162(n)`
-/

namespace A009248.P10878602052775109077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009608 n + A009162 n

end

end A009248.P10878602052775109077

/-! ## A009248.P11230003645723962395

`A034887(A088929(n)+A002872(n))`
-/

namespace A009248.P11230003645723962395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A088929 n + A002872 n).toNat

end

end A009248.P11230003645723962395

/-!
# A009249: E.g.f. exp(tan(x)*log(1+x)).

The programs for A009249, there is no canonical definition to state claims against.
-/

/-! ## A009249.P12381694002635850074

`A012355(n)+A009163(n)`
-/

namespace A009249.P12381694002635850074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012355 n + A009163 n

end

end A009249.P12381694002635850074

/-! ## A009249.P14023628993979185130

`A012359(A004880(n+1))+A012355(n)`
-/

namespace A009249.P14023628993979185130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012359 (A004880 (n + 1)).toNat + A012355 n

end

end A009249.P14023628993979185130

/-! ## A009249.P12559266667891541347

`A012706(n)+A012355(A004880(n+1))`
-/

namespace A009249.P12559266667891541347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012706 n + A012355 (A004880 (n + 1)).toNat

end

end A009249.P12559266667891541347

/-! ## A009249.P2382479931948992807

`A012706(A004903(n+2)-1)+A012355(n)`
-/

namespace A009249.P2382479931948992807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012706 (A004903 (n + 2) - 1).toNat + A012355 n

end

end A009249.P2382479931948992807

/-!
# A009250: E.g.f. exp(tan(x)*sin(x)) (even powers only).

The programs for A009250, there is no canonical definition to state claims against.
-/

/-! ## A009250.P9632670136578063336

`A009609(n)+A009164(n)`
-/

namespace A009250.P9632670136578063336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009609 n + A009164 n

end

end A009250.P9632670136578063336

/-! ## A009250.P12481946657285411681

`A009164(n)+2*A024240(n)`
-/

namespace A009250.P12481946657285411681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009164 n + 2 * A024240 n

end

end A009250.P12481946657285411681

/-! ## A009250.P15073520644340973269

`A009164(n)+A024240(n)+A024240(A055645(n))`
-/

namespace A009250.P15073520644340973269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009164 n + (A024240 n + A024240 (A055645 n).toNat)

end

end A009250.P15073520644340973269

/-! ## A009250.P7111247702305228838

`A009164(n)+A024240(A004884(n+1))+A024240(n)`
-/

namespace A009250.P7111247702305228838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009164 n + (A024240 (A004884 (n + 1)).toNat + A024240 n)

end

end A009250.P7111247702305228838

/-! ## A009250.P6860634134945754616

`A009164(n)+A024240(n)+A024240(A062399(n))`
-/

namespace A009250.P6860634134945754616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009164 n + (A024240 n + A024240 (A062399 n).toNat)

end

end A009250.P6860634134945754616

/-!
# A009251: Expansion of exp(tan(x)*sinh(x)).

The programs for A009251, there is no canonical definition to state claims against.
-/

/-! ## A009251.P17896611204656594273

`A009610(n)+A009165(n)`
-/

namespace A009251.P17896611204656594273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009610 n + A009165 n

end

end A009251.P17896611204656594273

/-! ## A009251.P6861712130117757658

`A009165(n)+2*A024276(n)`
-/

namespace A009251.P6861712130117757658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009165 n + 2 * A024276 n

end

end A009251.P6861712130117757658

/-! ## A009251.P6855701473076410583

`A009165(n)+A024276(n)+A024276(A292579(n))`
-/

namespace A009251.P6855701473076410583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009165 n + (A024276 n + A024276 (A292579 n).toNat)

end

end A009251.P6855701473076410583

/-! ## A009251.P7671226080350319924

`A009165(n)+A024276(n)+A024276(n)/A153881(n+1)²`
-/

namespace A009251.P7671226080350319924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009165 n : ℚ) + ((A024276 n : ℚ) + (A024276 n : ℚ) / (A153881 (n + 1) ^ 2 : ℚ))

end

end A009251.P7671226080350319924

/-!
# A009252: E.g.f. exp(x*tan(x)) (even powers only).

The programs for A009252, there is no canonical definition to state claims against.
-/

/-! ## A009252.P3838073318016091191

`A009611(n)+A009166(n)`
-/

namespace A009252.P3838073318016091191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009611 n + A009166 n

end

end A009252.P3838073318016091191

/-! ## A009252.P14685838239619785177

`A009166(n)+2*A024263(n)`
-/

namespace A009252.P14685838239619785177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009166 n + 2 * A024263 n

end

end A009252.P14685838239619785177

/-! ## A009252.P12028266688401545699

`A009166(n)+A024263(n)+A024263(A292579(n))`
-/

namespace A009252.P12028266688401545699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009166 n + (A024263 n + A024263 (A292579 n).toNat)

end

end A009252.P12028266688401545699

/-! ## A009252.P9052804594485625065

`A009166(n)+A024263(A004907(n+1))+A024263(n)`
-/

namespace A009252.P9052804594485625065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009166 n + (A024263 (A004907 (n + 1)).toNat + A024263 n)

end

end A009252.P9052804594485625065

/-! ## A009252.P7702746431508478330

`A009166(n)+A024263(n)+A024263(A351870(n))`
-/

namespace A009252.P7702746431508478330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009166 n + (A024263 n + A024263 (A351870 n).toNat)

end

end A009252.P7702746431508478330

/-!
# A009253: Expansion of exp(tan(x)/cos(x)).

The programs for A009253, there is no canonical definition to state claims against.
-/

/-! ## A009253.P17393624985431693481

`A358609(n)-A039993(4^n)`
-/

namespace A009253.P17393624985431693481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358609 n - A039993 (4 ^ n)

end

end A009253.P17393624985431693481

/-! ## A009253.P11276119173229291458

`A260644(A100325(n))-A334028(n)`
-/

namespace A009253.P11276119173229291458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A100325 n).toNat - A334028 n

end

end A009253.P11276119173229291458

/-! ## A009253.P16516231179194392666

`A004525(A026151(n)+A000425(n+1))`
-/

namespace A009253.P16516231179194392666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026151 n + A000425 (n + 1)).toNat

end

end A009253.P16516231179194392666

/-!
# A009254: Expansion of exp(tan(x)/cosh(x)).

The programs for A009254, there is no canonical definition to state claims against.
-/

/-! ## A009254.P16748324488027801536

`or(A012087(n), A236674(A012111(n)))`
-/

namespace A009254.P16748324488027801536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012087 n) (A236674 (A012111 n).toNat)

end

end A009254.P16748324488027801536

/-! ## A009254.P7310194826190301457

`or(A012087(n), A236674(A012231(n)))`
-/

namespace A009254.P7310194826190301457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012087 n) (A236674 (A012231 n).toNat)

end

end A009254.P7310194826190301457

/-! ## A009254.P6424844707777394780

`or(A012087(n), A236674(A012248(n)))`
-/

namespace A009254.P6424844707777394780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012087 n) (A236674 (A012248 n).toNat)

end

end A009254.P6424844707777394780

/-!
# A009256: Expansion of e.g.f. exp(tan(x)^2) (even powers only).

The programs for A009256, there is no canonical definition to state claims against.
-/

/-! ## A009256.P5150146817852023146

`A009613(n)+A009168(n)`
-/

namespace A009256.P5150146817852023146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009613 n + A009168 n

end

end A009256.P5150146817852023146

/-! ## A009256.P5005796737679518314

`A009168(n)+2*A024287(n)`
-/

namespace A009256.P5005796737679518314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009168 n + 2 * A024287 n

end

end A009256.P5005796737679518314

/-! ## A009256.P7503807772544487359

`A009168(n)+lcm(2^A093051(n), A024287(n))`
-/

namespace A009256.P7503807772544487359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009168 n + (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A093051 n : ℤ))) (A024287 n) : ℤ)

end

end A009256.P7503807772544487359

/-!
# A009257: Expansion of e.g.f. exp(tanh(log(1+x))).

The programs for A009257, there is no canonical definition to state claims against.
-/

/-! ## A009257.P5167143600597451850

`A009614(n)+A009169(n)`
-/

namespace A009257.P5167143600597451850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009614 n + A009169 n

end

end A009257.P5167143600597451850

/-!
# A009260: Expansion of exp(tanh(tan(x))).

The programs for A009260, there is no canonical definition to state claims against.
-/

/-! ## A009260.P8942376928930208470

`A024000(n-A009810(n))`
-/

namespace A009260.P8942376928930208470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 ((n : ℤ) - A009810 n).toNat

end

end A009260.P8942376928930208470

/-! ## A009260.P17179333926774947860

`A009810(A087051(n))+1-n`
-/

namespace A009260.P17179333926774947860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009810 (A087051 n).toNat + (1 - (n : ℤ))

end

end A009260.P17179333926774947860

/-! ## A009260.P2048911350552563403

`A024000(n)+A009810(A087051(n))`
-/

namespace A009260.P2048911350552563403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A009810 (A087051 n).toNat

end

end A009260.P2048911350552563403

/-! ## A009260.P3785175499893808406

`A097141(A012231(n))`
-/

namespace A009260.P3785175499893808406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A012231 n).toNat

end

end A009260.P3785175499893808406

/-! ## A009260.P8372673267351143820

`A024000(A012231(n)-1)`
-/

namespace A009260.P8372673267351143820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A012231 n - 1).toNat

end

end A009260.P8372673267351143820

/-!
# A009261: E.g.f.: Expansion of exp(tanh(tanh(x))).

The programs for A009261, there is no canonical definition to state claims against.
-/

/-! ## A009261.P6905521443422798525

`A012256(n)^A307505(n*Δ[n²])!+1-A012248(n)`
-/

namespace A009261.P6905521443422798525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012256 n ^ Nat.factorial (A307505 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat).toNat + 1 - A012248 n

end

end A009261.P6905521443422798525

/-!
# A009262: a(n) = lcm(n, phi(n)).

The programs for A009262, the canonical program `A009262.P15876951147902980395` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009262 has offset 1).

The definition of A009262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A009262.P10913677116963719455

`(n+1)*A076512(n+1)`
-/

namespace A009262.P10913677116963719455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076512 (n + 1)

end

end A009262.P10913677116963719455

namespace A009262

/-- `(n+1)*A076512(n+1)` -/
def P10913677116963719455.Spec : Prop :=
  ∀ n, P10913677116963719455.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P15876951147902980395

`lcm(n+1, A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A009262

/-- `lcm(n+1, A000010(n+1))` -/
def P15876951147902980395.Spec : Prop :=
  ∀ n, (P15876951147902980395.a n : ℤ) = A009262 (n + 1)

theorem P15876951147902980395.correct : P15876951147902980395.Spec := by
  intro n
  simp only [A009262, Nat.add_sub_cancel]

end A009262

/-! ## A009262.P968093419327824865

`A000010(n+1)*A109395(n+1)`
-/

namespace A009262.P968093419327824865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A109395 (n + 1)

end

end A009262.P968093419327824865

namespace A009262

/-- `A000010(n+1)*A109395(n+1)` -/
def P968093419327824865.Spec : Prop :=
  ∀ n, P968093419327824865.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P1617147181970296004

`A299822(n+1)/gcd(A007947(n+1), A000010(A007947(n+1)))`
-/

namespace A009262.P1617147181970296004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (Int.gcd (A007947 (n + 1)) (A000010 (A007947 (n + 1)).toNat) : ℚ)

end

end A009262.P1617147181970296004

namespace A009262

/-- `A299822(n+1)/gcd(A007947(n+1), A000010(A007947(n+1)))` -/
def P1617147181970296004.Spec : Prop :=
  ∀ n, P1617147181970296004.a n = (A009262 (n + 1) : ℚ)

end A009262

/-! ## A009262.P6331328464971536049

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])`
-/

namespace A009262.P6331328464971536049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j))

end

end A009262.P6331328464971536049

namespace A009262

/-- `lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])` -/
def P6331328464971536049.Spec : Prop :=
  ∀ n, (P6331328464971536049.a n : ℤ) = A009262 (n + 1)

end A009262

/-! ## A009262.P18430273693458081034

`lcm(n+1, Δ[A002088(n)])`
-/

namespace A009262.P18430273693458081034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A009262.P18430273693458081034

namespace A009262

/-- `lcm(n+1, Δ[A002088(n)])` -/
def P18430273693458081034.Spec : Prop :=
  ∀ n, (P18430273693458081034.a n : ℤ) = A009262 (n + 1)

end A009262

/-! ## A009262.P7822870081775934436

`Δ[A002088(n)]*A109395(n+1)`
-/

namespace A009262.P7822870081775934436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A109395 (n + 1)

end

end A009262.P7822870081775934436

namespace A009262

/-- `Δ[A002088(n)]*A109395(n+1)` -/
def P7822870081775934436.Spec : Prop :=
  ∀ n, P7822870081775934436.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P14843296586136787743

`lcm(Δ[A005728(n)], A000027(n+1))`
-/

namespace A009262.P14843296586136787743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000027 (n + 1))

end

end A009262.P14843296586136787743

namespace A009262

/-- `lcm(Δ[A005728(n)], A000027(n+1))` -/
def P14843296586136787743.Spec : Prop :=
  ∀ n, (P14843296586136787743.a n : ℤ) = A009262 (n + 1)

end A009262

/-! ## A009262.P2424876772216662214

`A050399(n+1)-A052106(n+1)`
-/

namespace A009262.P2424876772216662214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (n + 1) - A052106 (n + 1)

end

end A009262.P2424876772216662214

namespace A009262

/-- `A050399(n+1)-A052106(n+1)` -/
def P2424876772216662214.Spec : Prop :=
  ∀ n, P2424876772216662214.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P18330737285930360753

`(n+1)*A294649(A007947(n+1))`
-/

namespace A009262.P18330737285930360753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294649 (A007947 (n + 1)).toNat

end

end A009262.P18330737285930360753

namespace A009262

/-- `(n+1)*A294649(A007947(n+1))` -/
def P18330737285930360753.Spec : Prop :=
  ∀ n, P18330737285930360753.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P8371731522122784369

`(n+1)*A225679(A322590(n+1))`
-/

namespace A009262.P8371731522122784369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A225679 (A322590 (n + 1)).toNat

end

end A009262.P8371731522122784369

namespace A009262

/-- `(n+1)*A225679(A322590(n+1))` -/
def P8371731522122784369.Spec : Prop :=
  ∀ n, P8371731522122784369.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P13149991512164694024

`A002618(n+1)/A009195(n+1)`
-/

namespace A009262.P13149991512164694024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A009262.P13149991512164694024

namespace A009262

/-- `A002618(n+1)/A009195(n+1)` -/
def P13149991512164694024.Spec : Prop :=
  ∀ n, P13149991512164694024.a n = (A009262 (n + 1) : ℚ)

end A009262

/-! ## A009262.P1364781818297137096

`(A039649(n+1)-1)*A109395(n+1)`
-/

namespace A009262.P1364781818297137096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A109395 (n + 1)

end

end A009262.P1364781818297137096

namespace A009262

/-- `(A039649(n+1)-1)*A109395(n+1)` -/
def P1364781818297137096.Spec : Prop :=
  ∀ n, P1364781818297137096.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P16212208878206348938

`A071118(n+1)/(2*A009195(n+1))`
-/

namespace A009262.P16212208878206348938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / (2 * A009195 (n + 1) : ℚ)

end

end A009262.P16212208878206348938

namespace A009262

/-- `A071118(n+1)/(2*A009195(n+1))` -/
def P16212208878206348938.Spec : Prop :=
  ∀ n, P16212208878206348938.a n = (A009262 (n + 1) : ℚ)

end A009262

/-! ## A009262.P13149999354289541712

`lcm(A039649(n+1)-1, A000027(A000027(n+1)))`
-/

namespace A009262.P13149999354289541712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039649 (n + 1) - 1) (A000027 (A000027 (n + 1)).toNat)

end

end A009262.P13149999354289541712

namespace A009262

/-- `lcm(A039649(n+1)-1, A000027(A000027(n+1)))` -/
def P13149999354289541712.Spec : Prop :=
  ∀ n, (P13149999354289541712.a n : ℤ) = A009262 (n + 1)

end A009262

/-! ## A009262.P14939551017640146268

`(A002088(n+1)-A002088(n))*A109395(n+1)`
-/

namespace A009262.P14939551017640146268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A109395 (n + 1)

end

end A009262.P14939551017640146268

namespace A009262

/-- `(A002088(n+1)-A002088(n))*A109395(n+1)` -/
def P14939551017640146268.Spec : Prop :=
  ∀ n, P14939551017640146268.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P13074909263113817905

`lcm(A219428(n+1)-n, A028310(A000027(n+1)))`
-/

namespace A009262.P13074909263113817905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219428 (n + 1) - (n : ℤ)) (A028310 (A000027 (n + 1)).toNat)

end

end A009262.P13074909263113817905

namespace A009262

/-- `lcm(A219428(n+1)-n, A028310(A000027(n+1)))` -/
def P13074909263113817905.Spec : Prop :=
  ∀ n, (P13074909263113817905.a n : ℤ) = A009262 (n + 1)

end A009262

/-! ## A009262.P1816534134308182168

`(A083254(n+1)+A051953(n+1))*A109395(n+1)`
-/

namespace A009262.P1816534134308182168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083254 (n + 1) + A051953 (n + 1)) * A109395 (n + 1)

end

end A009262.P1816534134308182168

namespace A009262

/-- `(A083254(n+1)+A051953(n+1))*A109395(n+1)` -/
def P1816534134308182168.Spec : Prop :=
  ∀ n, P1816534134308182168.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P9556820953532864022

`A050399(n+1)-A051953(n+1)*A109395(n+1)`
-/

namespace A009262.P9556820953532864022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (n + 1) - A051953 (n + 1) * A109395 (n + 1)

end

end A009262.P9556820953532864022

namespace A009262

/-- `A050399(n+1)-A051953(n+1)*A109395(n+1)` -/
def P9556820953532864022.Spec : Prop :=
  ∀ n, P9556820953532864022.a n = A009262 (n + 1)

end A009262

/-! ## A009262.P1957257628733754808

`A003557(n+1)*A109395(n+1)*A173557(n+1)`
-/

namespace A009262.P1957257628733754808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A109395 (n + 1) * A173557 (n + 1)

end

end A009262.P1957257628733754808

namespace A009262

/-- `A003557(n+1)*A109395(n+1)*A173557(n+1)` -/
def P1957257628733754808.Spec : Prop :=
  ∀ n, P1957257628733754808.a n = A009262 (n + 1)

end A009262

/-!
# A009263: Expansion of e.g.f.: exp(tanh(x)).x.

The programs for A009263, there is no canonical definition to state claims against.
-/

/-! ## A009263.P7407672767287880814

`n*A003723(abs(1-n))`
-/

namespace A009263.P7407672767287880814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003723 |1 - (n : ℤ)|.toNat

end

end A009263.P7407672767287880814

/-! ## A009263.P6831463461907530491

`A013123(n)+A013126(n)-A003723(n)`
-/

namespace A009263.P6831463461907530491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013123 n + (A013126 n - A003723 n)

end

end A009263.P6831463461907530491

/-! ## A009263.P6173849064325747674

`A013117(n)-A003723(n)`
-/

namespace A009263.P6173849064325747674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n - A003723 n

end

end A009263.P6173849064325747674

/-!
# A009264: Expansion of e.g.f.: exp(tanh(x))/cos(x).

The programs for A009264, there is no canonical definition to state claims against.
-/

/-! ## A009264.P4409223431013973601

`A193915(A098051(n)-A117278(n+2))`
-/

namespace A009264.P4409223431013973601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193915 (A098051 n - A117278 (n + 2)).toNat

end

end A009264.P4409223431013973601

/-! ## A009264.P1206054148841502000

`A193915(A049886(n+1)-A117278(n+2))`
-/

namespace A009264.P1206054148841502000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193915 (A049886 (n + 1) - A117278 (n + 2)).toNat

end

end A009264.P1206054148841502000

/-! ## A009264.P14994244286572583989

`ceil(root(A113592(∑[n+1]), 4))`
-/

namespace A009264.P14994244286572583989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113592 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A009264.P14994244286572583989

/-!
# A009266: Expansion of exp(tanh(x))/exp(x).

The programs for A009266, there is no canonical definition to state claims against.
-/

/-! ## A009266.P16886938189804700558

`A009285(n)-2*A009625(n)`
-/

namespace A009266.P16886938189804700558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009285 n - 2 * A009625 n

end

end A009266.P16886938189804700558

/-! ## A009266.P5014408364607733947

`A009246(n)*A057079(A001791(n))`
-/

namespace A009266.P5014408364607733947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009246 n * A057079 (A001791 n).toNat

end

end A009266.P5014408364607733947

/-! ## A009266.P17361457810648051961

`A009246(n)*A307427(A102736(n))`
-/

namespace A009266.P17361457810648051961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009246 n * A307427 (A102736 n).toNat

end

end A009266.P17361457810648051961

/-!
# A009268: Expansion of e.g.f. exp(tanh(x)*exp(x)).

The programs for A009268, there is no canonical definition to state claims against.
-/

/-! ## A009268.P5688552916346976785

`A009616(n)+A009171(n)`
-/

namespace A009268.P5688552916346976785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009616 n + A009171 n

end

end A009268.P5688552916346976785

/-! ## A009268.P454303272195936738

`A247987(A380634(n+1))`
-/

namespace A009268.P454303272195936738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (A380634 (n + 1)).toNat

end

end A009268.P454303272195936738

/-! ## A009268.P3343187761251552968

`A256502(A109081(n+1)+n)`
-/

namespace A009268.P3343187761251552968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A109081 (n + 1) + (n : ℤ)).toNat

end

end A009268.P3343187761251552968

/-!
# A009269: Expansion of e.g.f. exp(tanh(x)*log(1+x)).

The programs for A009269, there is no canonical definition to state claims against.
-/

/-! ## A009269.P11397471135884019671

`A012654(n)+A009172(n)`
-/

namespace A009269.P11397471135884019671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012654 n + A009172 n

end

end A009269.P11397471135884019671

/-! ## A009269.P17143164666753293804

`A012654(n)+∏{e}[7^n, A012657(#)]`
-/

namespace A009269.P17143164666753293804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012654 n + ∏ p ∈ Nat.primeFactors (f1 n), A012657 (Nat.factorization (f1 n) p)

end

end A009269.P17143164666753293804

/-! ## A009269.P1532387614051841053

`A012654(n)+A012405(n)%A132161(n+1)`
-/

namespace A009269.P1532387614051841053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012654 n + Int.tmod (A012405 n) (A132161 (n + 1))

end

end A009269.P1532387614051841053

/-!
# A009270: Expansion of exp(tanh(x)*sin(x)).

The programs for A009270, there is no canonical definition to state claims against.
-/

/-! ## A009270.P5817211063837099896

`A349858(n)*A366611(A356268(n))`
-/

namespace A009270.P5817211063837099896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349858 n * A366611 (A356268 n).toNat

end

end A009270.P5817211063837099896

/-!
# A009271: Expansion of exp(tanh(x)*sinh(x)).

The programs for A009271, there is no canonical definition to state claims against.
-/

/-! ## A009271.P9189844918694601076

`A291270((∑[∑[n+1]]+n)*a(n-1)+2)` with `a(0)=1`
-/

namespace A009271.P9189844918694601076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291270 (((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * a (n - 1) + 2).toNat

end

end A009271.P9189844918694601076

/-!
# A009272: Expansion of e.g.f. exp(tanh(x)*tan(x)), even powers only.

The programs for A009272, there is no canonical definition to state claims against.
-/

/-! ## A009272.P2406399593651903399

`2^n*A072154(A127909(n))`
-/

namespace A009272.P2406399593651903399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A072154 (A127909 n).toNat

end

end A009272.P2406399593651903399

/-!
# A009273: Expansion of e.g.f. exp(x*tanh(x)) (even powers only).

The programs for A009273, there is no canonical definition to state claims against.
-/

/-! ## A009273.P8735843413867368163

`A304209(round(sinh(n)))`
-/

namespace A009273.P8735843413867368163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304209 (SequenceMachineLib.roundAway (Real.sinh (n : ℝ))).toNat

end

end A009273.P8735843413867368163

/-!
# A009274: E.g.f.: exp(tanh(x)/cos(x)).

The programs for A009274, there is no canonical definition to state claims against.
-/

/-! ## A009274.P3137390993267630316

`A192045(2*(floor(a(n-2)+a(n-1)/2)+1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=5`
-/

namespace A009274.P3137390993267630316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 5] fun n a =>
  A192045 (2 * (⌊(a (n - 2) : ℚ) + (a (n - 1) : ℚ) / 2⌋ + 1)).toNat

end

end A009274.P3137390993267630316

/-! ## A009274.P854003026975529907

`A256133(A325791(n))`
-/

namespace A009274.P854003026975529907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A325791 n).toNat

end

end A009274.P854003026975529907

/-! ## A009274.P1241473284448731740

`A065825(A195852(n²))`
-/

namespace A009274.P1241473284448731740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A195852 (n ^ 2)).toNat

end

end A009274.P1241473284448731740

/-!
# A009278: a(n) = lcm(d(n), sigma(n)).

The programs for A009278, the canonical program `A009278.P8639639460306029723` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009278 has offset 1).

The definition of A009278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009278.P12752096163100712550

`A064840(n+1)/A009205(n+1)`
-/

namespace A009278.P12752096163100712550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A009278.P12752096163100712550

namespace A009278

/-- `A064840(n+1)/A009205(n+1)` -/
def P12752096163100712550.Spec : Prop :=
  ∀ n, P12752096163100712550.a n = (A009278 (n + 1) : ℚ)

end A009278

/-! ## A009278.P8639639460306029723

`lcm(A000005(n+1), A000203(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A009278

/-- `lcm(A000005(n+1), A000203(n+1))` -/
def P8639639460306029723.Spec : Prop :=
  ∀ n, (P8639639460306029723.a n : ℤ) = A009278 (n + 1)

theorem P8639639460306029723.correct : P8639639460306029723.Spec := by
  intro n
  simp only [A009278, Nat.add_sub_cancel]

end A009278

/-! ## A009278.P2251306899673737050

`lcm(∑{d}[n+1, #], ∏{e}[n+1, #+1])`
-/

namespace A009278.P2251306899673737050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ d ∈ Nat.divisors (f1 n), d) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A009278.P2251306899673737050

namespace A009278

/-- `lcm(∑{d}[n+1, #], ∏{e}[n+1, #+1])` -/
def P2251306899673737050.Spec : Prop :=
  ∀ n, (P2251306899673737050.a n : ℤ) = A009278 (n + 1)

end A009278

/-! ## A009278.P9368414277200944429

`lcm(A000203(n+1), Δ[A006218(n)])`
-/

namespace A009278.P9368414277200944429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (f1 (n + 1) - f1 n)

end

end A009278.P9368414277200944429

namespace A009278

/-- `lcm(A000203(n+1), Δ[A006218(n)])` -/
def P9368414277200944429.Spec : Prop :=
  ∀ n, (P9368414277200944429.a n : ℤ) = A009278 (n + 1)

end A009278

/-! ## A009278.P1386736859239686684

`lcm(Δ[A160664(n)], A000005(n+1))`
-/

namespace A009278.P1386736859239686684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000005 (n + 1))

end

end A009278.P1386736859239686684

namespace A009278

/-- `lcm(Δ[A160664(n)], A000005(n+1))` -/
def P1386736859239686684.Spec : Prop :=
  ∀ n, (P1386736859239686684.a n : ℤ) = A009278 (n + 1)

end A009278

/-! ## A009278.P17778983441587098214

`A000005(n+1)*A057020(n+1)`
-/

namespace A009278.P17778983441587098214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A057020 (n + 1)

end

end A009278.P17778983441587098214

namespace A009278

/-- `A000005(n+1)*A057020(n+1)` -/
def P17778983441587098214.Spec : Prop :=
  ∀ n, P17778983441587098214.a n = A009278 (n + 1)

end A009278

/-! ## A009278.P15424434419760073128

`A000203(n+1)*A057021(n+1)`
-/

namespace A009278.P15424434419760073128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A057021 (n + 1)

end

end A009278.P15424434419760073128

namespace A009278

/-- `A000203(n+1)*A057021(n+1)` -/
def P15424434419760073128.Spec : Prop :=
  ∀ n, P15424434419760073128.a n = A009278 (n + 1)

end A009278

/-! ## A009278.P9220793481397086223

`∑{d}[n+1, A008683(#)*A334784((n+1)/#)]`
-/

namespace A009278.P9220793481397086223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334784 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A009278.P9220793481397086223

namespace A009278

/-- `∑{d}[n+1, A008683(#)*A334784((n+1)/#)]` -/
def P9220793481397086223.Spec : Prop :=
  ∀ n, P9220793481397086223.a n = A009278 (n + 1)

end A009278

/-! ## A009278.P15817010427633505250

`lcm(A032741(n+1)+1, A000203(A000027(n+1)))`
-/

namespace A009278.P15817010427633505250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 (n + 1) + 1) (A000203 (A000027 (n + 1)).toNat)

end

end A009278.P15817010427633505250

namespace A009278

/-- `lcm(A032741(n+1)+1, A000203(A000027(n+1)))` -/
def P15817010427633505250.Spec : Prop :=
  ∀ n, (P15817010427633505250.a n : ℤ) = A009278 (n + 1)

end A009278

/-! ## A009278.P8865081116649722267

`A009205(n+1)*A057020(n+1)*A057021(n+1)`
-/

namespace A009278.P8865081116649722267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (n + 1) * A057020 (n + 1) * A057021 (n + 1)

end

end A009278.P8865081116649722267

namespace A009278

/-- `A009205(n+1)*A057020(n+1)*A057021(n+1)` -/
def P8865081116649722267.Spec : Prop :=
  ∀ n, P8865081116649722267.a n = A009278 (n + 1)

end A009278

/-! ## A009278.P17707859600037761699

`A000005(n+1)*A000203(n+1)/A009205(n+1)`
-/

namespace A009278.P17707859600037761699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000203 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A009278.P17707859600037761699

namespace A009278

/-- `A000005(n+1)*A000203(n+1)/A009205(n+1)` -/
def P17707859600037761699.Spec : Prop :=
  ∀ n, P17707859600037761699.a n = (A009278 (n + 1) : ℚ)

end A009278

/-! ## A009278.P11868793492919554881

`A064840(n+1)/gcd(A000005(n+1), A000203(n+1))`
-/

namespace A009278.P11868793492919554881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A000203 (n + 1)) : ℚ)

end

end A009278.P11868793492919554881

namespace A009278

/-- `A064840(n+1)/gcd(A000005(n+1), A000203(n+1))` -/
def P11868793492919554881.Spec : Prop :=
  ∀ n, P11868793492919554881.a n = (A009278 (n + 1) : ℚ)

end A009278

/-!
# A009279: a(n) = lcm(d(n), phi(n)).

The programs for A009279, the canonical program `A009279.P8551515990557863358` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009279 has offset 1).

The definition of A009279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009279.P8551515990557863358

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑{d}[n+1, ((#+1)%2)!])`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009279

/-- `lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑{d}[n+1, ((#+1)%2)!])` -/
def P8551515990557863358.Spec : Prop :=
  ∀ n, (P8551515990557863358.a n : ℤ) = A009279 (n + 1)

theorem P8551515990557863358.correct : P8551515990557863358.Spec := by
  intro n
  simp only [A009279, Nat.add_sub_cancel]

end A009279

/-! ## A009279.P936261851648643630

`lcm(A000010(n+1), ∏{e}[n+1, #+1])`
-/

namespace A009279.P936261851648643630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A009279.P936261851648643630

namespace A009279

/-- `lcm(A000010(n+1), ∏{e}[n+1, #+1])` -/
def P936261851648643630.Spec : Prop :=
  ∀ n, (P936261851648643630.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P7969252894838030990

`lcm(A109606(n+1)+1, ∑{d}[n+1, gcd(n, #)])`
-/

namespace A009279.P7969252894838030990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109606 (n + 1) + 1) ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A009279.P7969252894838030990

namespace A009279

/-- `lcm(A109606(n+1)+1, ∑{d}[n+1, gcd(n, #)])` -/
def P7969252894838030990.Spec : Prop :=
  ∀ n, (P7969252894838030990.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P6997560257699696159

`lcm(A039649(n+1)-1, ∑{d}[n+1, ((#+1)%2)!])`
-/

namespace A009279.P6997560257699696159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039649 (n + 1) - 1) ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2) : ℕ) : ℤ)

end

end A009279.P6997560257699696159

namespace A009279

/-- `lcm(A039649(n+1)-1, ∑{d}[n+1, ((#+1)%2)!])` -/
def P6997560257699696159.Spec : Prop :=
  ∀ n, (P6997560257699696159.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P9000661207429725245

`lcm(A032741(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A009279.P9000661207429725245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 (n + 1) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A009279.P9000661207429725245

namespace A009279

/-- `lcm(A032741(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P9000661207429725245.Spec : Prop :=
  ∀ n, (P9000661207429725245.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P16879332878954244492

`lcm(A000005(n+1), Δ[A002088(n)])`
-/

namespace A009279.P16879332878954244492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (f1 (n + 1) - f1 n)

end

end A009279.P16879332878954244492

namespace A009279

/-- `lcm(A000005(n+1), Δ[A002088(n)])` -/
def P16879332878954244492.Spec : Prop :=
  ∀ n, (P16879332878954244492.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P6530803926323082928

`lcm(A000010(n+1), Δ[A006218(n)])`
-/

namespace A009279.P6530803926323082928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) (f1 (n + 1) - f1 n)

end

end A009279.P6530803926323082928

namespace A009279

/-- `lcm(A000010(n+1), Δ[A006218(n)])` -/
def P6530803926323082928.Spec : Prop :=
  ∀ n, (P6530803926323082928.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P16562609524744494295

`A000005(n+1)*A279287(n+1)`
-/

namespace A009279.P16562609524744494295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A279287 (n + 1)

end

end A009279.P16562609524744494295

namespace A009279

/-- `A000005(n+1)*A279287(n+1)` -/
def P16562609524744494295.Spec : Prop :=
  ∀ n, P16562609524744494295.a n = A009279 (n + 1)

end A009279

/-! ## A009279.P13550134003797147889

`A000010(n+1)*A279288(n+1)`
-/

namespace A009279.P13550134003797147889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A279288 (n + 1)

end

end A009279.P13550134003797147889

namespace A009279

/-- `A000010(n+1)*A279288(n+1)` -/
def P13550134003797147889.Spec : Prop :=
  ∀ n, P13550134003797147889.a n = A009279 (n + 1)

end A009279

/-! ## A009279.P14842832808313098026

`A062355(n+1)/A009213(n+1)`
-/

namespace A009279.P14842832808313098026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) / (A009213 (n + 1) : ℚ)

end

end A009279.P14842832808313098026

namespace A009279

/-- `A062355(n+1)/A009213(n+1)` -/
def P14842832808313098026.Spec : Prop :=
  ∀ n, P14842832808313098026.a n = (A009279 (n + 1) : ℚ)

end A009279

/-! ## A009279.P15971417059718018815

`lcm(n-A219428(n+1), ∑{d}[n+1, #+1]-A000203(n+1))`
-/

namespace A009279.P15971417059718018815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A219428 (n + 1)) (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1))

end

end A009279.P15971417059718018815

namespace A009279

/-- `lcm(n-A219428(n+1), ∑{d}[n+1, #+1]-A000203(n+1))` -/
def P15971417059718018815.Spec : Prop :=
  ∀ n, (P15971417059718018815.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P13191472380147432751

`lcm(A109606(n+1)+1, A000027(A000005(n+1)))`
-/

namespace A009279.P13191472380147432751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109606 (n + 1) + 1) (A000027 (A000005 (n + 1)).toNat)

end

end A009279.P13191472380147432751

namespace A009279

/-- `lcm(A109606(n+1)+1, A000027(A000005(n+1)))` -/
def P13191472380147432751.Spec : Prop :=
  ∀ n, (P13191472380147432751.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P13246534132622996711

`lcm(A039649(n+1)-1, A000005(A000027(n+1)))`
-/

namespace A009279.P13246534132622996711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039649 (n + 1) - 1) (A000005 (A000027 (n + 1)).toNat)

end

end A009279.P13246534132622996711

namespace A009279

/-- `lcm(A039649(n+1)-1, A000005(A000027(n+1)))` -/
def P13246534132622996711.Spec : Prop :=
  ∀ n, (P13246534132622996711.a n : ℤ) = A009279 (n + 1)

end A009279

/-! ## A009279.P9427967368618209682

`(A063070(n+1)+A000005(n+1))*A279288(n+1)`
-/

namespace A009279.P9427967368618209682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063070 (n + 1) + A000005 (n + 1)) * A279288 (n + 1)

end

end A009279.P9427967368618209682

namespace A009279

/-- `(A063070(n+1)+A000005(n+1))*A279288(n+1)` -/
def P9427967368618209682.Spec : Prop :=
  ∀ n, P9427967368618209682.a n = A009279 (n + 1)

end A009279

/-! ## A009279.P10216987805775291178

`(A000010(n+1)-A063070(n+1))*A279287(n+1)`
-/

namespace A009279.P10216987805775291178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A063070 (n + 1)) * A279287 (n + 1)

end

end A009279.P10216987805775291178

namespace A009279

/-- `(A000010(n+1)-A063070(n+1))*A279287(n+1)` -/
def P10216987805775291178.Spec : Prop :=
  ∀ n, P10216987805775291178.a n = A009279 (n + 1)

end A009279

/-! ## A009279.P13715988155494976294

`A000005(n+1)*A000010(n+1)/A009213(n+1)`
-/

namespace A009279.P13715988155494976294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000010 (n + 1) : ℚ) / (A009213 (n + 1) : ℚ)

end

end A009279.P13715988155494976294

namespace A009279

/-- `A000005(n+1)*A000010(n+1)/A009213(n+1)` -/
def P13715988155494976294.Spec : Prop :=
  ∀ n, P13715988155494976294.a n = (A009279 (n + 1) : ℚ)

end A009279

/-! ## A009279.P12577494665201997221

`lcm(A048865(n+1)+A048864(n+1), A032741(n+1)+1)`
-/

namespace A009279.P12577494665201997221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048865 (n + 1) + A048864 (n + 1)) (A032741 (n + 1) + 1)

end

end A009279.P12577494665201997221

namespace A009279

/-- `lcm(A048865(n+1)+A048864(n+1), A032741(n+1)+1)` -/
def P12577494665201997221.Spec : Prop :=
  ∀ n, (P12577494665201997221.a n : ℤ) = A009279 (n + 1)

end A009279

/-!
# A009280: Expansion of exp(x)*cos(log(1+x)).

The programs for A009280, there is no canonical definition to state claims against.
-/

/-! ## A009280.P446930982670317646

`2*A009174(n)-A009027(n)`
-/

namespace A009280.P446930982670317646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009174 n - A009027 n

end

end A009280.P446930982670317646

/-! ## A009280.P10548289775413800346

`A009618(n)+A009174(n)`
-/

namespace A009280.P10548289775413800346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009618 n + A009174 n

end

end A009280.P10548289775413800346

/-! ## A009280.P15489949068533008187

`A009027(n)+2*A009618(n)`
-/

namespace A009280.P15489949068533008187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009027 n + 2 * A009618 n

end

end A009280.P15489949068533008187

/-!
# A009281: Expansion of e.g.f. exp(x)*cosh(log(1+x)).

The programs for A009281, the canonical program `A009281.P16715583283193038702` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009281 has offset 0).

The definition of A009281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009281.P16715583283193038702

`(-1)^n*A000387(n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A009281

/-- `(-1)^n*A000387(n)+1` -/
def P16715583283193038702.Spec : Prop :=
  ∀ n, P16715583283193038702.a n = A009281 n

theorem P16715583283193038702.correct : P16715583283193038702.Spec := by
  intro n
  simp only [A009281]

end A009281

/-! ## A009281.P14979814538480570072

`∑[n]+1-n*a(n-1)` with `a(0)=1`
-/

namespace A009281.P14979814538480570072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ) * a (n - 1))

end

end A009281.P14979814538480570072

namespace A009281

/-- `∑[n]+1-n*a(n-1)` -/
def P14979814538480570072.Spec : Prop :=
  ∀ n, P14979814538480570072.a n = A009281 n

end A009281

/-! ## A009281.P12030984465366522124

`1-(n*a(n-1)-∑[n])` with `a(0)=1`
-/

namespace A009281.P12030984465366522124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) * a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A009281.P12030984465366522124

namespace A009281

/-- `1-(n*a(n-1)-∑[n])` -/
def P12030984465366522124.Spec : Prop :=
  ∀ n, P12030984465366522124.a n = A009281 n

end A009281

/-! ## A009281.P13150429274545498847

`n*((n+1)/2-a(n-1))+1` with `a(0)=1`
-/

namespace A009281.P13150429274545498847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n + 1 : ℚ) / 2 - a (n - 1)) + 1

end

end A009281.P13150429274545498847

namespace A009281

/-- `n*((n+1)/2-a(n-1))+1` -/
def P13150429274545498847.Spec : Prop :=
  ∀ n, P13150429274545498847.a n = (A009281 n : ℚ)

end A009281

/-! ## A009281.P8379540078818451439

`(a(n-1)-a(n-2))*(1-n)+n` with `a(0)=1, a(1)=1`
-/

namespace A009281.P8379540078818451439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - a (n - 2)) * (1 - (n : ℤ)) + (n : ℤ)

end

end A009281.P8379540078818451439

namespace A009281

/-- `(a(n-1)-a(n-2))*(1-n)+n` -/
def P8379540078818451439.Spec : Prop :=
  ∀ n, P8379540078818451439.a n = A009281 n

end A009281

/-! ## A009281.P12216366300765438539

`n-(1-n)*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A009281.P12216366300765438539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (1 - (n : ℤ)) * (a (n - 2) - a (n - 1))

end

end A009281.P12216366300765438539

namespace A009281

/-- `n-(1-n)*(a(n-2)-a(n-1))` -/
def P12216366300765438539.Spec : Prop :=
  ∀ n, P12216366300765438539.a n = A009281 n

end A009281

/-! ## A009281.P750954695288238901

`1-A009574(n)+n`
-/

namespace A009281.P750954695288238901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009574 n + (n : ℤ)

end

end A009281.P750954695288238901

namespace A009281

/-- `1-A009574(n)+n` -/
def P750954695288238901.Spec : Prop :=
  ∀ n, P750954695288238901.a n = A009281 n

end A009281

/-! ## A009281.P6575829531031183057

`(A179508(n+1)+n)/2`
-/

namespace A009281.P6575829531031183057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179508 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A009281.P6575829531031183057

namespace A009281

/-- `(A179508(n+1)+n)/2` -/
def P6575829531031183057.Spec : Prop :=
  ∀ n, P6575829531031183057.a n = (A009281 n : ℚ)

end A009281

/-! ## A009281.P12028620959795259879

`(A182386(n)+1+n)/2`
-/

namespace A009281.P12028620959795259879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182386 n + 1 + (n : ℤ) : ℚ) / 2

end

end A009281.P12028620959795259879

namespace A009281

/-- `(A182386(n)+1+n)/2` -/
def P12028620959795259879.Spec : Prop :=
  ∀ n, P12028620959795259879.a n = (A009281 n : ℚ)

end A009281

/-! ## A009281.P4444228910802480805

`A000124(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A009281.P4444228910802480805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000124 n - (n : ℤ) * a (n - 1)

end

end A009281.P4444228910802480805

namespace A009281

/-- `A000124(n)-n*a(n-1)` -/
def P4444228910802480805.Spec : Prop :=
  ∀ n, P4444228910802480805.a n = A009281 n

end A009281

/-!
# A009282: Expansion of e.g.f.: exp(x + sin(x)).

The programs for A009282, there is no canonical definition to state claims against.
-/

/-! ## A009282.P5436903249628528972

`A009590(n)+A009145(n)*A033999(n)`
-/

namespace A009282.P5436903249628528972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 n + A009145 n * A033999 n

end

end A009282.P5436903249628528972

/-! ## A009282.P9294419010581665672

`A009590(n)+A009145(n)/A033999(A330396(n))`
-/

namespace A009282.P9294419010581665672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009590 n : ℚ) + (A009145 n : ℚ) / (A033999 (A330396 n).toNat : ℚ)

end

end A009282.P9294419010581665672

/-! ## A009282.P17989643200506131432

`A009209(n)+2*A009622(n)`
-/

namespace A009282.P17989643200506131432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009209 n + 2 * A009622 n

end

end A009282.P17989643200506131432

/-! ## A009282.P5343609548923592941

`A009622(n)+A009184(n)*A033999(n)`
-/

namespace A009282.P5343609548923592941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009622 n + A009184 n * A033999 n

end

end A009282.P5343609548923592941

/-! ## A009282.P2933505814415662934

`A009622(n)-A009184(n)/A033999(n+1)`
-/

namespace A009282.P2933505814415662934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009622 n : ℚ) - (A009184 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A009282.P2933505814415662934

/-!
# A009283: E.g.f.: exp(x + sinh(x)).

The programs for A009283, there is no canonical definition to state claims against.
-/

/-! ## A009283.P9437701169549193122

`A009598(n)+abs(A009152(n))`
-/

namespace A009283.P9437701169549193122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009598 n + |A009152 n|

end

end A009283.P9437701169549193122

/-! ## A009283.P12407299843781623217

`A009623(n)+A003724(n+1)`
-/

namespace A009283.P12407299843781623217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009623 n + A003724 (n + 1)

end

end A009283.P12407299843781623217

/-! ## A009283.P4440578313196784303

`A009227(n)+2*A009623(n)`
-/

namespace A009283.P4440578313196784303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 n + 2 * A009623 n

end

end A009283.P4440578313196784303

/-! ## A009283.P13938711632643877703

`abs(2*A009152(n)-A009227(n))`
-/

namespace A009283.P13938711632643877703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009152 n - A009227 n|

end

end A009283.P13938711632643877703

/-! ## A009283.P9760228026598616396

`A003724(n+1)+A003724(n+1)-A009227(n)`
-/

namespace A009283.P9760228026598616396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 1) + (A003724 (n + 1) - A009227 n)

end

end A009283.P9760228026598616396

/-!
# A009284: Expansion of e.g.f. exp(x + tan(x)).

The programs for A009284, there is no canonical definition to state claims against.
-/

/-! ## A009284.P9094940168663846900

`A028310(A009290(n))+A009605(n)`
-/

namespace A009284.P9094940168663846900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A009290 n).toNat + A009605 n

end

end A009284.P9094940168663846900

/-! ## A009284.P17472948234348854800

`2*A008616(4*n*a(n-1)+3)` with `a(0)=1`
-/

namespace A009284.P17472948234348854800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A008616 ((4 * n : ℤ) * a (n - 1) + 3).toNat

end

end A009284.P17472948234348854800

/-! ## A009284.P12265926898906630333

`A001511(A000629(n))*A127083(n)`
-/

namespace A009284.P12265926898906630333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000629 n).toNat * A127083 n

end

end A009284.P12265926898906630333

/-!
# A009285: Expansion of e.g.f. exp(x + tanh(x)).

The programs for A009285, there is no canonical definition to state claims against.
-/

/-! ## A009285.P7555658946222918292

`A009266(n)+2*A009625(n)`
-/

namespace A009285.P7555658946222918292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009266 n + 2 * A009625 n

end

end A009285.P7555658946222918292

/-!
# A009286: a(n) = lcm(sigma(n), phi(n)).

The programs for A009286, the canonical program `A009286.P14437481793621511918` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009286 has offset 1).

The definition of A009286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A009286.P1468991457414160783

`A062354(n+1)/A009223(n+1)`
-/

namespace A009286.P1468991457414160783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A009286.P1468991457414160783

namespace A009286

/-- `A062354(n+1)/A009223(n+1)` -/
def P1468991457414160783.Spec : Prop :=
  ∀ n, P1468991457414160783.a n = (A009286 (n + 1) : ℚ)

end A009286

/-! ## A009286.P14437481793621511918

`lcm(A000203(n+1), A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A009286

/-- `lcm(A000203(n+1), A000010(n+1))` -/
def P14437481793621511918.Spec : Prop :=
  ∀ n, (P14437481793621511918.a n : ℤ) = A009286 (n + 1)

theorem P14437481793621511918.correct : P14437481793621511918.Spec := by
  intro n
  simp only [A009286, Nat.add_sub_cancel]

end A009286

/-! ## A009286.P6974012807799039967

`lcm(Δ[A002088(n)], A000203(n+1))`
-/

namespace A009286.P6974012807799039967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000203 (n + 1))

end

end A009286.P6974012807799039967

namespace A009286

/-- `lcm(Δ[A002088(n)], A000203(n+1))` -/
def P6974012807799039967.Spec : Prop :=
  ∀ n, (P6974012807799039967.a n : ℤ) = A009286 (n + 1)

end A009286

/-! ## A009286.P11940567352434604013

`lcm(Δ[A160664(n)], A000010(n+1))`
-/

namespace A009286.P11940567352434604013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000010 (n + 1))

end

end A009286.P11940567352434604013

namespace A009286

/-- `lcm(Δ[A160664(n)], A000010(n+1))` -/
def P11940567352434604013.Spec : Prop :=
  ∀ n, (P11940567352434604013.a n : ℤ) = A009286 (n + 1)

end A009286

/-! ## A009286.P2320490119313221249

`A000010(n+1)*A289336(n+1)`
-/

namespace A009286.P2320490119313221249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A289336 (n + 1)

end

end A009286.P2320490119313221249

namespace A009286

/-- `A000010(n+1)*A289336(n+1)` -/
def P2320490119313221249.Spec : Prop :=
  ∀ n, P2320490119313221249.a n = A009286 (n + 1)

end A009286

/-! ## A009286.P17190425695024295373

`A000203(n+1)*A289412(n+1)`
-/

namespace A009286.P17190425695024295373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A289412 (n + 1)

end

end A009286.P17190425695024295373

namespace A009286

/-- `A000203(n+1)*A289412(n+1)` -/
def P17190425695024295373.Spec : Prop :=
  ∀ n, P17190425695024295373.a n = A009286 (n + 1)

end A009286

/-! ## A009286.P13281962677653771516

`lcm(A039649(n+1)-1, A245092(2*n+1))`
-/

namespace A009286.P13281962677653771516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039649 (n + 1) - 1) (A245092 (2 * n + 1))

end

end A009286.P13281962677653771516

namespace A009286

/-- `lcm(A039649(n+1)-1, A245092(2*n+1))` -/
def P13281962677653771516.Spec : Prop :=
  ∀ n, (P13281962677653771516.a n : ℤ) = A009286 (n + 1)

end A009286

/-! ## A009286.P7552146659452913157

`A000010(n+1)*A000203(n+1)/A009223(n+1)`
-/

namespace A009286.P7552146659452913157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000203 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A009286.P7552146659452913157

namespace A009286

/-- `A000010(n+1)*A000203(n+1)/A009223(n+1)` -/
def P7552146659452913157.Spec : Prop :=
  ∀ n, P7552146659452913157.a n = (A009286 (n + 1) : ℚ)

end A009286

/-! ## A009286.P13431168356285447516

`lcm(A155085(n+1)-(n+1), A000010(A000027(n+1)))`
-/

namespace A009286.P13431168356285447516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155085 (n + 1) - (n + 1 : ℤ)) (A000010 (A000027 (n + 1)).toNat)

end

end A009286.P13431168356285447516

namespace A009286

/-- `lcm(A155085(n+1)-(n+1), A000010(A000027(n+1)))` -/
def P13431168356285447516.Spec : Prop :=
  ∀ n, (P13431168356285447516.a n : ℤ) = A009286 (n + 1)

end A009286

/-! ## A009286.P15444671246883080425

`lcm(A245092(2*n+1), A282634(∑[n]+1))`
-/

namespace A009286.P15444671246883080425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A245092 (2 * n + 1)) (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A009286.P15444671246883080425

namespace A009286

/-- `lcm(A245092(2*n+1), A282634(∑[n]+1))` -/
def P15444671246883080425.Spec : Prop :=
  ∀ n, (P15444671246883080425.a n : ℤ) = A009286 (n + 1)

end A009286

/-!
# A009287: a(1) = 3; thereafter a(n+1) = least k with a(n) divisors.

The programs for A009287, there is no canonical definition to state claims against.
-/

/-! ## A009287.P4430532949527314587

`A061799(a(n-1))` with `a(0)=3`
-/

namespace A009287.P4430532949527314587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A061799 (a (n - 1)).toNat

end

end A009287.P4430532949527314587

/-! ## A009287.P531005727348153193

`A133454(n%a(n-1))` with `a(0)=3`
-/

namespace A009287.P531005727348153193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A133454 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A009287.P531005727348153193

/-! ## A009287.P8285981385789972661

`A251483(∑[A250283(n)])`
-/

namespace A009287.P8285981385789972661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009287.P8285981385789972661

/-!
# A009288: Expansion of exp(x)/cos(log(1+x)).

The programs for A009288, there is no canonical definition to state claims against.
-/

/-! ## A009288.P1046178667382230898

`A009629(n)+A009180(n)`
-/

namespace A009288.P1046178667382230898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009629 n + A009180 n

end

end A009288.P1046178667382230898

/-!
# A009290: Expansion of exp(x)/cos(sinh(x)).

The programs for A009290, there is no canonical definition to state claims against.
-/

/-! ## A009290.P95064002783315435

`A004151(abs(A009161(n)))`
-/

namespace A009290.P95064002783315435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 |A009161 n|.toNat

end

end A009290.P95064002783315435

/-! ## A009290.P16707672377464786223

`A028310(abs(A009161(n)))`
-/

namespace A009290.P16707672377464786223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A009161 n|.toNat

end

end A009290.P16707672377464786223

/-! ## A009290.P2438644507826789159

`A106618(abs(A009161(n)))`
-/

namespace A009290.P2438644507826789159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 |A009161 n|.toNat

end

end A009290.P2438644507826789159

/-! ## A009290.P4073856581431393392

`A132739(abs(A009161(n)))`
-/

namespace A009290.P4073856581431393392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 |A009161 n|.toNat

end

end A009290.P4073856581431393392

/-!
# A009291: Expansion of exp(x)/cos(tan(x)).

The programs for A009291, there is no canonical definition to state claims against.
-/

/-! ## A009291.P16750605482964192574

`A112689(∑[xor(1, n)*A296440(n!)])`
-/

namespace A009291.P16750605482964192574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) * A296440 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009291.P16750605482964192574

/-! ## A009291.P1128329398610853145

`A270659(A270659(n))-A017912(n)`
-/

namespace A009291.P1128329398610853145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270659 (A270659 n).toNat - A017912 n

end

end A009291.P1128329398610853145

/-! ## A009291.P248090878315865244

`and(A081440(n), A229486(A221706(n)))`
-/

namespace A009291.P248090878315865244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081440 n) (A229486 (A221706 n).toNat)

end

end A009291.P248090878315865244

/-!
# A009292: Expansion of exp(x)/cos(tanh(x)).

The programs for A009292, there is no canonical definition to state claims against.
-/

/-! ## A009292.P3612801161329593393

`A295557(A003945(n))-A082505(n)`
-/

namespace A009292.P3612801161329593393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295557 (A003945 n).toNat - A082505 n

end

end A009292.P3612801161329593393

/-! ## A009292.P1156187266282988669

`A009145(n)*A033999(A001076(n))`
-/

namespace A009292.P1156187266282988669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n * A033999 (A001076 n).toNat

end

end A009292.P1156187266282988669

/-! ## A009292.P6764505119791822003

`A009145(n)*A057077(A081590(n))`
-/

namespace A009292.P6764505119791822003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n * A057077 (A081590 n).toNat

end

end A009292.P6764505119791822003

/-! ## A009292.P16514004363328587005

`A009145(n)*A057077(A241894(n))`
-/

namespace A009292.P16514004363328587005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n * A057077 (A241894 n).toNat

end

end A009292.P16514004363328587005

/-!
# A009293: If a, b in sequence, so is a*b+1.

The programs for A009293, there is no canonical definition to state claims against.
-/

/-! ## A009293.P14652925957898254016

`eq[A048896(n), A113088(A140130(n+1))]`
-/

namespace A009293.P14652925957898254016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113088 (A140130 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009293.P14652925957898254016

/-! ## A009293.P8631645330590211387

`eq[A005563(A070879(n)), A038573(2*(n+1))]`
-/

namespace A009293.P8631645330590211387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A070879 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009293.P8631645330590211387

/-!
# A009294: Expansion of e.g.f.: exp(x)/cosh(log(1+x)).

The programs for A009294, there is no canonical definition to state claims against.
-/

/-! ## A009294.P7304495748612655278

`1-n*(a(n-1)+(n-1)*a(n-2)/2)+n` with `a(0)=1, a(1)=1`
-/

namespace A009294.P7304495748612655278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) * (a (n - 2) / 2)) + (n : ℚ)

end

end A009294.P7304495748612655278

/-! ## A009294.P7764149301169658136

`A009632(n)+A009183(n)`
-/

namespace A009294.P7764149301169658136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009632 n + A009183 n

end

end A009294.P7764149301169658136

/-!
# A009295: Expansion of e.g.f.: exp(x)/cosh(sin(x)).

The programs for A009295, there is no canonical definition to state claims against.
-/

/-! ## A009295.P9041466862883577260

`A009090(n)*A033999(A001096(n))`
-/

namespace A009295.P9041466862883577260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009090 n * A033999 (A001096 n).toNat

end

end A009295.P9041466862883577260

/-! ## A009295.P11874489948426318328

`A009090(n)/A033999(A001096(n)+2)`
-/

namespace A009295.P11874489948426318328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009090 n : ℚ) / (A033999 (A001096 n + 2).toNat : ℚ)

end

end A009295.P11874489948426318328

/-!
# A009297: Expansion of exp(x)/cosh(tan(x)).

The programs for A009297, there is no canonical definition to state claims against.
-/

/-! ## A009297.P3564673183461344991

`A009059(n)*A062157(A001075(n))`
-/

namespace A009297.P3564673183461344991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009059 n * A062157 (A001075 n).toNat

end

end A009297.P3564673183461344991

/-! ## A009297.P12167740905205802307

`A009059(n)*A062157(A117917(n))`
-/

namespace A009297.P12167740905205802307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009059 n * A062157 (A117917 n).toNat

end

end A009297.P12167740905205802307

/-!
# A009299: If a, b in sequence, so is a*b+2.

The programs for A009299, there is no canonical definition to state claims against.
-/

/-! ## A009299.P304443110485622103

`A130824(record[Δ[A334164(n+1)]])`
-/

namespace A009299.P304443110485622103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334164 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A009299.P304443110485622103

/-! ## A009299.P4129463479946624467

`A130824(record[A334164(2*(n+1))-A334164(2*n+1)])`
-/

namespace A009299.P4129463479946624467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334164 (2 * (n + 1)) - A334164 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A009299.P4129463479946624467

/-! ## A009299.P8892479655418769009

`lt[A090252(3*n+5), A049990(A166304(n))]`
-/

namespace A009299.P8892479655418769009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A166304 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A009299.P8892479655418769009

/-! ## A009299.P18199198164334516455

`record[A038712(A342672(n+1))+A002659(n+1)]`
-/

namespace A009299.P18199198164334516455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A342672 (n + 1)).toNat + A002659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009299.P18199198164334516455

