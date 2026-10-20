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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155000: a(n) = 8*a(n-1) + 56*a(n-2), n > 2; a(0)=1, a(1)=1, a(2)=15.

The programs for A155000, the canonical program `A155000.P13105485273437060868` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155000 has offset 0).

The definition of A155000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+56*a(n-2)` (program `A155000.P13105485273437060868`, by `A155000.P13105485273437060868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155000.P13105485273437060868

`8*a(n-1)+56*a(n-2)` with `a(0)=1, a(1)=1, a(2)=15`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155000

/-- `8*a(n-1)+56*a(n-2)` -/
def P13105485273437060868.Spec : Prop :=
  ∀ n, (P13105485273437060868.a n : ℤ) = A155000 n

theorem P13105485273437060868.correct : P13105485273437060868.Spec := by
  intro n
  simp only [A155000]

end A155000

/-!
# A155001: a(n) = 9*a(n-1) + 72*a(n-2), n > 2; a(0)=1, a(1)=1, a(2)=17.

The programs for A155001, the canonical program `A155001.P9575094630512950244` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155001 has offset 0).

The definition of A155001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+72*a(n-2)` (program `A155001.P9575094630512950244`, by `A155001.P9575094630512950244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155001.P9575094630512950244

`9*a(n-1)+72*a(n-2)` with `a(0)=1, a(1)=1, a(2)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155001

/-- `9*a(n-1)+72*a(n-2)` -/
def P9575094630512950244.Spec : Prop :=
  ∀ n, (P9575094630512950244.a n : ℤ) = A155001 n

theorem P9575094630512950244.correct : P9575094630512950244.Spec := by
  intro n
  simp only [A155001]

end A155001

/-!
# A155002: Triangle read by rows, A104762 * (A000129 * 0^(n-k)).

The programs for A155002, there is no canonical definition to state claims against.
-/

/-! ## A155002.P2470827633804035768

`A104762(n+1)*A215928(A002262(n))`
-/

namespace A155002.P2470827633804035768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A215928 (A002262 n).toNat

end

end A155002.P2470827633804035768

/-! ## A155002.P2806228946970511164

`A000045(A004736(n+1))*A215928(A002262(n))`
-/

namespace A155002.P2806228946970511164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A215928 (A002262 n).toNat

end

end A155002.P2806228946970511164

/-! ## A155002.P1646898672246747076

`A000045(A025581(n)+1)*A215928(A002262(n))`
-/

namespace A155002.P1646898672246747076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n + 1).toNat * A215928 (A002262 n).toNat

end

end A155002.P1646898672246747076

/-! ## A155002.P3179610827414491994

`A185238(A130321(n))+A143866(n+1)`
-/

namespace A155002.P3179610827414491994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A130321 n).toNat + A143866 (n + 1)

end

end A155002.P3179610827414491994

/-! ## A155002.P13072404013108793122

`A143866(n+1)+A044941(A000713(n))`
-/

namespace A155002.P13072404013108793122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143866 (n + 1) + A044941 (A000713 n).toNat

end

end A155002.P13072404013108793122

/-!
# A155005: Smallest number having exactly n divisors that are contained in its decimal representation.

The programs for A155005, there is no canonical definition to state claims against.
-/

/-! ## A155005.P3584901485268722733

`lcm(A006575(n+1), A344093(A006575(n+1)))`
-/

namespace A155005.P3584901485268722733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006575 (n + 1)) (A344093 (A006575 (n + 1)).toNat)

end

end A155005.P3584901485268722733

/-!
# A155006: Primes p such that (p-2)*(p+2)-+2*p are primes.

The programs for A155006, there is no canonical definition to state claims against.
-/

/-! ## A155006.P10853241277201353179

`∩[A028876(n+1)+1, A154319(n+1)]`
-/

namespace A155006.P10853241277201353179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155006.P10853241277201353179

/-! ## A155006.P8387324429705813402

`p?[Δ[A352804(n+1)²]]`
-/

namespace A155006.P8387324429705813402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352804 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155006.P8387324429705813402

/-! ## A155006.P12332131177039721496

`p?[Δ[A002620(A028876(n+1))]]`
-/

namespace A155006.P12332131177039721496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A028876 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155006.P12332131177039721496

/-!
# A155007: Primes p such that (p-3)*(p+3)-+3*p are primes.

The programs for A155007, there is no canonical definition to state claims against.
-/

/-! ## A155007.P14837737651122401446

`p?[lcm(A024936(n), A239414(n+1))]`
-/

namespace A155007.P14837737651122401446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024936 n) (A239414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155007.P14837737651122401446

/-!
# A155008: Primes p such that (p-a)*(p+a)-+a*p are primes,a=4.

The programs for A155008, there is no canonical definition to state claims against.
-/

/-! ## A155008.P9772668733171596677

`A275415(A273131(n+2))`
-/

namespace A155008.P9772668733171596677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275415 (A273131 (n + 2)).toNat

end

end A155008.P9772668733171596677

/-! ## A155008.P5530160656582115335

`record[p?[A213369(A330748(n))]]`
-/

namespace A155008.P5530160656582115335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213369 (A330748 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155008.P5530160656582115335

/-! ## A155008.P12750395342783206722

`p?[record[A131507(A138464(n+1))]]`
-/

namespace A155008.P12750395342783206722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A138464 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155008.P12750395342783206722

/-! ## A155008.P6575383283199125620

`p?[record[A059905(A038562(n+2))]]`
-/

namespace A155008.P6575383283199125620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A038562 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155008.P6575383283199125620

/-! ## A155008.P3427403740667707694

`A077800(lt[A228571(n), A004018(n)])`
-/

namespace A155008.P3427403740667707694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155008.P3427403740667707694

/-!
# A155009: Primes p such that (p-a)*(p+a)-+a*p are primes,a=5.

The programs for A155009, there is no canonical definition to state claims against.
-/

/-! ## A155009.P5215123528768696440

`A187731(lt[A029744(n+1), A268886(n+3)])`
-/

namespace A155009.P5215123528768696440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155009.P5215123528768696440

/-! ## A155009.P17273186232863529119

`A000040(lt[A002288(n+1), A138882(3*(n+1))])`
-/

namespace A155009.P17273186232863529119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155009.P17273186232863529119

/-! ## A155009.P10436321738031701375

`A000040(lt[A094216(2*(n+2)), A100382(n+1)])`
-/

namespace A155009.P10436321738031701375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094216 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155009.P10436321738031701375

/-! ## A155009.P1251400757461319414

`p?[A258266(record[A277891(n+1)])]`
-/

namespace A155009.P1251400757461319414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277891 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155009.P1251400757461319414

/-! ## A155009.P16140895486238143008

`record[A027748(∑[A335451(2*n+5)+1])]`
-/

namespace A155009.P16140895486238143008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335451 (2 * n + 5) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155009.P16140895486238143008

/-!
# A155010: Primes p such that (p-a)*(p+a)-+a*p and (p-b)*(p+b)-+b*p are primes, a=2,b=3.

The programs for A155010, there is no canonical definition to state claims against.
-/

/-! ## A155010.P1586226385122804587

`∩[A155006(n+1), A155007(n+1)]`
-/

namespace A155010.P1586226385122804587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155010.P1586226385122804587

/-!
# A155011: Sophie Germain Fibonacci prime numbers.

The programs for A155011, there is no canonical definition to state claims against.
-/

/-! ## A155011.P2164369617467320751

`(A263880(n+1)-1)/2`
-/

namespace A155011.P2164369617467320751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263880 (n + 1) - 1 : ℚ) / 2

end

end A155011.P2164369617467320751

/-!
# A155012: Fibonacci prime numbers f, 3*f+2 are also primes.

The programs for A155012, there is no canonical definition to state claims against.
-/

/-! ## A155012.P4771405650374472425

`A005478(A117536(n)+2)`
-/

namespace A155012.P4771405650374472425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (A117536 n + 2).toNat

end

end A155012.P4771405650374472425

/-! ## A155012.P14954957845963066359

`A233515(∑[A109129(n+1)]+2)`
-/

namespace A155012.P14954957845963066359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233515 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A155012.P14954957845963066359

/-! ## A155012.P16013443789909915228

`A005478(A288122(2*(n+2))+1)`
-/

namespace A155012.P16013443789909915228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (A288122 (2 * (n + 2)) + 1).toNat

end

end A155012.P16013443789909915228

/-! ## A155012.P10527258684297455709

`A005478(A347586(n+1)+A331590(n+1))`
-/

namespace A155012.P10527258684297455709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (A347586 (n + 1) + A331590 (n + 1)).toNat

end

end A155012.P10527258684297455709

/-! ## A155012.P10640947532877010897

`A005478(∪[A005427(n+1), A005428(n+2)])`
-/

namespace A155012.P10640947532877010897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A155012.P10640947532877010897

/-!
# A155013: Integer part of square root of n^5 = A000584(n).

The programs for A155013, the canonical program `A155013.P13647464448451244234` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155013 has offset 1).

The definition of A155013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155013.P13647464448451244234

`floor(sqrt((n+1)^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155013

/-- `floor(sqrt((n+1)^5))` -/
def P13647464448451244234.Spec : Prop :=
  ∀ n, (P13647464448451244234.a n : ℤ) = A155013 (n + 1)

theorem P13647464448451244234.correct : P13647464448451244234.Spec := by
  intro n
  simp only [A155013, Nat.add_sub_cancel]

end A155013

/-! ## A155013.P12137768847034340400

`record[floor((1-n)²^(5/4))]`
-/

namespace A155013.P12137768847034340400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155013.P12137768847034340400

namespace A155013

/-- `record[floor((1-n)²^(5/4))]` -/
def P12137768847034340400.Spec : Prop :=
  ∀ n, P12137768847034340400.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P4666073942791932194

`floor((n+1)²*sqrt(n+1))%A158316(n+1)`
-/

namespace A155013.P4666073942791932194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n + 1) ^ 2 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋ (A158316 (n + 1))

end

end A155013.P4666073942791932194

namespace A155013

/-- `floor((n+1)²*sqrt(n+1))%A158316(n+1)` -/
def P4666073942791932194.Spec : Prop :=
  ∀ n, P4666073942791932194.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P4245063059253621062

`floor(sqrt(A000584(n+1)))%(n²+2)²`
-/

namespace A155013.P4245063059253621062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000584 (n + 1))) ((n ^ 2 + 2) ^ 2 : ℤ)

end

end A155013.P4245063059253621062

namespace A155013

/-- `floor(sqrt(A000584(n+1)))%(n²+2)²` -/
def P4245063059253621062.Spec : Prop :=
  ∀ n, P4245063059253621062.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P12935727729277538102

`A033999(n)²*floor(sqrt(A000584(n+1)))`
-/

namespace A155013.P12935727729277538102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.sqrt (A000584 (n + 1))

end

end A155013.P12935727729277538102

namespace A155013

/-- `A033999(n)²*floor(sqrt(A000584(n+1)))` -/
def P12935727729277538102.Spec : Prop :=
  ∀ n, P12935727729277538102.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P12315520148872153098

`A000007(n+1)+floor(sqrt(A000584(n+1)))`
-/

namespace A155013.P12315520148872153098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A000584 (n + 1))

end

end A155013.P12315520148872153098

namespace A155013

/-- `A000007(n+1)+floor(sqrt(A000584(n+1)))` -/
def P12315520148872153098.Spec : Prop :=
  ∀ n, P12315520148872153098.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P14937669242111404135

`A008683(4*(n+1))+floor(sqrt(A000584(n+1)))`
-/

namespace A155013.P14937669242111404135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + Int.sqrt (A000584 (n + 1))

end

end A155013.P14937669242111404135

namespace A155013

/-- `A008683(4*(n+1))+floor(sqrt(A000584(n+1)))` -/
def P14937669242111404135.Spec : Prop :=
  ∀ n, P14937669242111404135.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P7288417908406105808

`ceil(sqrt((n+1)^5+A002265(2*n)+1))-1`
-/

namespace A155013.P7288417908406105808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((n + 1) ^ 5 : ℤ) + (A002265 (2 * n) + 1) : ℝ)⌉ - 1

end

end A155013.P7288417908406105808

namespace A155013

/-- `ceil(sqrt((n+1)^5+A002265(2*n)+1))-1` -/
def P7288417908406105808.Spec : Prop :=
  ∀ n, P7288417908406105808.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P14715622586610816260

`floor(sqrt(A000584(n+1)))*A267354(2*n+1)`
-/

namespace A155013.P14715622586610816260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000584 (n + 1)) * A267354 (2 * n + 1)

end

end A155013.P14715622586610816260

namespace A155013

/-- `floor(sqrt(A000584(n+1)))*A267354(2*n+1)` -/
def P14715622586610816260.Spec : Prop :=
  ∀ n, P14715622586610816260.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P17591432924639272848

`A185603((n+1)²)`
-/

namespace A155013.P17591432924639272848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185603 ((n + 1) ^ 2)

end

end A155013.P17591432924639272848

namespace A155013

/-- `A185603((n+1)²)` -/
def P17591432924639272848.Spec : Prop :=
  ∀ n, P17591432924639272848.a n = A155013 (n + 1)

end A155013

/-! ## A155013.P5377345952175611503

`A185603(∑[comp[2*n]])%A173156(n+1)`
-/

namespace A155013.P5377345952175611503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185603 (∑ j ∈ Finset.range (n + 1), f1 j)) (A173156 (n + 1))

end

end A155013.P5377345952175611503

namespace A155013

/-- `A185603(∑[comp[2*n]])%A173156(n+1)` -/
def P5377345952175611503.Spec : Prop :=
  ∀ n, P5377345952175611503.a n = A155013 (n + 1)

end A155013

/-!
# A155014: a(n) = floor(sqrt(n^7)).

The programs for A155014, the canonical program `A155014.P11135767582627579295` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155014 has offset 0).

The definition of A155014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n^7))` (program `A155014.P11135767582627579295`, by `A155014.P11135767582627579295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155014.P11135767582627579295

`floor(sqrt(n^7))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155014

/-- `floor(sqrt(n^7))` -/
def P11135767582627579295.Spec : Prop :=
  ∀ n, (P11135767582627579295.a n : ℤ) = A155014 n

theorem P11135767582627579295.correct : P11135767582627579295.Spec := by
  intro n
  simp only [A155014]

end A155014

/-! ## A155014.P8594039001959845461

`ceil(sqrt(A258806(n)))-1`
-/

namespace A155014.P8594039001959845461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258806 n : ℝ)⌉ - 1

end

end A155014.P8594039001959845461

namespace A155014

/-- `ceil(sqrt(A258806(n)))-1` -/
def P8594039001959845461.Spec : Prop :=
  ∀ n, P8594039001959845461.a n = A155014 n

end A155014

/-! ## A155014.P16285728569225699951

`ceil(sqrt(A001015(n)+1))-1`
-/

namespace A155014.P16285728569225699951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001015 n + 1 : ℝ)⌉ - 1

end

end A155014.P16285728569225699951

namespace A155014

/-- `ceil(sqrt(A001015(n)+1))-1` -/
def P16285728569225699951.Spec : Prop :=
  ∀ n, P16285728569225699951.a n = A155014 n

end A155014

/-! ## A155014.P8043147988536909773

`floor(sqrt(A001015(n)))*A054977(n)`
-/

namespace A155014.P8043147988536909773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001015 n) * A054977 n

end

end A155014.P8043147988536909773

namespace A155014

/-- `floor(sqrt(A001015(n)))*A054977(n)` -/
def P8043147988536909773.Spec : Prop :=
  ∀ n, P8043147988536909773.a n = A155014 n

end A155014

/-! ## A155014.P602900942283136545

`floor(sqrt(A001015(n)))/A054977(n+1)`
-/

namespace A155014.P602900942283136545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A001015 n) : ℚ) / (A054977 (n + 1) : ℚ)

end

end A155014.P602900942283136545

namespace A155014

/-- `floor(sqrt(A001015(n)))/A054977(n+1)` -/
def P602900942283136545.Spec : Prop :=
  ∀ n, P602900942283136545.a n = (A155014 n : ℚ)

end A155014

/-! ## A155014.P13370405630223091080

`A000035(2*n)+floor(sqrt(A001015(n)))`
-/

namespace A155014.P13370405630223091080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + Int.sqrt (A001015 n)

end

end A155014.P13370405630223091080

namespace A155014

/-- `A000035(2*n)+floor(sqrt(A001015(n)))` -/
def P13370405630223091080.Spec : Prop :=
  ∀ n, P13370405630223091080.a n = A155014 n

end A155014

/-! ## A155014.P10881753914709697055

`A255616(A000124(n+6)+6)-A000007(n)`
-/

namespace A155014.P10881753914709697055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (A000124 (n + 6) + 6).toNat - A000007 n

end

end A155014.P10881753914709697055

namespace A155014

/-- `A255616(A000124(n+6)+6)-A000007(n)` -/
def P10881753914709697055.Spec : Prop :=
  ∀ n, P10881753914709697055.a n = A155014 n

end A155014

/-! ## A155014.P6387446445330811856

`A255616(A000096(n+5)+8)%A209447(n)`
-/

namespace A155014.P6387446445330811856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255616 (A000096 (n + 5) + 8).toNat) (A209447 n)

end

end A155014.P6387446445330811856

namespace A155014

/-- `A255616(A000096(n+5)+8)%A209447(n)` -/
def P6387446445330811856.Spec : Prop :=
  ∀ n, P6387446445330811856.a n = A155014 n

end A155014

/-! ## A155014.P14415753554319835252

`A255616(A000124(n+6)+6)%A052905(n)²`
-/

namespace A155014.P14415753554319835252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255616 (A000124 (n + 6) + 6).toNat) (A052905 n ^ 2)

end

end A155014.P14415753554319835252

namespace A155014

/-- `A255616(A000124(n+6)+6)%A052905(n)²` -/
def P14415753554319835252.Spec : Prop :=
  ∀ n, P14415753554319835252.a n = A155014 n

end A155014

/-!
# A155015: Integer part of square root of n^11 = A008455(n).

The programs for A155015, the canonical program `A155015.P8406509982502951084` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155015 has offset 0).

The definition of A155015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155015.P8406509982502951084

`floor(sqrt(n^11))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155015

/-- `floor(sqrt(n^11))` -/
def P8406509982502951084.Spec : Prop :=
  ∀ n, (P8406509982502951084.a n : ℤ) = A155015 n

theorem P8406509982502951084.correct : P8406509982502951084.Spec := by
  intro n
  simp only [A155015]

end A155015

/-! ## A155015.P13081659429065121993

`lcm((-1)^n, floor(n^(11/2)))`
-/

namespace A155015.P13081659429065121993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ⌊(n : ℝ) ^ ((11 : ℚ) / 2 : ℝ)⌋

end

end A155015.P13081659429065121993

namespace A155015

/-- `lcm((-1)^n, floor(n^(11/2)))` -/
def P13081659429065121993.Spec : Prop :=
  ∀ n, (P13081659429065121993.a n : ℤ) = A155015 n

end A155015

/-! ## A155015.P2531559643775500481

`floor(n^(11/2))*ceil(abs(sin(n)))`
-/

namespace A155015.P2531559643775500481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((11 : ℚ) / 2 : ℝ)⌋ * ⌈|Real.sin (n : ℝ)|⌉

end

end A155015.P2531559643775500481

namespace A155015

/-- `floor(n^(11/2))*ceil(abs(sin(n)))` -/
def P2531559643775500481.Spec : Prop :=
  ∀ n, P2531559643775500481.a n = A155015 n

end A155015

/-! ## A155015.P14000570715271493576

`ceil(sqrt(A008455(n)+1))-1`
-/

namespace A155015.P14000570715271493576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008455 n + 1 : ℝ)⌉ - 1

end

end A155015.P14000570715271493576

namespace A155015

/-- `ceil(sqrt(A008455(n)+1))-1` -/
def P14000570715271493576.Spec : Prop :=
  ∀ n, P14000570715271493576.a n = A155015 n

end A155015

/-! ## A155015.P12221071298484015796

`floor(sqrt(A008455(n)))*A057427(n)`
-/

namespace A155015.P12221071298484015796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008455 n) * A057427 n

end

end A155015.P12221071298484015796

namespace A155015

/-- `floor(sqrt(A008455(n)))*A057427(n)` -/
def P12221071298484015796.Spec : Prop :=
  ∀ n, P12221071298484015796.a n = A155015 n

end A155015

/-!
# A155016: Integer part of square root of A010801.

The programs for A155016, the canonical program `A155016.P3022754138813768289` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155016 has offset 0).

The definition of A155016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155016.P3022754138813768289

`floor(sqrt(n^13))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155016

/-- `floor(sqrt(n^13))` -/
def P3022754138813768289.Spec : Prop :=
  ∀ n, (P3022754138813768289.a n : ℤ) = A155016 n

theorem P3022754138813768289.correct : P3022754138813768289.Spec := by
  intro n
  simp only [A155016]

end A155016

/-! ## A155016.P17578270373033625511

`floor(sqrt(A010801(n)))*A057427(n)`
-/

namespace A155016.P17578270373033625511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010801 n) * A057427 n

end

end A155016.P17578270373033625511

namespace A155016

/-- `floor(sqrt(A010801(n)))*A057427(n)` -/
def P17578270373033625511.Spec : Prop :=
  ∀ n, P17578270373033625511.a n = A155016 n

end A155016

/-! ## A155016.P12550981355947333527

`floor(sqrt(A010801(n)))%A060887(n)`
-/

namespace A155016.P12550981355947333527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A010801 n)) (A060887 n)

end

end A155016.P12550981355947333527

namespace A155016

/-- `floor(sqrt(A010801(n)))%A060887(n)` -/
def P12550981355947333527.Spec : Prop :=
  ∀ n, P12550981355947333527.a n = A155016 n

end A155016

/-! ## A155016.P153067232237953629

`A033999(n)²*floor(sqrt(A010801(n)))`
-/

namespace A155016.P153067232237953629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.sqrt (A010801 n)

end

end A155016.P153067232237953629

namespace A155016

/-- `A033999(n)²*floor(sqrt(A010801(n)))` -/
def P153067232237953629.Spec : Prop :=
  ∀ n, P153067232237953629.a n = A155016 n

end A155016

/-! ## A155016.P10119582125426948600

`A057428(n)²*floor(sqrt(A010801(n)))`
-/

namespace A155016.P10119582125426948600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * Int.sqrt (A010801 n)

end

end A155016.P10119582125426948600

namespace A155016

/-- `A057428(n)²*floor(sqrt(A010801(n)))` -/
def P10119582125426948600.Spec : Prop :=
  ∀ n, P10119582125426948600.a n = A155016 n

end A155016

/-! ## A155016.P8378438280229676170

`A000035(2*n)+floor(sqrt(A010801(n)))`
-/

namespace A155016.P8378438280229676170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + Int.sqrt (A010801 n)

end

end A155016.P8378438280229676170

namespace A155016

/-- `A000035(2*n)+floor(sqrt(A010801(n)))` -/
def P8378438280229676170.Spec : Prop :=
  ∀ n, P8378438280229676170.a n = A155016 n

end A155016

/-! ## A155016.P12920644045921642151

`floor(sqrt(A010801(n)))*A000034(2*n)`
-/

namespace A155016.P12920644045921642151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010801 n) * A000034 (2 * n)

end

end A155016.P12920644045921642151

namespace A155016

/-- `floor(sqrt(A010801(n)))*A000034(2*n)` -/
def P12920644045921642151.Spec : Prop :=
  ∀ n, P12920644045921642151.a n = A155016 n

end A155016

/-!
# A155017: a(n) = 10*a(n-1) + 90*a(n-2), n>2 ; a(0)=1, a(1)=1, a(2)=19 .

The programs for A155017, the canonical program `A155017.P17840314902327639376` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155017 has offset 0).

The definition of A155017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+90*a(n-2)` (program `A155017.P17840314902327639376`, by `A155017.P17840314902327639376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155017.P17840314902327639376

`10*a(n-1)+90*a(n-2)` with `a(0)=1, a(1)=1, a(2)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155017

/-- `10*a(n-1)+90*a(n-2)` -/
def P17840314902327639376.Spec : Prop :=
  ∀ n, (P17840314902327639376.a n : ℤ) = A155017 n

theorem P17840314902327639376.correct : P17840314902327639376.Spec := by
  intro n
  simp only [A155017]

end A155017

/-!
# A155018: Integer part of square root of n^15 = A010803(n).

The programs for A155018, the canonical program `A155018.P2722340609368201903` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155018 has offset 0).

The definition of A155018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155018.P2722340609368201903

`floor(sqrt(n^15))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155018

/-- `floor(sqrt(n^15))` -/
def P2722340609368201903.Spec : Prop :=
  ∀ n, (P2722340609368201903.a n : ℤ) = A155018 n

theorem P2722340609368201903.correct : P2722340609368201903.Spec := by
  intro n
  simp only [A155018]

end A155018

/-! ## A155018.P5947512407701885240

`floor(sqrt(A010803(n)))+(2*A275962(n))%2`
-/

namespace A155018.P5947512407701885240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010803 n) + Int.tmod (2 * A275962 n) 2

end

end A155018.P5947512407701885240

namespace A155018

/-- `floor(sqrt(A010803(n)))+(2*A275962(n))%2` -/
def P5947512407701885240.Spec : Prop :=
  ∀ n, P5947512407701885240.a n = A155018 n

end A155018

/-! ## A155018.P5087328222989555521

`A062800(n+1)%10*floor(sqrt(A010803(n)))`
-/

namespace A155018.P5087328222989555521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062800 (n + 1)) 10 * Int.sqrt (A010803 n)

end

end A155018.P5087328222989555521

namespace A155018

/-- `A062800(n+1)%10*floor(sqrt(A010803(n)))` -/
def P5087328222989555521.Spec : Prop :=
  ∀ n, P5087328222989555521.a n = A155018 n

end A155018

/-! ## A155018.P2945979808205696730

`A000040(n+2)%2*floor(sqrt(A010803(n)))`
-/

namespace A155018.P2945979808205696730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * Int.sqrt (A010803 n)

end

end A155018.P2945979808205696730

namespace A155018

/-- `A000040(n+2)%2*floor(sqrt(A010803(n)))` -/
def P2945979808205696730.Spec : Prop :=
  ∀ n, P2945979808205696730.a n = A155018 n

end A155018

/-! ## A155018.P18233463907618111049

`A008578(n+2)%2*floor(sqrt(A010803(n)))`
-/

namespace A155018.P18233463907618111049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 2 * Int.sqrt (A010803 n)

end

end A155018.P18233463907618111049

namespace A155018

/-- `A008578(n+2)%2*floor(sqrt(A010803(n)))` -/
def P18233463907618111049.Spec : Prop :=
  ∀ n, P18233463907618111049.a n = A155018 n

end A155018

/-! ## A155018.P16044867406509485018

`floor(sqrt(A010803(n)))*A000034(2*n)`
-/

namespace A155018.P16044867406509485018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010803 n) * A000034 (2 * n)

end

end A155018.P16044867406509485018

namespace A155018

/-- `floor(sqrt(A010803(n)))*A000034(2*n)` -/
def P16044867406509485018.Spec : Prop :=
  ∀ n, P16044867406509485018.a n = A155018 n

end A155018

/-! ## A155018.P15572579859509228532

`floor(sqrt(A010803(n)))*A014963(4*n+2)`
-/

namespace A155018.P15572579859509228532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010803 n) * A014963 (4 * n + 2)

end

end A155018.P15572579859509228532

namespace A155018

/-- `floor(sqrt(A010803(n)))*A014963(4*n+2)` -/
def P15572579859509228532.Spec : Prop :=
  ∀ n, P15572579859509228532.a n = A155018 n

end A155018

/-! ## A155018.P4786323241510466591

`floor(sqrt(A010803(n)))%A028120(n)`
-/

namespace A155018.P4786323241510466591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A010803 n)) (A028120 n)

end

end A155018.P4786323241510466591

namespace A155018

/-- `floor(sqrt(A010803(n)))%A028120(n)` -/
def P4786323241510466591.Spec : Prop :=
  ∀ n, P4786323241510466591.a n = A155018 n

end A155018

/-!
# A155019: Integer part of square root of n^17 = A010805(n).

The programs for A155019, the canonical program `A155019.P17191869478507097838` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155019 has offset 0).

The definition of A155019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155019.P17191869478507097838

`floor(sqrt(n^17))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155019

/-- `floor(sqrt(n^17))` -/
def P17191869478507097838.Spec : Prop :=
  ∀ n, (P17191869478507097838.a n : ℤ) = A155019 n

theorem P17191869478507097838.correct : P17191869478507097838.Spec := by
  intro n
  simp only [A155019]

end A155019

/-! ## A155019.P913013395377007678

`ceil(sqrt(∏{p}[n, #]+n^17))-1`
-/

namespace A155019.P913013395377007678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), p + n ^ 17 : ℕ) : ℝ)⌉ - 1

end

end A155019.P913013395377007678

namespace A155019

/-- `ceil(sqrt(∏{p}[n, #]+n^17))-1` -/
def P913013395377007678.Spec : Prop :=
  ∀ n, P913013395377007678.a n = A155019 n

end A155019

/-! ## A155019.P16093349130816084796

`ceil(sqrt(A054519(n)+n^17))-1`
-/

namespace A155019.P16093349130816084796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A054519 n + (n ^ 17 : ℤ) : ℝ)⌉ - 1

end

end A155019.P16093349130816084796

namespace A155019

/-- `ceil(sqrt(A054519(n)+n^17))-1` -/
def P16093349130816084796.Spec : Prop :=
  ∀ n, P16093349130816084796.a n = A155019 n

end A155019

/-! ## A155019.P10139851434501173023

`ceil(sqrt(A072799(n+1)+n^17))-1`
-/

namespace A155019.P10139851434501173023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A072799 (n + 1) + (n ^ 17 : ℤ) : ℝ)⌉ - 1

end

end A155019.P10139851434501173023

namespace A155019

/-- `ceil(sqrt(A072799(n+1)+n^17))-1` -/
def P10139851434501173023.Spec : Prop :=
  ∀ n, P10139851434501173023.a n = A155019 n

end A155019

/-!
# A155020: a(n) = 2*a(n-1) + 2*a(n-2) for n > 2, a(0)=1, a(1)=1, a(2)=3.

The programs for A155020, the canonical program `A155020.P8513865519749884637` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155020 has offset 0).

The definition of A155020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)` (program `A155020.P8513865519749884637`, by `A155020.P8513865519749884637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155020.P8513865519749884637

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155020

/-- `2*a(n-1)+2*a(n-2)` -/
def P8513865519749884637.Spec : Prop :=
  ∀ n, (P8513865519749884637.a n : ℤ) = A155020 n

theorem P8513865519749884637.correct : P8513865519749884637.Spec := by
  intro n
  simp only [A155020]

end A155020

/-! ## A155020.P16938891319381975590

`ogf((-1+x+x^2)/(-1+2x+2x^2))`
-/

namespace A155020.P16938891319381975590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -2] n

end

end A155020.P16938891319381975590

namespace A155020

/-- `ogf((-1+x+x^2)/(-1+2x+2x^2))` -/
def P16938891319381975590.Spec : Prop :=
  ∀ n, P16938891319381975590.a n = A155020 n

end A155020

/-! ## A155020.P17016358382038890456

`round((sqrt(3)+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A155020.P17016358382038890456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ))

end

end A155020.P17016358382038890456

namespace A155020

/-- `round((sqrt(3)+1)*a(n-1))` -/
def P17016358382038890456.Spec : Prop :=
  ∀ n, P17016358382038890456.a n = A155020 n

end A155020

/-! ## A155020.P4256572574748136689

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A155020.P4256572574748136689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A155020.P4256572574748136689

namespace A155020

/-- `2*(a(n-1)+a(n-2))` -/
def P4256572574748136689.Spec : Prop :=
  ∀ n, (P4256572574748136689.a n : ℤ) = A155020 n

theorem P4256572574748136689.correct : P4256572574748136689.Spec := by
  intro n
  simp only [A155020, Nat.add_sub_cancel, A155020.P4256572574748136689.a, A155020.P8513865519749884637.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155020

/-! ## A155020.P10466170164960692726

`2*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A155020.P10466170164960692726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A155020.P10466170164960692726

namespace A155020

/-- `2*(a(n-1)-floor(-a(n-2)))` -/
def P10466170164960692726.Spec : Prop :=
  ∀ n, P10466170164960692726.a n = A155020 n

end A155020

/-! ## A155020.P13416148034756974799

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A155020.P13416148034756974799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A155020.P13416148034756974799

namespace A155020

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P13416148034756974799.Spec : Prop :=
  ∀ n, P13416148034756974799.a n = A155020 n

end A155020

/-! ## A155020.P6037562166841641616

`2*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A155020.P6037562166841641616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A155020.P6037562166841641616

namespace A155020

/-- `2*(a(n-1)-round(-a(n-2)))` -/
def P6037562166841641616.Spec : Prop :=
  ∀ n, P6037562166841641616.a n = A155020 n

end A155020

/-! ## A155020.P11513141826447085841

`2-2*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A155020.P11513141826447085841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 - 2 * (1 - a (n - 1) - a (n - 2))

end

end A155020.P11513141826447085841

namespace A155020

/-- `2-2*(1-a(n-1)-a(n-2))` -/
def P11513141826447085841.Spec : Prop :=
  ∀ n, P11513141826447085841.a n = A155020 n

end A155020

/-! ## A155020.P243913859726592036

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A155020.P243913859726592036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A155020.P243913859726592036

namespace A155020

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P243913859726592036.Spec : Prop :=
  ∀ n, (P243913859726592036.a n : ℤ) = A155020 n

theorem P243913859726592036.correct : P243913859726592036.Spec := by
  intro n
  simp only [A155020, Nat.add_sub_cancel, A155020.P243913859726592036.a, A155020.P8513865519749884637.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155020

/-! ## A155020.P17584651231381741568

`A028859((n-1)%(n+1))`
-/

namespace A155020.P17584651231381741568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A155020.P17584651231381741568

namespace A155020

/-- `A028859((n-1)%(n+1))` -/
def P17584651231381741568.Spec : Prop :=
  ∀ n, P17584651231381741568.a n = A155020 n

end A155020

/-! ## A155020.P2945938995011775570

`A028859(floor(acot(n))+n-1)`
-/

namespace A155020.P2945938995011775570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((n : ℤ) - 1)).toNat

end

end A155020.P2945938995011775570

namespace A155020

/-- `A028859(floor(acot(n))+n-1)` -/
def P2945938995011775570.Spec : Prop :=
  ∀ n, P2945938995011775570.a n = A155020 n

end A155020

/-! ## A155020.P14485097682925863117

`A028859(comp[2*(n+1)]-n)`
-/

namespace A155020.P14485097682925863117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A155020.P14485097682925863117

namespace A155020

/-- `A028859(comp[2*(n+1)]-n)` -/
def P14485097682925863117.Spec : Prop :=
  ∀ n, P14485097682925863117.a n = A155020 n

end A155020

/-! ## A155020.P15463304454038744610

`A052945(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A155020.P15463304454038744610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052945 (n - 1) + a (n - 1)

end

end A155020.P15463304454038744610

namespace A155020

/-- `A052945(n-1)+a(n-1)` -/
def P15463304454038744610.Spec : Prop :=
  ∀ n, P15463304454038744610.a n = A155020 n

end A155020

/-! ## A155020.P18227497660569939064

`A038508(n)-A131577(n)`
-/

namespace A155020.P18227497660569939064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 n - A131577 n

end

end A155020.P18227497660569939064

namespace A155020

/-- `A038508(n)-A131577(n)` -/
def P18227497660569939064.Spec : Prop :=
  ∀ n, P18227497660569939064.a n = A155020 n

end A155020

/-! ## A155020.P2660473207441103458

`A002605(abs(1-n))+A002605(n)`
-/

namespace A155020.P2660473207441103458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 |1 - (n : ℤ)|.toNat + A002605 n

end

end A155020.P2660473207441103458

namespace A155020

/-- `A002605(abs(1-n))+A002605(n)` -/
def P2660473207441103458.Spec : Prop :=
  ∀ n, P2660473207441103458.a n = A155020 n

end A155020

/-! ## A155020.P656810185388780293

`ceil(∑[A026150(n)/2])`
-/

namespace A155020.P656810185388780293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A155020.P656810185388780293

namespace A155020

/-- `ceil(∑[A026150(n)/2])` -/
def P656810185388780293.Spec : Prop :=
  ∀ n, P656810185388780293.a n = A155020 n

end A155020

/-! ## A155020.P12977416369925118809

`ceil(A002605(n+1)/2)`
-/

namespace A155020.P12977416369925118809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002605 (n + 1) : ℚ) / 2⌉

end

end A155020.P12977416369925118809

namespace A155020

/-- `ceil(A002605(n+1)/2)` -/
def P12977416369925118809.Spec : Prop :=
  ∀ n, P12977416369925118809.a n = A155020 n

end A155020

/-! ## A155020.P7764734922686880803

`ceil((A005665(n)+1)/2)`
-/

namespace A155020.P7764734922686880803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005665 n + 1 : ℚ) / 2⌉

end

end A155020.P7764734922686880803

namespace A155020

/-- `ceil((A005665(n)+1)/2)` -/
def P7764734922686880803.Spec : Prop :=
  ∀ n, P7764734922686880803.a n = A155020 n

end A155020

/-! ## A155020.P9600171610072510352

`A052945(n)-A002605(n)`
-/

namespace A155020.P9600171610072510352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n - A002605 n

end

end A155020.P9600171610072510352

namespace A155020

/-- `A052945(n)-A002605(n)` -/
def P9600171610072510352.Spec : Prop :=
  ∀ n, P9600171610072510352.a n = A155020 n

end A155020

/-! ## A155020.P18001456019648374059

`A026150(n)-A293007(n)/2`
-/

namespace A155020.P18001456019648374059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) - (A293007 n : ℚ) / 2

end

end A155020.P18001456019648374059

namespace A155020

/-- `A026150(n)-A293007(n)/2` -/
def P18001456019648374059.Spec : Prop :=
  ∀ n, P18001456019648374059.a n = (A155020 n : ℚ)

end A155020

/-!
# A155024: Primes with distinct nonprime digits.

The programs for A155024, there is no canonical definition to state claims against.
-/

/-! ## A155024.P3006420325946197641

`∩[A029743(n+1), A034844(n+1)]`
-/

namespace A155024.P3006420325946197641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155024.P3006420325946197641

/-! ## A155024.P16106699450931326408

`∩[A029743(n+1), A084984(n+1)]`
-/

namespace A155024.P16106699450931326408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155024.P16106699450931326408

/-! ## A155024.P5749965648130648411

`∩[A029740(n+1), A034844(n+1)]`
-/

namespace A155024.P5749965648130648411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155024.P5749965648130648411

/-! ## A155024.P6656167443057333271

`record[A137564(A034844(n+2))]`
-/

namespace A155024.P6656167443057333271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A034844 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155024.P6656167443057333271

/-! ## A155024.P13197591358127263440

`filter[A034844(n+1), A178788(#)]`
-/

namespace A155024.P13197591358127263440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A155024.P13197591358127263440

/-!
# A155025: Primes p=A000040(n) with nonprime index n such that the concatenation n//p is a composite number.

The programs for A155025, there is no canonical definition to state claims against.
-/

/-! ## A155025.P9014044960245806873

`A000040(A154967(n+1))`
-/

namespace A155025.P9014044960245806873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154967 (n + 1)).toNat

end

end A155025.P9014044960245806873

/-! ## A155025.P6383518454560263048

`A008864(A154967(n+1))-A033999(n)²`
-/

namespace A155025.P6383518454560263048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A154967 (n + 1)).toNat - A033999 n ^ 2

end

end A155025.P6383518454560263048

/-! ## A155025.P13233976547963128439

`A008578(A154967(n+1)+1)`
-/

namespace A155025.P13233976547963128439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154967 (n + 1) + 1).toNat

end

end A155025.P13233976547963128439

/-! ## A155025.P17411874407754576102

`A008864(A154967(n+1))-A033999(2*n)`
-/

namespace A155025.P17411874407754576102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A154967 (n + 1)).toNat - A033999 (2 * n)

end

end A155025.P17411874407754576102

/-! ## A155025.P3406262490032278271

`A006093(A154967(n+1))+A000034(2*n)`
-/

namespace A155025.P3406262490032278271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A154967 (n + 1)).toNat + A000034 (2 * n)

end

end A155025.P3406262490032278271

/-! ## A155025.P13620444335777777571

`A073846(2*A154967(n+1))`
-/

namespace A155025.P13620444335777777571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A154967 (n + 1)).toNat

end

end A155025.P13620444335777777571

/-! ## A155025.P1732847263331954381

`A006093(A154967(n+1))+A014963(A008458(n))`
-/

namespace A155025.P1732847263331954381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A154967 (n + 1)).toNat + A014963 (A008458 n).toNat

end

end A155025.P1732847263331954381

/-! ## A155025.P11881020081001063701

`A006093(A154967(n+1))+A007318(∑[n])`
-/

namespace A155025.P11881020081001063701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A154967 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155025.P11881020081001063701

/-!
# A155026: Primes with odd smallest digit.

The programs for A155026, there is no canonical definition to state claims against.
-/

/-! ## A155026.P12019344038536454588

`∪[A106101(n+1), A155034(n+1)]`
-/

namespace A155026.P12019344038536454588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A155026.P12019344038536454588

/-! ## A155026.P2606887403673719726

`p?[n*A004186(n)%2]`
-/

namespace A155026.P2606887403673719726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A004186 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P2606887403673719726

/-! ## A155026.P11749187480129255879

`p?[n*A054054(n)%2]`
-/

namespace A155026.P11749187480129255879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A054054 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P11749187480129255879

/-! ## A155026.P4806589200733425279

`p?[n*A244112(n)%2]`
-/

namespace A155026.P4806589200733425279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A244112 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P4806589200733425279

/-! ## A155026.P7872234221457899113

`p?[n^(val(A348783(n), 5)%2)]`
-/

namespace A155026.P7872234221457899113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (SequenceMachineLib.valuation (A348783 n).toNat 5 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155026.P7872234221457899113

/-! ## A155026.P14169295326106763831

`p?[n*A000035(A004186(n))]`
-/

namespace A155026.P14169295326106763831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A004186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P14169295326106763831

/-! ## A155026.P15390597303228975468

`p?[n*A000035(A227362(n))]`
-/

namespace A155026.P15390597303228975468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A227362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P15390597303228975468

/-! ## A155026.P17122712866683176535

`p?[n+1-A019427(A004186(n)+1)]`
-/

namespace A155026.P17122712866683176535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A019427 (A004186 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P17122712866683176535

/-! ## A155026.P1164814947992598927

`p?[(n+1)*A001511(A004186(n+1))]`
-/

namespace A155026.P1164814947992598927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (A004186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155026.P1164814947992598927

/-!
# A155027: A154579(n+2)+A154579(n).

The programs for A155027, there is no canonical definition to state claims against.
-/

/-! ## A155027.P17277712428874424356

`A154579(n+3)+A154579(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155027.P17277712428874424356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 3) + A154579 (n + 1)

end

end A155027.P17277712428874424356

/-!
# A155028: Primes p such that p^3 + 2*p^2 + p + 1 is also prime.

The programs for A155028, there is no canonical definition to state claims against.
-/

/-! ## A155028.P2862789100603766430

`p?[A154686(n+1)]`
-/

namespace A155028.P2862789100603766430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155028.P2862789100603766430

/-! ## A155028.P12908902310618172386

`p?[A111501(n+1)-1]`
-/

namespace A155028.P12908902310618172386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155028.P12908902310618172386

/-! ## A155028.P930279685946927177

`p?[floor(root(A162292(n+1), 3))]`
-/

namespace A155028.P930279685946927177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155028.P930279685946927177

/-! ## A155028.P12439194944985777667

`record[A006530(A154686(n+2))]`
-/

namespace A155028.P12439194944985777667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154686 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155028.P12439194944985777667

/-! ## A155028.P17219260618030697637

`record[A020639(A154686(n+3))]`
-/

namespace A155028.P17219260618030697637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154686 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155028.P17219260618030697637

/-! ## A155028.P10122891790526870587

`filter[A154686(n+1), A010051(#)]`
-/

namespace A155028.P10122891790526870587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155028.P10122891790526870587

/-! ## A155028.P7645053022247637739

`record[A020639(A111501(n+2)-1)]`
-/

namespace A155028.P7645053022247637739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111501 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155028.P7645053022247637739

/-! ## A155028.P17144462525681727382

`∩[A000040(n+1), A154686(n+1)]`
-/

namespace A155028.P17144462525681727382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P17144462525681727382

/-! ## A155028.P58260842951482099

`∩[A040159(n+1), A154686(n+1)]`
-/

namespace A155028.P58260842951482099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P58260842951482099

/-! ## A155028.P785343328180492490

`∩[A040161(n+1), A154686(n+1)]`
-/

namespace A155028.P785343328180492490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P785343328180492490

/-! ## A155028.P891840584120333341

`∩[A040165(n+1), A154686(n+1)]`
-/

namespace A155028.P891840584120333341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P891840584120333341

/-! ## A155028.P10473663074233507599

`∩[A040169(n+1), A154686(n+1)]`
-/

namespace A155028.P10473663074233507599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P10473663074233507599

/-! ## A155028.P5431843743102216672

`∩[A040171(n+1), A154686(n+1)]`
-/

namespace A155028.P5431843743102216672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P5431843743102216672

/-! ## A155028.P10524774703963372836

`∩[A040177(n+1), A154686(n+1)]`
-/

namespace A155028.P10524774703963372836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P10524774703963372836

/-! ## A155028.P10236851075685090050

`∩[A040179(n+1), A154686(n+1)]`
-/

namespace A155028.P10236851075685090050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P10236851075685090050

/-! ## A155028.P2957395553791093077

`∩[A040184(n+1), A154686(n+1)]`
-/

namespace A155028.P2957395553791093077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P2957395553791093077

/-! ## A155028.P769683638436888862

`∩[A040970(n+1), A154686(n+1)]`
-/

namespace A155028.P769683638436888862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P769683638436888862

/-! ## A155028.P6400598565846081131

`∩[A040972(n+1), A154686(n+1)]`
-/

namespace A155028.P6400598565846081131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P6400598565846081131

/-! ## A155028.P2653418722209305833

`∩[A040974(n+1), A154686(n+1)]`
-/

namespace A155028.P2653418722209305833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P2653418722209305833

/-! ## A155028.P7754610191819589153

`∩[A040978(n+1), A154686(n+1)]`
-/

namespace A155028.P7754610191819589153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155028.P7754610191819589153

/-!
# A155029: Complement to A051731 with the identity matrix A023531 included.

The programs for A155029, the canonical program `A155029.P670373944836976515` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155029 has offset 1).

The definition of A155029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155029.P8797170345057072953

`abs(A155031(n+1))`
-/

namespace A155029.P8797170345057072953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155031 (n + 1)|

end

end A155029.P8797170345057072953

namespace A155029

/-- `abs(A155031(n+1))` -/
def P8797170345057072953.Spec : Prop :=
  ∀ n, P8797170345057072953.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P11349608098813962226

`char[lt[A127168(n), 2]]`
-/

namespace A155029.P11349608098813962226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127168 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A155029.P11349608098813962226

namespace A155029

/-- `char[lt[A127168(n), 2]]` -/
def P11349608098813962226.Spec : Prop :=
  ∀ n, (P11349608098813962226.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P6096673262810228964

`1-A175992(n+1)`
-/

namespace A155029.P6096673262810228964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175992 (n + 1)

end

end A155029.P6096673262810228964

namespace A155029

/-- `1-A175992(n+1)` -/
def P6096673262810228964.Spec : Prop :=
  ∀ n, P6096673262810228964.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P670373944836976515

`1-C(A114002(n), 2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A155029

/-- `1-C(A114002(n), 2)` -/
def P670373944836976515.Spec : Prop :=
  ∀ n, P670373944836976515.a n = A155029 (n + 1)

theorem P670373944836976515.correct : P670373944836976515.Spec := by
  intro n
  simp only [A155029, Nat.add_sub_cancel]

end A155029

/-! ## A155029.P6949428399707074582

`A155031(abs(xor(n, -1)))²`
-/

namespace A155029.P6949428399707074582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 |Int.xor (n : ℤ) (-1)|.toNat ^ 2

end

end A155029.P6949428399707074582

namespace A155029

/-- `A155031(abs(xor(n, -1)))²` -/
def P6949428399707074582.Spec : Prop :=
  ∀ n, P6949428399707074582.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P9032600996317249395

`C(2, A167990(n+1)²)`
-/

namespace A155029.P9032600996317249395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A167990 (n + 1) ^ 2).toNat

end

end A155029.P9032600996317249395

namespace A155029

/-- `C(2, A167990(n+1)²)` -/
def P9032600996317249395.Spec : Prop :=
  ∀ n, (P9032600996317249395.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P16813530349582511059

`A126988(n+1)!%2`
-/

namespace A155029.P16813530349582511059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A126988 (n + 1)).toNat % 2

end

end A155029.P16813530349582511059

namespace A155029

/-- `A126988(n+1)!%2` -/
def P16813530349582511059.Spec : Prop :=
  ∀ n, (P16813530349582511059.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P3633424879288371596

`and(1, A127170(n+1)!)`
-/

namespace A155029.P3633424879288371596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (A127170 (n + 1)).toNat)

end

end A155029.P3633424879288371596

namespace A155029

/-- `and(1, A127170(n+1)!)` -/
def P3633424879288371596.Spec : Prop :=
  ∀ n, (P3633424879288371596.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P1552187431461321682

`char[n-A127093(n+1)]`
-/

namespace A155029.P1552187431461321682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A155029.P1552187431461321682

namespace A155029

/-- `char[n-A127093(n+1)]` -/
def P1552187431461321682.Spec : Prop :=
  ∀ n, (P1552187431461321682.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P13698990250582040001

`char[n-A129234(n+1)]`
-/

namespace A155029.P13698990250582040001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A129234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A155029.P13698990250582040001

namespace A155029

/-- `char[n-A129234(n+1)]` -/
def P13698990250582040001.Spec : Prop :=
  ∀ n, (P13698990250582040001.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P18292997366973278705

`char[n-A176891(n+1)]`
-/

namespace A155029.P18292997366973278705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A176891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A155029.P18292997366973278705

namespace A155029

/-- `char[n-A176891(n+1)]` -/
def P18292997366973278705.Spec : Prop :=
  ∀ n, (P18292997366973278705.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P5968537195685392958

`char[n-A176079(n+2)]`
-/

namespace A155029.P5968537195685392958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A176079 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A155029.P5968537195685392958

namespace A155029

/-- `char[n-A176079(n+2)]` -/
def P5968537195685392958.Spec : Prop :=
  ∀ n, (P5968537195685392958.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P3370462321931441724

`C(2, 2*A129559(n+1))`
-/

namespace A155029.P3370462321931441724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A129559 (n + 1)).toNat

end

end A155029.P3370462321931441724

namespace A155029

/-- `C(2, 2*A129559(n+1))` -/
def P3370462321931441724.Spec : Prop :=
  ∀ n, (P3370462321931441724.a n : ℤ) = A155029 (n + 1)

end A155029

/-! ## A155029.P12193531220481667323

`(1-A176890(n+1))^n`
-/

namespace A155029.P12193531220481667323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176890 (n + 1)) ^ n

end

end A155029.P12193531220481667323

namespace A155029

/-- `(1-A176890(n+1))^n` -/
def P12193531220481667323.Spec : Prop :=
  ∀ n, P12193531220481667323.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P5283804480792362290

`1-floor(atan(A141680(n+1)))`
-/

namespace A155029.P5283804480792362290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.arctan (A141680 (n + 1) : ℝ)⌋

end

end A155029.P5283804480792362290

namespace A155029

/-- `1-floor(atan(A141680(n+1)))` -/
def P5283804480792362290.Spec : Prop :=
  ∀ n, P5283804480792362290.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P3107347360109314267

`ceil(acot(Δ[A127057(n+1)]+1))`
-/

namespace A155029.P3107347360109314267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n + 1 : ℝ)⌉

end

end A155029.P3107347360109314267

namespace A155029

/-- `ceil(acot(Δ[A127057(n+1)]+1))` -/
def P3107347360109314267.Spec : Prop :=
  ∀ n, P3107347360109314267.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P17705080327528795769

`A004530(A127168(n))`
-/

namespace A155029.P17705080327528795769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A127168 n).toNat

end

end A155029.P17705080327528795769

namespace A155029

/-- `A004530(A127168(n))` -/
def P17705080327528795769.Spec : Prop :=
  ∀ n, P17705080327528795769.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P7109664561982842032

`A004530(A127170(n+1))`
-/

namespace A155029.P7109664561982842032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A127170 (n + 1)).toNat

end

end A155029.P7109664561982842032

namespace A155029

/-- `A004530(A127170(n+1))` -/
def P7109664561982842032.Spec : Prop :=
  ∀ n, P7109664561982842032.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P16899039267130884229

`A036987(A129559(n+1))`
-/

namespace A155029.P16899039267130884229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A129559 (n + 1)).toNat

end

end A155029.P16899039267130884229

namespace A155029

/-- `A036987(A129559(n+1))` -/
def P16899039267130884229.Spec : Prop :=
  ∀ n, P16899039267130884229.a n = A155029 (n + 1)

end A155029

/-! ## A155029.P12453301100753469610

`A000007(A167990(n+1))`
-/

namespace A155029.P12453301100753469610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A167990 (n + 1)).toNat

end

end A155029.P12453301100753469610

namespace A155029

/-- `A000007(A167990(n+1))` -/
def P12453301100753469610.Spec : Prop :=
  ∀ n, P12453301100753469610.a n = A155029 (n + 1)

end A155029

/-!
# A155030: Primes p=A000040(n) with prime index n such that the concatenation n//p is a composite number.

The programs for A155030, there is no canonical definition to state claims against.
-/

/-! ## A155030.P10192916765310346106

`A000040(A154966(n+1))`
-/

namespace A155030.P10192916765310346106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154966 (n + 1)).toNat

end

end A155030.P10192916765310346106

/-! ## A155030.P1667593317153888785

`A006005(p?[A154966(n+1)])`
-/

namespace A155030.P1667593317153888785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155030.P1667593317153888785

/-! ## A155030.P7779533697534138690

`A105562(p?[A154966(n+1)])`
-/

namespace A155030.P7779533697534138690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155030.P7779533697534138690

/-! ## A155030.P11633825635629548410

`A008578(A154966(n+1)+1)`
-/

namespace A155030.P11633825635629548410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154966 (n + 1) + 1).toNat

end

end A155030.P11633825635629548410

/-! ## A155030.P10708613222151740796

`A046022(A154966(n+1)+2)`
-/

namespace A155030.P10708613222151740796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A154966 (n + 1) + 2).toNat

end

end A155030.P10708613222151740796

/-!
# A155031: Triangle T(n, k) = 0 if n==0 (mod k) otherwise -1 with T(n, n) = 1 and T(n, 0) = 0, read by rows.

The programs for A155031, the canonical program `A155031.P17817635720882455542` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155031 has offset 1).

The definition of A155031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155031.P5295119167090569223

`floor(acot(A114002(n)-1))`
-/

namespace A155031.P5295119167090569223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A114002 n - 1 : ℝ)⌋

end

end A155031.P5295119167090569223

namespace A155031

/-- `floor(acot(A114002(n)-1))` -/
def P5295119167090569223.Spec : Prop :=
  ∀ n, P5295119167090569223.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P13252365828079629493

`floor(acot(A127168(n)-1))`
-/

namespace A155031.P13252365828079629493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A127168 n - 1 : ℝ)⌋

end

end A155031.P13252365828079629493

namespace A155031

/-- `floor(acot(A127168(n)-1))` -/
def P13252365828079629493.Spec : Prop :=
  ∀ n, P13252365828079629493.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P7076932589544185922

`floor(acot(A126988(n+1)-1))`
-/

namespace A155031.P7076932589544185922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A126988 (n + 1) - 1 : ℝ)⌋

end

end A155031.P7076932589544185922

namespace A155031

/-- `floor(acot(A126988(n+1)-1))` -/
def P7076932589544185922.Spec : Prop :=
  ∀ n, P7076932589544185922.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P16222266541794883853

`A051731(n+1)-char[comp[∑[n-1]]]`
-/

namespace A155031.P16222266541794883853
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A155031.P16222266541794883853

namespace A155031

/-- `A051731(n+1)-char[comp[∑[n-1]]]` -/
def P16222266541794883853.Spec : Prop :=
  ∀ n, P16222266541794883853.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P17817635720882455542

`A294619(2*A126988(n+1))-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A155031

/-- `A294619(2*A126988(n+1))-1` -/
def P17817635720882455542.Spec : Prop :=
  ∀ n, P17817635720882455542.a n = A155031 (n + 1)

theorem P17817635720882455542.correct : P17817635720882455542.Spec := by
  intro n
  simp only [A155031, Nat.add_sub_cancel]

end A155031

/-! ## A155031.P4000812249296450307

`Δ[A003056(n)]-A000007(A126988(n+1))`
-/

namespace A155031.P4000812249296450307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 (A126988 (n + 1)).toNat

end

end A155031.P4000812249296450307

namespace A155031

/-- `Δ[A003056(n)]-A000007(A126988(n+1))` -/
def P4000812249296450307.Spec : Prop :=
  ∀ n, P4000812249296450307.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P15271666566073975401

`A000007(A049828(n+1))+A023531(n)-1`
-/

namespace A155031.P15271666566073975401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049828 (n + 1)).toNat + (A023531 n - 1)

end

end A155031.P15271666566073975401

namespace A155031

/-- `A000007(A049828(n+1))+A023531(n)-1` -/
def P15271666566073975401.Spec : Prop :=
  ∀ n, P15271666566073975401.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P2347707069553210368

`Δ[A002024(n+1)]+A051731(n+1)-1`
-/

namespace A155031.P2347707069553210368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A051731 (n + 1) - 1)

end

end A155031.P2347707069553210368

namespace A155031

/-- `Δ[A002024(n+1)]+A051731(n+1)-1` -/
def P2347707069553210368.Spec : Prop :=
  ∀ n, P2347707069553210368.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P1857382819889403441

`Δ[A014132(n+1)]+A051731(n+1)-2`
-/

namespace A155031.P1857382819889403441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A051731 (n + 1) - 2)

end

end A155031.P1857382819889403441

namespace A155031

/-- `Δ[A014132(n+1)]+A051731(n+1)-2` -/
def P1857382819889403441.Spec : Prop :=
  ∀ n, P1857382819889403441.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P9401015854237875957

`A126965(A126988(n+1))%3`
-/

namespace A155031.P9401015854237875957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126965 (A126988 (n + 1)).toNat) 3

end

end A155031.P9401015854237875957

namespace A155031

/-- `A126965(A126988(n+1))%3` -/
def P9401015854237875957.Spec : Prop :=
  ∀ n, P9401015854237875957.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P18021158397097340585

`A154990(n+1)*A155029(n+1)`
-/

namespace A155031.P18021158397097340585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A155029 (n + 1)

end

end A155031.P18021158397097340585

namespace A155031

/-- `A154990(n+1)*A155029(n+1)` -/
def P18021158397097340585.Spec : Prop :=
  ∀ n, P18021158397097340585.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P9377874268607093020

`2*A023531(n)-A155029(n+1)`
-/

namespace A155031.P9377874268607093020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023531 n - A155029 (n + 1)

end

end A155031.P9377874268607093020

namespace A155031

/-- `2*A023531(n)-A155029(n+1)` -/
def P9377874268607093020.Spec : Prop :=
  ∀ n, P9377874268607093020.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P3601092821342443110

`A154990(n+1)-(A155029(n+1)+A153881(n+2))`
-/

namespace A155031.P3601092821342443110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) - (A155029 (n + 1) + A153881 (n + 2))

end

end A155031.P3601092821342443110

namespace A155031

/-- `A154990(n+1)-(A155029(n+1)+A153881(n+2))` -/
def P3601092821342443110.Spec : Prop :=
  ∀ n, P3601092821342443110.a n = A155031 (n + 1)

end A155031

/-! ## A155031.P16797933169403923139

`A192174(A181117(n+1))`
-/

namespace A155031.P16797933169403923139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 (A181117 (n + 1)).toNat

end

end A155031.P16797933169403923139

namespace A155031

/-- `A192174(A181117(n+1))` -/
def P16797933169403923139.Spec : Prop :=
  ∀ n, P16797933169403923139.a n = A155031 (n + 1)

end A155031

/-!
# A155032: Primes p such that both pi(p) and the concatenation of pi(p) and p are prime, where pi is the prime counting function.

The programs for A155032, there is no canonical definition to state claims against.
-/

/-! ## A155032.P1965546053301060968

`A120426(A154963(n+1))`
-/

namespace A155032.P1965546053301060968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A154963 (n + 1)).toNat

end

end A155032.P1965546053301060968

/-! ## A155032.P5970700748798916168

`A006005(p?[A154963(n+1)])`
-/

namespace A155032.P5970700748798916168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155032.P5970700748798916168

/-! ## A155032.P14376432365900169761

`A105562(p?[A154963(n+1)])`
-/

namespace A155032.P14376432365900169761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155032.P14376432365900169761

/-! ## A155032.P16992774675097816607

`A008578(A154963(n+1)+1)`
-/

namespace A155032.P16992774675097816607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154963 (n + 1) + 1).toNat

end

end A155032.P16992774675097816607

/-! ## A155032.P4244952154462077639

`A182986(A154963(n+1)+1)`
-/

namespace A155032.P4244952154462077639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A154963 (n + 1) + 1).toNat

end

end A155032.P4244952154462077639

/-! ## A155032.P7185915664506276502

`A065091(A154963(n+1)-1)`
-/

namespace A155032.P7185915664506276502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A154963 (n + 1) - 1).toNat

end

end A155032.P7185915664506276502

/-! ## A155032.P14270193613027473145

`∑{d}[A154963(n+1), A006093(#)]`
-/

namespace A155032.P14270193613027473145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006093 d

end

end A155032.P14270193613027473145

/-! ## A155032.P11822086869731331346

`∩[A006450(n+1), A166283(n+1)]`
-/

namespace A155032.P11822086869731331346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155032.P11822086869731331346

/-! ## A155032.P2617901271266755504

`∩[A166283(n+1), A175247(n+1)]`
-/

namespace A155032.P2617901271266755504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155032.P2617901271266755504

/-! ## A155032.P9223471030599676864

`∩[A166283(n+1), A302592(n+1)]`
-/

namespace A155032.P9223471030599676864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155032.P9223471030599676864

/-!
# A155033: Matrix inverse of A155031.

The programs for A155033, there is no canonical definition to state claims against.
-/

/-! ## A155033.P12558032063468385487

`abs(A152568(n))-A155039(n+1)`
-/

namespace A155033.P12558032063468385487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152568 n| - A155039 (n + 1)

end

end A155033.P12558032063468385487

/-! ## A155033.P8605941494491146294

`Δ[A089633(n)]-A155039(n+1)`
-/

namespace A155033.P8605941494491146294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A155039 (n + 1)

end

end A155033.P8605941494491146294

/-! ## A155033.P8101914563111382007

`A155038(n+1)-A155039(n+1)`
-/

namespace A155033.P8101914563111382007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1) - A155039 (n + 1)

end

end A155033.P8101914563111382007

/-! ## A155033.P9196756440676019650

`sqrt(abs(A152571(n)))-A155039(n+1)`
-/

namespace A155033.P9196756440676019650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A152571 n| : ℝ) - (A155039 (n + 1) : ℝ)

end

end A155033.P9196756440676019650

/-! ## A155033.P13629478963177157108

`ceil(A130321(n)/2)-A155039(n+1)`
-/

namespace A155033.P13629478963177157108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130321 n : ℚ) / 2⌉ - A155039 (n + 1)

end

end A155033.P13629478963177157108

/-! ## A155033.P1925403567444473788

`ceil(A130330(n)/4)-A155039(n+1)`
-/

namespace A155033.P1925403567444473788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130330 n : ℚ) / 4⌉ - A155039 (n + 1)

end

end A155033.P1925403567444473788

/-! ## A155033.P15356286699447085598

`ceil(2^(A025581(n)-1))-A155039(n+1)`
-/

namespace A155033.P15356286699447085598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A025581 n - 1 : ℤ)⌉ - A155039 (n + 1)

end

end A155033.P15356286699447085598

/-! ## A155033.P5510208117475183948

`A011782(A025581(n))-A155039(n+1)`
-/

namespace A155033.P5510208117475183948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat - A155039 (n + 1)

end

end A155033.P5510208117475183948

/-! ## A155033.P9378630063106765440

`A155038(n+1)+A154990(n+1)*A155039(n+1)`
-/

namespace A155033.P9378630063106765440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1) + A154990 (n + 1) * A155039 (n + 1)

end

end A155033.P9378630063106765440

/-! ## A155033.P11223509040998244127

`A057728(n+2)-A155039(n+1)`
-/

namespace A155033.P11223509040998244127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) - A155039 (n + 1)

end

end A155033.P11223509040998244127

/-! ## A155033.P1522930730372163368

`A057728(n+2)+A154990(n+1)*A155039(n+1)`
-/

namespace A155033.P1522930730372163368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) + A154990 (n + 1) * A155039 (n + 1)

end

end A155033.P1522930730372163368

/-! ## A155033.P8398159923819167228

`A000010(A130321(n))-A155039(n+1)`
-/

namespace A155033.P8398159923819167228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat - A155039 (n + 1)

end

end A155033.P8398159923819167228

/-!
# A155034: Primes with smallest digit odd and prime (i.e., 3, 5 or 7).

The programs for A155034, there is no canonical definition to state claims against.
-/

/-! ## A155034.P13437701080213399369

`∩[A038603(n+1), A155026(n+1)]`
-/

namespace A155034.P13437701080213399369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P13437701080213399369

/-! ## A155034.P17450965424796194347

`∩[A106115(n+1), A155026(n+1)]`
-/

namespace A155034.P17450965424796194347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P17450965424796194347

/-! ## A155034.P5650443317654515276

`∩[A106116(n+1), A155026(n+1)]`
-/

namespace A155034.P5650443317654515276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P5650443317654515276

/-! ## A155034.P2409420948911662157

`∩[A132080(n+1), A155026(n+1)]`
-/

namespace A155034.P2409420948911662157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P2409420948911662157

/-! ## A155034.P15503165221739610178

`∩[A155026(n+1), A307636(n+1)]`
-/

namespace A155034.P15503165221739610178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P15503165221739610178

/-! ## A155034.P10897714201759837323

`∩[A155026(n+1), A386328(n+1)]`
-/

namespace A155034.P10897714201759837323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P10897714201759837323

/-! ## A155034.P8958955651960652409

`∩[A155026(n+1), A383749(n+1)]`
-/

namespace A155034.P8958955651960652409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P8958955651960652409

/-! ## A155034.P16663225423705754739

`∩[A037351(n+1), A155026(n+1)]`
-/

namespace A155034.P16663225423705754739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P16663225423705754739

/-! ## A155034.P10769176386611924670

`∩[A037344(n+1), A155026(n+1)]`
-/

namespace A155034.P10769176386611924670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P10769176386611924670

/-! ## A155034.P8193889428734771916

`∩[A039112(n+1), A155026(n+1)]`
-/

namespace A155034.P8193889428734771916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P8193889428734771916

/-! ## A155034.P13517811584361081326

`∩[A052383(n+1), A155026(n+1)]`
-/

namespace A155034.P13517811584361081326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155034.P13517811584361081326

/-!
# A155036: Primes p = prime(c) with index c a composite such that the concatenation c//p is a prime.

The programs for A155036, there is no canonical definition to state claims against.
-/

/-! ## A155036.P13634234454309296494

`A000040(A154965(n+1))`
-/

namespace A155036.P13634234454309296494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154965 (n + 1)).toNat

end

end A155036.P13634234454309296494

/-! ## A155036.P1906694395079240591

`A008578(A154965(n+1)+1)`
-/

namespace A155036.P1906694395079240591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154965 (n + 1) + 1).toNat

end

end A155036.P1906694395079240591

/-! ## A155036.P13542887814781363878

`A175787(A154965(n+1)+1)`
-/

namespace A155036.P13542887814781363878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A154965 (n + 1) + 1).toNat

end

end A155036.P13542887814781363878

/-! ## A155036.P5833207418257421944

`A182986(A154965(n+1)+1)`
-/

namespace A155036.P5833207418257421944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A154965 (n + 1) + 1).toNat

end

end A155036.P5833207418257421944

/-! ## A155036.P10713426088134571267

`A045344(A154965(n+1)-1)`
-/

namespace A155036.P10713426088134571267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A154965 (n + 1) - 1).toNat

end

end A155036.P10713426088134571267

/-! ## A155036.P6148065368272862317

`A065091(A154965(n+1)-1)`
-/

namespace A155036.P6148065368272862317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A154965 (n + 1) - 1).toNat

end

end A155036.P6148065368272862317

/-! ## A155036.P4153325053998917817

`A073846(2*A154965(n+1))`
-/

namespace A155036.P4153325053998917817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A154965 (n + 1)).toNat

end

end A155036.P4153325053998917817

/-! ## A155036.P6574072906351571379

`∑{d}[A154965(n+1), A007444(#)]`
-/

namespace A155036.P6574072906351571379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A155036.P6574072906351571379

/-! ## A155036.P3094060545127224471

`∩[A007821(n+1), A166283(n+1)]`
-/

namespace A155036.P3094060545127224471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155036.P3094060545127224471

/-! ## A155036.P13987108532069730570

`∩[A088982(n+1), A166283(n+1)]`
-/

namespace A155036.P13987108532069730570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155036.P13987108532069730570

/-!
# A155037: Numbers n such that n^3+2*n^2+1 is prime.

The programs for A155037, there is no canonical definition to state claims against.
-/

/-! ## A155037.P6481202133740584536

`eq[1, ∑{e}[(n+2)*n²+1, #]]`
-/

namespace A155037.P6481202133740584536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155037.P6481202133740584536

/-! ## A155037.P14012749914939557592

`floor(p?[(n+2)*n²+1]^(1/3))`
-/

namespace A155037.P14012749914939557592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A155037.P14012749914939557592

/-! ## A155037.P10721418325029509165

`∑[A000005(A032020(3*n)+A014664(n+2))]`
-/

namespace A155037.P10721418325029509165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032020 (3 * n) + A014664 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155037.P10721418325029509165

/-! ## A155037.P10600522426625720197

`eq[1, A001222((n+2)*n²+1)]`
-/

namespace A155037.P10600522426625720197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2) * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155037.P10600522426625720197

/-! ## A155037.P5923360929747284215

`eq[2, A000005((n+2)*n²+1)]`
-/

namespace A155037.P5923360929747284215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155037.P5923360929747284215

/-!
# A155038: Triangle read by rows: T(n,k) is the number of compositions of n with first part k.

The programs for A155038, the canonical program `A155038.P358977146080396517` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155038 has offset 1).

The definition of A155038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155038.P1435627209261798817

`ceil(2^(C(comp[∑[n]]-n, 2)-n)/4)`
-/

namespace A155038.P1435627209261798817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 4⌉

end

end A155038.P1435627209261798817

namespace A155038

/-- `ceil(2^(C(comp[∑[n]]-n, 2)-n)/4)` -/
def P1435627209261798817.Spec : Prop :=
  ∀ n, P1435627209261798817.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P5599424135680045000

`round(2^(C(comp[∑[n]]-n, 2)-n)/4)`
-/

namespace A155038.P5599424135680045000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 4)

end

end A155038.P5599424135680045000

namespace A155038

/-- `round(2^(C(comp[∑[n]]-n, 2)-n)/4)` -/
def P5599424135680045000.Spec : Prop :=
  ∀ n, P5599424135680045000.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P358977146080396517

`abs(A152568(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155038

/-- `abs(A152568(n))` -/
def P358977146080396517.Spec : Prop :=
  ∀ n, P358977146080396517.a n = A155038 (n + 1)

theorem P358977146080396517.correct : P358977146080396517.Spec := by
  intro n
  simp only [A155038, Nat.add_sub_cancel]

end A155038

/-! ## A155038.P15097052306202870271

`Δ[A089633(n)]`
-/

namespace A155038.P15097052306202870271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155038.P15097052306202870271

namespace A155038

/-- `Δ[A089633(n)]` -/
def P15097052306202870271.Spec : Prop :=
  ∀ n, P15097052306202870271.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P15204893517403220312

`sqrt(abs(A152571(n)))`
-/

namespace A155038.P15204893517403220312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A152571 n| : ℝ)

end

end A155038.P15204893517403220312

namespace A155038

/-- `sqrt(abs(A152571(n)))` -/
def P15204893517403220312.Spec : Prop :=
  ∀ n, P15204893517403220312.a n = (A155038 (n + 1) : ℝ)

end A155038

/-! ## A155038.P544106917269981969

`ceil(A130321(n)/2)`
-/

namespace A155038.P544106917269981969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130321 n : ℚ) / 2⌉

end

end A155038.P544106917269981969

namespace A155038

/-- `ceil(A130321(n)/2)` -/
def P544106917269981969.Spec : Prop :=
  ∀ n, P544106917269981969.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P4826143219243988177

`ceil(A130330(n)/4)`
-/

namespace A155038.P4826143219243988177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130330 n : ℚ) / 4⌉

end

end A155038.P4826143219243988177

namespace A155038

/-- `ceil(A130330(n)/4)` -/
def P4826143219243988177.Spec : Prop :=
  ∀ n, P4826143219243988177.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P7683764793254961202

`ceil(A090988(n+1)/4)`
-/

namespace A155038.P7683764793254961202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090988 (n + 1) : ℚ) / 4⌉

end

end A155038.P7683764793254961202

namespace A155038

/-- `ceil(A090988(n+1)/4)` -/
def P7683764793254961202.Spec : Prop :=
  ∀ n, P7683764793254961202.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P12419259464470323668

`ceil(2^(A025581(n)-1))`
-/

namespace A155038.P12419259464470323668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A025581 n - 1 : ℤ)⌉

end

end A155038.P12419259464470323668

namespace A155038

/-- `ceil(2^(A025581(n)-1))` -/
def P12419259464470323668.Spec : Prop :=
  ∀ n, P12419259464470323668.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P11113574341465488113

`Δ[A081118(n+1)/2]`
-/

namespace A155038.P11113574341465488113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081118 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155038.P11113574341465488113

namespace A155038

/-- `Δ[A081118(n+1)/2]` -/
def P11113574341465488113.Spec : Prop :=
  ∀ n, P11113574341465488113.a n = (A155038 (n + 1) : ℚ)

end A155038

/-! ## A155038.P1980315407757288709

`ceil(2^(A004736(n+1)-1)/2)`
-/

namespace A155038.P1980315407757288709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) / 2⌉

end

end A155038.P1980315407757288709

namespace A155038

/-- `ceil(2^(A004736(n+1)-1)/2)` -/
def P1980315407757288709.Spec : Prop :=
  ∀ n, P1980315407757288709.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P11234608831322480065

`A011782(A025581(n))`
-/

namespace A155038.P11234608831322480065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat

end

end A155038.P11234608831322480065

namespace A155038

/-- `A011782(A025581(n))` -/
def P11234608831322480065.Spec : Prop :=
  ∀ n, P11234608831322480065.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P16523082954390352797

`A158780(A099375(n))`
-/

namespace A155038.P16523082954390352797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A099375 n).toNat

end

end A155038.P16523082954390352797

namespace A155038

/-- `A158780(A099375(n))` -/
def P16523082954390352797.Spec : Prop :=
  ∀ n, P16523082954390352797.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P2236456960434556660

`A011782(log2(A130321(n)))`
-/

namespace A155038.P2236456960434556660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A155038.P2236456960434556660

namespace A155038

/-- `A011782(log2(A130321(n)))` -/
def P2236456960434556660.Spec : Prop :=
  ∀ n, P2236456960434556660.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P5290212039122898710

`A166444(A004736(n+1))`
-/

namespace A155038.P5290212039122898710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A004736 (n + 1)).toNat

end

end A155038.P5290212039122898710

namespace A155038

/-- `A166444(A004736(n+1))` -/
def P5290212039122898710.Spec : Prop :=
  ∀ n, P5290212039122898710.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P15707444579619698731

`A211164(A099375(n)-1)`
-/

namespace A155038.P15707444579619698731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A099375 n - 1).toNat

end

end A155038.P15707444579619698731

namespace A155038

/-- `A211164(A099375(n)-1)` -/
def P15707444579619698731.Spec : Prop :=
  ∀ n, P15707444579619698731.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P3686133100464544328

`A130321(C(A025581(n), 2))`
-/

namespace A155038.P3686133100464544328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (Nat.choose (A025581 n).toNat 2)

end

end A155038.P3686133100464544328

namespace A155038

/-- `A130321(C(A025581(n), 2))` -/
def P3686133100464544328.Spec : Prop :=
  ∀ n, P3686133100464544328.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P4625408989940601864

`A054126(n)-A131250(n)`
-/

namespace A155038.P4625408989940601864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 n - A131250 n

end

end A155038.P4625408989940601864

namespace A155038

/-- `A054126(n)-A131250(n)` -/
def P4625408989940601864.Spec : Prop :=
  ∀ n, P4625408989940601864.a n = A155038 (n + 1)

end A155038

/-! ## A155038.P4963229492599297408

`A119468(n)/A007318(n)`
-/

namespace A155038.P4963229492599297408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119468 n : ℚ) / (A007318 n : ℚ)

end

end A155038.P4963229492599297408

namespace A155038

/-- `A119468(n)/A007318(n)` -/
def P4963229492599297408.Spec : Prop :=
  ∀ n, P4963229492599297408.a n = (A155038 (n + 1) : ℚ)

end A155038

/-! ## A155038.P4375459378733849428

`A038207(n)/A129994(n)`
-/

namespace A155038.P4375459378733849428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A129994 n : ℚ)

end

end A155038.P4375459378733849428

namespace A155038

/-- `A038207(n)/A129994(n)` -/
def P4375459378733849428.Spec : Prop :=
  ∀ n, P4375459378733849428.a n = (A155038 (n + 1) : ℚ)

end A155038

/-!
# A155039: A155038-A155033.

The programs for A155039, there is no canonical definition to state claims against.
-/

/-! ## A155039.P2132531113111822397

`abs(A155033(n+1)+A152568(n))`
-/

namespace A155039.P2132531113111822397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155033 (n + 1) + A152568 n|

end

end A155039.P2132531113111822397

/-! ## A155039.P16757860955701453517

`Δ[A089633(n)]-A155033(n+1)`
-/

namespace A155039.P16757860955701453517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A155033 (n + 1)

end

end A155039.P16757860955701453517

/-! ## A155039.P4934936766526865767

`A155038(n+1)-A155033(n+1)`
-/

namespace A155039.P4934936766526865767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1) - A155033 (n + 1)

end

end A155039.P4934936766526865767

/-! ## A155039.P14104818539124868727

`sqrt(abs(A152571(n)))-A155033(n+1)`
-/

namespace A155039.P14104818539124868727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A152571 n| : ℝ) - (A155033 (n + 1) : ℝ)

end

end A155039.P14104818539124868727

/-! ## A155039.P7908072657538159406

`ceil(A130321(n)/2)-A155033(n+1)`
-/

namespace A155039.P7908072657538159406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130321 n : ℚ) / 2⌉ - A155033 (n + 1)

end

end A155039.P7908072657538159406

/-! ## A155039.P15371302365864515187

`ceil(A130330(n)/4)-A155033(n+1)`
-/

namespace A155039.P15371302365864515187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130330 n : ℚ) / 4⌉ - A155033 (n + 1)

end

end A155039.P15371302365864515187

/-! ## A155039.P8588618328095006038

`ceil(2^(A025581(n)-1))-A155033(n+1)`
-/

namespace A155039.P8588618328095006038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A025581 n - 1 : ℤ)⌉ - A155033 (n + 1)

end

end A155039.P8588618328095006038

/-! ## A155039.P12146063892971723277

`A011782(A025581(n))-A155033(n+1)`
-/

namespace A155039.P12146063892971723277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat - A155033 (n + 1)

end

end A155039.P12146063892971723277

/-! ## A155039.P9508277032332631912

`A057728(n+2)-A155033(n+1)`
-/

namespace A155039.P9508277032332631912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) - A155033 (n + 1)

end

end A155039.P9508277032332631912

/-! ## A155039.P10158559815611467240

`A000010(A130321(n))-A155033(n+1)`
-/

namespace A155039.P10158559815611467240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat - A155033 (n + 1)

end

end A155039.P10158559815611467240

/-!
# A155040: A symmetric (1,-1)-triangle.

The programs for A155040, there is no canonical definition to state claims against.
-/

/-! ## A155040.P4871244090174602569

`A174387(n)%2`
-/

namespace A155040.P4871244090174602569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174387 n) 2

end

end A155040.P4871244090174602569

/-! ## A155040.P11780461286198203608

`A174389(n)%2`
-/

namespace A155040.P11780461286198203608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174389 n) 2

end

end A155040.P11780461286198203608

/-! ## A155040.P15167337530142460752

`(-1)^A004197(n)`
-/

namespace A155040.P15167337530142460752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004197 n : ℤ)

end

end A155040.P15167337530142460752

/-! ## A155040.P18285096051660980879

`round(sin(atan(A159041(n))))`
-/

namespace A155040.P18285096051660980879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A159041 n : ℝ)))

end

end A155040.P18285096051660980879

/-! ## A155040.P9081625918031511304

`round(sin(atan(A225356(n))))`
-/

namespace A155040.P9081625918031511304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A225356 n : ℝ)))

end

end A155040.P9081625918031511304

/-! ## A155040.P5161713128862036878

`2*A154957(n)-1`
-/

namespace A155040.P5161713128862036878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154957 n - 1

end

end A155040.P5161713128862036878

/-! ## A155040.P5166342031878710120

`2-A152714(n)%4`
-/

namespace A155040.P5166342031878710120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A152714 n) 4

end

end A155040.P5166342031878710120

/-! ## A155040.P11675500176273002725

`1-and(2, A157454(n+1))`
-/

namespace A155040.P11675500176273002725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A157454 (n + 1))

end

end A155040.P11675500176273002725

/-! ## A155040.P3994045784531905074

`A014815(A004197(n))`
-/

namespace A155040.P3994045784531905074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (A004197 n).toNat

end

end A155040.P3994045784531905074

/-! ## A155040.P1321835413816995990

`A004718(A144464(n))`
-/

namespace A155040.P1321835413816995990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A144464 n).toNat

end

end A155040.P1321835413816995990

/-!
# A155041: Diagonal sums of symmetric (1,-1)-triangle A155040.

The programs for A155041, the canonical program `A155041.P15545819844138895087` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155041 has offset 0).

The definition of A155041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155041.P15545819844138895087

`gcd(2, n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155041

/-- `gcd(2, n)-a(n-3)` -/
def P15545819844138895087.Spec : Prop :=
  ∀ n, P15545819844138895087.a n = A155041 n

theorem P15545819844138895087.correct : P15545819844138895087.Spec := by
  intro n
  simp only [A155041]

end A155041

/-! ## A155041.P7911010959999141763

`∑[xor(1, -a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A155041.P7911010959999141763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  Int.xor 1 (-f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P7911010959999141763

namespace A155041

/-- `∑[xor(1, -a(n-3))]` -/
def P7911010959999141763.Spec : Prop :=
  ∀ n, P7911010959999141763.a n = A155041 n

end A155041

/-! ## A155041.P14864229958183513838

`∑[ogf((1+x+x^2)/(1+x+x^3+x^4))]`
-/

namespace A155041.P14864229958183513838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 1, 0, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P14864229958183513838

namespace A155041

/-- `∑[ogf((1+x+x^2)/(1+x+x^3+x^4))]` -/
def P14864229958183513838.Spec : Prop :=
  ∀ n, P14864229958183513838.a n = A155041 n

end A155041

/-! ## A155041.P14447418181299781959

`∑[(-1)^n*∑[(-1)^(n%3)]]`
-/

namespace A155041.P14447418181299781959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P14447418181299781959

namespace A155041

/-- `∑[(-1)^n*∑[(-1)^(n%3)]]` -/
def P14447418181299781959.Spec : Prop :=
  ∀ n, P14447418181299781959.a n = A155041 n

end A155041

/-! ## A155041.P1077315447409563653

`∑[(-1)^n-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A155041.P1077315447409563653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (-1) ^ n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P1077315447409563653

namespace A155041

/-- `∑[(-1)^n-a(n-3)]` -/
def P1077315447409563653.Spec : Prop :=
  ∀ n, P1077315447409563653.a n = A155041 n

end A155041

/-! ## A155041.P5281777069279610427

`2-(a(n-3)+and(1, n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A155041.P5281777069279610427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 - (a (n - 3) + (Nat.land 1 n : ℤ))

end

end A155041.P5281777069279610427

namespace A155041

/-- `2-(a(n-3)+and(1, n))` -/
def P5281777069279610427.Spec : Prop :=
  ∀ n, P5281777069279610427.a n = A155041 n

end A155041

/-! ## A155041.P4019791523097966265

`2-and(1, n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A155041.P4019791523097966265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 - (Nat.land 1 n : ℤ) - a (n - 3)

end

end A155041.P4019791523097966265

namespace A155041

/-- `2-and(1, n)-a(n-3)` -/
def P4019791523097966265.Spec : Prop :=
  ∀ n, P4019791523097966265.a n = A155041 n

end A155041

/-! ## A155041.P2568474082093989065

`a(n-2)+(-1)^floor(n/3)` with `a(0)=1, a(1)=1`
-/

namespace A155041.P2568474082093989065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A155041.P2568474082093989065

namespace A155041

/-- `a(n-2)+(-1)^floor(n/3)` -/
def P2568474082093989065.Spec : Prop :=
  ∀ n, P2568474082093989065.a n = (A155041 n : ℚ)

end A155041

/-! ## A155041.P10002483592344735559

`A130151(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A155041.P10002483592344735559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A130151 n + a (n - 2)

end

end A155041.P10002483592344735559

namespace A155041

/-- `A130151(n)+a(n-2)` -/
def P10002483592344735559.Spec : Prop :=
  ∀ n, P10002483592344735559.a n = A155041 n

end A155041

/-! ## A155041.P9922938517168387003

`A040001(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A155041.P9922938517168387003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A040001 n - a (n - 3)

end

end A155041.P9922938517168387003

namespace A155041

/-- `A040001(n)-a(n-3)` -/
def P9922938517168387003.Spec : Prop :=
  ∀ n, P9922938517168387003.a n = A155041 n

end A155041

/-! ## A155041.P7535033014979189410

`A134451(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A155041.P7535033014979189410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A134451 n - a (n - 3)

end

end A155041.P7535033014979189410

namespace A155041

/-- `A134451(n)-a(n-3)` -/
def P7535033014979189410.Spec : Prop :=
  ∀ n, P7535033014979189410.a n = A155041 n

end A155041

/-! ## A155041.P10421854411191377355

`∑[A008611(n)*A033999(n)]`
-/

namespace A155041.P10421854411191377355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P10421854411191377355

namespace A155041

/-- `∑[A008611(n)*A033999(n)]` -/
def P10421854411191377355.Spec : Prop :=
  ∀ n, P10421854411191377355.a n = A155041 n

end A155041

/-! ## A155041.P8644806379413466172

`2*A154958(n)-A008619(n)`
-/

namespace A155041.P8644806379413466172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154958 n - A008619 n

end

end A155041.P8644806379413466172

namespace A155041

/-- `2*A154958(n)-A008619(n)` -/
def P8644806379413466172.Spec : Prop :=
  ∀ n, P8644806379413466172.a n = A155041 n

end A155041

/-! ## A155041.P16199205828618176062

`∑[(A004442(n)-n)*A008611(n)]`
-/

namespace A155041.P16199205828618176062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P16199205828618176062

namespace A155041

/-- `∑[(A004442(n)-n)*A008611(n)]` -/
def P16199205828618176062.Spec : Prop :=
  ∀ n, P16199205828618176062.a n = A155041 n

end A155041

/-! ## A155041.P17020858245733787123

`A260686(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A155041.P17020858245733787123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260686 (n + 1) - a (n - 1)

end

end A155041.P17020858245733787123

namespace A155041

/-- `A260686(n+1)-a(n-1)` -/
def P17020858245733787123.Spec : Prop :=
  ∀ n, P17020858245733787123.a n = A155041 n

end A155041

/-! ## A155041.P5316455811801623311

`A131531(n+2)+1-A187035(n+1)`
-/

namespace A155041.P5316455811801623311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + (1 - A187035 (n + 1))

end

end A155041.P5316455811801623311

namespace A155041

/-- `A131531(n+2)+1-A187035(n+1)` -/
def P5316455811801623311.Spec : Prop :=
  ∀ n, P5316455811801623311.a n = A155041 n

end A155041

/-! ## A155041.P18439951336665994804

`1-A008612(n+1)*A033999(n+1)`
-/

namespace A155041.P18439951336665994804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008612 (n + 1) * A033999 (n + 1)

end

end A155041.P18439951336665994804

namespace A155041

/-- `1-A008612(n+1)*A033999(n+1)` -/
def P18439951336665994804.Spec : Prop :=
  ∀ n, P18439951336665994804.a n = A155041 n

end A155041

/-! ## A155041.P18166799836146994245

`A154958(n)-A002264(A029578(n+2))`
-/

namespace A155041.P18166799836146994245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n - A002264 (A029578 (n + 2)).toNat

end

end A155041.P18166799836146994245

namespace A155041

/-- `A154958(n)-A002264(A029578(n+2))` -/
def P18166799836146994245.Spec : Prop :=
  ∀ n, P18166799836146994245.a n = A155041 n

end A155041

/-! ## A155041.P1741710544709008281

`A008612(n+1)*A009531(2*n+1)+1`
-/

namespace A155041.P1741710544709008281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (n + 1) * A009531 (2 * n + 1) + 1

end

end A155041.P1741710544709008281

namespace A155041

/-- `A008612(n+1)*A009531(2*n+1)+1` -/
def P1741710544709008281.Spec : Prop :=
  ∀ n, P1741710544709008281.a n = A155041 n

end A155041

/-! ## A155041.P12653403813423850312

`∑[A008611(n)*A121238(2*n+1)]`
-/

namespace A155041.P12653403813423850312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A121238 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155041.P12653403813423850312

namespace A155041

/-- `∑[A008611(n)*A121238(2*n+1)]` -/
def P12653403813423850312.Spec : Prop :=
  ∀ n, P12653403813423850312.a n = A155041 n

end A155041

/-!
# A155042: Row sums of A155039.

The programs for A155042, there is no canonical definition to state claims against.
-/

/-! ## A155042.P3362956663197001408

`Δ[2^n-A101172(n+1)]`
-/

namespace A155042.P3362956663197001408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A101172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155042.P3362956663197001408

/-! ## A155042.P2876861586479134053

`A000079(n)-Δ[A101172(n+1)]`
-/

namespace A155042.P2876861586479134053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A155042.P2876861586479134053

/-! ## A155042.P17440690620684405379

`2^n-A101173(n+1)`
-/

namespace A155042.P17440690620684405379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A101173 (n + 1)

end

end A155042.P17440690620684405379

/-! ## A155042.P3594242471449686413

`abs(A101173(n+1)-A000079(n))`
-/

namespace A155042.P3594242471449686413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101173 (n + 1) - A000079 n|

end

end A155042.P3594242471449686413

/-! ## A155042.P13764916927229432945

`and(-A101173(n+1), A000225(n))`
-/

namespace A155042.P13764916927229432945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A101173 (n + 1)) (A000225 n)

end

end A155042.P13764916927229432945

/-!
# A155043: a(0)=0; for n >= 1, a(n) = 1 + a(n-d(n)), where d(n) is the number of divisors of n (A000005).

The programs for A155043, the canonical program `A155043.P15229404394103528317` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155043 has offset 0).

The definition of A155043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155043.P15229404394103528317

`1+a(A049820(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155043

/-- `1+a(A049820(n))` -/
def P15229404394103528317.Spec : Prop :=
  ∀ n, (P15229404394103528317.a n : ℤ) = A155043 n

theorem P15229404394103528317.correct : P15229404394103528317.Spec := by
  intro n
  simp only [A155043]

end A155043

/-! ## A155043.P8180428604828099491

`A263270(A263266(n))`
-/

namespace A155043.P8180428604828099491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 n).toNat

end

end A155043.P8180428604828099491

namespace A155043

/-- `A263270(A263266(n))` -/
def P8180428604828099491.Spec : Prop :=
  ∀ n, P8180428604828099491.a n = A155043 n

end A155043

/-! ## A155043.P13664406030027739650

`A262676(n)+A262677(n)`
-/

namespace A155043.P13664406030027739650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262676 n + A262677 n

end

end A155043.P13664406030027739650

namespace A155043

/-- `A262676(n)+A262677(n)` -/
def P13664406030027739650.Spec : Prop :=
  ∀ n, P13664406030027739650.a n = A155043 n

end A155043

/-! ## A155043.P17321976320684583595

`A262904(n)+A263254(n)`
-/

namespace A155043.P17321976320684583595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 n + A263254 n

end

end A155043.P17321976320684583595

namespace A155043

/-- `A262904(n)+A263254(n)` -/
def P17321976320684583595.Spec : Prop :=
  ∀ n, P17321976320684583595.a n = A155043 n

end A155043

/-! ## A155043.P13676070445570152848

`a(n-∏{e}[n, #+1])+1` with `a(0)=0`
-/

namespace A155043.P13676070445570152848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1

end

end A155043.P13676070445570152848

namespace A155043

/-- `a(n-∏{e}[n, #+1])+1` -/
def P13676070445570152848.Spec : Prop :=
  ∀ n, (P13676070445570152848.a n : ℤ) = A155043 n

end A155043

/-! ## A155043.P2898486498257175293

`∑[A264893(abs(1-n))]`
-/

namespace A155043.P2898486498257175293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155043.P2898486498257175293

namespace A155043

/-- `∑[A264893(abs(1-n))]` -/
def P2898486498257175293.Spec : Prop :=
  ∀ n, P2898486498257175293.a n = A155043 n

end A155043

/-! ## A155043.P12550619737368831354

`1+a(n-A000005(n))` with `a(0)=0`
-/

namespace A155043.P12550619737368831354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A000005 n).toNat

end

end A155043.P12550619737368831354

namespace A155043

/-- `1+a(n-A000005(n))` -/
def P12550619737368831354.Spec : Prop :=
  ∀ n, (P12550619737368831354.a n : ℤ) = A155043 n

end A155043

/-! ## A155043.P17667651306838183214

`A264893(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A155043.P17667651306838183214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A264893 (n - 1) + a (n - 1)

end

end A155043.P17667651306838183214

namespace A155043

/-- `A264893(n-1)+a(n-1)` -/
def P17667651306838183214.Spec : Prop :=
  ∀ n, P17667651306838183214.a n = A155043 n

end A155043

/-! ## A155043.P6939261246131323272

`∑[A264893(n)]-A264893(n)`
-/

namespace A155043.P6939261246131323272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A264893 n

end

end A155043.P6939261246131323272

namespace A155043

/-- `∑[A264893(n)]-A264893(n)` -/
def P6939261246131323272.Spec : Prop :=
  ∀ n, P6939261246131323272.a n = A155043 n

end A155043

/-! ## A155043.P15058058805295631487

`A263270(A263268(n))`
-/

namespace A155043.P15058058805295631487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 n).toNat

end

end A155043.P15058058805295631487

namespace A155043

/-- `A263270(A263268(n))` -/
def P15058058805295631487.Spec : Prop :=
  ∀ n, P15058058805295631487.a n = A155043 n

end A155043

/-!
# A155045: Primes with distinct odd digits.

The programs for A155045, there is no canonical definition to state claims against.
-/

/-! ## A155045.P11419454745468872580

`∩[A014261(n+1), A029743(n+1)]`
-/

namespace A155045.P11419454745468872580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P11419454745468872580

/-! ## A155045.P16737923437566559139

`∩[A029743(n+1), A030096(n+1)]`
-/

namespace A155045.P16737923437566559139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P16737923437566559139

/-! ## A155045.P8646423191210799010

`∩[A029743(n+1), A062086(n+1)]`
-/

namespace A155045.P8646423191210799010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P8646423191210799010

/-! ## A155045.P2320195915332983987

`∩[A029743(n+1), A066640(n+1)]`
-/

namespace A155045.P2320195915332983987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P2320195915332983987

/-! ## A155045.P12042037117681381921

`∩[A030096(n+1), A283161(n+1)]`
-/

namespace A155045.P12042037117681381921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P12042037117681381921

/-! ## A155045.P13569683246961725486

`∩[A029743(n+1), A333369(n+1)]`
-/

namespace A155045.P13569683246961725486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P13569683246961725486

/-! ## A155045.P5275261164474299920

`∩[A029743(n+1), A355773(n+1)]`
-/

namespace A155045.P5275261164474299920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P5275261164474299920

/-! ## A155045.P4895816952921784724

`∩[A082646(n+1), A333369(n+1)]`
-/

namespace A155045.P4895816952921784724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P4895816952921784724

/-! ## A155045.P14356122575701321878

`∩[A082646(n+1), A355773(n+1)]`
-/

namespace A155045.P14356122575701321878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P14356122575701321878

/-! ## A155045.P6741439101792859769

`∩[A029740(n+1), A030096(n+1)]`
-/

namespace A155045.P6741439101792859769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155045.P6741439101792859769

/-!
# A155046: List of pairs: first pair is (1,1); then follow (x,y) with (x+2y, x+y).

The programs for A155046, the canonical program `A155046.P11846162240050115571` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155046 has offset 1).

The definition of A155046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155046.P11846162240050115571

`2*a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155046

/-- `2*a(n-2)+a(n-4)` -/
def P11846162240050115571.Spec : Prop :=
  ∀ n, (P11846162240050115571.a n : ℤ) = A155046 (n + 1)

theorem P11846162240050115571.correct : P11846162240050115571.Spec := by
  intro n
  simp only [A155046, Nat.add_sub_cancel]

end A155046

/-! ## A155046.P972672099988433626

`ogf((1+x+x^2)/(1-2x^2-x^4))`
-/

namespace A155046.P972672099988433626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 0, -2, 0, -1] n

end

end A155046.P972672099988433626

namespace A155046

/-- `ogf((1+x+x^2)/(1-2x^2-x^4))` -/
def P972672099988433626.Spec : Prop :=
  ∀ n, P972672099988433626.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P15110755567981876176

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A155046.P15110755567981876176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A155046.P15110755567981876176

namespace A155046

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P15110755567981876176.Spec : Prop :=
  ∀ n, (P15110755567981876176.a n : ℤ) = A155046 (n + 1)

theorem P15110755567981876176.correct : P15110755567981876176.Spec := by
  intro n
  simp only [A155046, Nat.add_sub_cancel, A155046.P15110755567981876176.a, A155046.P11846162240050115571.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155046

/-! ## A155046.P14158807514158447369

`A002965(xor(1, n+2))`
-/

namespace A155046.P14158807514158447369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (Nat.xor 1 (n + 2))

end

end A155046.P14158807514158447369

namespace A155046

/-- `A002965(xor(1, n+2))` -/
def P14158807514158447369.Spec : Prop :=
  ∀ n, P14158807514158447369.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P11247093371729957214

`A092550(A114119(n))`
-/

namespace A155046.P11247093371729957214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A114119 n).toNat

end

end A155046.P11247093371729957214

namespace A155046

/-- `A092550(A114119(n))` -/
def P11247093371729957214.Spec : Prop :=
  ∀ n, P11247093371729957214.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P9458500010454397097

`A092550(A166517(n))`
-/

namespace A155046.P9458500010454397097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A166517 n).toNat

end

end A155046.P9458500010454397097

namespace A155046

/-- `A092550(A166517(n))` -/
def P9458500010454397097.Spec : Prop :=
  ∀ n, P9458500010454397097.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P3257942475758382963

`A092550(A007494(n+1))`
-/

namespace A155046.P3257942475758382963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A007494 (n + 1)).toNat

end

end A155046.P3257942475758382963

namespace A155046

/-- `A092550(A007494(n+1))` -/
def P3257942475758382963.Spec : Prop :=
  ∀ n, P3257942475758382963.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P3938543466472445800

`A249576(A168200(n+1))`
-/

namespace A155046.P3938543466472445800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A168200 (n + 1)).toNat

end

end A155046.P3938543466472445800

namespace A155046

/-- `A249576(A168200(n+1))` -/
def P3938543466472445800.Spec : Prop :=
  ∀ n, P3938543466472445800.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P2011417435920930743

`A002965(A065190(n+2))`
-/

namespace A155046.P2011417435920930743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A065190 (n + 2)).toNat

end

end A155046.P2011417435920930743

namespace A155046

/-- `A002965(A065190(n+2))` -/
def P2011417435920930743.Spec : Prop :=
  ∀ n, P2011417435920930743.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P13174432214961792086

`A092550(A294732(n+3))`
-/

namespace A155046.P13174432214961792086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A294732 (n + 3)).toNat

end

end A155046.P13174432214961792086

namespace A155046

/-- `A092550(A294732(n+3))` -/
def P13174432214961792086.Spec : Prop :=
  ∀ n, P13174432214961792086.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P8704412132756905058

`A002965(A033999(n)+2+n)`
-/

namespace A155046.P8704412132756905058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A033999 n + 2 + (n : ℤ)).toNat

end

end A155046.P8704412132756905058

namespace A155046

/-- `A002965(A033999(n)+2+n)` -/
def P8704412132756905058.Spec : Prop :=
  ∀ n, P8704412132756905058.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P1243605819582931484

`A002965(A109613(n)+gcd(2, n))`
-/

namespace A155046.P1243605819582931484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A109613 n + (Nat.gcd 2 n : ℤ)).toNat

end

end A155046.P1243605819582931484

namespace A155046

/-- `A002965(A109613(n)+gcd(2, n))` -/
def P1243605819582931484.Spec : Prop :=
  ∀ n, P1243605819582931484.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P2561699082061361829

`A092550(∑[∑[A033999(n)]+1])`
-/

namespace A155046.P2561699082061361829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155046.P2561699082061361829

namespace A155046

/-- `A092550(∑[∑[A033999(n)]+1])` -/
def P2561699082061361829.Spec : Prop :=
  ∀ n, P2561699082061361829.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P17745143769073418907

`A092550(A047235(n+1)/2+1)`
-/

namespace A155046.P17745143769073418907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (SequenceMachineLib.roundAway ((A047235 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A155046.P17745143769073418907

namespace A155046

/-- `A092550(A047235(n+1)/2+1)` -/
def P17745143769073418907.Spec : Prop :=
  ∀ n, P17745143769073418907.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P8898157051934998929

`A092550(A047238(n+1)/2+2)`
-/

namespace A155046.P8898157051934998929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (SequenceMachineLib.roundAway ((A047238 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A155046.P8898157051934998929

namespace A155046

/-- `A092550(A047238(n+1)/2+2)` -/
def P8898157051934998929.Spec : Prop :=
  ∀ n, P8898157051934998929.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P17796891963567435174

`A116560(3*n+7)`
-/

namespace A155046.P17796891963567435174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (3 * n + 7)

end

end A155046.P17796891963567435174

namespace A155046

/-- `A116560(3*n+7)` -/
def P17796891963567435174.Spec : Prop :=
  ∀ n, P17796891963567435174.a n = A155046 (n + 1)

end A155046

/-! ## A155046.P1158305595462100325

`A119016(n+2)/A000034(n)`
-/

namespace A155046.P1158305595462100325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119016 (n + 2) : ℚ) / (A000034 n : ℚ)

end

end A155046.P1158305595462100325

namespace A155046

/-- `A119016(n+2)/A000034(n)` -/
def P1158305595462100325.Spec : Prop :=
  ∀ n, P1158305595462100325.a n = (A155046 (n + 1) : ℚ)

end A155046

/-! ## A155046.P643340979360553531

`A082766(n+2)/(A000035(n)+1)`
-/

namespace A155046.P643340979360553531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082766 (n + 2) : ℚ) / (A000035 n + 1 : ℚ)

end

end A155046.P643340979360553531

namespace A155046

/-- `A082766(n+2)/(A000035(n)+1)` -/
def P643340979360553531.Spec : Prop :=
  ∀ n, P643340979360553531.a n = (A155046 (n + 1) : ℚ)

end A155046

/-! ## A155046.P11737917668736889519

`A082766(n+2)/(A260394(4*n+1)+1)`
-/

namespace A155046.P11737917668736889519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082766 (n + 2) : ℚ) / (A260394 (4 * n + 1) + 1 : ℚ)

end

end A155046.P11737917668736889519

namespace A155046

/-- `A082766(n+2)/(A260394(4*n+1)+1)` -/
def P11737917668736889519.Spec : Prop :=
  ∀ n, P11737917668736889519.a n = (A155046 (n + 1) : ℚ)

end A155046

/-! ## A155046.P6322240197635163616

`lcm(2, A082766(n+2))/2`
-/

namespace A155046.P6322240197635163616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A082766 (n + 2)) : ℚ) / 2

end

end A155046.P6322240197635163616

namespace A155046

/-- `lcm(2, A082766(n+2))/2` -/
def P6322240197635163616.Spec : Prop :=
  ∀ n, P6322240197635163616.a n = (A155046 (n + 1) : ℚ)

end A155046

/-!
# A155047: a(1) = 1, a(2) = 2, then a(n) = largest prime factor of the partial sum up to a(n-1).

The programs for A155047, the canonical program `A155047.P11476760805214511522` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155047 has offset 1).

The definition of A155047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155047.P838243883367362860

`A076272(n+1)+char[2]`
-/

namespace A155047.P838243883367362860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A155047.P838243883367362860

namespace A155047

/-- `A076272(n+1)+char[2]` -/
def P838243883367362860.Spec : Prop :=
  ∀ n, P838243883367362860.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P11476760805214511522

`A076272(A014683(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A155047

/-- `A076272(A014683(n+1))` -/
def P11476760805214511522.Spec : Prop :=
  ∀ n, P11476760805214511522.a n = A155047 (n + 1)

theorem P11476760805214511522.correct : P11476760805214511522.Spec := by
  intro n
  simp only [A155047, Nat.add_sub_cancel]

end A155047

/-! ## A155047.P5664495392616384568

`A076272(A140201(n+1))`
-/

namespace A155047.P5664495392616384568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A140201 (n + 1)).toNat

end

end A155047.P5664495392616384568

namespace A155047

/-- `A076272(A140201(n+1))` -/
def P5664495392616384568.Spec : Prop :=
  ∀ n, P5664495392616384568.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P9535205271516284812

`A006530(A394084(n+1))`
-/

namespace A155047.P9535205271516284812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A394084 (n + 1)).toNat

end

end A155047.P9535205271516284812

namespace A155047

/-- `A006530(A394084(n+1))` -/
def P9535205271516284812.Spec : Prop :=
  ∀ n, P9535205271516284812.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P12415926902378603861

`A076272(A040001(n)+n)`
-/

namespace A155047.P12415926902378603861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A040001 n + (n : ℤ)).toNat

end

end A155047.P12415926902378603861

namespace A155047

/-- `A076272(A040001(n)+n)` -/
def P12415926902378603861.Spec : Prop :=
  ∀ n, P12415926902378603861.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P195156371129255654

`A076272(A063196(n+1)+1)`
-/

namespace A155047.P195156371129255654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A063196 (n + 1) + 1).toNat

end

end A155047.P195156371129255654

namespace A155047

/-- `A076272(A063196(n+1)+1)` -/
def P195156371129255654.Spec : Prop :=
  ∀ n, P195156371129255654.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P358776356642391814

`A076272(A185012(n)+1+n)`
-/

namespace A155047.P358776356642391814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A185012 n + 1 + (n : ℤ)).toNat

end

end A155047.P358776356642391814

namespace A155047

/-- `A076272(A185012(n)+1+n)` -/
def P358776356642391814.Spec : Prop :=
  ∀ n, P358776356642391814.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P1363850647179279935

`or(A007814(or(2, n)), A076272(n+1))`
-/

namespace A155047.P1363850647179279935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (Nat.lor 2 n)) (A076272 (n + 1))

end

end A155047.P1363850647179279935

namespace A155047

/-- `or(A007814(or(2, n)), A076272(n+1))` -/
def P1363850647179279935.Spec : Prop :=
  ∀ n, P1363850647179279935.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P15360855593508886344

`char[2]+A036441(n+1)-A076271(n+1)`
-/

namespace A155047.P15360855593508886344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A036441 (n + 1) - A076271 (n + 1))

end

end A155047.P15360855593508886344

namespace A155047

/-- `char[2]+A036441(n+1)-A076271(n+1)` -/
def P15360855593508886344.Spec : Prop :=
  ∀ n, P15360855593508886344.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P181672745218745903

`A076272(A036441(n+1)-A180107(n+1))`
-/

namespace A155047.P181672745218745903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A036441 (n + 1) - A180107 (n + 1)).toNat

end

end A155047.P181672745218745903

namespace A155047

/-- `A076272(A036441(n+1)-A180107(n+1))` -/
def P181672745218745903.Spec : Prop :=
  ∀ n, P181672745218745903.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P12916465720104769812

`A076272(A076271(n+2)-A180107(n+1))`
-/

namespace A155047.P12916465720104769812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A076271 (n + 2) - A180107 (n + 1)).toNat

end

end A155047.P12916465720104769812

namespace A155047

/-- `A076272(A076271(n+2)-A180107(n+1))` -/
def P12916465720104769812.Spec : Prop :=
  ∀ n, P12916465720104769812.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P7940718600277226791

`A076272(A180107(n+3)-A180107(n+1))`
-/

namespace A155047.P7940718600277226791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A180107 (n + 3) - A180107 (n + 1)).toNat

end

end A155047.P7940718600277226791

namespace A155047

/-- `A076272(A180107(n+3)-A180107(n+1))` -/
def P7940718600277226791.Spec : Prop :=
  ∀ n, P7940718600277226791.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P1153650641648914397

`char[2]+Δ[A006530(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A155047.P1153650641648914397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A006530 (f2 (n - 1)).toNat + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A155047.P1153650641648914397

namespace A155047

/-- `char[2]+Δ[A006530(a(n-1))+a(n-1)]` -/
def P1153650641648914397.Spec : Prop :=
  ∀ n, P1153650641648914397.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P4042419998323991228

`char[2]+A006530(record[A291577(n)])`
-/

namespace A155047.P4042419998323991228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A155047.P4042419998323991228

namespace A155047

/-- `char[2]+A006530(record[A291577(n)])` -/
def P4042419998323991228.Spec : Prop :=
  ∀ n, P4042419998323991228.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P16095635809546520148

`A006530(record[A291577(n)]-char[2])`
-/

namespace A155047.P16095635809546520148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A155047.P16095635809546520148

namespace A155047

/-- `A006530(record[A291577(n)]-char[2])` -/
def P16095635809546520148.Spec : Prop :=
  ∀ n, P16095635809546520148.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P12326731128017471283

`A006530((n+2-a(n-2))*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A155047.P12326731128017471283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (((n + 2 : ℤ) - a (n - 2)) * a (n - 1)).toNat

end

end A155047.P12326731128017471283

namespace A155047

/-- `A006530((n+2-a(n-2))*a(n-1))` -/
def P12326731128017471283.Spec : Prop :=
  ∀ n, P12326731128017471283.a n = A155047 (n + 1)

end A155047

/-! ## A155047.P7851943448767368840

`A006530(A076272(n+1)*A347123(n+1))`
-/

namespace A155047.P7851943448767368840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076272 (n + 1) * A347123 (n + 1)).toNat

end

end A155047.P7851943448767368840

namespace A155047

/-- `A006530(A076272(n+1)*A347123(n+1))` -/
def P7851943448767368840.Spec : Prop :=
  ∀ n, P7851943448767368840.a n = A155047 (n + 1)

end A155047

/-!
# A155048: Primes p such that number of prime digits of prime(p) = number of nonprime digits of prime(p).

The programs for A155048, there is no canonical definition to state claims against.
-/

/-! ## A155048.P13970973211563356488

`p?[A000720(A156343(n+1))]`
-/

namespace A155048.P13970973211563356488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A156343 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155048.P13970973211563356488

/-! ## A155048.P11759095536745597315

`p?[A049084(p?[A156343(n+1)])]`
-/

namespace A155048.P11759095536745597315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155048.P11759095536745597315

/-! ## A155048.P5131742188931906304

`p?[A061395(p?[A156343(n+1)])]`
-/

namespace A155048.P5131742188931906304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155048.P5131742188931906304

/-! ## A155048.P9313629183371045265

`p?[A297109(p?[A156343(n+1)])]`
-/

namespace A155048.P9313629183371045265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155048.P9313629183371045265

/-! ## A155048.P16024735922583377819

`∩[A000040(n+1), A000720(A156343(n+1))]`
-/

namespace A155048.P16024735922583377819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A156343 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155048.P16024735922583377819

/-!
# A155049: Expansion of (1 + 5*x)/(1 - 13*x + 10*x^2).

The programs for A155049, the canonical program `A155049.P4793470909140058778` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155049 has offset 0).

The definition of A155049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x)/(1-13x+10x^2))` (program `A155049.P4793470909140058778`, by `A155049.P4793470909140058778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155049.P4793470909140058778

`ogf((1+5x)/(1-13x+10x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155049

/-- `ogf((1+5x)/(1-13x+10x^2))` -/
def P4793470909140058778.Spec : Prop :=
  ∀ n, P4793470909140058778.a n = A155049 n

theorem P4793470909140058778.correct : P4793470909140058778.Spec := by
  intro n
  simp only [A155049]

end A155049

/-! ## A155049.P8756675562383106243

`13*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A155049.P8756675562383106243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  13 * a (n - 1) - 10 * a (n - 2)

end

end A155049.P8756675562383106243

namespace A155049

/-- `13*a(n-1)-10*a(n-2)` -/
def P8756675562383106243.Spec : Prop :=
  ∀ n, P8756675562383106243.a n = A155049 n

end A155049

/-!
# A155050: A symmetric Catalan based triangle.

The programs for A155050, there is no canonical definition to state claims against.
-/

/-! ## A155050.P13762233759116996294

`A000108(A004197(n))`
-/

namespace A155050.P13762233759116996294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004197 n).toNat

end

end A155050.P13762233759116996294

/-! ## A155050.P2409603562475702181

`A153452(A152714(n))`
-/

namespace A155050.P2409603562475702181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A152714 n).toNat

end

end A155050.P2409603562475702181

/-! ## A155050.P12372003466097177507

`A008313(A004197(n)²)`
-/

namespace A155050.P12372003466097177507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A004197 n ^ 2).toNat

end

end A155050.P12372003466097177507

/-! ## A155050.P13185463915865944042

`A259992(A004197(n)²)`
-/

namespace A155050.P13185463915865944042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259992 (A004197 n ^ 2).toNat

end

end A155050.P13185463915865944042

/-! ## A155050.P231015896014828008

`A000108(log2(A144464(n)))`
-/

namespace A155050.P231015896014828008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat

end

end A155050.P231015896014828008

/-! ## A155050.P13655516417586363497

`A120588(A004197(n)+1)`
-/

namespace A155050.P13655516417586363497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A004197 n + 1).toNat

end

end A155050.P13655516417586363497

/-! ## A155050.P8493772381298750105

`A050144(A106255(n+1))`
-/

namespace A155050.P8493772381298750105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050144 (A106255 (n + 1)).toNat

end

end A155050.P8493772381298750105

/-! ## A155050.P15522174531443664906

`A008482(A168281(n+1))`
-/

namespace A155050.P15522174531443664906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A168281 (n + 1)).toNat

end

end A155050.P15522174531443664906

/-! ## A155050.P6031806277029385411

`A028303(2*A004197(n))`
-/

namespace A155050.P6031806277029385411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * A004197 n).toNat

end

end A155050.P6031806277029385411

/-! ## A155050.P7569140328131074701

`A000108(val(A152714(n), 3))`
-/

namespace A155050.P7569140328131074701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A152714 n).toNat 3)

end

end A155050.P7569140328131074701

/-!
# A155051: Expansion of c(x^2)*(1+x)/(1-x), c(x) the g.f. of A000108.

The programs for A155051, the canonical program `A155051.P17278447736844472372` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155051 has offset 0).

The definition of A155051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155051.P372780701428549568

`∑[A089408(or(1, n))]`
-/

namespace A155051.P372780701428549568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P372780701428549568

namespace A155051

/-- `∑[A089408(or(1, n))]` -/
def P372780701428549568.Spec : Prop :=
  ∀ n, P372780701428549568.a n = A155051 n

end A155051

/-! ## A155051.P17278447736844472372

`∑[A097331(or(1, n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155051

/-- `∑[A097331(or(1, n))]` -/
def P17278447736844472372.Spec : Prop :=
  ∀ n, P17278447736844472372.a n = A155051 n

theorem P17278447736844472372.correct : P17278447736844472372.Spec := by
  intro n
  simp only [A155051]

end A155051

/-! ## A155051.P8821438511741604544

`∑[A208355(abs(1-n))]`
-/

namespace A155051.P8821438511741604544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P8821438511741604544

namespace A155051

/-- `∑[A208355(abs(1-n))]` -/
def P8821438511741604544.Spec : Prop :=
  ∀ n, P8821438511741604544.a n = A155051 n

end A155051

/-! ## A155051.P14868254163862999267

`∑[A000108(floor(n/2))]`
-/

namespace A155051.P14868254163862999267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P14868254163862999267

namespace A155051

/-- `∑[A000108(floor(n/2))]` -/
def P14868254163862999267.Spec : Prop :=
  ∀ n, P14868254163862999267.a n = A155051 n

end A155051

/-! ## A155051.P13557315746720540434

`∑[A094876(3*(n+1))]`
-/

namespace A155051.P13557315746720540434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094876 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P13557315746720540434

namespace A155051

/-- `∑[A094876(3*(n+1))]` -/
def P13557315746720540434.Spec : Prop :=
  ∀ n, P13557315746720540434.a n = A155051 n

end A155051

/-! ## A155051.P4072333671766732766

`∑[abs(Δ[A090192(n)])]+1`
-/

namespace A155051.P4072333671766732766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A155051.P4072333671766732766

namespace A155051

/-- `∑[abs(Δ[A090192(n)])]+1` -/
def P4072333671766732766.Spec : Prop :=
  ∀ n, P4072333671766732766.a n = A155051 n

end A155051

/-! ## A155051.P10540226693118551699

`∑[A120588(∑[(n+1)%2])]`
-/

namespace A155051.P10540226693118551699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P10540226693118551699

namespace A155051

/-- `∑[A120588(∑[(n+1)%2])]` -/
def P10540226693118551699.Spec : Prop :=
  ∀ n, P10540226693118551699.a n = A155051 n

end A155051

/-! ## A155051.P1199653690226221743

`∑[A120588(∑[1-n%2])]`
-/

namespace A155051.P1199653690226221743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P1199653690226221743

namespace A155051

/-- `∑[A120588(∑[1-n%2])]` -/
def P1199653690226221743.Spec : Prop :=
  ∀ n, P1199653690226221743.a n = A155051 n

end A155051

/-! ## A155051.P1216183891480444176

`∑[A120588(∑[and(1, n+1)])]`
-/

namespace A155051.P1216183891480444176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P1216183891480444176

namespace A155051

/-- `∑[A120588(∑[and(1, n+1)])]` -/
def P1216183891480444176.Spec : Prop :=
  ∀ n, P1216183891480444176.a n = A155051 n

end A155051

/-! ## A155051.P157154997114509240

`∑[A089408(Δ[ceil(n²/2)])]`
-/

namespace A155051.P157154997114509240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P157154997114509240

namespace A155051

/-- `∑[A089408(Δ[ceil(n²/2)])]` -/
def P157154997114509240.Spec : Prop :=
  ∀ n, P157154997114509240.a n = A155051 n

end A155051

/-! ## A155051.P2658650254562511041

`A208355(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A155051.P2658650254562511041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208355 (n - 1) + a (n - 1)

end

end A155051.P2658650254562511041

namespace A155051

/-- `A208355(n-1)+a(n-1)` -/
def P2658650254562511041.Spec : Prop :=
  ∀ n, P2658650254562511041.a n = A155051 n

end A155051

/-! ## A155051.P6350144394076570791

`a(n-1)+A000108(ceil((n-1)/2))` with `a(0)=1`
-/

namespace A155051.P6350144394076570791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000108 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A155051.P6350144394076570791

namespace A155051

/-- `a(n-1)+A000108(ceil((n-1)/2))` -/
def P6350144394076570791.Spec : Prop :=
  ∀ n, P6350144394076570791.a n = A155051 n

end A155051

/-! ## A155051.P3292041655583366932

`∑[A097331(A109613(n))]`
-/

namespace A155051.P3292041655583366932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P3292041655583366932

namespace A155051

/-- `∑[A097331(A109613(n))]` -/
def P3292041655583366932.Spec : Prop :=
  ∀ n, P3292041655583366932.a n = A155051 n

end A155051

/-! ## A155051.P10033804181346326109

`∑[abs(A115140(A008619(n)))]`
-/

namespace A155051.P10033804181346326109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (A008619 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P10033804181346326109

namespace A155051

/-- `∑[abs(A115140(A008619(n)))]` -/
def P10033804181346326109.Spec : Prop :=
  ∀ n, P10033804181346326109.a n = A155051 n

end A155051

/-! ## A155051.P14921831460919608364

`∑[A120588(A004526(n)+1)]`
-/

namespace A155051.P14921831460919608364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P14921831460919608364

namespace A155051

/-- `∑[A120588(A004526(n)+1)]` -/
def P14921831460919608364.Spec : Prop :=
  ∀ n, P14921831460919608364.a n = A155051 n

end A155051

/-! ## A155051.P15602883275125838684

`∑[A097331(A052928(n)+1)]`
-/

namespace A155051.P15602883275125838684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A052928 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P15602883275125838684

namespace A155051

/-- `∑[A097331(A052928(n)+1)]` -/
def P15602883275125838684.Spec : Prop :=
  ∀ n, P15602883275125838684.a n = A155051 n

end A155051

/-! ## A155051.P3794930242963320983

`∑[gcd(A097331(n), A126120(n))]`
-/

namespace A155051.P3794930242963320983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P3794930242963320983

namespace A155051

/-- `∑[gcd(A097331(n), A126120(n))]` -/
def P3794930242963320983.Spec : Prop :=
  ∀ n, (P3794930242963320983.a n : ℤ) = A155051 n

end A155051

/-! ## A155051.P6733715074482089691

`∑[A120588(∑[A000035(n+1)])]`
-/

namespace A155051.P6733715074482089691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P6733715074482089691

namespace A155051

/-- `∑[A120588(∑[A000035(n+1)])]` -/
def P6733715074482089691.Spec : Prop :=
  ∀ n, P6733715074482089691.a n = A155051 n

end A155051

/-! ## A155051.P2512000909748290855

`∑[A120588(∑[1-A000035(n)])]`
-/

namespace A155051.P2512000909748290855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P2512000909748290855

namespace A155051

/-- `∑[A120588(∑[1-A000035(n)])]` -/
def P2512000909748290855.Spec : Prop :=
  ∀ n, P2512000909748290855.a n = A155051 n

end A155051

/-! ## A155051.P7912126324648579545

`∑[gcd(A105523(n+1), A105523(n))]`
-/

namespace A155051.P7912126324648579545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105523 (n + 1)) (A105523 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P7912126324648579545

namespace A155051

/-- `∑[gcd(A105523(n+1), A105523(n))]` -/
def P7912126324648579545.Spec : Prop :=
  ∀ n, (P7912126324648579545.a n : ℤ) = A155051 n

end A155051

/-!
# A155052: Image of symmetric Catalan based triangle A155050 under ((1+x)/(1-x),x)^{-1}.

The programs for A155052, there is no canonical definition to state claims against.
-/

/-! ## A155052.P5527607910975718944

`A001227(A155971(n))*A097807(n)`
-/

namespace A155052.P5527607910975718944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A155971 n).toNat * A097807 n

end

end A155052.P5527607910975718944

/-! ## A155052.P1153724990586483208

`A097807(n)*A122586(A045912(n))`
-/

namespace A155052.P1153724990586483208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A122586 (A045912 n).toNat

end

end A155052.P1153724990586483208

/-! ## A155052.P9799664047623580844

`A097807(n)*A140356(A152717(n))`
-/

namespace A155052.P9799664047623580844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A140356 (A152717 n).toNat

end

end A155052.P9799664047623580844

/-! ## A155052.P7218651620141990651

`A040001(A273712(n))*A097807(n)`
-/

namespace A155052.P7218651620141990651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A273712 n).toNat * A097807 n

end

end A155052.P7218651620141990651

/-! ## A155052.P10894003463565305123

`A097807(n)*A309863(A152714(n))`
-/

namespace A155052.P10894003463565305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A309863 (A152714 n).toNat

end

end A155052.P10894003463565305123

/-!
# A155053: Primes n with nonprime smallest digit of prime(n).

The programs for A155053, there is no canonical definition to state claims against.
-/

/-! ## A155053.P13113511966211910453

`p?[A000720(A154981(n+1))]`
-/

namespace A155053.P13113511966211910453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155053.P13113511966211910453

/-! ## A155053.P10683038834670982173

`p?[A058933(p?[A154981(n+1)])]`
-/

namespace A155053.P10683038834670982173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155053.P10683038834670982173

/-! ## A155053.P17375017823662608614

`p?[A061395(p?[A154981(n+1)])]`
-/

namespace A155053.P17375017823662608614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155053.P17375017823662608614

/-! ## A155053.P11479804839672843047

`p?[A065770(p?[A154981(n+1)])]`
-/

namespace A155053.P11479804839672843047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155053.P11479804839672843047

/-! ## A155053.P3428906115019476153

`∩[A000040(n+1), A000720(A154981(n+1))]`
-/

namespace A155053.P3428906115019476153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154981 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155053.P3428906115019476153

/-!
# A155054: Primes p such that (number of prime digits of prime(p)) < (number of nonprime digits of prime(p)).

The programs for A155054, the canonical program `A155054.P1451719256099670011` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155054 has offset 1).

The definition of A155054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155054.P1451719256099670011

`p?[A000720(A154386(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A155054

/-- `p?[A000720(A154386(n+1))]` -/
def P1451719256099670011.Spec : Prop :=
  ∀ n, P1451719256099670011.a n = A155054 (n + 1)

theorem P1451719256099670011.correct : P1451719256099670011.Spec := by
  intro n
  simp only [A155054, Nat.add_sub_cancel]

end A155054

/-! ## A155054.P9172629535070666912

`p?[A003963(p?[A154386(n+1)])]`
-/

namespace A155054.P9172629535070666912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155054.P9172629535070666912

namespace A155054

/-- `p?[A003963(p?[A154386(n+1)])]` -/
def P9172629535070666912.Spec : Prop :=
  ∀ n, P9172629535070666912.a n = A155054 (n + 1)

end A155054

/-! ## A155054.P7538118486073090595

`p?[A026233(p?[A154386(n+1)])]`
-/

namespace A155054.P7538118486073090595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155054.P7538118486073090595

namespace A155054

/-- `p?[A026233(p?[A154386(n+1)])]` -/
def P7538118486073090595.Spec : Prop :=
  ∀ n, P7538118486073090595.a n = A155054 (n + 1)

end A155054

/-! ## A155054.P14558023117014704512

`p?[A049084(p?[A154386(n+1)])]`
-/

namespace A155054.P14558023117014704512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155054.P14558023117014704512

namespace A155054

/-- `p?[A049084(p?[A154386(n+1)])]` -/
def P14558023117014704512.Spec : Prop :=
  ∀ n, P14558023117014704512.a n = A155054 (n + 1)

end A155054

/-!
# A155055: Primes without positive even digits.

The programs for A155055, the canonical program `A155055.P6362800158186461931` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155055 has offset 1).

The definition of A155055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155055.P15797668927892167868

`∩[A386336(n+1), A386355(n+1)]`
-/

namespace A155055.P15797668927892167868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P15797668927892167868

namespace A155055

/-- `∩[A386336(n+1), A386355(n+1)]` -/
def P15797668927892167868.Spec : Prop :=
  ∀ n, (P15797668927892167868.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P6362800158186461931

`∩[A386337(n+1), A386348(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155055

/-- `∩[A386337(n+1), A386348(n+1)]` -/
def P6362800158186461931.Spec : Prop :=
  ∀ n, (P6362800158186461931.a n : ℤ) = A155055 (n + 1)

theorem P6362800158186461931.correct : P6362800158186461931.Spec := by
  intro n
  simp only [A155055, Nat.add_sub_cancel]

end A155055

/-! ## A155055.P4197069659665406326

`∩[A386338(n+1), A386346(n+1)]`
-/

namespace A155055.P4197069659665406326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P4197069659665406326

namespace A155055

/-- `∩[A386338(n+1), A386346(n+1)]` -/
def P4197069659665406326.Spec : Prop :=
  ∀ n, (P4197069659665406326.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P718098408535023076

`∩[A038616(n+1), A168501(n+1)]`
-/

namespace A155055.P718098408535023076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P718098408535023076

namespace A155055

/-- `∩[A038616(n+1), A168501(n+1)]` -/
def P718098408535023076.Spec : Prop :=
  ∀ n, (P718098408535023076.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P7326404827414531062

`∩[A168501(n+1), A386338(n+1)]`
-/

namespace A155055.P7326404827414531062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P7326404827414531062

namespace A155055

/-- `∩[A168501(n+1), A386338(n+1)]` -/
def P7326404827414531062.Spec : Prop :=
  ∀ n, (P7326404827414531062.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P13576676558289126824

`∩[A168501(n+1), A386348(n+1)]`
-/

namespace A155055.P13576676558289126824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P13576676558289126824

namespace A155055

/-- `∩[A168501(n+1), A386348(n+1)]` -/
def P13576676558289126824.Spec : Prop :=
  ∀ n, (P13576676558289126824.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P11766529540127508297

`∩[A168501(n+1), A386355(n+1)]`
-/

namespace A155055.P11766529540127508297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155055.P11766529540127508297

namespace A155055

/-- `∩[A168501(n+1), A386355(n+1)]` -/
def P11766529540127508297.Spec : Prop :=
  ∀ n, (P11766529540127508297.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P4721693138944177211

`p?[record[A107128(n)]]`
-/

namespace A155055.P4721693138944177211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155055.P4721693138944177211

namespace A155055

/-- `p?[record[A107128(n)]]` -/
def P4721693138944177211.Spec : Prop :=
  ∀ n, P4721693138944177211.a n = A155055 (n + 1)

end A155055

/-! ## A155055.P3134674720485896731

`p?[eq[0, A001613(n)]]`
-/

namespace A155055.P3134674720485896731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155055.P3134674720485896731

namespace A155055

/-- `p?[eq[0, A001613(n)]]` -/
def P3134674720485896731.Spec : Prop :=
  ∀ n, (P3134674720485896731.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P9142624437967742013

`p?[record[A121759(n+1)]]`
-/

namespace A155055.P9142624437967742013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121759 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155055.P9142624437967742013

namespace A155055

/-- `p?[record[A121759(n+1)]]` -/
def P9142624437967742013.Spec : Prop :=
  ∀ n, P9142624437967742013.a n = A155055 (n + 1)

end A155055

/-! ## A155055.P7787643741760989645

`p?[gcd(2*n, A230101(n))]`
-/

namespace A155055.P7787643741760989645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A230101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155055.P7787643741760989645

namespace A155055

/-- `p?[gcd(2*n, A230101(n))]` -/
def P7787643741760989645.Spec : Prop :=
  ∀ n, (P7787643741760989645.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P10555731402807511496

`p?[n*and(1, A051801(n))]`
-/

namespace A155055.P10555731402807511496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A051801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155055.P10555731402807511496

namespace A155055

/-- `p?[n*and(1, A051801(n))]` -/
def P10555731402807511496.Spec : Prop :=
  ∀ n, P10555731402807511496.a n = A155055 (n + 1)

end A155055

/-! ## A155055.P5067188240365544008

`eq[A007918(n), A107128(n)]`
-/

namespace A155055.P5067188240365544008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P5067188240365544008

namespace A155055

/-- `eq[A007918(n), A107128(n)]` -/
def P5067188240365544008.Spec : Prop :=
  ∀ n, (P5067188240365544008.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P7683158022042152969

`eq[A062584(n), A107128(n)]`
-/

namespace A155055.P7683158022042152969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P7683158022042152969

namespace A155055

/-- `eq[A062584(n), A107128(n)]` -/
def P7683158022042152969.Spec : Prop :=
  ∀ n, (P7683158022042152969.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P12186355006309182191

`eq[A064502(n), A107128(n)]`
-/

namespace A155055.P12186355006309182191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P12186355006309182191

namespace A155055

/-- `eq[A064502(n), A107128(n)]` -/
def P12186355006309182191.Spec : Prop :=
  ∀ n, (P12186355006309182191.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P464386252128745641

`eq[A084413(n), A107128(n)]`
-/

namespace A155055.P464386252128745641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P464386252128745641

namespace A155055

/-- `eq[A084413(n), A107128(n)]` -/
def P464386252128745641.Spec : Prop :=
  ∀ n, (P464386252128745641.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P14578207688408701299

`eq[A107128(n), A272476(n)]`
-/

namespace A155055.P14578207688408701299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P14578207688408701299

namespace A155055

/-- `eq[A107128(n), A272476(n)]` -/
def P14578207688408701299.Spec : Prop :=
  ∀ n, (P14578207688408701299.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P8399517975234281713

`eq[A038700(n+1), A107128(n)]`
-/

namespace A155055.P8399517975234281713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P8399517975234281713

namespace A155055

/-- `eq[A038700(n+1), A107128(n)]` -/
def P8399517975234281713.Spec : Prop :=
  ∀ n, (P8399517975234281713.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P12625632441306718785

`eq[A093868(n+1), A107128(n)]`
-/

namespace A155055.P12625632441306718785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P12625632441306718785

namespace A155055

/-- `eq[A093868(n+1), A107128(n)]` -/
def P12625632441306718785.Spec : Prop :=
  ∀ n, (P12625632441306718785.a n : ℤ) = A155055 (n + 1)

end A155055

/-! ## A155055.P15701121043066904734

`eq[A107128(n), A295609(n)]`
-/

namespace A155055.P15701121043066904734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155055.P15701121043066904734

namespace A155055

/-- `eq[A107128(n), A295609(n)]` -/
def P15701121043066904734.Spec : Prop :=
  ∀ n, (P15701121043066904734.a n : ℤ) = A155055 (n + 1)

end A155055

/-!
# A155056: Primes p such that number of prime digits of prime(p) > number of nonprime digits of prime(p).

The programs for A155056, there is no canonical definition to state claims against.
-/

/-! ## A155056.P9049495237741231475

`p?[A000720(A154385(n+1))]`
-/

namespace A155056.P9049495237741231475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155056.P9049495237741231475

/-! ## A155056.P8429708979305899081

`p?[A003963(A154385(n+2))]`
-/

namespace A155056.P8429708979305899081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A154385 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155056.P8429708979305899081

/-! ## A155056.P4172507726140225151

`p?[record[A055396(A085557(n+1))]]`
-/

namespace A155056.P4172507726140225151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A085557 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155056.P4172507726140225151

/-! ## A155056.P780366393082550832

`p?[A055396(p?[A085557(n+1)])]`
-/

namespace A155056.P780366393082550832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155056.P780366393082550832

/-! ## A155056.P16961271985192830005

`p?[A049084(p?[A154385(n+1)])]`
-/

namespace A155056.P16961271985192830005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155056.P16961271985192830005

/-!
# A155058: Primes with odd largest digit.

The programs for A155058, the canonical program `A155058.P1638704524620935071` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155058 has offset 1).

The definition of A155058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155058.P2592617263333639727

`p?[n*A004185(n)%2]`
-/

namespace A155058.P2592617263333639727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A004185 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P2592617263333639727

namespace A155058

/-- `p?[n*A004185(n)%2]` -/
def P2592617263333639727.Spec : Prop :=
  ∀ n, P2592617263333639727.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P4985896276605475640

`p?[n*A047842(n)%2]`
-/

namespace A155058.P4985896276605475640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A047842 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P4985896276605475640

namespace A155058

/-- `p?[n*A047842(n)%2]` -/
def P4985896276605475640.Spec : Prop :=
  ∀ n, P4985896276605475640.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P1638704524620935071

`p?[n*A054055(n)%2]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A155058

/-- `p?[n*A054055(n)%2]` -/
def P1638704524620935071.Spec : Prop :=
  ∀ n, P1638704524620935071.a n = A155058 (n + 1)

theorem P1638704524620935071.correct : P1638704524620935071.Spec := by
  intro n
  simp only [A155058, Nat.add_sub_cancel]

end A155058

/-! ## A155058.P2798341852500610039

`p?[n*A328447(n)%2]`
-/

namespace A155058.P2798341852500610039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A328447 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P2798341852500610039

namespace A155058

/-- `p?[n*A328447(n)%2]` -/
def P2798341852500610039.Spec : Prop :=
  ∀ n, P2798341852500610039.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P2047209885754189101

`p?[(n+1)*gcd(2, A180410(n+1))]`
-/

namespace A155058.P2047209885754189101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A180410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155058.P2047209885754189101

namespace A155058

/-- `p?[(n+1)*gcd(2, A180410(n+1))]` -/
def P2047209885754189101.Spec : Prop :=
  ∀ n, (P2047209885754189101.a n : ℤ) = A155058 (n + 1)

end A155058

/-! ## A155058.P17150923451317766130

`p?[n*A000035(A004185(n))]`
-/

namespace A155058.P17150923451317766130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A004185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P17150923451317766130

namespace A155058

/-- `p?[n*A000035(A004185(n))]` -/
def P17150923451317766130.Spec : Prop :=
  ∀ n, P17150923451317766130.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P3865297430867408733

`p?[n*A000035(A328447(n))]`
-/

namespace A155058.P3865297430867408733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A328447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P3865297430867408733

namespace A155058

/-- `p?[n*A000035(A328447(n))]` -/
def P3865297430867408733.Spec : Prop :=
  ∀ n, P3865297430867408733.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P10096781031981117113

`record[A014963((n+1)*A054055(n+3)%2+2)]`
-/

namespace A155058.P10096781031981117113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1 : ℤ) * Int.tmod (A054055 (n + 3)) 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155058.P10096781031981117113

namespace A155058

/-- `record[A014963((n+1)*A054055(n+3)%2+2)]` -/
def P10096781031981117113.Spec : Prop :=
  ∀ n, P10096781031981117113.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P1978056544838814846

`p?[n*A055399(9*(A004185(n)+1))]`
-/

namespace A155058.P1978056544838814846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055399 (9 * (A004185 n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P1978056544838814846

namespace A155058

/-- `p?[n*A055399(9*(A004185(n)+1))]` -/
def P1978056544838814846.Spec : Prop :=
  ∀ n, P1978056544838814846.a n = A155058 (n + 1)

end A155058

/-! ## A155058.P15404261944076951534

`p?[n*A244992(A113581(n))]`
-/

namespace A155058.P15404261944076951534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244992 (A113581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P15404261944076951534

namespace A155058

/-- `p?[n*A244992(A113581(n))]` -/
def P15404261944076951534.Spec : Prop :=
  ∀ n, P15404261944076951534.a n = A155058 (n + 1)

end A155058

/-!
# A155067: First differences of A031368.

The programs for A155067, the canonical program `A155067.P7765073929489632747` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155067 has offset 1).

The definition of A155067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031131, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155067.P7667970174479900096

`A001223(2*(n+1)-1)+A001223(2*(n+1))`
-/

namespace A155067.P7667970174479900096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1) - 1) + A001223 (2 * (n + 1))

end

end A155067.P7667970174479900096

namespace A155067

/-- `A001223(2*(n+1)-1)+A001223(2*(n+1))` -/
def P7667970174479900096.Spec : Prop :=
  ∀ n, P7667970174479900096.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P2543406805912783041

`A031368(n+2)-A031368(n+1)`
-/

namespace A155067.P2543406805912783041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 2) - A031368 (n + 1)

end

end A155067.P2543406805912783041

namespace A155067

/-- `A031368(n+2)-A031368(n+1)` -/
def P2543406805912783041.Spec : Prop :=
  ∀ n, P2543406805912783041.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P7765073929489632747

`A031131(2*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155067

/-- `A031131(2*n+1)` -/
def P7765073929489632747.Spec : Prop :=
  ∀ n, P7765073929489632747.a n = A155067 (n + 1)

theorem P7765073929489632747.correct : P7765073929489632747.Spec := by
  intro n
  simp only [A155067, Nat.add_sub_cancel]

end A155067

/-! ## A155067.P14328924838743380349

`Δ[A109723(n)-A109722(n)]`
-/

namespace A155067.P14328924838743380349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A109722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155067.P14328924838743380349

namespace A155067

/-- `Δ[A109723(n)-A109722(n)]` -/
def P14328924838743380349.Spec : Prop :=
  ∀ n, P14328924838743380349.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P7149847801776113104

`A088680(n+1)+A078584(n+1)`
-/

namespace A155067.P7149847801776113104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + A078584 (n + 1)

end

end A155067.P7149847801776113104

namespace A155067

/-- `A088680(n+1)+A078584(n+1)` -/
def P7149847801776113104.Spec : Prop :=
  ∀ n, P7149847801776113104.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P11395275714919953886

`A031215(n+1)-A135275(n+1)`
-/

namespace A155067.P11395275714919953886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A135275 (n + 1)

end

end A155067.P11395275714919953886

namespace A155067

/-- `A031215(n+1)-A135275(n+1)` -/
def P11395275714919953886.Spec : Prop :=
  ∀ n, P11395275714919953886.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P4115040697100576721

`A135274(n+1)-A031215(n+1)`
-/

namespace A155067.P4115040697100576721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135274 (n + 1) - A031215 (n + 1)

end

end A155067.P4115040697100576721

namespace A155067

/-- `A135274(n+1)-A031215(n+1)` -/
def P4115040697100576721.Spec : Prop :=
  ∀ n, P4115040697100576721.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P55401926600927440

`A092163(n+1)-A100479(n+1)`
-/

namespace A155067.P55401926600927440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A100479 (n + 1)

end

end A155067.P55401926600927440

namespace A155067

/-- `A092163(n+1)-A100479(n+1)` -/
def P55401926600927440.Spec : Prop :=
  ∀ n, P55401926600927440.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P16441755207885018882

`A155750(n+1)-A110854(n+1)`
-/

namespace A155067.P16441755207885018882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A110854 (n + 1)

end

end A155067.P16441755207885018882

namespace A155067

/-- `A155750(n+1)-A110854(n+1)` -/
def P16441755207885018882.Spec : Prop :=
  ∀ n, P16441755207885018882.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P8320510488337166094

`A078584(n+1)+A001223(2*(n+1))`
-/

namespace A155067.P8320510488337166094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) + A001223 (2 * (n + 1))

end

end A155067.P8320510488337166094

namespace A155067

/-- `A078584(n+1)+A001223(2*(n+1))` -/
def P8320510488337166094.Spec : Prop :=
  ∀ n, P8320510488337166094.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P11828432468890531742

`A088680(n+1)+A001223(2*n+1)`
-/

namespace A155067.P11828432468890531742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + A001223 (2 * n + 1)

end

end A155067.P11828432468890531742

namespace A155067

/-- `A088680(n+1)+A001223(2*n+1)` -/
def P11828432468890531742.Spec : Prop :=
  ∀ n, P11828432468890531742.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P13915114235240851591

`Δ[A007504(2*n+1)-A007504(2*n)]`
-/

namespace A155067.P13915114235240851591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1) - A007504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155067.P13915114235240851591

namespace A155067

/-- `Δ[A007504(2*n+1)-A007504(2*n)]` -/
def P13915114235240851591.Spec : Prop :=
  ∀ n, P13915114235240851591.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P18418952060728839639

`Δ[A031368(n+1)]`
-/

namespace A155067.P18418952060728839639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155067.P18418952060728839639

namespace A155067

/-- `Δ[A031368(n+1)]` -/
def P18418952060728839639.Spec : Prop :=
  ∀ n, P18418952060728839639.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P6962794907044422202

`Δ[p?[A324812(n+1)]]`
-/

namespace A155067.P6962794907044422202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155067.P6962794907044422202

namespace A155067

/-- `Δ[p?[A324812(n+1)]]` -/
def P6962794907044422202.Spec : Prop :=
  ∀ n, P6962794907044422202.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P565772848389888747

`Δ[A156037(Δ[n²])]`
-/

namespace A155067.P565772848389888747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155067.P565772848389888747

namespace A155067

/-- `Δ[A156037(Δ[n²])]` -/
def P565772848389888747.Spec : Prop :=
  ∀ n, P565772848389888747.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P7409129853802379864

`A075527(Δ[n²])`
-/

namespace A155067.P7409129853802379864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155067.P7409129853802379864

namespace A155067

/-- `A075527(Δ[n²])` -/
def P7409129853802379864.Spec : Prop :=
  ∀ n, P7409129853802379864.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P12565718817712613698

`filter[A075527(2*n+1), A022932(#)]`
-/

namespace A155067.P12565718817712613698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A155067.P12565718817712613698

namespace A155067

/-- `filter[A075527(2*n+1), A022932(#)]` -/
def P12565718817712613698.Spec : Prop :=
  ∀ n, P12565718817712613698.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P9787737423309288014

`filter[A075527(2*n+1), A093521(#)]`
-/

namespace A155067.P9787737423309288014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A155067.P9787737423309288014

namespace A155067

/-- `filter[A075527(2*n+1), A093521(#)]` -/
def P9787737423309288014.Spec : Prop :=
  ∀ n, P9787737423309288014.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P2929867883317878944

`A092163(n+1)-A001043(2*n+1)`
-/

namespace A155067.P2929867883317878944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A001043 (2 * n + 1)

end

end A155067.P2929867883317878944

namespace A155067

/-- `A092163(n+1)-A001043(2*n+1)` -/
def P2929867883317878944.Spec : Prop :=
  ∀ n, P2929867883317878944.a n = A155067 (n + 1)

end A155067

/-! ## A155067.P14344958069357780840

`A001043(2*(n+1))-A100479(n+1)`
-/

namespace A155067.P14344958069357780840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * (n + 1)) - A100479 (n + 1)

end

end A155067.P14344958069357780840

namespace A155067

/-- `A001043(2*(n+1))-A100479(n+1)` -/
def P14344958069357780840.Spec : Prop :=
  ∀ n, P14344958069357780840.a n = A155067 (n + 1)

end A155067

/-!
# A155069: Expansion of (3 - x - sqrt(1 - 6*x + x^2))/2.

The programs for A155069, the canonical program `A155069.P2113503701719238828` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155069 has offset 0).

The definition of A155069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155069.P2113503701719238828

`abs(A086456(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A155069

/-- `abs(A086456(n))` -/
def P2113503701719238828.Spec : Prop :=
  ∀ n, P2113503701719238828.a n = A155069 n

theorem P2113503701719238828.correct : P2113503701719238828.Spec := by
  intro n
  simp only [A155069]

end A155069

/-! ## A155069.P12397299769504777866

`abs(A103137(n))`
-/

namespace A155069.P12397299769504777866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 n|

end

end A155069.P12397299769504777866

namespace A155069

/-- `abs(A103137(n))` -/
def P12397299769504777866.Spec : Prop :=
  ∀ n, P12397299769504777866.a n = A155069 n

end A155069

/-! ## A155069.P17868668910477472506

`A132372(∑[n])`
-/

namespace A155069.P17868668910477472506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155069.P17868668910477472506

namespace A155069

/-- `A132372(∑[n])` -/
def P17868668910477472506.Spec : Prop :=
  ∀ n, P17868668910477472506.a n = A155069 n

end A155069

/-! ## A155069.P4350552904832797468

`A073150(C(n, 2))`
-/

namespace A155069.P4350552904832797468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073150 (Nat.choose n 2)

end

end A155069.P4350552904832797468

namespace A155069

/-- `A073150(C(n, 2))` -/
def P4350552904832797468.Spec : Prop :=
  ∀ n, P4350552904832797468.a n = A155069 n

end A155069

/-! ## A155069.P17133261264159479675

`A080247(C(n, 2))`
-/

namespace A155069.P17133261264159479675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (Nat.choose n 2)

end

end A155069.P17133261264159479675

namespace A155069

/-- `A080247(C(n, 2))` -/
def P17133261264159479675.Spec : Prop :=
  ∀ n, P17133261264159479675.a n = A155069 n

end A155069

/-! ## A155069.P6273700682288374222

`A133367(C(n, 2))`
-/

namespace A155069.P6273700682288374222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133367 (Nat.choose n 2)

end

end A155069.P6273700682288374222

namespace A155069

/-- `A133367(C(n, 2))` -/
def P6273700682288374222.Spec : Prop :=
  ∀ n, P6273700682288374222.a n = A155069 n

end A155069

/-! ## A155069.P15458895794920231689

`A351385(C(n, 2))`
-/

namespace A155069.P15458895794920231689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 (Nat.choose n 2)

end

end A155069.P15458895794920231689

namespace A155069

/-- `A351385(C(n, 2))` -/
def P15458895794920231689.Spec : Prop :=
  ∀ n, P15458895794920231689.a n = A155069 n

end A155069

/-! ## A155069.P8846269698871902704

`abs(A103136(∑[n]))`
-/

namespace A155069.P8846269698871902704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103136 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A155069.P8846269698871902704

namespace A155069

/-- `abs(A103136(∑[n]))` -/
def P8846269698871902704.Spec : Prop :=
  ∀ n, P8846269698871902704.a n = A155069 n

end A155069

/-! ## A155069.P13281707513190194803

`abs(A112477(∑[n]))`
-/

namespace A155069.P13281707513190194803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112477 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A155069.P13281707513190194803

namespace A155069

/-- `abs(A112477(∑[n]))` -/
def P13281707513190194803.Spec : Prop :=
  ∀ n, P13281707513190194803.a n = A155069 n

end A155069

/-! ## A155069.P12372484929808813762

`A033878(∑[n]+n)`
-/

namespace A155069.P12372484929808813762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A155069.P12372484929808813762

namespace A155069

/-- `A033878(∑[n]+n)` -/
def P12372484929808813762.Spec : Prop :=
  ∀ n, P12372484929808813762.a n = A155069 n

end A155069

/-! ## A155069.P17808342003097296717

`A106579(∑[n]+n)`
-/

namespace A155069.P17808342003097296717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A155069.P17808342003097296717

namespace A155069

/-- `A106579(∑[n]+n)` -/
def P17808342003097296717.Spec : Prop :=
  ∀ n, P17808342003097296717.a n = A155069 n

end A155069

/-! ## A155069.P11229735120734992606

`A073150(∑[n]-n)`
-/

namespace A155069.P11229735120734992606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073150 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A155069.P11229735120734992606

namespace A155069

/-- `A073150(∑[n]-n)` -/
def P11229735120734992606.Spec : Prop :=
  ∀ n, P11229735120734992606.a n = A155069 n

end A155069

/-! ## A155069.P11149494702220251153

`A080247(∑[n]-n)`
-/

namespace A155069.P11149494702220251153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A155069.P11149494702220251153

namespace A155069

/-- `A080247(∑[n]-n)` -/
def P11149494702220251153.Spec : Prop :=
  ∀ n, P11149494702220251153.a n = A155069 n

end A155069

/-! ## A155069.P2779031670211153198

`A133367(∑[n]-n)`
-/

namespace A155069.P2779031670211153198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133367 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A155069.P2779031670211153198

namespace A155069

/-- `A133367(∑[n]-n)` -/
def P2779031670211153198.Spec : Prop :=
  ∀ n, P2779031670211153198.a n = A155069 n

end A155069

/-! ## A155069.P1770430572457893015

`A351385(∑[n]-n)`
-/

namespace A155069.P1770430572457893015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A155069.P1770430572457893015

namespace A155069

/-- `A351385(∑[n]-n)` -/
def P1770430572457893015.Spec : Prop :=
  ∀ n, P1770430572457893015.a n = A155069 n

end A155069

/-! ## A155069.P11409007934514596379

`abs(A080245(∑[n]-n))`
-/

namespace A155069.P11409007934514596379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 (∑ j ∈ Finset.range (n + 1), f1 j - n)|

end

end A155069.P11409007934514596379

namespace A155069

/-- `abs(A080245(∑[n]-n))` -/
def P11409007934514596379.Spec : Prop :=
  ∀ n, P11409007934514596379.a n = A155069 n

end A155069

/-! ## A155069.P3042577074707955454

`A006318((n-1)%(n+1))`
-/

namespace A155069.P3042577074707955454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A155069.P3042577074707955454

namespace A155069

/-- `A006318((n-1)%(n+1))` -/
def P3042577074707955454.Spec : Prop :=
  ∀ n, P3042577074707955454.a n = A155069 n

end A155069

/-! ## A155069.P3953955854944300733

`A006318(log2(A011782(n)))`
-/

namespace A155069.P3953955854944300733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A155069.P3953955854944300733

namespace A155069

/-- `A006318(log2(A011782(n)))` -/
def P3953955854944300733.Spec : Prop :=
  ∀ n, P3953955854944300733.a n = A155069 n

end A155069

/-! ## A155069.P4947881431282097982

`A033877(A179865(n+1))`
-/

namespace A155069.P4947881431282097982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A179865 (n + 1)).toNat

end

end A155069.P4947881431282097982

namespace A155069

/-- `A033877(A179865(n+1))` -/
def P4947881431282097982.Spec : Prop :=
  ∀ n, P4947881431282097982.a n = A155069 n

end A155069

/-! ## A155069.P4426922137260114718

`A033877(A212342(n)+1)`
-/

namespace A155069.P4426922137260114718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A212342 n + 1).toNat

end

end A155069.P4426922137260114718

namespace A155069

/-- `A033877(A212342(n)+1)` -/
def P4426922137260114718.Spec : Prop :=
  ∀ n, P4426922137260114718.a n = A155069 n

end A155069

/-!
# A155070: Primes with nonprime largest digit.

The programs for A155070, the canonical program `A155070.P18385671949588106025` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155070 has offset 1).

The definition of A155070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155070.P18385671949588106025

`p?[(n+1)*A049076(A262401(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A155070

/-- `p?[(n+1)*A049076(A262401(n+1))]` -/
def P18385671949588106025.Spec : Prop :=
  ∀ n, P18385671949588106025.a n = A155070 (n + 1)

theorem P18385671949588106025.correct : P18385671949588106025.Spec := by
  intro n
  simp only [A155070, Nat.add_sub_cancel]

end A155070

/-! ## A155070.P18387620414791504127

`A020631(A292512(n+1)+∑{e}[n+1, #])`
-/

namespace A155070.P18387620414791504127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020631 (A292512 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A155070.P18387620414791504127

namespace A155070

/-- `A020631(A292512(n+1)+∑{e}[n+1, #])` -/
def P18387620414791504127.Spec : Prop :=
  ∀ n, P18387620414791504127.a n = A155070 (n + 1)

end A155070

/-! ## A155070.P7899155275433344245

`A020631(A292512(n+1)+A001222(n+1))`
-/

namespace A155070.P7899155275433344245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020631 (A292512 (n + 1) + A001222 (n + 1)).toNat

end

end A155070.P7899155275433344245

namespace A155070

/-- `A020631(A292512(n+1)+A001222(n+1))` -/
def P7899155275433344245.Spec : Prop :=
  ∀ n, P7899155275433344245.a n = A155070 (n + 1)

end A155070

/-!
# A155071: Primes with two odd digits.

The programs for A155071, the canonical program `A155071.P6054164492315748015` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155071 has offset 1).

The definition of A155071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155071.P6054164492315748015

`p?[A294601(n+2)+1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155071

/-- `p?[A294601(n+2)+1]` -/
def P6054164492315748015.Spec : Prop :=
  ∀ n, P6054164492315748015.a n = A155071 (n + 1)

theorem P6054164492315748015.correct : P6054164492315748015.Spec := by
  intro n
  simp only [A155071, Nat.add_sub_cancel]

end A155071

/-! ## A155071.P15154265746729897105

`p?[eq[2, A196564(n)]]`
-/

namespace A155071.P15154265746729897105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155071.P15154265746729897105

namespace A155071

/-- `p?[eq[2, A196564(n)]]` -/
def P15154265746729897105.Spec : Prop :=
  ∀ n, (P15154265746729897105.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P8777423831709323513

`eq[A005127(n), A196564(n)]`
-/

namespace A155071.P8777423831709323513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P8777423831709323513

namespace A155071

/-- `eq[A005127(n), A196564(n)]` -/
def P8777423831709323513.Spec : Prop :=
  ∀ n, (P8777423831709323513.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P3345140509403174992

`eq[A005128(n), A196564(n)]`
-/

namespace A155071.P3345140509403174992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P3345140509403174992

namespace A155071

/-- `eq[A005128(n), A196564(n)]` -/
def P3345140509403174992.Spec : Prop :=
  ∀ n, (P3345140509403174992.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P5335753040079953036

`eq[A062830(n), A196564(n)]`
-/

namespace A155071.P5335753040079953036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P5335753040079953036

namespace A155071

/-- `eq[A062830(n), A196564(n)]` -/
def P5335753040079953036.Spec : Prop :=
  ∀ n, (P5335753040079953036.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P11067555102017281488

`eq[A196564(n), A322366(n)]`
-/

namespace A155071.P11067555102017281488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P11067555102017281488

namespace A155071

/-- `eq[A196564(n), A322366(n)]` -/
def P11067555102017281488.Spec : Prop :=
  ∀ n, (P11067555102017281488.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P17891022345932828568

`eq[A196564(n), A381516(n)]`
-/

namespace A155071.P17891022345932828568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P17891022345932828568

namespace A155071

/-- `eq[A196564(n), A381516(n)]` -/
def P17891022345932828568.Spec : Prop :=
  ∀ n, (P17891022345932828568.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P18106657861714969571

`eq[A196564(n), A341982(n+2)]`
-/

namespace A155071.P18106657861714969571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P18106657861714969571

namespace A155071

/-- `eq[A196564(n), A341982(n+2)]` -/
def P18106657861714969571.Spec : Prop :=
  ∀ n, (P18106657861714969571.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P9513552106985129931

`eq[A007012(n), A196564(n)]`
-/

namespace A155071.P9513552106985129931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155071.P9513552106985129931

namespace A155071

/-- `eq[A007012(n), A196564(n)]` -/
def P9513552106985129931.Spec : Prop :=
  ∀ n, (P9513552106985129931.a n : ℤ) = A155071 (n + 1)

end A155071

/-! ## A155071.P16621755570926862182

`∩[A119449(n+1), A168044(n+1)]`
-/

namespace A155071.P16621755570926862182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155071.P16621755570926862182

namespace A155071

/-- `∩[A119449(n+1), A168044(n+1)]` -/
def P16621755570926862182.Spec : Prop :=
  ∀ n, (P16621755570926862182.a n : ℤ) = A155071 (n + 1)

end A155071

/-!
# A155072: Positive integers n such that the base-2 MR-expansion of 1/n is periodic with period (n-1)/4.

The programs for A155072, there is no canonical definition to state claims against.
-/

/-! ## A155072.P2219143079319222593

`4*eq[n, A003573(n)]+1`
-/

namespace A155072.P2219143079319222593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155072.P2219143079319222593

/-! ## A155072.P14081541192414139219

`A016813(eq[n, A019567(n)])`
-/

namespace A155072.P14081541192414139219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155072.P14081541192414139219

/-! ## A155072.P3911889738401578855

`filter[A115591(n+1), A229062(#)]`
-/

namespace A155072.P3911889738401578855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155072.P3911889738401578855

/-! ## A155072.P14395210602057841636

`filter[A115591(n+1), A290098(#)]`
-/

namespace A155072.P14395210602057841636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A155072.P14395210602057841636

/-! ## A155072.P13309377964169411663

`filter[A115591(n+1), A347870(#)]`
-/

namespace A155072.P13309377964169411663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A155072.P13309377964169411663

/-! ## A155072.P4273276786742413705

`filter[A115591(n+1), A353812(#)]`
-/

namespace A155072.P4273276786742413705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A155072.P4273276786742413705

/-! ## A155072.P17376962077255459269

`filter[A115591(n+1), A353814(#)]`
-/

namespace A155072.P17376962077255459269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155072.P17376962077255459269

/-! ## A155072.P1539400939618989409

`filter[A115591(n+1), A354030(#)]`
-/

namespace A155072.P1539400939618989409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A155072.P1539400939618989409

/-! ## A155072.P16252127318668780456

`filter[A115591(n+1), A354031(#)]`
-/

namespace A155072.P16252127318668780456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354031 (f1 j).toNat = 1) n)

end

end A155072.P16252127318668780456

/-! ## A155072.P5756807710857007401

`filter[A115591(n+1), A354035(#)]`
-/

namespace A155072.P5756807710857007401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A155072.P5756807710857007401

/-! ## A155072.P6808307472684699569

`filter[A115591(n+1), A358678(#)]`
-/

namespace A155072.P6808307472684699569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A155072.P6808307472684699569

/-! ## A155072.P3820853202812382916

`filter[A115591(n+1), A359150(#)]`
-/

namespace A155072.P3820853202812382916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A155072.P3820853202812382916

/-! ## A155072.P16024504173968820922

`∩[A007519(n+1), A115591(n+1)]`
-/

namespace A155072.P16024504173968820922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P16024504173968820922

/-! ## A155072.P8857892709069292135

`∩[A045390(n+1), A115591(n+1)]`
-/

namespace A155072.P8857892709069292135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P8857892709069292135

/-! ## A155072.P10627517519409727027

`∩[A070179(n+1), A115591(n+1)]`
-/

namespace A155072.P10627517519409727027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P10627517519409727027

/-! ## A155072.P2525383683395423754

`∩[A115591(n+1), A163185(n+1)]`
-/

namespace A155072.P2525383683395423754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P2525383683395423754

/-! ## A155072.P11171565323796995191

`∩[A115591(n+1), A172280(n+1)]`
-/

namespace A155072.P11171565323796995191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P11171565323796995191

/-! ## A155072.P13247972389697652151

`∩[A115591(n+1), A209544(n+1)]`
-/

namespace A155072.P13247972389697652151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P13247972389697652151

/-! ## A155072.P11207079278153336582

`∩[A115591(n+1), A293394(n+1)]`
-/

namespace A155072.P11207079278153336582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155072.P11207079278153336582

/-!
# A155073: Expansion of (1 + 6*x)/(1 - 12*x - 8*x^2).

The programs for A155073, the canonical program `A155073.P2585561034897763579` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155073 has offset 0).

The definition of A155073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x)/(1-12x-8x^2))` (program `A155073.P2585561034897763579`, by `A155073.P2585561034897763579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155073.P2585561034897763579

`ogf((1+6x)/(1-12x-8x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155073

/-- `ogf((1+6x)/(1-12x-8x^2))` -/
def P2585561034897763579.Spec : Prop :=
  ∀ n, P2585561034897763579.a n = A155073 n

theorem P2585561034897763579.correct : P2585561034897763579.Spec := by
  intro n
  simp only [A155073]

end A155073

/-! ## A155073.P12648720908405123156

`(A180029(n)+A135030(n))*A000079(n)`
-/

namespace A155073.P12648720908405123156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * A000079 n

end

end A155073.P12648720908405123156

namespace A155073

/-- `(A180029(n)+A135030(n))*A000079(n)` -/
def P12648720908405123156.Spec : Prop :=
  ∀ n, P12648720908405123156.a n = A155073 n

end A155073

/-! ## A155073.P11928373601244708290

`(A180029(n)+A135030(n))*∑[A011782(n)]`
-/

namespace A155073.P11928373601244708290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155073.P11928373601244708290

namespace A155073

/-- `(A180029(n)+A135030(n))*∑[A011782(n)]` -/
def P11928373601244708290.Spec : Prop :=
  ∀ n, P11928373601244708290.a n = A155073 n

end A155073

/-! ## A155073.P13145447863865489618

`(A180029(n)+A135030(n))*Δ[A000051(n)]`
-/

namespace A155073.P13145447863865489618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * (f1 (n + 1) - f1 n)

end

end A155073.P13145447863865489618

namespace A155073

/-- `(A180029(n)+A135030(n))*Δ[A000051(n)]` -/
def P13145447863865489618.Spec : Prop :=
  ∀ n, P13145447863865489618.a n = A155073 n

end A155073

/-! ## A155073.P4140034420072095766

`(A180029(n)+A135030(n))*Δ[A000225(n)]`
-/

namespace A155073.P4140034420072095766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * (f1 (n + 1) - f1 n)

end

end A155073.P4140034420072095766

namespace A155073

/-- `(A180029(n)+A135030(n))*Δ[A000225(n)]` -/
def P4140034420072095766.Spec : Prop :=
  ∀ n, P4140034420072095766.a n = A155073 n

end A155073

/-! ## A155073.P2778688597455287599

`(A180029(n)+A135030(n))*record[A130321(n)]`
-/

namespace A155073.P2778688597455287599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155073.P2778688597455287599

namespace A155073

/-- `(A180029(n)+A135030(n))*record[A130321(n)]` -/
def P2778688597455287599.Spec : Prop :=
  ∀ n, P2778688597455287599.a n = A155073 n

end A155073

/-! ## A155073.P3388131462030952781

`(A180029(n)+A135030(n))*A011782(n+1)`
-/

namespace A155073.P3388131462030952781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * A011782 (n + 1)

end

end A155073.P3388131462030952781

namespace A155073

/-- `(A180029(n)+A135030(n))*A011782(n+1)` -/
def P3388131462030952781.Spec : Prop :=
  ∀ n, P3388131462030952781.a n = A155073 n

end A155073

/-! ## A155073.P13094965280250784943

`(A180029(n)+A135030(n))*A060546(2*n)`
-/

namespace A155073.P13094965280250784943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * A060546 (2 * n)

end

end A155073.P13094965280250784943

namespace A155073

/-- `(A180029(n)+A135030(n))*A060546(2*n)` -/
def P13094965280250784943.Spec : Prop :=
  ∀ n, P13094965280250784943.a n = A155073 n

end A155073

/-! ## A155073.P14051637412413720662

`(A180029(n)+A135030(n))*record[A057728(n+1)]`
-/

namespace A155073.P14051637412413720662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155073.P14051637412413720662

namespace A155073

/-- `(A180029(n)+A135030(n))*record[A057728(n+1)]` -/
def P14051637412413720662.Spec : Prop :=
  ∀ n, P14051637412413720662.a n = A155073 n

end A155073

/-! ## A155073.P3878145217418515397

`(A180029(n)+A135030(n))*A057728(A167499(n+5)+2)`
-/

namespace A155073.P3878145217418515397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180029 n + A135030 n) * A057728 (A167499 (n + 5) + 2).toNat

end

end A155073.P3878145217418515397

namespace A155073

/-- `(A180029(n)+A135030(n))*A057728(A167499(n+5)+2)` -/
def P3878145217418515397.Spec : Prop :=
  ∀ n, P3878145217418515397.a n = A155073 n

end A155073

/-!
# A155074: Primes that appear as a substring in the concatenation of primes.

The programs for A155074, there is no canonical definition to state claims against.
-/

/-! ## A155074.P772295005644903542

`A165450(A060526(n+1)%A165448(n))`
-/

namespace A155074.P772295005644903542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165450 (Int.tmod (A060526 (n + 1)) (A165448 n)).toNat

end

end A155074.P772295005644903542

/-!
# A155075: Primes with one digit used exactly twice, all others digits distinct.

The programs for A155075, there is no canonical definition to state claims against.
-/

/-! ## A155075.P6000573391071355480

`p?[n*A107846(n)]`
-/

namespace A155075.P6000573391071355480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155075.P6000573391071355480

/-! ## A155075.P6111166233276501113

`eq[A107846(n), A143862(n)]`
-/

namespace A155075.P6111166233276501113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P6111166233276501113

/-! ## A155075.P4341330958773299911

`eq[A107846(n), A217668(n)]`
-/

namespace A155075.P4341330958773299911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P4341330958773299911

/-! ## A155075.P6679076055635776384

`eq[A107846(n), A317086(n)]`
-/

namespace A155075.P6679076055635776384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P6679076055635776384

/-! ## A155075.P4167482015636434368

`eq[A107846(n), A327642(n)]`
-/

namespace A155075.P4167482015636434368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P4167482015636434368

/-! ## A155075.P17206519677556583007

`eq[A107846(n), A395097(n)]`
-/

namespace A155075.P17206519677556583007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P17206519677556583007

/-! ## A155075.P16142812311083462738

`eq[A107846(n), A331991(n+1)]`
-/

namespace A155075.P16142812311083462738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P16142812311083462738

/-! ## A155075.P5586318977991994893

`eq[1, A105700(n)*A107846(n)]`
-/

namespace A155075.P5586318977991994893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n * A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155075.P5586318977991994893

/-! ## A155075.P11098515832359945064

`eq[A107846(n), A236937(n)]`
-/

namespace A155075.P11098515832359945064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P11098515832359945064

/-! ## A155075.P14813755366226609136

`eq[A107846(n), A236938(n)]`
-/

namespace A155075.P14813755366226609136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155075.P14813755366226609136

/-!
# A155076: Triangle read by rows. The main diagonal is positive. If rowindex >= 2*columnindex then -1 else 0.

The programs for A155076, the canonical program `A155076.P9504009048706138996` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155076 has offset 1).

The definition of A155076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155076.P15100865999725915170

`ceil(sqrt(8*(n+1)))%2-char[comp[∑[n-1]]]`
-/

namespace A155076.P15100865999725915170
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A155076.P15100865999725915170

namespace A155076

/-- `ceil(sqrt(8*(n+1)))%2-char[comp[∑[n-1]]]` -/
def P15100865999725915170.Spec : Prop :=
  ∀ n, P15100865999725915170.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P3085004235073116517

`floor(acot(A111505(n)-1))`
-/

namespace A155076.P3085004235073116517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A111505 n - 1 : ℝ)⌋

end

end A155076.P3085004235073116517

namespace A155076

/-- `floor(acot(A111505(n)-1))` -/
def P3085004235073116517.Spec : Prop :=
  ∀ n, P3085004235073116517.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P16140523141870189631

`floor(acot(A246187(n)-1))`
-/

namespace A155076.P16140523141870189631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A246187 n - 1 : ℝ)⌋

end

end A155076.P16140523141870189631

namespace A155076

/-- `floor(acot(A246187(n)-1))` -/
def P16140523141870189631.Spec : Prop :=
  ∀ n, P16140523141870189631.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P9757794692372471062

`C(2, A085383(n+1))-1`
-/

namespace A155076.P9757794692372471062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A085383 (n + 1)).toNat : ℤ) - 1

end

end A155076.P9757794692372471062

namespace A155076

/-- `C(2, A085383(n+1))-1` -/
def P9757794692372471062.Spec : Prop :=
  ∀ n, P9757794692372471062.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P9504009048706138996

`A101688(n)-A023532(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155076

/-- `A101688(n)-A023532(n)` -/
def P9504009048706138996.Spec : Prop :=
  ∀ n, P9504009048706138996.a n = A155076 (n + 1)

theorem P9504009048706138996.correct : P9504009048706138996.Spec := by
  intro n
  simp only [A155076, Nat.add_sub_cancel]

end A155076

/-! ## A155076.P5889433139255751459

`A008683(11-Δ[A049581(n)])`
-/

namespace A155076.P5889433139255751459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (11 - (f1 (n + 1) - f1 n)).toNat

end

end A155076.P5889433139255751459

namespace A155076

/-- `A008683(11-Δ[A049581(n)])` -/
def P5889433139255751459.Spec : Prop :=
  ∀ n, P5889433139255751459.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P16326162796343218996

`A004736(n+2)-A237447(n+1)`
-/

namespace A155076.P16326162796343218996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 2) - A237447 (n + 1)

end

end A155076.P16326162796343218996

namespace A155076

/-- `A004736(n+2)-A237447(n+1)` -/
def P16326162796343218996.Spec : Prop :=
  ∀ n, P16326162796343218996.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P13266770858806459076

`A117569(A210535(n+1)²-1)`
-/

namespace A155076.P13266770858806459076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A210535 (n + 1) ^ 2 - 1).toNat

end

end A155076.P13266770858806459076

namespace A155076

/-- `A117569(A210535(n+1)²-1)` -/
def P13266770858806459076.Spec : Prop :=
  ∀ n, P13266770858806459076.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P6626808401935626201

`floor(acot(A105868(n)-1))`
-/

namespace A155076.P6626808401935626201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A105868 n - 1 : ℝ)⌋

end

end A155076.P6626808401935626201

namespace A155076

/-- `floor(acot(A105868(n)-1))` -/
def P6626808401935626201.Spec : Prop :=
  ∀ n, P6626808401935626201.a n = A155076 (n + 1)

end A155076

/-! ## A155076.P271169999917725103

`A134824(A137629(n+1))`
-/

namespace A155076.P271169999917725103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A137629 (n + 1)).toNat

end

end A155076.P271169999917725103

namespace A155076

/-- `A134824(A137629(n+1))` -/
def P271169999917725103.Spec : Prop :=
  ∀ n, P271169999917725103.a n = A155076 (n + 1)

end A155076

/-!
# A155077: Matrix inverse of A155076.

The programs for A155077, there is no canonical definition to state claims against.
-/

/-! ## A155077.P8285258246505147779

`∑{e}[A225466(A026794(n+1)), #]`
-/

namespace A155077.P8285258246505147779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225466 (A026794 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A155077.P8285258246505147779

/-! ## A155077.P7326124555685397234

`floor(ratio[A131507(A156353(n+1))])`
-/

namespace A155077.P7326124555685397234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A156353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A155077.P7326124555685397234

/-! ## A155077.P7320497287986059464

`A265404(A184180(n+1))`
-/

namespace A155077.P7320497287986059464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 (A184180 (n + 1)).toNat

end

end A155077.P7320497287986059464

/-! ## A155077.P10170954673888763950

`A362716(A105147(n+1))`
-/

namespace A155077.P10170954673888763950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362716 (A105147 (n + 1)).toNat

end

end A155077.P10170954673888763950

/-! ## A155077.P6111433439974696183

`A124768(A026794(n+1)^A124780(n+3))`
-/

namespace A155077.P6111433439974696183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (SequenceMachineLib.roundAway ((A026794 (n + 1) : ℚ) ^ (A124780 (n + 3) : ℤ))).toNat

end

end A155077.P6111433439974696183

/-!
# A155081: Primes p such that the largest digit of the concatenation of p and the p-th prime is a prime.

The programs for A155081, there is no canonical definition to state claims against.
-/

/-! ## A155081.P17041388761545720301

`A000040(lt[A005047(n+1), A061035(2*(n+2))])`
-/

namespace A155081.P17041388761545720301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155081.P17041388761545720301

/-! ## A155081.P4930943651469968384

`A000040(lt[A070106(n+1), A047999(n+4)])`
-/

namespace A155081.P4930943651469968384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155081.P4930943651469968384

/-! ## A155081.P6717343084590272231

`p?[∑[A001221(A191706(n+1))]]`
-/

namespace A155081.P6717343084590272231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A191706 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155081.P6717343084590272231

/-! ## A155081.P10018690655490034168

`p?[∑[A165073(A172033(3*n+1))]]`
-/

namespace A155081.P10018690655490034168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 (A172033 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155081.P10018690655490034168

/-! ## A155081.P16842013580278481767

`p?[lt[A196395(n+1), A196359(n+1)]]`
-/

namespace A155081.P16842013580278481767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196395 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196359 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155081.P16842013580278481767

/-!
# A155084: A Catalan transform of [x^n](1/(1-2x-2x^2)) (A002605).

The programs for A155084, there is no canonical definition to state claims against.
-/

/-! ## A155084.P10203420971847583488

`A005843(A176280(n))-A087944(n)`
-/

namespace A155084.P10203420971847583488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A176280 n).toNat - A087944 n

end

end A155084.P10203420971847583488

/-! ## A155084.P6973578312752032726

`∑[∑[A289441(A138185(3*n+2))]]`
-/

namespace A155084.P6973578312752032726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A138185 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155084.P6973578312752032726

/-! ## A155084.P7628788212870633863

`A006012(n)+A002265(A002697(n))`
-/

namespace A155084.P7628788212870633863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n + A002265 (A002697 n).toNat

end

end A155084.P7628788212870633863

/-!
# A155085: a(n) = n + sum of divisors of n.

The programs for A155085, the canonical program `A155085.P3282672389110014595` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155085 has offset 1).

The definition of A155085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155085.P3282672389110014595

`A000203(n+1)+n+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155085

/-- `A000203(n+1)+n+1` -/
def P3282672389110014595.Spec : Prop :=
  ∀ n, P3282672389110014595.a n = A155085 (n + 1)

theorem P3282672389110014595.correct : P3282672389110014595.Spec := by
  intro n
  simp only [A155085, Nat.add_sub_cancel]

end A155085

/-! ## A155085.P10784076381386496145

`A001065(n+1)+2*(n+1)`
-/

namespace A155085.P10784076381386496145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (2 * (n + 1) : ℤ)

end

end A155085.P10784076381386496145

namespace A155085

/-- `A001065(n+1)+2*(n+1)` -/
def P10784076381386496145.Spec : Prop :=
  ∀ n, P10784076381386496145.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P16198665891288426086

`∑{d}[n+1, #]+1+n`
-/

namespace A155085.P16198665891288426086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + 1 + n

end

end A155085.P16198665891288426086

namespace A155085

/-- `∑{d}[n+1, #]+1+n` -/
def P16198665891288426086.Spec : Prop :=
  ∀ n, (P16198665891288426086.a n : ℤ) = A155085 (n + 1)

end A155085

/-! ## A155085.P9295621008965749318

`A088580(n+1)+n`
-/

namespace A155085.P9295621008965749318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (n : ℤ)

end

end A155085.P9295621008965749318

namespace A155085

/-- `A088580(n+1)+n` -/
def P9295621008965749318.Spec : Prop :=
  ∀ n, P9295621008965749318.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P12821610763551830317

`∑{d}[n+1, A121048(#)]`
-/

namespace A155085.P12821610763551830317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121048 d

end

end A155085.P12821610763551830317

namespace A155085

/-- `∑{d}[n+1, A121048(#)]` -/
def P12821610763551830317.Spec : Prop :=
  ∀ n, P12821610763551830317.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P17379851565910189041

`∑[A340793(n+1)+1]`
-/

namespace A155085.P17379851565910189041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155085.P17379851565910189041

namespace A155085

/-- `∑[A340793(n+1)+1]` -/
def P17379851565910189041.Spec : Prop :=
  ∀ n, P17379851565910189041.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P5151554754413647367

`Δ[A160664(n)]+1+n`
-/

namespace A155085.P5151554754413647367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A155085.P5151554754413647367

namespace A155085

/-- `Δ[A160664(n)]+1+n` -/
def P5151554754413647367.Spec : Prop :=
  ∀ n, P5151554754413647367.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P511101502940645167

`A039653(n+1)+2+n`
-/

namespace A155085.P511101502940645167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 2 + (n : ℤ)

end

end A155085.P511101502940645167

namespace A155085

/-- `A039653(n+1)+2+n` -/
def P511101502940645167.Spec : Prop :=
  ∀ n, P511101502940645167.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P13258469014151898416

`A224880(n+1)-(n+1)`
-/

namespace A155085.P13258469014151898416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - (n + 1 : ℤ)

end

end A155085.P13258469014151898416

namespace A155085

/-- `A224880(n+1)-(n+1)` -/
def P13258469014151898416.Spec : Prop :=
  ∀ n, P13258469014151898416.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P11230403635406349651

`A387001(n+1)-(n+2)`
-/

namespace A155085.P11230403635406349651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387001 (n + 1) - (n + 2 : ℤ)

end

end A155085.P11230403635406349651

namespace A155085

/-- `A387001(n+1)-(n+2)` -/
def P11230403635406349651.Spec : Prop :=
  ∀ n, P11230403635406349651.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P17089898937185193696

`ceil(sqrt(A258774(n+1))+n)`
-/

namespace A155085.P17089898937185193696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258774 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A155085.P17089898937185193696

namespace A155085

/-- `ceil(sqrt(A258774(n+1))+n)` -/
def P17089898937185193696.Spec : Prop :=
  ∀ n, P17089898937185193696.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P2078939270207165729

`ceil(sqrt(A258974(n+1))+n)`
-/

namespace A155085.P2078939270207165729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258974 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A155085.P2078939270207165729

namespace A155085

/-- `ceil(sqrt(A258974(n+1))+n)` -/
def P2078939270207165729.Spec : Prop :=
  ∀ n, P2078939270207165729.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P11915278005967369576

`A245092(Δ[n²])+n+1`
-/

namespace A155085.P11915278005967369576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A155085.P11915278005967369576

namespace A155085

/-- `A245092(Δ[n²])+n+1` -/
def P11915278005967369576.Spec : Prop :=
  ∀ n, P11915278005967369576.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P10425932959431017675

`∑{d}[n+1, A000010(#)+#]`
-/

namespace A155085.P10425932959431017675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d + (d : ℤ))

end

end A155085.P10425932959431017675

namespace A155085

/-- `∑{d}[n+1, A000010(#)+#]` -/
def P10425932959431017675.Spec : Prop :=
  ∀ n, P10425932959431017675.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P10938452337040224819

`abs(A143348(n+1))+1+n`
-/

namespace A155085.P10938452337040224819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| + 1 + (n : ℤ)

end

end A155085.P10938452337040224819

namespace A155085

/-- `abs(A143348(n+1))+1+n` -/
def P10938452337040224819.Spec : Prop :=
  ∀ n, P10938452337040224819.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P11499598440881676586

`sqrt(A072861(n+1))+1+n`
-/

namespace A155085.P11499598440881676586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A155085.P11499598440881676586

namespace A155085

/-- `sqrt(A072861(n+1))+1+n` -/
def P11499598440881676586.Spec : Prop :=
  ∀ n, P11499598440881676586.a n = (A155085 (n + 1) : ℝ)

end A155085

/-! ## A155085.P9979598492270912850

`∑[n+2]-A024816(n+1)`
-/

namespace A155085.P9979598492270912850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024816 (n + 1)

end

end A155085.P9979598492270912850

namespace A155085

/-- `∑[n+2]-A024816(n+1)` -/
def P9979598492270912850.Spec : Prop :=
  ∀ n, P9979598492270912850.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P4632427236466316073

`ceil(sqrt(sqrt(A259308(n+1)))+n)`
-/

namespace A155085.P4632427236466316073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A259308 (n + 1) : ℝ)) + (n : ℝ)⌉

end

end A155085.P4632427236466316073

namespace A155085

/-- `ceil(sqrt(sqrt(A259308(n+1)))+n)` -/
def P4632427236466316073.Spec : Prop :=
  ∀ n, P4632427236466316073.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P3255148791673597686

`A245092(2*n+1)+1+n`
-/

namespace A155085.P3255148791673597686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + 1 + (n : ℤ)

end

end A155085.P3255148791673597686

namespace A155085

/-- `A245092(2*n+1)+1+n` -/
def P3255148791673597686.Spec : Prop :=
  ∀ n, P3255148791673597686.a n = A155085 (n + 1)

end A155085

/-! ## A155085.P12137743988965226149

`A033880(n+1)+3*(n+1)`
-/

namespace A155085.P12137743988965226149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (3 * (n + 1) : ℤ)

end

end A155085.P12137743988965226149

namespace A155085

/-- `A033880(n+1)+3*(n+1)` -/
def P12137743988965226149.Spec : Prop :=
  ∀ n, P12137743988965226149.a n = A155085 (n + 1)

end A155085

/-!
# A155086: Numbers k such that k^2 == -1 (mod 13).

The programs for A155086, the canonical program `A155086.P10332282708764724611` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155086 has offset 1).

The definition of A155086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155086.P10332282708764724611

`a(n-2)+13` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155086

/-- `a(n-2)+13` -/
def P10332282708764724611.Spec : Prop :=
  ∀ n, (P10332282708764724611.a n : ℤ) = A155086 (n + 1)

theorem P10332282708764724611.correct : P10332282708764724611.Spec := by
  intro n
  simp only [A155086, Nat.add_sub_cancel]

end A155086

/-! ## A155086.P5040725562248088355

`13*(n+1-1/2)/2-7*(-1)^(n+1)/4`
-/

namespace A155086.P5040725562248088355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  13 * ((n + 1 : ℚ) - (1 : ℚ) / 2) / 2 - (7 * (-1) ^ (n + 1) : ℚ) / 4

end

end A155086.P5040725562248088355

namespace A155086

/-- `13*(n+1-1/2)/2-7*(-1)^(n+1)/4` -/
def P5040725562248088355.Spec : Prop :=
  ∀ n, P5040725562248088355.a n = (A155086 (n + 1) : ℚ)

theorem P5040725562248088355.correct : P5040725562248088355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A155086, Nat.add_sub_cancel, A155086.P5040725562248088355.a, A155086.P10332282708764724611.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A155086, Nat.add_sub_cancel, A155086.P5040725562248088355.a, A155086.P10332282708764724611.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155086

/-! ## A155086.P94623812984290407

`∑[13-a(n-1)]` with `a(0)=5, a(1)=3`
-/

namespace A155086.P94623812984290407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155086.P94623812984290407

namespace A155086

/-- `∑[13-a(n-1)]` -/
def P94623812984290407.Spec : Prop :=
  ∀ n, P94623812984290407.a n = A155086 (n + 1)

end A155086

/-! ## A155086.P13559700726758807575

`∑[∑[ogf((5+3x+5x^2)/(1+x))]]`
-/

namespace A155086.P13559700726758807575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155086.P13559700726758807575

namespace A155086

/-- `∑[∑[ogf((5+3x+5x^2)/(1+x))]]` -/
def P13559700726758807575.Spec : Prop :=
  ∀ n, P13559700726758807575.a n = A155086 (n + 1)

end A155086

/-! ## A155086.P2361058452513196187

`ogf((5+3x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A155086.P2361058452513196187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 5] [1, -1, -1, 1] n

end

end A155086.P2361058452513196187

namespace A155086

/-- `ogf((5+3x+5x^2)/(1-x-x^2+x^3))` -/
def P2361058452513196187.Spec : Prop :=
  ∀ n, P2361058452513196187.a n = A155086 (n + 1)

end A155086

/-! ## A155086.P2138047581417255977

`∑[A040433(n)%16]`
-/

namespace A155086.P2138047581417255977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040433 n) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155086.P2138047581417255977

namespace A155086

/-- `∑[A040433(n)%16]` -/
def P2138047581417255977.Spec : Prop :=
  ∀ n, P2138047581417255977.a n = A155086 (n + 1)

end A155086

/-! ## A155086.P8768077019012475702

`∑[A138261(a(n-1))]` with `a(0)=5`
-/

namespace A155086.P8768077019012475702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A138261 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155086.P8768077019012475702

namespace A155086

/-- `∑[A138261(a(n-1))]` -/
def P8768077019012475702.Spec : Prop :=
  ∀ n, P8768077019012475702.a n = A155086 (n + 1)

end A155086

/-!
# A155087: Primes p such that Omega(c(p)) is composite, where Omega(n) is the number of prime divisors of n counted with multiplicity (A001222) and c(n) is the n-th composite number (A002808).

The programs for A155087, there is no canonical definition to state claims against.
-/

/-! ## A155087.P16882734291036964858

`p?[A066246(A067028(n+1))]`
-/

namespace A155087.P16882734291036964858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A067028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155087.P16882734291036964858

/-! ## A155087.P12178454742704629119

`p?[n*A267679(A062502(n+1))]`
-/

namespace A155087.P12178454742704629119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A267679 (A062502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155087.P12178454742704629119

/-! ## A155087.P16261663576084030470

`eq[A107286(n), A267679(A062502(n+1))]`
-/

namespace A155087.P16261663576084030470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267679 (A062502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155087.P16261663576084030470

/-! ## A155087.P16884316172385218065

`lt[A277894(n), A277894(A062502(n+1))]`
-/

namespace A155087.P16884316172385218065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (A062502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155087.P16884316172385218065

/-! ## A155087.P5139914152044342459

`eq[A107286(A062502(n+1)), A289052(n+1)]`
-/

namespace A155087.P5139914152044342459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A062502 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155087.P5139914152044342459

/-!
# A155088: Numbers n such that n and prime(n) contain prime digits only.

The programs for A155088, there is no canonical definition to state claims against.
-/

/-! ## A155088.P6873300044941622983

`A000720(A167483(n+1))`
-/

namespace A155088.P6873300044941622983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A167483 (n + 1)).toNat

end

end A155088.P6873300044941622983

/-! ## A155088.P16718682077885544924

`A061395(p?[A167483(n+1)])`
-/

namespace A155088.P16718682077885544924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155088.P16718682077885544924

/-! ## A155088.P6457183089624718625

`A061395(or(1, A167483(n+1)))`
-/

namespace A155088.P6457183089624718625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A167483 (n + 1))).toNat

end

end A155088.P6457183089624718625

/-! ## A155088.P9768857953135253904

`∑{d}[A167483(n+1), A061395(#)]`
-/

namespace A155088.P9768857953135253904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A155088.P9768857953135253904

/-! ## A155088.P9027678557285977623

`A061395(∏{d}[A167483(n+1), #])`
-/

namespace A155088.P9027678557285977623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A155088.P9027678557285977623

/-!
# A155089: Primes p such that the largest digit of the concatenation of p and the p-th prime is either 1 or 9.

The programs for A155089, there is no canonical definition to state claims against.
-/

/-! ## A155089.P6051072843266732053

`A253969(lt[A337890(n+2), A358451(n+1)])`
-/

namespace A155089.P6051072843266732053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337890 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155089.P6051072843266732053

/-!
# A155090: Composites k such that composite(k) is odd.

The programs for A155090, there is no canonical definition to state claims against.
-/

/-! ## A155090.P2552287325712115959

`filter[A073432(n+1), A066247(#)]`
-/

namespace A155090.P2552287325712115959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A155090.P2552287325712115959

/-! ## A155090.P16493686909034620786

`filter[A073432(n+2), A005171(#)]`
-/

namespace A155090.P16493686909034620786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A155090.P16493686909034620786

/-! ## A155090.P5365545786271568992

`lt[A339579(n+1), A181923(n+1)]`
-/

namespace A155090.P5365545786271568992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155090.P5365545786271568992

/-! ## A155090.P11629413278567782279

`eq[A014237(n+1)%2, A055671(n)]`
-/

namespace A155090.P11629413278567782279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014237 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155090.P11629413278567782279

/-! ## A155090.P13833225075787570380

`∩[A002808(n+1), A073432(n+1)]`
-/

namespace A155090.P13833225075787570380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155090.P13833225075787570380

/-! ## A155090.P17470586928657299153

`∩[A018252(n+1), A073432(n+2)]`
-/

namespace A155090.P17470586928657299153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155090.P17470586928657299153

/-! ## A155090.P16044192164196861806

`∩[A073432(n+1), A141468(n+3)]`
-/

namespace A155090.P16044192164196861806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155090.P16044192164196861806

/-! ## A155090.P9232805185005925218

`∩[A018252(n+1), A047845(n+2)+n]`
-/

namespace A155090.P9232805185005925218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155090.P9232805185005925218

/-! ## A155090.P13531459811892964785

`∩[abs(2-A104275(n+1))+n, A018252(n+2)]`
-/

namespace A155090.P13531459811892964785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A104275 (n + 1)| + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155090.P13531459811892964785

/-! ## A155090.P8353745355535839159

`lt[3, A354187(n+1)^(A018252(n+2)%2)]+1`
-/

namespace A155090.P8353745355535839159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354187 (n + 1) : ℚ) ^ (Int.tmod (A018252 (n + 2)) 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A155090.P8353745355535839159

/-!
# A155091: Triangle read by rows. Signed version of A145362. Main diagonal positive, rest of the nonzero terms negative.

The programs for A155091, there is no canonical definition to state claims against.
-/

/-! ## A155091.P1510612243249663336

`(-(ceil(sqrt(8*n+9))%2))^(1-char[∑[n-1]])`
-/

namespace A155091.P1510612243249663336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod ⌈Real.sqrt (8 * n + 9 : ℝ)⌉ 2 : ℚ) ^ (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A155091.P1510612243249663336

/-! ## A155091.P14315718768852345291

`floor(1/Δ[A113413(n)])`
-/

namespace A155091.P14315718768852345291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A155091.P14315718768852345291

/-! ## A155091.P13186952979782308981

`floor(ratio[A309557(n)])-1`
-/

namespace A155091.P13186952979782308981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ - 1

end

end A155091.P13186952979782308981

/-! ## A155091.P7210523733881688157

`floor(Δ[sqrt(A053616(n+1))])`
-/

namespace A155091.P7210523733881688157
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053616 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A155091.P7210523733881688157

/-! ## A155091.P7515996566656607895

`floor(log2(ratio[A141429(n+1)]))`
-/

namespace A155091.P7515996566656607895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋

end

end A155091.P7515996566656607895

/-! ## A155091.P11059053809147144505

`floor(acot(1-A117362(n)²))`
-/

namespace A155091.P11059053809147144505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - A117362 n ^ 2 : ℝ)⌋

end

end A155091.P11059053809147144505

/-! ## A155091.P3075933136188108928

`floor(acot(Δ[A028276(n)]-1))`
-/

namespace A155091.P3075933136188108928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n - 1 : ℝ)⌋

end

end A155091.P3075933136188108928

/-! ## A155091.P9377947658003123513

`C(2, A331152(n+2))-1`
-/

namespace A155091.P9377947658003123513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A331152 (n + 2)).toNat : ℤ) - 1

end

end A155091.P9377947658003123513

/-! ## A155091.P9944997818738317039

`A134824(A113214(n))`
-/

namespace A155091.P9944997818738317039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A113214 n).toNat

end

end A155091.P9944997818738317039

/-! ## A155091.P18174463292575178035

`A155076(A278818(n+1))`
-/

namespace A155091.P18174463292575178035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155076 (A278818 (n + 1)).toNat

end

end A155091.P18174463292575178035

/-!
# A155092: Matrix inverse of A155091.

The programs for A155092, there is no canonical definition to state claims against.
-/

/-! ## A155092.P14581839409971876229

`A111660(2*A095133(n+1))`
-/

namespace A155092.P14581839409971876229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A095133 (n + 1)).toNat

end

end A155092.P14581839409971876229

/-! ## A155092.P15688256189975794195

`A095133(n+1)-A025466(A327805(n))`
-/

namespace A155092.P15688256189975794195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1) - A025466 (A327805 n).toNat

end

end A155092.P15688256189975794195

/-! ## A155092.P1323791485207859283

`A111660(A095133(n+1)+A095133(n+1))`
-/

namespace A155092.P1323791485207859283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A095133 (n + 1) + A095133 (n + 1)).toNat

end

end A155092.P1323791485207859283

/-! ## A155092.P10351103955059048242

`A295300(A095133(n+1)%A270339(n+4))`
-/

namespace A155092.P10351103955059048242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295300 (Int.tmod (A095133 (n + 1)) (A270339 (n + 4))).toNat

end

end A155092.P10351103955059048242

/-! ## A155092.P9619045681469168074

`A080686(A095133(n+1))^A001221(A016116(n))`
-/

namespace A155092.P9619045681469168074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080686 (A095133 (n + 1)).toNat : ℚ) ^ (A001221 (A016116 n).toNat : ℤ)

end

end A155092.P9619045681469168074

/-!
# A155093: Primes k such that the largest digit of the concatenation of k and the k-th prime is an even nonprime.

The programs for A155093, there is no canonical definition to state claims against.
-/

/-! ## A155093.P6552161532920154447

`A000040(lt[A376776(n+1), A257345(n)])`
-/

namespace A155093.P6552161532920154447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155093.P6552161532920154447

/-! ## A155093.P3191733174904149374

`A352442(xor(n, A279730(n+3)))`
-/

namespace A155093.P3191733174904149374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (Int.xor (n : ℤ) (A279730 (n + 3))).toNat

end

end A155093.P3191733174904149374

/-!
# A155095: Numbers k such that k^2 == -1 (mod 17).

The programs for A155095, the canonical program `A155095.P1620565032668509491` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155095 has offset 1).

The definition of A155095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155095.P1620565032668509491

`a(n-2)+17` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155095

/-- `a(n-2)+17` -/
def P1620565032668509491.Spec : Prop :=
  ∀ n, (P1620565032668509491.a n : ℤ) = A155095 (n + 1)

theorem P1620565032668509491.correct : P1620565032668509491.Spec := by
  intro n
  simp only [A155095, Nat.add_sub_cancel]

end A155095

/-! ## A155095.P8691994945553921935

`(34*(n+1)+(-1)^(n+1)-17)/4`
-/

namespace A155095.P8691994945553921935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((34 * (n + 1) : ℤ) + (-1) ^ (n + 1) - 17 : ℚ) / 4

end

end A155095.P8691994945553921935

namespace A155095

/-- `(34*(n+1)+(-1)^(n+1)-17)/4` -/
def P8691994945553921935.Spec : Prop :=
  ∀ n, P8691994945553921935.a n = (A155095 (n + 1) : ℚ)

theorem P8691994945553921935.correct : P8691994945553921935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A155095, Nat.add_sub_cancel, A155095.P8691994945553921935.a, A155095.P1620565032668509491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A155095, Nat.add_sub_cancel, A155095.P8691994945553921935.a, A155095.P1620565032668509491.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155095

/-! ## A155095.P3397228135874459497

`∑[n%2+8]-4`
-/

namespace A155095.P3397228135874459497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A155095.P3397228135874459497

namespace A155095

/-- `∑[n%2+8]-4` -/
def P3397228135874459497.Spec : Prop :=
  ∀ n, P3397228135874459497.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P4564460652469432841

`∑[10-gcd(2, n)]-4`
-/

namespace A155095.P4564460652469432841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A155095.P4564460652469432841

namespace A155095

/-- `∑[10-gcd(2, n)]-4` -/
def P4564460652469432841.Spec : Prop :=
  ∀ n, P4564460652469432841.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P4533694168193698339

`∑[and(1, n)+8]-4`
-/

namespace A155095.P4533694168193698339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A155095.P4533694168193698339

namespace A155095

/-- `∑[and(1, n)+8]-4` -/
def P4533694168193698339.Spec : Prop :=
  ∀ n, P4533694168193698339.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P16539757930460480672

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=9, a(2)=8`
-/

namespace A155095.P16539757930460480672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P16539757930460480672

namespace A155095

/-- `∑[abs(a(n-2))]` -/
def P16539757930460480672.Spec : Prop :=
  ∀ n, (P16539757930460480672.a n : ℤ) = A155095 (n + 1)

end A155095

/-! ## A155095.P13172328866948121065

`∑[17-a(n-1)]` with `a(0)=4, a(1)=9`
-/

namespace A155095.P13172328866948121065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n f1 =>
  17 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P13172328866948121065

namespace A155095

/-- `∑[17-a(n-1)]` -/
def P13172328866948121065.Spec : Prop :=
  ∀ n, P13172328866948121065.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P12709985037989177196

`17*n-a(n-1)` with `a(0)=4`
-/

namespace A155095.P12709985037989177196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (17 * n : ℤ) - a (n - 1)

end

end A155095.P12709985037989177196

namespace A155095

/-- `17*n-a(n-1)` -/
def P12709985037989177196.Spec : Prop :=
  ∀ n, P12709985037989177196.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P7890917865247705925

`∑[∑[ogf((4+9x+4x^2)/(1+x))]]`
-/

namespace A155095.P7890917865247705925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P7890917865247705925

namespace A155095

/-- `∑[∑[ogf((4+9x+4x^2)/(1+x))]]` -/
def P7890917865247705925.Spec : Prop :=
  ∀ n, P7890917865247705925.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P18189073189152004925

`ogf((4+9x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A155095.P18189073189152004925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, 4] [1, -1, -1, 1] n

end

end A155095.P18189073189152004925

namespace A155095

/-- `ogf((4+9x+4x^2)/(1-x-x^2+x^3))` -/
def P18189073189152004925.Spec : Prop :=
  ∀ n, P18189073189152004925.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P1387115819423341886

`ceil(lcm(4, 2*n+1)+n/2)`
-/

namespace A155095.P1387115819423341886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 4 (2 * n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A155095.P1387115819423341886

namespace A155095

/-- `ceil(lcm(4, 2*n+1)+n/2)` -/
def P1387115819423341886.Spec : Prop :=
  ∀ n, P1387115819423341886.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P5372453840974844150

`round(cosh(log(Δ[(3*n)²]-n-1)))`
-/

namespace A155095.P5372453840974844150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - 1 : ℝ)))

end

end A155095.P5372453840974844150

namespace A155095

/-- `round(cosh(log(Δ[(3*n)²]-n-1)))` -/
def P5372453840974844150.Spec : Prop :=
  ∀ n, P5372453840974844150.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P5652765169105712171

`∑[A109942(a(n-1))]` with `a(0)=4`
-/

namespace A155095.P5652765169105712171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A109942 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P5652765169105712171

namespace A155095

/-- `∑[A109942(a(n-1))]` -/
def P5652765169105712171.Spec : Prop :=
  ∀ n, P5652765169105712171.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P5936319628139926195

`∑[A116667(a(n-1))]` with `a(0)=4`
-/

namespace A155095.P5936319628139926195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A116667 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P5936319628139926195

namespace A155095

/-- `∑[A116667(a(n-1))]` -/
def P5936319628139926195.Spec : Prop :=
  ∀ n, P5936319628139926195.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P5901974075502993958

`∑[A231470(a(n-1))]` with `a(0)=4`
-/

namespace A155095.P5901974075502993958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A231470 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P5901974075502993958

namespace A155095

/-- `∑[A231470(a(n-1))]` -/
def P5901974075502993958.Spec : Prop :=
  ∀ n, P5901974075502993958.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P11605487285972290047

`∑[A340222(a(n-1))]` with `a(0)=4`
-/

namespace A155095.P11605487285972290047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A340222 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155095.P11605487285972290047

namespace A155095

/-- `∑[A340222(a(n-1))]` -/
def P11605487285972290047.Spec : Prop :=
  ∀ n, P11605487285972290047.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P14566930355262657454

`floor(A173512(n)+n/2)`
-/

namespace A155095.P14566930355262657454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173512 n : ℚ) + (n : ℚ) / 2⌋

end

end A155095.P14566930355262657454

namespace A155095

/-- `floor(A173512(n)+n/2)` -/
def P14566930355262657454.Spec : Prop :=
  ∀ n, P14566930355262657454.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P14310322296784233419

`ceil(A017113(n)+n/2)`
-/

namespace A155095.P14310322296784233419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017113 n : ℚ) + (n : ℚ) / 2⌉

end

end A155095.P14310322296784233419

namespace A155095

/-- `ceil(A017113(n)+n/2)` -/
def P14310322296784233419.Spec : Prop :=
  ∀ n, P14310322296784233419.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P4642705651366277824

`ceil((A051062(n)+n)/2)`
-/

namespace A155095.P4642705651366277824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051062 n + (n : ℤ) : ℚ) / 2⌉

end

end A155095.P4642705651366277824

namespace A155095

/-- `ceil((A051062(n)+n)/2)` -/
def P4642705651366277824.Spec : Prop :=
  ∀ n, P4642705651366277824.a n = A155095 (n + 1)

end A155095

/-! ## A155095.P12623541131244369571

`ceil(A017209(n)-n/2)`
-/

namespace A155095.P12623541131244369571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017209 n : ℚ) - (n : ℚ) / 2⌉

end

end A155095.P12623541131244369571

namespace A155095

/-- `ceil(A017209(n)-n/2)` -/
def P12623541131244369571.Spec : Prop :=
  ∀ n, P12623541131244369571.a n = A155095 (n + 1)

end A155095

/-!
# A155096: Numbers k such that k^2 == -1 (mod 29).

The programs for A155096, the canonical program `A155096.P17751544122654514715` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155096 has offset 1).

The definition of A155096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155096.P17751544122654514715

`a(n-2)+29` with `a(0)=12, a(1)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155096

/-- `a(n-2)+29` -/
def P17751544122654514715.Spec : Prop :=
  ∀ n, (P17751544122654514715.a n : ℤ) = A155096 (n + 1)

theorem P17751544122654514715.correct : P17751544122654514715.Spec := by
  intro n
  simp only [A155096, Nat.add_sub_cancel]

end A155096

/-! ## A155096.P14154940787833483959

`∑[29-a(n-1)]` with `a(0)=12, a(1)=5`
-/

namespace A155096.P14154940787833483959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 5] fun n f1 =>
  29 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155096.P14154940787833483959

namespace A155096

/-- `∑[29-a(n-1)]` -/
def P14154940787833483959.Spec : Prop :=
  ∀ n, P14154940787833483959.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P5616783256339759155

`29*n-a(n-1)` with `a(0)=12`
-/

namespace A155096.P5616783256339759155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  (29 * n : ℤ) - a (n - 1)

end

end A155096.P5616783256339759155

namespace A155096

/-- `29*n-a(n-1)` -/
def P5616783256339759155.Spec : Prop :=
  ∀ n, P5616783256339759155.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P12682787653913514076

`∑[xor(1, A040139(n)+1)]`
-/

namespace A155096.P12682787653913514076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A040139 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155096.P12682787653913514076

namespace A155096

/-- `∑[xor(1, A040139(n)+1)]` -/
def P12682787653913514076.Spec : Prop :=
  ∀ n, P12682787653913514076.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P15974746732529572820

`∑[A040135(n)]-∑[n%2]`
-/

namespace A155096.P15974746732529572820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040135 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A155096.P15974746732529572820

namespace A155096

/-- `∑[A040135(n)]-∑[n%2]` -/
def P15974746732529572820.Spec : Prop :=
  ∀ n, P15974746732529572820.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P9618076338646794816

`A248474(n+1)-A028242(n)`
-/

namespace A155096.P9618076338646794816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) - A028242 n

end

end A155096.P9618076338646794816

namespace A155096

/-- `A248474(n+1)-A028242(n)` -/
def P9618076338646794816.Spec : Prop :=
  ∀ n, P9618076338646794816.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P6137446285120894737

`A272100(n+1)-A007494(n)`
-/

namespace A155096.P6137446285120894737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - A007494 n

end

end A155096.P6137446285120894737

namespace A155096

/-- `A272100(n+1)-A007494(n)` -/
def P6137446285120894737.Spec : Prop :=
  ∀ n, P6137446285120894737.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P7856056733536260962

`A272100(n+1)-comp[A016777(n)]`
-/

namespace A155096.P7856056733536260962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A155096.P7856056733536260962

namespace A155096

/-- `A272100(n+1)-comp[A016777(n)]` -/
def P7856056733536260962.Spec : Prop :=
  ∀ n, P7856056733536260962.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P3540804974968494252

`A158803(n+1)-A092242(n+1)`
-/

namespace A155096.P3540804974968494252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (n + 1) - A092242 (n + 1)

end

end A155096.P3540804974968494252

namespace A155096

/-- `A158803(n+1)-A092242(n+1)` -/
def P3540804974968494252.Spec : Prop :=
  ∀ n, P3540804974968494252.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P6099232262219918810

`A270296(n+1)-A164131(n+1)`
-/

namespace A155096.P6099232262219918810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - A164131 (n + 1)

end

end A155096.P6099232262219918810

namespace A155096

/-- `A270296(n+1)-A164131(n+1)` -/
def P6099232262219918810.Spec : Prop :=
  ∀ n, P6099232262219918810.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P11041679029196383108

`12*n+A168210(n+2)-A110654(n+1)`
-/

namespace A155096.P11041679029196383108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) + (A168210 (n + 2) - A110654 (n + 1))

end

end A155096.P11041679029196383108

namespace A155096

/-- `12*n+A168210(n+2)-A110654(n+1)` -/
def P11041679029196383108.Spec : Prop :=
  ∀ n, P11041679029196383108.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P15091924191206545846

`∑[A040236(2*n)]-A047341(n+1)`
-/

namespace A155096.P15091924191206545846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047341 (n + 1)

end

end A155096.P15091924191206545846

namespace A155096

/-- `∑[A040236(2*n)]-A047341(n+1)` -/
def P15091924191206545846.Spec : Prop :=
  ∀ n, P15091924191206545846.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P923737743222930824

`A315707(A047221(n+1))`
-/

namespace A155096.P923737743222930824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 (A047221 (n + 1)).toNat

end

end A155096.P923737743222930824

namespace A155096

/-- `A315707(A047221(n+1))` -/
def P923737743222930824.Spec : Prop :=
  ∀ n, P923737743222930824.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P12061443620845552391

`A158803(n+1)-A166519(A166519(n)+n)`
-/

namespace A155096.P12061443620845552391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (n + 1) - A166519 (A166519 n + (n : ℤ)).toNat

end

end A155096.P12061443620845552391

namespace A155096

/-- `A158803(n+1)-A166519(A166519(n)+n)` -/
def P12061443620845552391.Spec : Prop :=
  ∀ n, P12061443620845552391.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P1134249960178451498

`A047621(A047621(n+1)-n)+A047209(n+1)`
-/

namespace A155096.P1134249960178451498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A047621 (n + 1) - (n : ℤ)).toNat + A047209 (n + 1)

end

end A155096.P1134249960178451498

namespace A155096

/-- `A047621(A047621(n+1)-n)+A047209(n+1)` -/
def P1134249960178451498.Spec : Prop :=
  ∀ n, P1134249960178451498.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P7562327820507388583

`∑[A010209(4*n)]`
-/

namespace A155096.P7562327820507388583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155096.P7562327820507388583

namespace A155096

/-- `∑[A010209(4*n)]` -/
def P7562327820507388583.Spec : Prop :=
  ∀ n, P7562327820507388583.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P14329013186472979781

`A008585(A156638(n+1))+A014601(n)-n`
-/

namespace A155096.P14329013186472979781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A156638 (n + 1)).toNat + (A014601 n - (n : ℤ))

end

end A155096.P14329013186472979781

namespace A155096

/-- `A008585(A156638(n+1))+A014601(n)-n` -/
def P14329013186472979781.Spec : Prop :=
  ∀ n, P14329013186472979781.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P17000277922733654140

`A298793(A090773(n+1))`
-/

namespace A155096.P17000277922733654140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298793 (A090773 (n + 1)).toNat

end

end A155096.P17000277922733654140

namespace A155096

/-- `A298793(A090773(n+1))` -/
def P17000277922733654140.Spec : Prop :=
  ∀ n, P17000277922733654140.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P9874284159996993975

`A311554(A285440(n+1))`
-/

namespace A155096.P9874284159996993975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311554 (A285440 (n + 1)).toNat

end

end A155096.P9874284159996993975

namespace A155096

/-- `A311554(A285440(n+1))` -/
def P9874284159996993975.Spec : Prop :=
  ∀ n, P9874284159996993975.a n = A155096 (n + 1)

end A155096

/-! ## A155096.P2349674889091594474

`A311406(A047341(n+1))`
-/

namespace A155096.P2349674889091594474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311406 (A047341 (n + 1)).toNat

end

end A155096.P2349674889091594474

namespace A155096

/-- `A311406(A047341(n+1))` -/
def P2349674889091594474.Spec : Prop :=
  ∀ n, P2349674889091594474.a n = A155096 (n + 1)

end A155096

/-!
# A155097: Numbers k such that k^2 == -1 (mod 37).

The programs for A155097, the canonical program `A155097.P12460899812211951792` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155097 has offset 1).

The definition of A155097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155097.P12460899812211951792

`a(n-2)+37` with `a(0)=6, a(1)=31`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155097

/-- `a(n-2)+37` -/
def P12460899812211951792.Spec : Prop :=
  ∀ n, (P12460899812211951792.a n : ℤ) = A155097 (n + 1)

theorem P12460899812211951792.correct : P12460899812211951792.Spec := by
  intro n
  simp only [A155097, Nat.add_sub_cancel]

end A155097

/-! ## A155097.P18385706481452888415

`6*(-1)^(n+2)+37*floor((n+1)/2)`
-/

namespace A155097.P18385706481452888415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (-1) ^ (n + 2) + 37 * ⌊(n + 1 : ℚ) / 2⌋

end

end A155097.P18385706481452888415

namespace A155097

/-- `6*(-1)^(n+2)+37*floor((n+1)/2)` -/
def P18385706481452888415.Spec : Prop :=
  ∀ n, P18385706481452888415.a n = A155097 (n + 1)

end A155097

/-! ## A155097.P2613661128063102862

`∑[floor(a(n-2))]` with `a(0)=6, a(1)=25, a(2)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A155097.P2613661128063102862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 25, 12] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155097.P2613661128063102862

namespace A155097

/-- `∑[floor(a(n-2))]` -/
def P2613661128063102862.Spec : Prop :=
  ∀ n, (P2613661128063102862.a n : ℤ) = A155097 (n + 1)

end A155097

/-! ## A155097.P1480907851875524684

`∑[37-a(n-1)]` with `a(0)=6, a(1)=25`
-/

namespace A155097.P1480907851875524684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 25] fun n f1 =>
  37 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155097.P1480907851875524684

namespace A155097

/-- `∑[37-a(n-1)]` -/
def P1480907851875524684.Spec : Prop :=
  ∀ n, P1480907851875524684.a n = A155097 (n + 1)

end A155097

/-! ## A155097.P7847743672604432137

`∑[A249114(a(n-1))]` with `a(0)=6`
-/

namespace A155097.P7847743672604432137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A249114 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155097.P7847743672604432137

namespace A155097

/-- `∑[A249114(a(n-1))]` -/
def P7847743672604432137.Spec : Prop :=
  ∀ n, P7847743672604432137.a n = A155097 (n + 1)

end A155097

/-! ## A155097.P15043883018631800139

`A157116(n+1)%A206526(n+1)`
-/

namespace A155097.P15043883018631800139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157116 (n + 1)) (A206526 (n + 1))

end

end A155097.P15043883018631800139

namespace A155097

/-- `A157116(n+1)%A206526(n+1)` -/
def P15043883018631800139.Spec : Prop :=
  ∀ n, P15043883018631800139.a n = A155097 (n + 1)

end A155097

/-!
# A155098: Numbers k such that k^2 == -1 (mod 41).

The programs for A155098, the canonical program `A155098.P6254847933335124224` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155098 has offset 1).

The definition of A155098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155098.P6254847933335124224

`a(n-2)+41` with `a(0)=9, a(1)=32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155098

/-- `a(n-2)+41` -/
def P6254847933335124224.Spec : Prop :=
  ∀ n, (P6254847933335124224.a n : ℤ) = A155098 (n + 1)

theorem P6254847933335124224.correct : P6254847933335124224.Spec := by
  intro n
  simp only [A155098, Nat.add_sub_cancel]

end A155098

/-! ## A155098.P10719234558872332489

`9*(-1)^(n+2)+41*floor((n+1)/2)`
-/

namespace A155098.P10719234558872332489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (-1) ^ (n + 2) + 41 * ⌊(n + 1 : ℚ) / 2⌋

end

end A155098.P10719234558872332489

namespace A155098

/-- `9*(-1)^(n+2)+41*floor((n+1)/2)` -/
def P10719234558872332489.Spec : Prop :=
  ∀ n, P10719234558872332489.a n = A155098 (n + 1)

end A155098

/-! ## A155098.P2075846586850417710

`∑[floor(a(n-2))]` with `a(0)=9, a(1)=23, a(2)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A155098.P2075846586850417710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 23, 18] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155098.P2075846586850417710

namespace A155098

/-- `∑[floor(a(n-2))]` -/
def P2075846586850417710.Spec : Prop :=
  ∀ n, (P2075846586850417710.a n : ℤ) = A155098 (n + 1)

end A155098

/-! ## A155098.P7938073262575788209

`∑[41-a(n-1)]` with `a(0)=9, a(1)=23`
-/

namespace A155098.P7938073262575788209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 23] fun n f1 =>
  41 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155098.P7938073262575788209

namespace A155098

/-- `∑[41-a(n-1)]` -/
def P7938073262575788209.Spec : Prop :=
  ∀ n, P7938073262575788209.a n = A155098 (n + 1)

end A155098

/-!
# A155099: Third column of A155092.

The programs for A155099, there is no canonical definition to state claims against.
-/

/-! ## A155099.P9248693073874478116

`A155092(∑[n+2]+4)`
-/

namespace A155099.P9248693073874478116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155092 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A155099.P9248693073874478116

/-! ## A155099.P12061358985444327667

`or(char[1], A155092(A167614(n+1)))`
-/

namespace A155099.P12061358985444327667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A155092 (A167614 (n + 1)).toNat)

end

end A155099.P12061358985444327667

/-! ## A155099.P9698207481296183452

`C(A155092(A046691(n)+7), 1-char[1])`
-/

namespace A155099.P9698207481296183452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155092 (A046691 n + 7).toNat).toNat (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A155099.P9698207481296183452

/-! ## A155099.P2671812305519707172

`A155092(A167614(n+1))^A178489(n)`
-/

namespace A155099.P2671812305519707172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155092 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A155099.P2671812305519707172

/-! ## A155099.P6041985718827716027

`A155092(A167614(n+1))*A215870(n+1)`
-/

namespace A155099.P6041985718827716027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155092 (A167614 (n + 1)).toNat * A215870 (n + 1)

end

end A155099.P6041985718827716027

