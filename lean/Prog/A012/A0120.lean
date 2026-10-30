import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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

/-!
# A012000: Expansion of 1/sqrt(1 - 4*x + 16*x^2).

The programs for A012000, the canonical program `A012000.P17516733029076567775` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012000 has offset 0).

The definition of A012000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A012000.P17516733029076567775

`∑{#}[floor(n/2), C(n, #)*C(2*(n-#), n)*(-4)^#]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A012000

/-- `∑{#}[floor(n/2), C(n, #)*C(2*(n-#), n)*(-4)^#]` -/
def P17516733029076567775.Spec : Prop :=
  ∀ n, P17516733029076567775.a n = A012000 n

theorem P17516733029076567775.correct : P17516733029076567775.Spec := by
  intro n
  simp only [A012000]

end A012000

/-! ## A012000.P11110853239265166605

`(-1)^n*∑{#}[n, C(n, #)²*(-3)^#]`
-/

namespace A012000.P11110853239265166605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k ^ 2 : ℤ) * (-3) ^ k)

end

end A012000.P11110853239265166605

namespace A012000

/-- `(-1)^n*∑{#}[n, C(n, #)²*(-3)^#]` -/
def P11110853239265166605.Spec : Prop :=
  ∀ n, P11110853239265166605.a n = A012000 n

end A012000

/-! ## A012000.P734789351243326112

`(-1)^n*A116091(n)`
-/

namespace A012000.P734789351243326112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116091 n

end

end A012000.P734789351243326112

namespace A012000

/-- `(-1)^n*A116091(n)` -/
def P734789351243326112.Spec : Prop :=
  ∀ n, P734789351243326112.a n = A012000 n

end A012000

/-! ## A012000.P3538462998957192430

`A116091(n)/A033999(n)`
-/

namespace A012000.P3538462998957192430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116091 n : ℚ) / (A033999 n : ℚ)

end

end A012000.P3538462998957192430

namespace A012000

/-- `A116091(n)/A033999(n)` -/
def P3538462998957192430.Spec : Prop :=
  ∀ n, P3538462998957192430.a n = (A012000 n : ℚ)

end A012000

/-! ## A012000.P16015335879421892116

`A116091(n)/ratio[A057077(n)]`
-/

namespace A012000.P16015335879421892116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116091 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A012000.P16015335879421892116

namespace A012000

/-- `A116091(n)/ratio[A057077(n)]` -/
def P16015335879421892116.Spec : Prop :=
  ∀ n, P16015335879421892116.a n = (A012000 n : ℚ)

end A012000

/-! ## A012000.P12067199052795487969

`A116091(n)/A057428(n)^n`
-/

namespace A012000.P12067199052795487969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116091 n : ℚ) / (A057428 n ^ n : ℚ)

end

end A012000.P12067199052795487969

namespace A012000

/-- `A116091(n)/A057428(n)^n` -/
def P12067199052795487969.Spec : Prop :=
  ∀ n, P12067199052795487969.a n = (A012000 n : ℚ)

end A012000

/-! ## A012000.P3532531764939988903

`∑{#}[n, C(n, #)*A098333(#)]`
-/

namespace A012000.P3532531764939988903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A098333 k

end

end A012000.P3532531764939988903

namespace A012000

/-- `∑{#}[n, C(n, #)*A098333(#)]` -/
def P3532531764939988903.Spec : Prop :=
  ∀ n, P3532531764939988903.a n = A012000 n

end A012000

/-! ## A012000.P843357971374042544

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098340(#)]`
-/

namespace A012000.P843357971374042544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098340 k : ℚ)

end

end A012000.P843357971374042544

namespace A012000

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098340(#)]` -/
def P843357971374042544.Spec : Prop :=
  ∀ n, P843357971374042544.a n = (A012000 n : ℚ)

end A012000

/-! ## A012000.P4574490451701886054

`A116092(n)/2^n*A033999(n)`
-/

namespace A012000.P4574490451701886054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116092 n : ℚ) / (2 ^ n : ℚ) * (A033999 n : ℚ)

end

end A012000.P4574490451701886054

namespace A012000

/-- `A116092(n)/2^n*A033999(n)` -/
def P4574490451701886054.Spec : Prop :=
  ∀ n, P4574490451701886054.a n = (A012000 n : ℚ)

end A012000

/-! ## A012000.P16052806578599574318

`A116092(n)/2^n*A008683(A323503(n))`
-/

namespace A012000.P16052806578599574318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116092 n : ℚ) / (2 ^ n : ℚ) * (A008683 (A323503 n).toNat : ℚ)

end

end A012000.P16052806578599574318

namespace A012000

/-- `A116092(n)/2^n*A008683(A323503(n))` -/
def P16052806578599574318.Spec : Prop :=
  ∀ n, P16052806578599574318.a n = (A012000 n : ℚ)

end A012000

/-!
# A012001: E.g.f.: -tan(log(cos(x))), even powers only.

The programs for A012001, there is no canonical definition to state claims against.
-/

/-! ## A012001.P1057096731408578098

`A083345(∑[∏[A195686(n)]])`
-/

namespace A012001.P1057096731408578098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195686 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012001.P1057096731408578098

/-!
# A012002: arctan(log(cos(x)))=-1/2!*x^2-2/4!*x^4+14/6!*x^6+568/8!*x^8...

The programs for A012002, there is no canonical definition to state claims against.
-/

/-! ## A012002.P7447934665595080466

`A224748(A275307(n+1))-n`
-/

namespace A012002.P7447934665595080466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224748 (A275307 (n + 1)).toNat - (n : ℤ)

end

end A012002.P7447934665595080466

/-!
# A012003: E.g.f. cos(log(cos(x))), even powers only.

The programs for A012003, there is no canonical definition to state claims against.
-/

/-! ## A012003.P17198226222527732164

`1-A283992(∏[(n%8)²+1])`
-/

namespace A012003.P17198226222527732164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 8) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A283992 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A012003.P17198226222527732164

/-!
# A012005: tanh(log(cos(x)))=-1/2!*x^2-2/4!*x^4+14/6!*x^6+568/8!*x^8...

The programs for A012005, there is no canonical definition to state claims against.
-/

/-! ## A012005.P1014612644601642658

`A263249(n+1)/A000079(n+1)`
-/

namespace A012005.P1014612644601642658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263249 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A012005.P1014612644601642658

/-! ## A012005.P2242958143058676505

`A263249(n+1)/A122111(A000040(n+1))`
-/

namespace A012005.P2242958143058676505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263249 (n + 1) : ℚ) / (A122111 (A000040 (n + 1)).toNat : ℚ)

end

end A012005.P2242958143058676505

/-! ## A012005.P11399273088304948145

`A263249(n+1)/record[A061142(n+2)]`
-/

namespace A012005.P11399273088304948145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263249 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A012005.P11399273088304948145

/-!
# A012007: cosh(log(cos(x))) = 1+3/4!*x^4+30/6!*x^6+693/8!*x^8+25260/10!*x^10...

The programs for A012007, there is no canonical definition to state claims against.
-/

/-! ## A012007.P14590942391840225469

`1/2*((-1)^n+A000364(n))`
-/

namespace A012007.P14590942391840225469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((-1) ^ n + A000364 n : ℚ)

end

end A012007.P14590942391840225469

/-! ## A012007.P247839932239925821

`xor(1, A024235(n))`
-/

namespace A012007.P247839932239925821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A024235 n)

end

end A012007.P247839932239925821

/-! ## A012007.P12690266850550877038

`xor(1, record[A009567(n)])`
-/

namespace A012007.P12690266850550877038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A012007.P12690266850550877038

/-! ## A012007.P14455066578514552854

`abs(record[-A009123(n)])`
-/

namespace A012007.P14455066578514552854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012007.P14455066578514552854

/-! ## A012007.P248499160301601817

`A029583(2*n)/2`
-/

namespace A012007.P248499160301601817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029583 (2 * n) : ℚ) / 2

end

end A012007.P248499160301601817

/-!
# A012008: sec(log(cos(x)))= 1+3/4!*x^4+30/6!*x^6+1113/8!*x^8+50460/10!*x^10...

The programs for A012008, there is no canonical definition to state claims against.
-/

/-! ## A012008.P8240607976480957741

`A339947(n!)-(sqrt(and(4, n))+n)`
-/

namespace A012008.P8240607976480957741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A339947 (Nat.factorial n) : ℝ) - (Real.sqrt (Nat.land 4 n : ℝ) + (n : ℝ))

end

end A012008.P8240607976480957741

/-!
# A012010: arctan(sin(sin(x))) = x - 4/3!*x^3 + 76/5!*x^5 - 3592/7!*x^7 + 317968/9!*x^9 - ....

The programs for A012010, there is no canonical definition to state claims against.
-/

/-! ## A012010.P15689081613088699807

`A009347(Δ[n²])*A033999(n)`
-/

namespace A012010.P15689081613088699807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009347 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A012010.P15689081613088699807

/-!
# A012012: sec(sin(sin(x)))=1+1/2!*x^2-3/4!*x^4-27/6!*x^6+1145/8!*x^8...

The programs for A012012, there is no canonical definition to state claims against.
-/

/-! ## A012012.P8692716150714771524

`A195637(A305843(n))-A074007(n+1)`
-/

namespace A012012.P8692716150714771524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195637 (A305843 n).toNat - A074007 (n + 1)

end

end A012012.P8692716150714771524

/-!
# A012014: arctan(sin(tan(x)))=x-1/3!*x^3+1/5!*x^5-169/7!*x^7-1823/9!*x^9...

The programs for A012014, there is no canonical definition to state claims against.
-/

/-! ## A012014.P614748871399513005

`A009349(2*n+1)*A033999(n)`
-/

namespace A012014.P614748871399513005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009349 (2 * n + 1) * A033999 n

end

end A012014.P614748871399513005

/-! ## A012014.P13509786519216006259

`A009349(2*n+1)*A087960(n²)`
-/

namespace A012014.P13509786519216006259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009349 (2 * n + 1) * A087960 (n ^ 2)

end

end A012014.P13509786519216006259

/-! ## A012014.P8353461534370848103

`A009349(2*n+1)/A087960(2*n)`
-/

namespace A012014.P8353461534370848103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009349 (2 * n + 1) : ℚ) / (A087960 (2 * n) : ℚ)

end

end A012014.P8353461534370848103

/-! ## A012014.P14929619048565576974

`A009349(A317439(n+1))/A033999(n)`
-/

namespace A012014.P14929619048565576974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009349 (A317439 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A012014.P14929619048565576974

/-!
# A012015: arcsinh(sin(tan(x)))=x-4/5!*x^5-192/7!*x^7-7600/9!*x^9-507136/11!*x^11...

The programs for A012015, there is no canonical definition to state claims against.
-/

/-! ## A012015.P16103472649098255494

`A277486(A277477(n+2))-A277452(n)`
-/

namespace A012015.P16103472649098255494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (A277477 (n + 2)).toNat - A277452 n

end

end A012015.P16103472649098255494

/-!
# A012016: arctanh(sin(tan(x)))=x+3/3!*x^3+41/5!*x^5+1299/7!*x^7+74609/9!*x^9...

The programs for A012016, there is no canonical definition to state claims against.
-/

/-! ## A012016.P14617354920136154392

`A009329(Δ[n²])`
-/

namespace A012016.P14617354920136154392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009329 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012016.P14617354920136154392

/-! ## A012016.P13788171237315423818

`record[A009329(1+n)]`
-/

namespace A012016.P13788171237315423818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009329 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012016.P13788171237315423818

/-! ## A012016.P11119623533354220087

`record[or(1, A009329(n))]`
-/

namespace A012016.P11119623533354220087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009329 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012016.P11119623533354220087

/-! ## A012016.P5933490201654687753

`abs(A009329(2*n+1))`
-/

namespace A012016.P5933490201654687753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009329 (2 * n + 1)|

end

end A012016.P5933490201654687753

/-! ## A012016.P16369437862903598977

`or(1, A009329(A005408(n)))`
-/

namespace A012016.P16369437862903598977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009329 (A005408 n).toNat)

end

end A012016.P16369437862903598977

/-!
# A012017: sec(sin(tan(x)))=1+1/2!*x^2+9/4!*x^4+153/6!*x^6+2993/8!*x^8...

The programs for A012017, there is no canonical definition to state claims against.
-/

/-! ## A012017.P2271338250271838305

`A137673(A337591(n))`
-/

namespace A012017.P2271338250271838305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137673 (A337591 n).toNat

end

end A012017.P2271338250271838305

/-!
# A012018: sech(sin(tan(x)))=1-1/2!*x^2+1/4!*x^4+47/6!*x^6+897/8!*x^8...

The programs for A012018, there is no canonical definition to state claims against.
-/

/-! ## A012018.P8263890645660840801

`A079905(A245265(n))-n-n`
-/

namespace A012018.P8263890645660840801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (A245265 n).toNat - (n : ℤ) - (n : ℤ)

end

end A012018.P8263890645660840801

/-!
# A012019: E.g.f.: exp(sin(arctan(x))).

The programs for A012019, there is no canonical definition to state claims against.
-/

/-! ## A012019.P10281069581592096552

`A012253(n^A027023(n))`
-/

namespace A012019.P10281069581592096552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012253 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A027023 n : ℤ))).toNat

end

end A012019.P10281069581592096552

/-! ## A012019.P3576361992519580044

`A012253(n)%A011790(n+1)`
-/

namespace A012019.P3576361992519580044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012253 n) (A011790 (n + 1))

end

end A012019.P3576361992519580044

/-! ## A012019.P10434452884068874412

`A012253(n)+A000007(A010036(n))`
-/

namespace A012019.P10434452884068874412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012253 n + A000007 (A010036 n).toNat

end

end A012019.P10434452884068874412

/-!
# A012020: Expansion of e.g.f.: sin(sin(arctan(x))) (odd powers only).

The programs for A012020, there is no canonical definition to state claims against.
-/

/-! ## A012020.P4422245115556122779

`(-1)^n*A012150(Δ[n²])`
-/

namespace A012020.P4422245115556122779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012150 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012020.P4422245115556122779

/-! ## A012020.P2891614332549105349

`A012150(2*n+1)*A033999(n)`
-/

namespace A012020.P2891614332549105349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012150 (2 * n + 1) * A033999 n

end

end A012020.P2891614332549105349

/-! ## A012020.P3737060496054020179

`A012150(A005408(n))/A033999(n)`
-/

namespace A012020.P3737060496054020179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012150 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012020.P3737060496054020179

/-! ## A012020.P15212324360907392440

`A012150(2*n+1)*A326797(A000217(n))`
-/

namespace A012020.P15212324360907392440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012150 (2 * n + 1) * A326797 (A000217 n).toNat

end

end A012020.P15212324360907392440

/-!
# A012022: Expansion of e.g.f.: arctan(sin(arctan(x))) (odd powers only).

The programs for A012022, there is no canonical definition to state claims against.
-/

/-! ## A012022.P3128594491577355861

`A090470(n)*A127138(2*n)`
-/

namespace A012022.P3128594491577355861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090470 n * A127138 (2 * n)

end

end A012022.P3128594491577355861

/-! ## A012022.P31776812488876424

`A001147(n)*A127137(2*n+1)`
-/

namespace A012022.P31776812488876424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A127137 (2 * n + 1)

end

end A012022.P31776812488876424

/-! ## A012022.P1749555719922549999

`A055634(2*n)*A127137(2*n+1)`
-/

namespace A012022.P1749555719922549999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n) * A127137 (2 * n + 1)

end

end A012022.P1749555719922549999

/-! ## A012022.P13024474194324454554

`A127137(2*n+1)*A133221(2*n)`
-/

namespace A012022.P13024474194324454554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127137 (2 * n + 1) * A133221 (2 * n)

end

end A012022.P13024474194324454554

/-! ## A012022.P7362538802622441285

`A127137(2*n+1)*A275521(2*n)`
-/

namespace A012022.P7362538802622441285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127137 (2 * n + 1) * A275521 (2 * n)

end

end A012022.P7362538802622441285

/-!
# A012023: Expansion of e.g.f. cos(sin(arctan(x))) (even powers).

The programs for A012023, there is no canonical definition to state claims against.
-/

/-! ## A012023.P10158655057588258614

`A012150(2*n)*A033999(n)`
-/

namespace A012023.P10158655057588258614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012150 (2 * n) * A033999 n

end

end A012023.P10158655057588258614

/-! ## A012023.P6254823639271492517

`A057077(2*n)*A081442(n)`
-/

namespace A012023.P6254823639271492517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A081442 n

end

end A012023.P6254823639271492517

/-! ## A012023.P2374358708039842493

`A055975(2*n+1)*A081442(n)`
-/

namespace A012023.P2374358708039842493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A081442 n

end

end A012023.P2374358708039842493

/-! ## A012023.P11399784700065012018

`A008310(A002378(n))*A081442(n)`
-/

namespace A012023.P11399784700065012018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (A002378 n).toNat * A081442 n

end

end A012023.P11399784700065012018

/-! ## A012023.P14642483396799446877

`A081442(n)*A248805(A249372(n+1))`
-/

namespace A012023.P14642483396799446877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081442 n * A248805 (A249372 (n + 1)).toNat

end

end A012023.P14642483396799446877

/-!
# A012024: E.g.f. sinh(sin(arctan(x))) (odd powers only).

The programs for A012024, there is no canonical definition to state claims against.
-/

/-! ## A012024.P14238036597958509824

`A012019(Δ[n²])`
-/

namespace A012024.P14238036597958509824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012024.P14238036597958509824

/-! ## A012024.P15785665119591292284

`abs(A057077(n))*A012019(2*n+1)`
-/

namespace A012024.P15785665119591292284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n| * A012019 (2 * n + 1)

end

end A012024.P15785665119591292284

/-! ## A012024.P4489737995852088870

`and(-A000124(n), A012019(2*n+1))`
-/

namespace A012024.P4489737995852088870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000124 n) (A012019 (2 * n + 1))

end

end A012024.P4489737995852088870

/-! ## A012024.P9698786751210711582

`A057077(n+1)²*A012019(2*n+1)`
-/

namespace A012024.P9698786751210711582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) ^ 2 * A012019 (2 * n + 1)

end

end A012024.P9698786751210711582

/-! ## A012024.P18392141045010478490

`∏{e}[A006530(n+1), A012019(A005843(n)+#)]`
-/

namespace A012024.P18392141045010478490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A012019 (A005843 n + (Nat.factorization (f1 n).natAbs p : ℤ)).toNat

end

end A012024.P18392141045010478490

/-!
# A012025: E.g.f. arcsinh(sin(arctan(x))) = arcsinh(x/(1+x^2)^(1/2)) (odd powers only).

The programs for A012025, there is no canonical definition to state claims against.
-/

/-! ## A012025.P15392695583899294285

`A126962(2*n+1)/(2*n+1)`
-/

namespace A012025.P15392695583899294285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126962 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A012025.P15392695583899294285

/-! ## A012025.P1836942612246836000

`A034430(n)*A097388(n)`
-/

namespace A012025.P1836942612246836000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n * A097388 n

end

end A012025.P1836942612246836000

/-! ## A012025.P13675894811021836342

`A076729(n)*A127138(2*n)`
-/

namespace A012025.P13675894811021836342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076729 n * A127138 (2 * n)

end

end A012025.P13675894811021836342

/-! ## A012025.P1617405752596074196

`A001147(n)*A127138(2*n+1)`
-/

namespace A012025.P1617405752596074196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A127138 (2 * n + 1)

end

end A012025.P1617405752596074196

/-! ## A012025.P13887895918002186414

`floor(A126962(2*n+1)/A005408(n))`
-/

namespace A012025.P13887895918002186414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126962 (2 * n + 1) : ℚ) / (A005408 n : ℚ)⌋

end

end A012025.P13887895918002186414

/-!
# A012027: E.g.f. cosh(sin(arctan(x))) = cosh(x/sqrt(1+x^2)) (even powers only).

The programs for A012027, there is no canonical definition to state claims against.
-/

/-! ## A012027.P944950196412293209

`A012019(2*n)`
-/

namespace A012027.P944950196412293209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012019 (2 * n)

end

end A012027.P944950196412293209

/-! ## A012027.P2525644368419830060

`or(1, A012019(A004277(n)))`
-/

namespace A012027.P2525644368419830060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012019 (A004277 n).toNat)

end

end A012027.P2525644368419830060

/-! ## A012027.P13141476654945780521

`or(1, A012019(A005843(n)))`
-/

namespace A012027.P13141476654945780521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012019 (A005843 n).toNat)

end

end A012027.P13141476654945780521

/-! ## A012027.P2736497049207983429

`A012019(A005843(n))/A007318(C(2, n))`
-/

namespace A012027.P2736497049207983429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012019 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A012027.P2736497049207983429

/-! ## A012027.P2213231309732253541

`∏{e}[A006530(n+1), A012019(A005843(n)/#)]`
-/

namespace A012027.P2213231309732253541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A012019 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A012027.P2213231309732253541

/-!
# A012030: arctan(sin(sinh(x))) = x - 2/3!*x^3 +16/5!*x^5 - 440/7!*x^7 + 20224/9!*x^9 - ....

The programs for A012030, there is no canonical definition to state claims against.
-/

/-! ## A012030.P1048678691488729791

`A009346(Δ[n²])/(-1)^n`
-/

namespace A012030.P1048678691488729791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009346 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012030.P1048678691488729791

/-! ## A012030.P10581949337258438322

`A009346(2*n+1)*A033999(n)`
-/

namespace A012030.P10581949337258438322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009346 (2 * n + 1) * A033999 n

end

end A012030.P10581949337258438322

/-!
# A012032: sec(sin(sinh(x)))=1+1/2!*x^2+5/4!*x^4+13/6!*x^6-1303/8!*x^8...

The programs for A012032, there is no canonical definition to state claims against.
-/

/-! ## A012032.P7140935091622252300

`A352117(n)-A212091(A015473(n))`
-/

namespace A012032.P7140935091622252300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352117 n - A212091 (A015473 n).toNat

end

end A012032.P7140935091622252300

/-!
# A012033: sech(sin(sinh(x)))=1-1/2!*x^2+5/4!*x^4-13/6!*x^6-407/8!*x^8...

The programs for A012033, there is no canonical definition to state claims against.
-/

/-! ## A012033.P7642132156633153897

`2*n+1-A005843(A342287(n))`
-/

namespace A012033.P7642132156633153897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A005843 (A342287 n).toNat

end

end A012033.P7642132156633153897

/-!
# A012034: exp(sin(arcsinh(x))) = 1+x+1/2!*x^2-1/3!*x^3-7/4!*x^4+1/5!*x^5...

The programs for A012034, there is no canonical definition to state claims against.
-/

/-! ## A012034.P7252664462067697381

`A221131(A019298(n)+A000196(n))`
-/

namespace A012034.P7252664462067697381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221131 (A019298 n + A000196 n).toNat

end

end A012034.P7252664462067697381

/-! ## A012034.P9325819795347730696

`A002019(n)-A282289(A000225(n))`
-/

namespace A012034.P9325819795347730696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 n - A282289 (A000225 n).toNat

end

end A012034.P9325819795347730696

/-! ## A012034.P10803740360169387659

`A009001(A293266(n*A251076(n)))`
-/

namespace A012034.P10803740360169387659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A293266 ((n : ℤ) * A251076 n).toNat).toNat

end

end A012034.P10803740360169387659

/-!
# A012035: sin(sin(arcsinh(x))) = x-3/3!*x^3+41/5!*x^5-1291/7!*x^7+73169/9!*x^9...

The programs for A012035, there is no canonical definition to state claims against.
-/

/-! ## A012035.P287067117086137595

`A012246(2*n+1)*A033999(n)`
-/

namespace A012035.P287067117086137595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012246 (2 * n + 1) * A033999 n

end

end A012035.P287067117086137595

/-! ## A012035.P7346241312466227425

`A012246(2*n+1)*A164677(2*n+1)`
-/

namespace A012035.P7346241312466227425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012246 (2 * n + 1) * A164677 (2 * n + 1)

end

end A012035.P7346241312466227425

/-!
# A012038: cos(sin(arcsinh(x)))=1-1/2!*x^2+9/4!*x^4-201/6!*x^6+8753/8!*x^8...

The programs for A012038, there is no canonical definition to state claims against.
-/

/-! ## A012038.P4698270996261475682

`A012246(2*n)*A033999(n)`
-/

namespace A012038.P4698270996261475682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012246 (2 * n) * A033999 n

end

end A012038.P4698270996261475682

/-! ## A012038.P457057462459198987

`A012246(2*n)*A164677(2*n+1)`
-/

namespace A012038.P457057462459198987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012246 (2 * n) * A164677 (2 * n + 1)

end

end A012038.P457057462459198987

/-!
# A012039: sinh(sin(arcsinh(x))) = x-1/3!*x^3+1/5!*x^5+111/7!*x^7-9407/9!*x^9...

The programs for A012039, there is no canonical definition to state claims against.
-/

/-! ## A012039.P4128501853421249636

`A012034(Δ[n²])`
-/

namespace A012039.P4128501853421249636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012039.P4128501853421249636

/-! ## A012039.P15363306823629361293

`or(1, A012034(A005408(n)))`
-/

namespace A012039.P15363306823629361293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012034 (A005408 n).toNat)

end

end A012039.P15363306823629361293

/-! ## A012039.P1625288371277837585

`or(1, A012034(A004277(n)+1))`
-/

namespace A012039.P1625288371277837585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012034 (A004277 n + 1).toNat)

end

end A012039.P1625288371277837585

/-! ## A012039.P15463317214652754954

`or(1, A012034(A005843(n)+1))`
-/

namespace A012039.P15463317214652754954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012034 (A005843 n + 1).toNat)

end

end A012039.P15463317214652754954

/-! ## A012039.P3306662332066883009

`or(1, A012034(A317439(n+1)))`
-/

namespace A012039.P3306662332066883009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012034 (A317439 (n + 1)).toNat)

end

end A012039.P3306662332066883009

/-!
# A012042: arctanh(sin(arcsinh(x)))=x+4/5!*x^5-80/7!*x^7+4240/9!*x^9-342400/11!*x^11...

The programs for A012042, there is no canonical definition to state claims against.
-/

/-! ## A012042.P9870025376562558397

`A302043(A012082(n))+A012057(n)`
-/

namespace A012042.P9870025376562558397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A012082 n).toNat + A012057 n

end

end A012042.P9870025376562558397

/-!
# A012043: cosh(sin(arcsinh(x))) = 1+1/2!*x^2-7/4!*x^4+121/6!*x^6-4271/8!*x^8...

The programs for A012043, there is no canonical definition to state claims against.
-/

/-! ## A012043.P14008933477794748646

`A012034(2*n)`
-/

namespace A012043.P14008933477794748646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012034 (2 * n)

end

end A012043.P14008933477794748646

/-! ## A012043.P5115849046502662222

`or(1, A012034(A004277(n)))`
-/

namespace A012043.P5115849046502662222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012034 (A004277 n).toNat)

end

end A012043.P5115849046502662222

/-! ## A012043.P2849931474574509442

`or(1, A012034(A005843(n)))`
-/

namespace A012043.P2849931474574509442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012034 (A005843 n).toNat)

end

end A012043.P2849931474574509442

/-! ## A012043.P17070994272042714110

`A012034(A005843(n))/A007318(C(2, n))`
-/

namespace A012043.P17070994272042714110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012034 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A012043.P17070994272042714110

/-! ## A012043.P12395488371445680590

`A012034(A005843(n))%A020521(n)`
-/

namespace A012043.P12395488371445680590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012034 (A005843 n).toNat) (A020521 n)

end

end A012043.P12395488371445680590

/-!
# A012044: sec(sin(arcsinh(x)))=1+1/2!*x^2-3/4!*x^4+21/6!*x^6-647/8!*x^8...

The programs for A012044, there is no canonical definition to state claims against.
-/

/-! ## A012044.P10945096442219083705

`A118441(A266396(n+1))+A118436(n)`
-/

namespace A012044.P10945096442219083705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118441 (A266396 (n + 1)).toNat + A118436 n

end

end A012044.P10945096442219083705

/-!
# A012046: arctan(sin(tanh(x)))=x-5/3!*x^3+121/5!*x^5-7013/7!*x^7+752785/9!*x^9...

The programs for A012046, there is no canonical definition to state claims against.
-/

/-! ## A012046.P14721029627894015272

`A009348(Δ[n²])/(-1)^n`
-/

namespace A012046.P14721029627894015272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012046.P14721029627894015272

/-! ## A012046.P3071005503373997366

`A009348(2*n+1)*A033999(n)`
-/

namespace A012046.P3071005503373997366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009348 (2 * n + 1) * A033999 n

end

end A012046.P3071005503373997366

/-!
# A012048: arctanh(sin(tanh(x)))=x-1/3!*x^3+1/5!*x^5+55/7!*x^7-2207/9!*x^9...

The programs for A012048, there is no canonical definition to state claims against.
-/

/-! ## A012048.P15216792652096238397

`A009330(Δ[n²])`
-/

namespace A012048.P15216792652096238397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009330 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012048.P15216792652096238397

/-! ## A012048.P12711809957426043679

`or(1, A009330(2*n+1))`
-/

namespace A012048.P12711809957426043679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009330 (2 * n + 1))

end

end A012048.P12711809957426043679

/-! ## A012048.P14323724972783106018

`A009330(2*n+1)*A010872(3*n+1)`
-/

namespace A012048.P14323724972783106018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009330 (2 * n + 1) * A010872 (3 * n + 1)

end

end A012048.P14323724972783106018

/-! ## A012048.P14856868375719281356

`A009330(2*n+1)+char[A102617(2*(n+2))]`
-/

namespace A012048.P14856868375719281356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102617 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009330 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A012048.P14856868375719281356

/-! ## A012048.P18102805133699390341

`A010815(A063983(2*n+3))+A009330(2*n+1)`
-/

namespace A012048.P18102805133699390341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A063983 (2 * n + 3)).toNat + A009330 (2 * n + 1)

end

end A012048.P18102805133699390341

/-!
# A012049: sec(sin(tanh(x))) = 1+1/2!*x^2-7/4!*x^4+73/6!*x^6+209/8!*x^8...

The programs for A012049, there is no canonical definition to state claims against.
-/

/-! ## A012049.P3527680798143797551

`A105529(A015469(n))+A002017(2*n+1)`
-/

namespace A012049.P3527680798143797551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105529 (A015469 n).toNat + A002017 (2 * n + 1)

end

end A012049.P3527680798143797551

/-!
# A012051: exp(sin(arctanh(x)))=1+x+1/2!*x^2+2/3!*x^3+5/4!*x^4+16/5!*x^5...

The programs for A012051, there is no canonical definition to state claims against.
-/

/-! ## A012051.P11202592697474446545

`A012159(n)/A012187(A172539(n+1))`
-/

namespace A012051.P11202592697474446545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012159 n : ℚ) / (A012187 (A172539 (n + 1)).toNat : ℚ)

end

end A012051.P11202592697474446545

/-!
# A012052: sin(sin(arctanh(x)))=x-4/5!*x^5-136/7!*x^7-7408/9!*x^9-644416/11!*x^11...

The programs for A012052, there is no canonical definition to state claims against.
-/

/-! ## A012052.P14733004695018760096

`A012247(2*n+1)*A033999(n)`
-/

namespace A012052.P14733004695018760096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012247 (2 * n + 1) * A033999 n

end

end A012052.P14733004695018760096

/-!
# A012055: cos(sin(arctanh(x)))=1-1/2!*x^2-3/4!*x^4-21/6!*x^6+185/8!*x^8...

The programs for A012055, there is no canonical definition to state claims against.
-/

/-! ## A012055.P12704340623652269954

`A012247(2*n)*A033999(n)`
-/

namespace A012055.P12704340623652269954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012247 (2 * n) * A033999 n

end

end A012055.P12704340623652269954

/-!
# A012056: sinh(sin(arctanh(x)))=x+2/3!*x^3+16/5!*x^5+216/7!*x^7-1280/9!*x^9...

The programs for A012056, there is no canonical definition to state claims against.
-/

/-! ## A012056.P4115720774805841368

`A012051(Δ[n²])`
-/

namespace A012056.P4115720774805841368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012056.P4115720774805841368

/-! ## A012056.P9524067885867797041

`and(-5, A012051(2*n+1))`
-/

namespace A012056.P9524067885867797041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A012051 (2 * n + 1))

end

end A012056.P9524067885867797041

/-! ## A012056.P16213946860684145763

`or(n, A012051(A005408(n)))-n`
-/

namespace A012056.P16213946860684145763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A012051 (A005408 n).toNat) - (n : ℤ)

end

end A012056.P16213946860684145763

/-! ## A012056.P2211033477028878900

`A012051(2*n+1)^A054977(n)²`
-/

namespace A012056.P2211033477028878900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012051 (2 * n + 1) : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A012056.P2211033477028878900

/-! ## A012056.P9710561806462792461

`A012051(2*n+1)*A054977(n+1)`
-/

namespace A012056.P9710561806462792461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 (2 * n + 1) * A054977 (n + 1)

end

end A012056.P9710561806462792461

/-!
# A012057: arcsinh(sin(arctanh(x)))=x+4/5!*x^5-80/7!*x^7-3440/9!*x^9-764800/11!*x^11...

The programs for A012057, there is no canonical definition to state claims against.
-/

/-! ## A012057.P11397480504034445382

`A012042(n)-A302043(A012082(n))`
-/

namespace A012057.P11397480504034445382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012042 n - A302043 (A012082 n).toNat

end

end A012057.P11397480504034445382

/-!
# A012060: cosh(sin(arctanh(x)))=1+1/2!*x^2+5/4!*x^4+61/6!*x^6+937/8!*x^8...

The programs for A012060, there is no canonical definition to state claims against.
-/

/-! ## A012060.P17938179080882478320

`A012051(2*n)`
-/

namespace A012060.P17938179080882478320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 (2 * n)

end

end A012060.P17938179080882478320

/-! ## A012060.P13668904360957639127

`or(1, A012051(A004277(n)))`
-/

namespace A012060.P13668904360957639127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012051 (A004277 n).toNat)

end

end A012060.P13668904360957639127

/-! ## A012060.P15106803377406360878

`A012051(A004277(n))+A000007(n+1)`
-/

namespace A012060.P15106803377406360878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 (A004277 n).toNat + A000007 (n + 1)

end

end A012060.P15106803377406360878

/-! ## A012060.P15347815143084493930

`A012051(A004277(n))/gcd(2, A001844(n))`
-/

namespace A012060.P15347815143084493930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012051 (A004277 n).toNat : ℚ) / (Int.gcd 2 (A001844 n) : ℚ)

end

end A012060.P15347815143084493930

/-! ## A012060.P3145369954273305946

`A012051(A004277(n))/gcd(3, A001651(n+2))`
-/

namespace A012060.P3145369954273305946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012051 (A004277 n).toNat : ℚ) / (Int.gcd 3 (A001651 (n + 2)) : ℚ)

end

end A012060.P3145369954273305946

/-!
# A012061: sec(sin(arctanh(x)))=1+1/2!*x^2+9/4!*x^4+201/6!*x^6+7921/8!*x^8...

The programs for A012061, there is no canonical definition to state claims against.
-/

/-! ## A012061.P3108662813670886921

`A000027(A012168(n))`
-/

namespace A012061.P3108662813670886921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A012168 n).toNat

end

end A012061.P3108662813670886921

/-!
# A012062: sech(sin(arctanh(x)))=1-1/2!*x^2+1/4!*x^4-1/6!*x^6+449/8!*x^8...

The programs for A012062, there is no canonical definition to state claims against.
-/

/-! ## A012062.P15041097538669849978

`A052868(4*a(n-1)*a(n-1))` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1`
-/

namespace A012062.P15041097538669849978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1] fun n a =>
  A052868 (4 * a (n - 1) * a (n - 1)).toNat

end

end A012062.P15041097538669849978

/-!
# A012063: exp(arcsin(arcsin(x)))=1+x+1/2!*x^2+3/3!*x^3+9/4!*x^4+49/5!*x^5...

The programs for A012063, there is no canonical definition to state claims against.
-/

/-! ## A012063.P6999863073766993642

`A033182((5^n-3^n)/2+17)`
-/

namespace A012063.P6999863073766993642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2 + 17)).toNat

end

end A012063.P6999863073766993642

/-! ## A012063.P1577079576116453458

`A309361(∑[A289989(n)])`
-/

namespace A012063.P1577079576116453458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012063.P1577079576116453458

/-!
# A012065: Expansion of e.g.f. tan(arcsin(arcsin(x))).

The programs for A012065, there is no canonical definition to state claims against.
-/

/-! ## A012065.P8920662865291466482

`A012258(Δ[n²])`
-/

namespace A012065.P8920662865291466482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012065.P8920662865291466482

/-! ## A012065.P17340810053270558759

`record[A012258((n+1)/2^val(n+1, 2))]`
-/

namespace A012065.P17340810053270558759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012065.P17340810053270558759

/-! ## A012065.P11336825298720288956

`record[A012258(A004442(n))]`
-/

namespace A012065.P11336825298720288956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012065.P11336825298720288956

/-! ## A012065.P1268319563909343247

`record[A012258(A093411(n))]`
-/

namespace A012065.P1268319563909343247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (A093411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012065.P1268319563909343247

/-! ## A012065.P11409315494692986616

`record[A012258(Δ[A001318(n)])]`
-/

namespace A012065.P11409315494692986616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012065.P11409315494692986616

/-!
# A012068: sinh(arcsin(arcsin(x)))=x+3/3!*x^3+49/5!*x^5+1963/7!*x^7+146017/9!*x^9...

The programs for A012068, there is no canonical definition to state claims against.
-/

/-! ## A012068.P3551478934835384722

`A012063(Δ[n²])`
-/

namespace A012068.P3551478934835384722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012068.P3551478934835384722

/-! ## A012068.P7875400895090787936

`record[A012063(A004442(n))]`
-/

namespace A012068.P7875400895090787936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012068.P7875400895090787936

/-! ## A012068.P13383974335265573452

`record[A012063(A099375(n))]`
-/

namespace A012068.P13383974335265573452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012068.P13383974335265573452

/-! ## A012068.P2614729058985694693

`record[A012063(A000265(n+1))]`
-/

namespace A012068.P2614729058985694693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012068.P2614729058985694693

/-! ## A012068.P17196042888474287589

`record[A012063(n)*A165326(n)]`
-/

namespace A012068.P17196042888474287589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012068.P17196042888474287589

/-!
# A012070: tanh(arcsin(arcsin(x)))=x+4/5!*x^5+136/7!*x^7+9424/9!*x^9...

The programs for A012070, there is no canonical definition to state claims against.
-/

/-! ## A012070.P15755061120685939074

`lcm(2^n, A281446(A004080(n)))`
-/

namespace A012070.P15755061120685939074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A281446 (A004080 n).toNat)

end

end A012070.P15755061120685939074

/-!
# A012072: cosh(arcsin(arcsin(x)))=1+1/2!*x^2+9/4!*x^4+249/6!*x^6+14129/8!*x^8...

The programs for A012072, there is no canonical definition to state claims against.
-/

/-! ## A012072.P6615533405973515106

`A012063(2*n)`
-/

namespace A012072.P6615533405973515106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (2 * n)

end

end A012072.P6615533405973515106

/-! ## A012072.P13595028228786642145

`or(1, A012063(A004277(n)))`
-/

namespace A012072.P13595028228786642145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012063 (A004277 n).toNat)

end

end A012072.P13595028228786642145

/-! ## A012072.P18102750214492884716

`A012063(A004277(n))+char[A017020(n)]`
-/

namespace A012072.P18102750214492884716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017020 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A012072.P18102750214492884716

/-! ## A012072.P9346532595822455994

`A012063(A004277(n))+char[A205768(n+1)]`
-/

namespace A012072.P9346532595822455994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A012072.P9346532595822455994

/-! ## A012072.P12208460692664182165

`A012063(A004277(n))+char[A155212(n+5)]`
-/

namespace A012072.P12208460692664182165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012063 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A012072.P12208460692664182165

/-!
# A012073: sec(arcsin(arcsin(x)))=1+1/2!*x^2+13/4!*x^4+469/6!*x^6+32985/8!*x^8...

The programs for A012073, there is no canonical definition to state claims against.
-/

/-! ## A012073.P16321075927699005296

`A012258(2*n)`
-/

namespace A012073.P16321075927699005296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (2 * n)

end

end A012073.P16321075927699005296

/-! ## A012073.P1220448912131364505

`or(1, A012258(A004277(n)))`
-/

namespace A012073.P1220448912131364505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012258 (A004277 n).toNat)

end

end A012073.P1220448912131364505

/-! ## A012073.P7861096515693940692

`or(1, A012258(A005843(n)))`
-/

namespace A012073.P7861096515693940692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012258 (A005843 n).toNat)

end

end A012073.P7861096515693940692

/-! ## A012073.P9519310121484272757

`A012258(A005843(n))^A178334(n)`
-/

namespace A012073.P9519310121484272757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012258 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012073.P9519310121484272757

/-! ## A012073.P5243295699676573366

`gcd(A000038(n), A012258(A005843(n)))`
-/

namespace A012073.P5243295699676573366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A012258 (A005843 n).toNat)

end

end A012073.P5243295699676573366

/-!
# A012077: tan(arcsin(tan(x))) = x+5/3!*x^3+121/5!*x^5+6845/7!*x^7+698161/9!*x^9...

The programs for A012077, there is no canonical definition to state claims against.
-/

/-! ## A012077.P7713352988064685208

`A012259(Δ[n²])`
-/

namespace A012077.P7713352988064685208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012077.P7713352988064685208

/-! ## A012077.P18306983822131587128

`abs(A202038(2*n+1))`
-/

namespace A012077.P18306983822131587128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202038 (2 * n + 1)|

end

end A012077.P18306983822131587128

/-! ## A012077.P4672257647619870524

`record[A012259(n*n%2)]`
-/

namespace A012077.P4672257647619870524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012259 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012077.P4672257647619870524

/-! ## A012077.P3541376210369326257

`record[abs(A202038((n+1)/2^val(n+1, 2)))]`
-/

namespace A012077.P3541376210369326257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012077.P3541376210369326257

/-! ## A012077.P12978714265412624122

`record[gcd(n*(1+(-1)^n)/4, A202038(n))]`
-/

namespace A012077.P12978714265412624122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4)) (A202038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012077.P12978714265412624122

/-!
# A012079: Even coefficients in expansion of e.g.f. cos(arcsin(tan(x))).

The programs for A012079, there is no canonical definition to state claims against.
-/

/-! ## A012079.P17310979651091798519

`(-1)^n*A012253(2*n)`
-/

namespace A012079.P17310979651091798519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012253 (2 * n)

end

end A012079.P17310979651091798519

/-! ## A012079.P15429343792050643677

`A012253(2*n)*A033999(n)`
-/

namespace A012079.P15429343792050643677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012253 (2 * n) * A033999 n

end

end A012079.P15429343792050643677

/-! ## A012079.P17026491545379065208

`A012253(A004277(n))/A033999(n)`
-/

namespace A012079.P17026491545379065208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012253 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012079.P17026491545379065208

/-! ## A012079.P7215924988277366724

`A012253(A005843(n))/A033999(n)`
-/

namespace A012079.P7215924988277366724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012253 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012079.P7215924988277366724

/-!
# A012080: E.g.f.: sinh(arcsin(tan(x)))=x+4/3!*x^3+76/5!*x^5+3424/7!*x^7+285136/9!*x^9...

The programs for A012080, there is no canonical definition to state claims against.
-/

/-! ## A012080.P14367964784401816142

`A012075(Δ[n²])`
-/

namespace A012080.P14367964784401816142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012075 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012080.P14367964784401816142

/-! ## A012080.P590365682768042826

`record[A012075(A000265(n+1))]`
-/

namespace A012080.P590365682768042826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012075 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012080.P590365682768042826

/-! ## A012080.P5808895981009029435

`record[A012075(A033999(n)+n)]`
-/

namespace A012080.P5808895981009029435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012075 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012080.P5808895981009029435

/-! ## A012080.P14162201206748894991

`record[A012075(and(n, A033999(n)))]`
-/

namespace A012080.P14162201206748894991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012075 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012080.P14162201206748894991

/-! ## A012080.P7237784633542522401

`record[and(A012075(n), A132798(3*n+2))]`
-/

namespace A012080.P7237784633542522401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012075 n) (A132798 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012080.P7237784633542522401

/-!
# A012084: cosh(arcsin(tan(x)))=1+1/2!*x^2+13/4!*x^4+421/6!*x^6+26713/8!*x^8...

The programs for A012084, there is no canonical definition to state claims against.
-/

/-! ## A012084.P4281073648681689307

`A012075(2*n)`
-/

namespace A012084.P4281073648681689307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012075 (2 * n)

end

end A012084.P4281073648681689307

/-! ## A012084.P13459234787110698232

`or(1, A012075(A005843(n)))`
-/

namespace A012084.P13459234787110698232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012075 (A005843 n).toNat)

end

end A012084.P13459234787110698232

/-! ## A012084.P2411424964155845873

`A025444(n)+A012075(A004277(n))`
-/

namespace A012084.P2411424964155845873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + A012075 (A004277 n).toNat

end

end A012084.P2411424964155845873

/-! ## A012084.P17236777785615624120

`A012075(A004277(n))^A178334(n)`
-/

namespace A012084.P17236777785615624120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012075 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012084.P17236777785615624120

/-! ## A012084.P11532219741969412487

`gcd(A000038(n), A012075(A004277(n)))`
-/

namespace A012084.P11532219741969412487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A012075 (A004277 n).toNat)

end

end A012084.P11532219741969412487

/-!
# A012085: Even coefficients in expansion of e.g.f. cos(x)/sqrt(cos(2*x)).

The programs for A012085, there is no canonical definition to state claims against.
-/

/-! ## A012085.P14647906355288524428

`A012259(2*n)`
-/

namespace A012085.P14647906355288524428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012259 (2 * n)

end

end A012085.P14647906355288524428

/-! ## A012085.P16512938444086084901

`abs(A202038(2*n))`
-/

namespace A012085.P16512938444086084901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202038 (2 * n)|

end

end A012085.P16512938444086084901

/-! ## A012085.P18149817588619178868

`or(1, A012259(A005843(n)))`
-/

namespace A012085.P18149817588619178868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012259 (A005843 n).toNat)

end

end A012085.P18149817588619178868

/-! ## A012085.P6960829545348591447

`A033999(n)*A202038(2*n)`
-/

namespace A012085.P6960829545348591447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A202038 (2 * n)

end

end A012085.P6960829545348591447

/-! ## A012085.P9798012773772196824

`gcd(A000038(n), A202038(2*n))`
-/

namespace A012085.P9798012773772196824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202038 (2 * n))

end

end A012085.P9798012773772196824

/-!
# A012089: Expansion of e.g.f. tan(arcsin(arctan(x))) (odd powers only).

The programs for A012089, there is no canonical definition to state claims against.
-/

/-! ## A012089.P1526730700070132571

`A012260(Δ[n²])`
-/

namespace A012089.P1526730700070132571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012260 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012089.P1526730700070132571

/-! ## A012089.P11004021615211753546

`or(1, A012260(A005408(n)))`
-/

namespace A012089.P11004021615211753546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012260 (A005408 n).toNat)

end

end A012089.P11004021615211753546

/-! ## A012089.P17521576910596081000

`or(1, A012260(record[A004442(n)]))`
-/

namespace A012089.P17521576910596081000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A012089.P17521576910596081000

/-! ## A012089.P10771766116403604939

`or(1, A012260(A004277(n)+1))`
-/

namespace A012089.P10771766116403604939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012260 (A004277 n + 1).toNat)

end

end A012089.P10771766116403604939

/-! ## A012089.P6130186246765850291

`or(1, A012260(A005843(n)+1))`
-/

namespace A012089.P6130186246765850291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012260 (A005843 n + 1).toNat)

end

end A012089.P6130186246765850291

/-!
# A012091: Even coefficients in expansion of e.g.f. cos(arcsin(arctan(x))).

The programs for A012091, there is no canonical definition to state claims against.
-/

/-! ## A012091.P39942935216670611

`A012254(2*n)*A033999(n)`
-/

namespace A012091.P39942935216670611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012254 (2 * n) * A033999 n

end

end A012091.P39942935216670611

/-! ## A012091.P17984069243384149197

`xor(-A010673(n), A012254(2*n))`
-/

namespace A012091.P17984069243384149197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A010673 n) (A012254 (2 * n))

end

end A012091.P17984069243384149197

/-! ## A012091.P9197975372515700337

`A012254(2*n)*A062157(n+1)`
-/

namespace A012091.P9197975372515700337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012254 (2 * n) * A062157 (n + 1)

end

end A012091.P9197975372515700337

/-! ## A012091.P17979951075063503112

`(A010673(n+1)-1)*A012254(2*n)`
-/

namespace A012091.P17979951075063503112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 (n + 1) - 1) * A012254 (2 * n)

end

end A012091.P17979951075063503112

/-! ## A012091.P7884268833412844119

`A012254(2*n)*A163811(p?[xor(2, p?[xor(2, n)])])`
-/

namespace A012091.P7884268833412844119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012254 (2 * n) * A163811 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A012091.P7884268833412844119

/-!
# A012092: sinh(arcsin(arctan(x)))=x+4/5!*x^5-32/7!*x^7+1936/9!*x^9-67328/11!*x^11...

The programs for A012092, there is no canonical definition to state claims against.
-/

/-! ## A012092.P6580521665601610485

`A012087(Δ[n²])`
-/

namespace A012092.P6580521665601610485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012092.P6580521665601610485

/-! ## A012092.P4658145635284976273

`or(2, A012087(A005408(n)))-2`
-/

namespace A012092.P4658145635284976273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A012087 (A005408 n).toNat) - 2

end

end A012092.P4658145635284976273

/-! ## A012092.P17248336478092331322

`and(1-n, A012087(A317107(n+1)))`
-/

namespace A012092.P17248336478092331322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A012087 (A317107 (n + 1)).toNat)

end

end A012092.P17248336478092331322

/-! ## A012092.P10800341654291568386

`A025444(n)+A012087(A005408(n))`
-/

namespace A012092.P10800341654291568386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + A012087 (A005408 n).toNat

end

end A012092.P10800341654291568386

/-! ## A012092.P7008406492295054453

`and(A012087(A005408(n)), A024000(n))`
-/

namespace A012092.P7008406492295054453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012087 (A005408 n).toNat) (A024000 n)

end

end A012092.P7008406492295054453

/-!
# A012096: cosh(arcsin(arctan(x)))=1+1/2!*x^2-3/4!*x^4+69/6!*x^6-2503/8!*x^8...

The programs for A012096, there is no canonical definition to state claims against.
-/

/-! ## A012096.P4290123576989104466

`A012087(2*n)`
-/

namespace A012096.P4290123576989104466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012087 (2 * n)

end

end A012096.P4290123576989104466

/-! ## A012096.P16237989966016818465

`or(1, A012087(A004277(n)))`
-/

namespace A012096.P16237989966016818465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012087 (A004277 n).toNat)

end

end A012096.P16237989966016818465

/-! ## A012096.P24324948324901352

`or(1, A012087(A005843(n)))`
-/

namespace A012096.P24324948324901352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012087 (A005843 n).toNat)

end

end A012096.P24324948324901352

/-! ## A012096.P11605284604748391286

`A012087(A004277(n))+A000007(n+1)`
-/

namespace A012096.P11605284604748391286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012087 (A004277 n).toNat + A000007 (n + 1)

end

end A012096.P11605284604748391286

/-! ## A012096.P5597314386043507210

`A012087(A004277(n))%A012092(n+2)`
-/

namespace A012096.P5597314386043507210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012087 (A004277 n).toNat) (A012092 (n + 2))

end

end A012096.P5597314386043507210

/-!
# A012097: Even coefficients in expansion of e.g.f. sec(arcsin(arctan(x))).

The programs for A012097, there is no canonical definition to state claims against.
-/

/-! ## A012097.P12524393451775032020

`A012260(2*n)`
-/

namespace A012097.P12524393451775032020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012260 (2 * n)

end

end A012097.P12524393451775032020

/-! ## A012097.P9322686005937445505

`or(1, A012260(A004277(n)))`
-/

namespace A012097.P9322686005937445505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012260 (A004277 n).toNat)

end

end A012097.P9322686005937445505

/-! ## A012097.P7370998427421400987

`or(1, A012260(A005843(n)))`
-/

namespace A012097.P7370998427421400987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012260 (A005843 n).toNat)

end

end A012097.P7370998427421400987

/-! ## A012097.P2050626262168133853

`A012260(A005843(n))^A178334(n)`
-/

namespace A012097.P2050626262168133853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012260 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012097.P2050626262168133853

/-! ## A012097.P5993358596920815127

`and(A012260(A005843(n)), A260196(n))`
-/

namespace A012097.P5993358596920815127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012260 (A005843 n).toNat) (A260196 n)

end

end A012097.P5993358596920815127

/-!
# A012099: Expansion of e.g.f.: exp(arcsin(sinh(x)))=1+x+1/2!*x^2+3/3!*x^3+9/4!*x^4+41/5!*x^5...

The programs for A012099, there is no canonical definition to state claims against.
-/

/-! ## A012099.P17713840867913642788

`A004525(A102736(n)+A053602(n))`
-/

namespace A012099.P17713840867913642788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A102736 n + A053602 n).toNat

end

end A012099.P17713840867913642788

/-! ## A012099.P14202387877023532758

`A109613(A059260(n)+A027617(n))`
-/

namespace A012099.P14202387877023532758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A059260 n + A027617 n).toNat

end

end A012099.P14202387877023532758

/-! ## A012099.P3822708406272239999

`A129756(A102736(n)+A059328(n))`
-/

namespace A012099.P3822708406272239999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A102736 n + A059328 n).toNat

end

end A012099.P3822708406272239999

/-! ## A012099.P8891965883398353015

`A129756(A103619(n)+A059328(n))`
-/

namespace A012099.P8891965883398353015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A103619 n + A059328 n).toNat

end

end A012099.P8891965883398353015

