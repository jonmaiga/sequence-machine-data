import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
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
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A072000: Number of semiprimes (A001358) <= n.

The programs for A072000, the canonical program `A072000.P3706059858088101648` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072000 has offset 1).

The definition of A072000 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072000.P3706059858088101648

`A072613(n+1)+A056811(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072000

/-- `A072613(n+1)+A056811(n+1)` -/
def P3706059858088101648.Spec : Prop :=
  ∀ n, P3706059858088101648.a n = A072000 (n + 1)

theorem P3706059858088101648.correct : P3706059858088101648.Spec := by
  intro n
  simp only [A072000, Nat.add_sub_cancel]

end A072000

/-! ## A072000.P16830988535151259699

`∑[A064911(1+n)]`
-/

namespace A072000.P16830988535151259699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P16830988535151259699

namespace A072000

/-- `∑[A064911(1+n)]` -/
def P16830988535151259699.Spec : Prop :=
  ∀ n, P16830988535151259699.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P15647727275360543661

`∑[char[A186621(n+1)]]`
-/

namespace A072000.P15647727275360543661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P15647727275360543661

namespace A072000

/-- `∑[char[A186621(n+1)]]` -/
def P15647727275360543661.Spec : Prop :=
  ∀ n, (P15647727275360543661.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P1216044052315113720

`row(∑[A174956(n+1)])`
-/

namespace A072000.P1216044052315113720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072000.P1216044052315113720

namespace A072000

/-- `row(∑[A174956(n+1)])` -/
def P1216044052315113720.Spec : Prop :=
  ∀ n, (P1216044052315113720.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P4956877031253714707

`∑[row(A230595(n+1))]`
-/

namespace A072000.P4956877031253714707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A230595 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P4956877031253714707

namespace A072000

/-- `∑[row(A230595(n+1))]` -/
def P4956877031253714707.Spec : Prop :=
  ∀ n, (P4956877031253714707.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P102165257860666912

`∑[A101637(4*(n+1))]`
-/

namespace A072000.P102165257860666912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P102165257860666912

namespace A072000

/-- `∑[A101637(4*(n+1))]` -/
def P102165257860666912.Spec : Prop :=
  ∀ n, P102165257860666912.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P2275461871343776196

`∑[val(A105560(n+1), 3)]`
-/

namespace A072000.P2275461871343776196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P2275461871343776196

namespace A072000

/-- `∑[val(A105560(n+1), 3)]` -/
def P2275461871343776196.Spec : Prop :=
  ∀ n, (P2275461871343776196.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P13316138944904501042

`∑[C(A105700(n+1), 2)]`
-/

namespace A072000.P13316138944904501042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105700 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P13316138944904501042

namespace A072000

/-- `∑[C(A105700(n+1), 2)]` -/
def P13316138944904501042.Spec : Prop :=
  ∀ n, (P13316138944904501042.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P11845338095451658730

`∑[char[A001358(n+1)-1]]`
-/

namespace A072000.P11845338095451658730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P11845338095451658730

namespace A072000

/-- `∑[char[A001358(n+1)-1]]` -/
def P11845338095451658730.Spec : Prop :=
  ∀ n, (P11845338095451658730.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P850845686064615024

`∑[char[A088707(n+1)-2]]`
-/

namespace A072000.P850845686064615024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P850845686064615024

namespace A072000

/-- `∑[char[A088707(n+1)-2]]` -/
def P850845686064615024.Spec : Prop :=
  ∀ n, (P850845686064615024.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P9521743769169781785

`∑[char[eq[2, A001222(n+1)]]]`
-/

namespace A072000.P9521743769169781785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P9521743769169781785

namespace A072000

/-- `∑[char[eq[2, A001222(n+1)]]]` -/
def P9521743769169781785.Spec : Prop :=
  ∀ n, (P9521743769169781785.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P10783009260288925075

`∑[C(C(2, A055212(n+1)), 2)]`
-/

namespace A072000.P10783009260288925075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A055212 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P10783009260288925075

namespace A072000

/-- `∑[C(C(2, A055212(n+1)), 2)]` -/
def P10783009260288925075.Spec : Prop :=
  ∀ n, (P10783009260288925075.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P4905801569367633805

`∑[val(A289147(∑{e}[n+1, #]), 34)]`
-/

namespace A072000.P4905801569367633805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289147 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P4905801569367633805

namespace A072000

/-- `∑[val(A289147(∑{e}[n+1, #]), 34)]` -/
def P4905801569367633805.Spec : Prop :=
  ∀ n, (P4905801569367633805.a n : ℤ) = A072000 (n + 1)

end A072000

/-! ## A072000.P2186184161836690852

`∑[A010051(A032742(n+1))]`
-/

namespace A072000.P2186184161836690852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P2186184161836690852

namespace A072000

/-- `∑[A010051(A032742(n+1))]` -/
def P2186184161836690852.Spec : Prop :=
  ∀ n, P2186184161836690852.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P7821866324829143058

`∑[A185014(A001222(n+1)²)]`
-/

namespace A072000.P7821866324829143058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P7821866324829143058

namespace A072000

/-- `∑[A185014(A001222(n+1)²)]` -/
def P7821866324829143058.Spec : Prop :=
  ∀ n, P7821866324829143058.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P12837680767559500280

`∑[A185014(A001222(n+1)+2)]`
-/

namespace A072000.P12837680767559500280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P12837680767559500280

namespace A072000

/-- `∑[A185014(A001222(n+1)+2)]` -/
def P12837680767559500280.Spec : Prop :=
  ∀ n, P12837680767559500280.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P3444077873540311970

`∑[A333941(A097566(∑{e}[n+1, #]))]`
-/

namespace A072000.P3444077873540311970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333941 (A097566 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P3444077873540311970

namespace A072000

/-- `∑[A333941(A097566(∑{e}[n+1, #]))]` -/
def P3444077873540311970.Spec : Prop :=
  ∀ n, P3444077873540311970.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P5980897074639231056

`A243906(n+1)+A000720(n+1)`
-/

namespace A072000.P5980897074639231056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243906 (n + 1) + A000720 (n + 1)

end

end A072000.P5980897074639231056

namespace A072000

/-- `A243906(n+1)+A000720(n+1)` -/
def P5980897074639231056.Spec : Prop :=
  ∀ n, P5980897074639231056.a n = A072000 (n + 1)

theorem P5980897074639231056.correct : P5980897074639231056.Spec := by
  intro n
  simp only [A072000, Nat.add_sub_cancel, A072000.P5980897074639231056.a, A072000.P3706059858088101648.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A243906, A243906.P883148336844594842.a, A000196, A000196.P15434771586934192083.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P13406550948487456153.f1, A305809.P13406550948487456153.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072000

/-! ## A072000.P13113686259016461061

`A369224(n+1)+A086971(n+1)`
-/

namespace A072000.P13113686259016461061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369224 (n + 1) + A086971 (n + 1)

end

end A072000.P13113686259016461061

namespace A072000

/-- `A369224(n+1)+A086971(n+1)` -/
def P13113686259016461061.Spec : Prop :=
  ∀ n, P13113686259016461061.a n = A072000 (n + 1)

end A072000

/-! ## A072000.P13788364641639444170

`A101041(n+1)-A036234(n+1)`
-/

namespace A072000.P13788364641639444170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101041 (n + 1) - A036234 (n + 1)

end

end A072000.P13788364641639444170

namespace A072000

/-- `A101041(n+1)-A036234(n+1)` -/
def P13788364641639444170.Spec : Prop :=
  ∀ n, P13788364641639444170.a n = A072000 (n + 1)

theorem P13788364641639444170.correct : P13788364641639444170.Spec := by
  intro n
  simp only [A072000, Nat.add_sub_cancel, A072000.P13788364641639444170.a, A072000.P3706059858088101648.a, A036234, A036234.P2906282677021386800.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A101041, A101041.P9395477639911062119.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P13406550948487456153.f1, A305809.P13406550948487456153.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072000

/-! ## A072000.P10376742631998784082

`∑[char[eq[2, ∑{e}[n+1, #]]]]`
-/

namespace A072000.P10376742631998784082
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072000.P10376742631998784082

namespace A072000

/-- `∑[char[eq[2, ∑{e}[n+1, #]]]]` -/
def P10376742631998784082.Spec : Prop :=
  ∀ n, (P10376742631998784082.a n : ℤ) = A072000 (n + 1)

end A072000

/-!
# A072001: Variant of the factorial base representation of n.

The programs for A072001, there is no canonical definition to state claims against.
-/

/-! ## A072001.P11712396432534126850

`A124252(n)+1`
-/

namespace A072001.P11712396432534126850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124252 n + 1

end

end A072001.P11712396432534126850

/-! ## A072001.P13478675793496604846

`1+10*A007623(n)`
-/

namespace A072001.P13478675793496604846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 10 * A007623 n

end

end A072001.P13478675793496604846

/-! ## A072001.P9365824860963300118

`A007623(A153880(n))+1`
-/

namespace A072001.P9365824860963300118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A153880 n).toNat + 1

end

end A072001.P9365824860963300118

/-! ## A072001.P10739579461695651185

`A007623(A153880(n)+1)`
-/

namespace A072001.P10739579461695651185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A153880 n + 1).toNat

end

end A072001.P10739579461695651185

/-! ## A072001.P2739588782417509537

`A007623(record[A276009(n)+1])`
-/

namespace A072001.P2739588782417509537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072001.P2739588782417509537

/-! ## A072001.P12501316309888873515

`A007623(A273670(A153880(n)-n))`
-/

namespace A072001.P12501316309888873515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A273670 (A153880 n - (n : ℤ)).toNat).toNat

end

end A072001.P12501316309888873515

/-! ## A072001.P1650266360457503242

`A085217(∑[n+1]+n)`
-/

namespace A072001.P1650266360457503242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085217 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A072001.P1650266360457503242

/-! ## A072001.P5373496902731181675

`A017281(A007623(n))`
-/

namespace A072001.P5373496902731181675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A007623 n).toNat

end

end A072001.P5373496902731181675

/-!
# A072002: Highest prime dividing the least n-multiperfect number (A007539).

The programs for A072002, there is no canonical definition to state claims against.
-/

/-! ## A072002.P15152121660719203866

`A006016(2^n)+1`
-/

namespace A072002.P15152121660719203866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006016 (2 ^ n) + 1

end

end A072002.P15152121660719203866

/-!
# A072003: 10's complement of final digit of n-th prime.

The programs for A072003, the canonical program `A072003.P2879452219977842173` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072003 has offset 1).

The definition of A072003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072003.P2879452219977842173

`10-A000040(n+1)%10`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072003

/-- `10-A000040(n+1)%10` -/
def P2879452219977842173.Spec : Prop :=
  ∀ n, P2879452219977842173.a n = A072003 (n + 1)

theorem P2879452219977842173.correct : P2879452219977842173.Spec := by
  intro n
  simp only [A072003, Nat.add_sub_cancel]

end A072003

/-! ## A072003.P3381135836771448015

`A277097(n+1)+5`
-/

namespace A072003.P3381135836771448015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 1) + 5

end

end A072003.P3381135836771448015

namespace A072003

/-- `A277097(n+1)+5` -/
def P3381135836771448015.Spec : Prop :=
  ∀ n, P3381135836771448015.a n = A072003 (n + 1)

theorem P3381135836771448015.correct : P3381135836771448015.Spec := by
  intro n
  simp only [A072003, Nat.add_sub_cancel, A072003.P3381135836771448015.a, A072003.P2879452219977842173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A277097, A277097.P9767810022556960971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072003

/-! ## A072003.P17563433815592604341

`10-A007652(n+1)`
-/

namespace A072003.P17563433815592604341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A007652 (n + 1)

end

end A072003.P17563433815592604341

namespace A072003

/-- `10-A007652(n+1)` -/
def P17563433815592604341.Spec : Prop :=
  ∀ n, P17563433815592604341.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P2661618460306536961

`A160668(n+1)%10`
-/

namespace A072003.P2661618460306536961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160668 (n + 1)) 10

end

end A072003.P2661618460306536961

namespace A072003

/-- `A160668(n+1)%10` -/
def P2661618460306536961.Spec : Prop :=
  ∀ n, P2661618460306536961.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P924930759740995884

`∏{digits}[A074972(n+1), #]`
-/

namespace A072003.P924930759740995884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A072003.P924930759740995884

namespace A072003

/-- `∏{digits}[A074972(n+1), #]` -/
def P924930759740995884.Spec : Prop :=
  ∀ n, (P924930759740995884.a n : ℤ) = A072003 (n + 1)

end A072003

/-! ## A072003.P9850343127647058821

`10-abs(Δ[A022837(n)]%10)`
-/

namespace A072003.P9850343127647058821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - |Int.tmod (f1 (n + 1) - f1 n) 10|

end

end A072003.P9850343127647058821

namespace A072003

/-- `10-abs(Δ[A022837(n)]%10)` -/
def P9850343127647058821.Spec : Prop :=
  ∀ n, P9850343127647058821.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P17539409340786248821

`10-∑[A054541(n+1)]%10`
-/

namespace A072003.P17539409340786248821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A072003.P17539409340786248821

namespace A072003

/-- `10-∑[A054541(n+1)]%10` -/
def P17539409340786248821.Spec : Prop :=
  ∀ n, P17539409340786248821.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P7198540166312743210

`10-(A052147(n+1)-2)%10`
-/

namespace A072003.P7198540166312743210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - Int.tmod (A052147 (n + 1) - 2) 10

end

end A072003.P7198540166312743210

namespace A072003

/-- `10-(A052147(n+1)-2)%10` -/
def P7198540166312743210.Spec : Prop :=
  ∀ n, P7198540166312743210.a n = A072003 (n + 1)

theorem P7198540166312743210.correct : P7198540166312743210.Spec := by
  intro n
  simp only [A072003, Nat.add_sub_cancel, A072003.P7198540166312743210.a, A072003.P2879452219977842173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072003

/-! ## A072003.P12338331715946065515

`10-(A086801(n+1)+3)%10`
-/

namespace A072003.P12338331715946065515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - Int.tmod (A086801 (n + 1) + 3) 10

end

end A072003.P12338331715946065515

namespace A072003

/-- `10-(A086801(n+1)+3)%10` -/
def P12338331715946065515.Spec : Prop :=
  ∀ n, P12338331715946065515.a n = A072003 (n + 1)

theorem P12338331715946065515.correct : P12338331715946065515.Spec := by
  intro n
  simp only [A072003, Nat.add_sub_cancel, A072003.P12338331715946065515.a, A072003.P2879452219977842173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072003

/-! ## A072003.P10578483392077718320

`(49*(A006093(n+1)+1))%10`
-/

namespace A072003.P10578483392077718320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (49 * (A006093 (n + 1) + 1)) 10

end

end A072003.P10578483392077718320

namespace A072003

/-- `(49*(A006093(n+1)+1))%10` -/
def P10578483392077718320.Spec : Prop :=
  ∀ n, P10578483392077718320.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P4988143676071546535

`A007954(A074972(n+1))`
-/

namespace A072003.P4988143676071546535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A074972 (n + 1)).toNat

end

end A072003.P4988143676071546535

namespace A072003

/-- `A007954(A074972(n+1))` -/
def P4988143676071546535.Spec : Prop :=
  ∀ n, P4988143676071546535.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P11794662565386558020

`A030076(A095959(n+1))`
-/

namespace A072003.P11794662565386558020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (A095959 (n + 1)).toNat

end

end A072003.P11794662565386558020

namespace A072003

/-- `A030076(A095959(n+1))` -/
def P11794662565386558020.Spec : Prop :=
  ∀ n, P11794662565386558020.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P7628561010164183314

`A030076(A242120(n+1))`
-/

namespace A072003.P7628561010164183314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (A242120 (n + 1)).toNat

end

end A072003.P7628561010164183314

namespace A072003

/-- `A030076(A242120(n+1))` -/
def P7628561010164183314.Spec : Prop :=
  ∀ n, P7628561010164183314.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P4838089290770029120

`A251984(A110923(n+1))`
-/

namespace A072003.P4838089290770029120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A110923 (n + 1)).toNat

end

end A072003.P4838089290770029120

namespace A072003

/-- `A251984(A110923(n+1))` -/
def P4838089290770029120.Spec : Prop :=
  ∀ n, P4838089290770029120.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P16650482101991743672

`A251984(A137589(n+1))`
-/

namespace A072003.P16650482101991743672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A137589 (n + 1)).toNat

end

end A072003.P16650482101991743672

namespace A072003

/-- `A251984(A137589(n+1))` -/
def P16650482101991743672.Spec : Prop :=
  ∀ n, P16650482101991743672.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P17767328581576495017

`A251984(A301378(n+1))`
-/

namespace A072003.P17767328581576495017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A301378 (n + 1)).toNat

end

end A072003.P17767328581576495017

namespace A072003

/-- `A251984(A301378(n+1))` -/
def P17767328581576495017.Spec : Prop :=
  ∀ n, P17767328581576495017.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P593346848833923728

`A175225(n+1)-A268185(n+1)`
-/

namespace A072003.P593346848833923728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - A268185 (n + 1)

end

end A072003.P593346848833923728

namespace A072003

/-- `A175225(n+1)-A268185(n+1)` -/
def P593346848833923728.Spec : Prop :=
  ∀ n, P593346848833923728.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P6019811647809254276

`9-record[A000010(n+1)]%10`
-/

namespace A072003.P6019811647809254276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A072003.P6019811647809254276

namespace A072003

/-- `9-record[A000010(n+1)]%10` -/
def P6019811647809254276.Spec : Prop :=
  ∀ n, P6019811647809254276.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P2059880183019665238

`record[9*A006530(n+2)]%10`
-/

namespace A072003.P2059880183019665238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A072003.P2059880183019665238

namespace A072003

/-- `record[9*A006530(n+2)]%10` -/
def P2059880183019665238.Spec : Prop :=
  ∀ n, P2059880183019665238.a n = A072003 (n + 1)

end A072003

/-! ## A072003.P4499926645570715407

`record[9*A020639(n+2)]%10`
-/

namespace A072003.P4499926645570715407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A072003.P4499926645570715407

namespace A072003

/-- `record[9*A020639(n+2)]%10` -/
def P4499926645570715407.Spec : Prop :=
  ∀ n, P4499926645570715407.a n = A072003 (n + 1)

end A072003

/-!
# A072004: Remainder when sum of squares of first n primes is divided by n-th prime.

The programs for A072004, the canonical program `A072004.P1142489555843543606` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072004 has offset 1).

The definition of A072004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072004.P4347376963998779707

`A024450(n+1)%Δ[A007504(n)]`
-/

namespace A072004.P4347376963998779707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024450 (n + 1)) (f1 (n + 1) - f1 n)

end

end A072004.P4347376963998779707

namespace A072004

/-- `A024450(n+1)%Δ[A007504(n)]` -/
def P4347376963998779707.Spec : Prop :=
  ∀ n, P4347376963998779707.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P12808456361572017492

`A338820(n+1)%A000040(n+1)`
-/

namespace A072004.P12808456361572017492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338820 (n + 1)) (A000040 (n + 1))

end

end A072004.P12808456361572017492

namespace A072004

/-- `A338820(n+1)%A000040(n+1)` -/
def P12808456361572017492.Spec : Prop :=
  ∀ n, P12808456361572017492.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P1041659710977759184

`∑[A001248(n+1)]%Δ[A007504(n)]`
-/

namespace A072004.P1041659710977759184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A072004.P1041659710977759184

namespace A072004

/-- `∑[A001248(n+1)]%Δ[A007504(n)]` -/
def P1041659710977759184.Spec : Prop :=
  ∀ n, P1041659710977759184.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P9062446660324900293

`∑[A000040(n+1)²]%Δ[A007504(n)]`
-/

namespace A072004.P9062446660324900293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A072004.P9062446660324900293

namespace A072004

/-- `∑[A000040(n+1)²]%Δ[A007504(n)]` -/
def P9062446660324900293.Spec : Prop :=
  ∀ n, P9062446660324900293.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P1142489555843543606

`∑[A066872(n+1)-1]%A000040(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072004

/-- `∑[A066872(n+1)-1]%A000040(n+1)` -/
def P1142489555843543606.Spec : Prop :=
  ∀ n, P1142489555843543606.a n = A072004 (n + 1)

theorem P1142489555843543606.correct : P1142489555843543606.Spec := by
  intro n
  simp only [A072004, Nat.add_sub_cancel]

end A072004

/-! ## A072004.P15697005807439278259

`∑[(A040976(n+1)+2)²]%Δ[A007504(n)]`
-/

namespace A072004.P15697005807439278259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A072004.P15697005807439278259

namespace A072004

/-- `∑[(A040976(n+1)+2)²]%Δ[A007504(n)]` -/
def P15697005807439278259.Spec : Prop :=
  ∀ n, P15697005807439278259.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P11398164055880867558

`∑[record[A006530(n+2)²]]%(A040976(n+1)+2)`
-/

namespace A072004.P11398164055880867558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A040976 (n + 1) + 2)

end

end A072004.P11398164055880867558

namespace A072004

/-- `∑[record[A006530(n+2)²]]%(A040976(n+1)+2)` -/
def P11398164055880867558.Spec : Prop :=
  ∀ n, P11398164055880867558.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P6326948770435558436

`∑[record[A020639(n+2)²]]%(A040976(n+1)+2)`
-/

namespace A072004.P6326948770435558436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A040976 (n + 1) + 2)

end

end A072004.P6326948770435558436

namespace A072004

/-- `∑[record[A020639(n+2)²]]%(A040976(n+1)+2)` -/
def P6326948770435558436.Spec : Prop :=
  ∀ n, P6326948770435558436.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P5319881209879995906

`∑[A000040(n+1)^2]%record[A006530(2*n+1)]`
-/

namespace A072004.P5319881209879995906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A072004.P5319881209879995906

namespace A072004

/-- `∑[A000040(n+1)^2]%record[A006530(2*n+1)]` -/
def P5319881209879995906.Spec : Prop :=
  ∀ n, P5319881209879995906.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P12635541479164553137

`∑[record[(A000010(n+1)+1)²]]%(A040976(n+1)+2)`
-/

namespace A072004.P12635541479164553137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A040976 (n + 1) + 2)

end

end A072004.P12635541479164553137

namespace A072004

/-- `∑[record[(A000010(n+1)+1)²]]%(A040976(n+1)+2)` -/
def P12635541479164553137.Spec : Prop :=
  ∀ n, P12635541479164553137.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P7170653355881312062

`∑[(eq[1, A001222(n+1)]+1)²]%(A040976(n+1)+2)`
-/

namespace A072004.P7170653355881312062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A040976 (n + 1) + 2)

end

end A072004.P7170653355881312062

namespace A072004

/-- `∑[(eq[1, A001222(n+1)]+1)²]%(A040976(n+1)+2)` -/
def P7170653355881312062.Spec : Prop :=
  ∀ n, P7170653355881312062.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P18301210897269806662

`∑[(eq[2, A000005(n+1)]+1)²]%(A040976(n+1)+2)`
-/

namespace A072004.P18301210897269806662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A040976 (n + 1) + 2)

end

end A072004.P18301210897269806662

namespace A072004

/-- `∑[(eq[2, A000005(n+1)]+1)²]%(A040976(n+1)+2)` -/
def P18301210897269806662.Spec : Prop :=
  ∀ n, P18301210897269806662.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P18143668840917965905

`∑[(lt[A001222(n+2), 2]+2)²]%(A040976(n+1)+2)`
-/

namespace A072004.P18143668840917965905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A040976 (n + 1) + 2)

end

end A072004.P18143668840917965905

namespace A072004

/-- `∑[(lt[A001222(n+2), 2]+2)²]%(A040976(n+1)+2)` -/
def P18143668840917965905.Spec : Prop :=
  ∀ n, P18143668840917965905.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P4725485752928693922

`∑[(lt[A000005(n+2), 3]+2)²]%(A040976(n+1)+2)`
-/

namespace A072004.P4725485752928693922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A040976 (n + 1) + 2)

end

end A072004.P4725485752928693922

namespace A072004

/-- `∑[(lt[A000005(n+2), 3]+2)²]%(A040976(n+1)+2)` -/
def P4725485752928693922.Spec : Prop :=
  ∀ n, P4725485752928693922.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P335326901352031071

`∑[A033476(2*n)]%A273960(n+1)`
-/

namespace A072004.P335326901352031071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A273960 (n + 1))

end

end A072004.P335326901352031071

namespace A072004

/-- `∑[A033476(2*n)]%A273960(n+1)` -/
def P335326901352031071.Spec : Prop :=
  ∀ n, P335326901352031071.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P4410627310666497806

`∑[p?[n%3+n]²]%record[A014963(n+2)]`
-/

namespace A072004.P4410627310666497806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

end

end A072004.P4410627310666497806

namespace A072004

/-- `∑[p?[n%3+n]²]%record[A014963(n+2)]` -/
def P4410627310666497806.Spec : Prop :=
  ∀ n, P4410627310666497806.a n = A072004 (n + 1)

end A072004

/-! ## A072004.P16507900262356333195

`∑[record[A014963(n+2)²]]%(A040976(n+1)+2)`
-/

namespace A072004.P16507900262356333195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A040976 (n + 1) + 2)

end

end A072004.P16507900262356333195

namespace A072004

/-- `∑[record[A014963(n+2)²]]%(A040976(n+1)+2)` -/
def P16507900262356333195.Spec : Prop :=
  ∀ n, P16507900262356333195.a n = A072004 (n + 1)

end A072004

/-!
# A072005: Smallest solution to gcd(k, reverse(k)) = 3^n.

The programs for A072005, there is no canonical definition to state claims against.
-/

/-! ## A072005.P3348080501971036276

`A333666(A069603(n+1)^n)`
-/

namespace A072005.P3348080501971036276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333666 (A069603 (n + 1) ^ n).toNat

end

end A072005.P3348080501971036276

/-!
# A072006: Number of terms in InversePhi set of prime(n)*(prime(n)-1) = phi(p(n)^2), where prime(n) is the n-th prime and phi=A000010.

The programs for A072006, there is no canonical definition to state claims against.
-/

/-! ## A072006.P8777334114960343871

`A032446(A008837(n+1))`
-/

namespace A072006.P8777334114960343871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A008837 (n + 1)).toNat

end

end A072006.P8777334114960343871

/-! ## A072006.P10219803891225623059

`A032446(A036689(n+1)/2)`
-/

namespace A072006.P10219803891225623059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (SequenceMachineLib.roundAway ((A036689 (n + 1) : ℚ) / 2)).toNat

end

end A072006.P10219803891225623059

/-! ## A072006.P5474151559746905261

`A032446(A179545(n+1)/3)`
-/

namespace A072006.P5474151559746905261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (SequenceMachineLib.roundAway ((A179545 (n + 1) : ℚ) / 3)).toNat

end

end A072006.P5474151559746905261

/-! ## A072006.P6786787420120075298

`A032446(C(A000040(n+1), 2))`
-/

namespace A072006.P6786787420120075298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (Nat.choose (A000040 (n + 1)).toNat 2)

end

end A072006.P6786787420120075298

/-! ## A072006.P18050969607701519884

`A032446(C(A057448(n+1), 2))`
-/

namespace A072006.P18050969607701519884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (Nat.choose (A057448 (n + 1)).toNat 2)

end

end A072006.P18050969607701519884

/-!
# A072008: a(n)=b(3n+1), where b=A072007.

The programs for A072008, there is no canonical definition to state claims against.
-/

/-! ## A072008.P2152463175481078367

`lt[n, A072009(n)]`
-/

namespace A072008.P2152463175481078367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072008.P2152463175481078367

/-! ## A072008.P4446991158832292460

`A072007(3*n+4)`
-/

namespace A072008.P4446991158832292460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072007 (3 * n + 4)

end

end A072008.P4446991158832292460

/-! ## A072008.P2428527531378504031

`record[A233583(n+1)%A072009(A233583(n+1))]`
-/

namespace A072008.P2428527531378504031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A072009 (A233583 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072008.P2428527531378504031

/-! ## A072008.P2364805449139138465

`A078783(A257502(A072007(A257502(A117070(n+2)))))`
-/

namespace A072008.P2364805449139138465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (A257502 (A072007 (A257502 (A117070 (n + 2)).toNat).toNat).toNat).toNat

end

end A072008.P2364805449139138465

/-! ## A072008.P13276969281383200464

`lt[A096754(2*n+1)², A320253(2*n+3)]`
-/

namespace A072008.P13276969281383200464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096754 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072008.P13276969281383200464

/-!
# A072009: Inverse of permutation A072007.

The programs for A072009, there is no canonical definition to state claims against.
-/

/-! ## A072009.P6095508854784920514

`A257502(n)%A232803(A257502(2*(n+1)))`
-/

namespace A072009.P6095508854784920514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257502 n) (A232803 (A257502 (2 * (n + 1))).toNat)

end

end A072009.P6095508854784920514

/-!
# A072010: In prime factorization of n replace all primes of form k*4+1 with k*4+3 and primes of form k*4+3 with k*4+1.

The programs for A072010, there is no canonical definition to state claims against.
-/

/-! ## A072010.P16869913527626280670

`∏{e}[A259939(n), xor(3, #)]`
-/

namespace A072010.P16869913527626280670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 3 (Nat.factorization (f1 n).natAbs p)

end

end A072010.P16869913527626280670

/-! ## A072010.P11114512967336882813

`∏{e}[A037019(n+1), xor(3, #)]`
-/

namespace A072010.P11114512967336882813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 3 (Nat.factorization (f1 n).natAbs p)

end

end A072010.P11114512967336882813

/-! ## A072010.P7499412576161810732

`∏{e}[A259939(n), A004444(#)]`
-/

namespace A072010.P7499412576161810732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004444 (Nat.factorization (f1 n).natAbs p)

end

end A072010.P7499412576161810732

/-! ## A072010.P13242513788327931409

`∏{e}[A259939(n), A092486(#)]`
-/

namespace A072010.P13242513788327931409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A092486 (Nat.factorization (f1 n).natAbs p)

end

end A072010.P13242513788327931409

/-! ## A072010.P1754290104087638071

`∏{e}[A037019(n+1), A004444(#)]`
-/

namespace A072010.P1754290104087638071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004444 (Nat.factorization (f1 n).natAbs p)

end

end A072010.P1754290104087638071

/-!
# A072011: Numbers k such that A072010(k) = k.

The programs for A072011, there is no canonical definition to state claims against.
-/

/-! ## A072011.P7981684133999449550

`record[gcd(n+1, A072010(n+1))]`
-/

namespace A072011.P7981684133999449550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A072010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072011.P7981684133999449550

/-! ## A072011.P18319129248278510120

`eq[n, A072010(round(sqrt(n²+1)))]`
-/

namespace A072011.P18319129248278510120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072011.P18319129248278510120

/-! ## A072011.P10877232625037324316

`record[gcd(A072010(n+1), A103517(n))]`
-/

namespace A072011.P10877232625037324316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072010 (n + 1)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072011.P10877232625037324316

/-! ## A072011.P3243010951558741915

`record[gcd(A072012(n+1), A072026(n+1))]`
-/

namespace A072011.P3243010951558741915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072012 (n + 1)) (A072026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072011.P3243010951558741915

/-!
# A072012: a(n) = A072010(A072010(n)).

The programs for A072012, there is no canonical definition to state claims against.
-/

/-! ## A072012.P10335791332016592904

`A072010(A072010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072012.P10335791332016592904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A072010 (n + 1)).toNat

end

end A072012.P10335791332016592904

/-! ## A072012.P13899377388645120797

`root(A072010(A072010(Δ[n²]-n)), 2)²`
-/

namespace A072012.P13899377388645120797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A072012.P13899377388645120797

/-! ## A072012.P110952664681652805

`A072010(A072010(Δ[n²]-n))%A270209(n)`
-/

namespace A072012.P110952664681652805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat) (A270209 n)

end

end A072012.P110952664681652805

/-! ## A072012.P8434620999426874829

`A020985(n)²*A072010(A072010(Δ[n²]-n))`
-/

namespace A072012.P8434620999426874829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A072012.P8434620999426874829

/-! ## A072012.P16633059535859297372

`A000034(2*n)*A072010(A072010(Δ[n²]-n))`
-/

namespace A072012.P16633059535859297372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A072012.P16633059535859297372

/-! ## A072012.P5587387366505150146

`A059841(2*n)*A072010(A072010(Δ[n²]-n))`
-/

namespace A072012.P5587387366505150146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A072012.P5587387366505150146

/-! ## A072012.P15633070098898211967

`A072010(A072010(Δ[n²]-n))-A001105(n)%2`
-/

namespace A072012.P15633070098898211967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - Int.tmod (A001105 n) 2

end

end A072012.P15633070098898211967

/-! ## A072012.P1322629096612255890

`A072010(A072010(Δ[n²]-n))^A213234(n²)`
-/

namespace A072012.P1322629096612255890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072010 (A072010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ) ^ (A213234 (n ^ 2) : ℤ)

end

end A072012.P1322629096612255890

/-!
# A072013: Numbers k such that A072012(k) = k.

The programs for A072013, there is no canonical definition to state claims against.
-/

/-! ## A072013.P2143809489326407672

`record[gcd(n+1, A072012(n+1))]`
-/

namespace A072013.P2143809489326407672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A072012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072013.P2143809489326407672

/-! ## A072013.P5714225359577508968

`A072012(record[n/(A072012(n+1)-n)]+1)`
-/

namespace A072013.P5714225359577508968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A072012 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A072013.P5714225359577508968

/-! ## A072013.P11342230868103557822

`eq[A005843(n+1), A072012(2*(n+1))]+1`
-/

namespace A072013.P11342230868103557822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072013.P11342230868103557822

/-! ## A072013.P18132039142999108049

`eq[n, A072012(A008486(n))]`
-/

namespace A072013.P18132039142999108049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072013.P18132039142999108049

/-! ## A072013.P11748811424829106031

`eq[2*n, A072012(A008458(n))]`
-/

namespace A072013.P11748811424829106031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072013.P11748811424829106031

/-! ## A072013.P8694632911657524439

`eq[1, A005843(n)/A072012(A008458(n))]`
-/

namespace A072013.P8694632911657524439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A072012 (A008458 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A072013.P8694632911657524439

/-!
# A072014: Minima when the mapping of A072010 is applied to n repeatedly.

The programs for A072014, there is no canonical definition to state claims against.
-/

/-! ## A072014.P9087593189655885375

`and(A130724(n+1), A200370(A133263(n)))`
-/

namespace A072014.P9087593189655885375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130724 (n + 1)) (A200370 (A133263 n).toNat)

end

end A072014.P9087593189655885375

/-! ## A072014.P17137869325889514661

`and((n+1)/3^val(n+1, 3), A000217(A006331(2*n+1)))`
-/

namespace A072014.P17137869325889514661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (A000217 (A006331 (2 * n + 1)).toNat)

end

end A072014.P17137869325889514661

/-! ## A072014.P13818960312023415512

`and(A242894(2^val(n+1, 2)), n+1)`
-/

namespace A072014.P13818960312023415512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A242894 (2 ^ SequenceMachineLib.valuation (n + 1) 2)) (n + 1 : ℤ)

end

end A072014.P13818960312023415512

/-! ## A072014.P2551526645350839149

`and(n+1, A056911(A002586(n+1)))`
-/

namespace A072014.P2551526645350839149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A056911 (A002586 (n + 1)).toNat)

end

end A072014.P2551526645350839149

/-! ## A072014.P13688861166178998359

`and(A061470(A002586(n+1)), A088382(n+1))`
-/

namespace A072014.P13688861166178998359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061470 (A002586 (n + 1)).toNat) (A088382 (n + 1))

end

end A072014.P13688861166178998359

/-!
# A072015: Maxima when the mapping of A072010 is applied to n repeatedly.

The programs for A072015, there is no canonical definition to state claims against.
-/

/-! ## A072015.P16068011949439790362

`or(∏{e}[A259939(n), xor(3, #)], A072010(A072010(n+1)))`
-/

namespace A072015.P16068011949439790362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 3 (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) (A072010 (A072010 (n + 1)).toNat)

end

end A072015.P16068011949439790362

/-! ## A072015.P17312772025228043824

`or(∏{e}[A037019(n+1), xor(3, #)], A072010(A072010(n+1)))`
-/

namespace A072015.P17312772025228043824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 3 (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) (A072010 (A072010 (n + 1)).toNat)

end

end A072015.P17312772025228043824

/-! ## A072015.P7752935399611087956

`or(∏{e}[A259939(n), A092486(#)], A072010(A072010(n+1)))`
-/

namespace A072015.P7752935399611087956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A092486 (Nat.factorization (f1 n).natAbs p)) (A072010 (A072010 (n + 1)).toNat)

end

end A072015.P7752935399611087956

/-! ## A072015.P11208560389624130001

`or(∏{e}[A037019(n+1), A004444(#)], A072010(A072010(n+1)))`
-/

namespace A072015.P11208560389624130001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004444 (Nat.factorization (f1 n).natAbs p)) (A072010 (A072010 (n + 1)).toNat)

end

end A072015.P11208560389624130001

/-! ## A072015.P9263599973454436288

`or(∏{e}[A005179(n+1), A092486(#)], A072010(A072010(n+1)))`
-/

namespace A072015.P9263599973454436288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A092486 (Nat.factorization (f1 n).natAbs p)) (A072010 (A072010 (n + 1)).toNat)

end

end A072015.P9263599973454436288

/-!
# A072023: Values of k such that A072022(k)=0.

The programs for A072023, there is no canonical definition to state claims against.
-/

/-! ## A072023.P9407479239212622167

`eq[0, A074915(n+1)]+1`
-/

namespace A072023.P9407479239212622167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072023.P9407479239212622167

/-! ## A072023.P10643556164735502708

`eq[0, A072022(A028310(n))]`
-/

namespace A072023.P10643556164735502708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072023.P10643556164735502708

/-! ## A072023.P9622982648984735297

`A065475(eq[0, A074915(n+1)])`
-/

namespace A072023.P9622982648984735297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072023.P9622982648984735297

/-! ## A072023.P13565309439557542533

`eq[1, A000007(A076366(n+1))]+1`
-/

namespace A072023.P13565309439557542533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A076366 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072023.P13565309439557542533

/-! ## A072023.P1870569363966062283

`eq[A000007(n), A076366(A028310(n))]`
-/

namespace A072023.P1870569363966062283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076366 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072023.P1870569363966062283

/-! ## A072023.P17807629176208097054

`eq[A000007(n), A076366(A000007(n)+n)]`
-/

namespace A072023.P17807629176208097054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076366 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072023.P17807629176208097054

/-! ## A072023.P893115804296899299

`eq[0, A072022(A233583(n+1))]`
-/

namespace A072023.P893115804296899299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072023.P893115804296899299

/-!
# A072024: Table by antidiagonals of T(n,k) = ((n+1)^k - (-n)^k)/(2*n+1).

The programs for A072024, the canonical program `A072024.P4623986140297258965` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072024 has offset 0).

The definition of A072024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072024.P4623986140297258965

`((col(n)+1)^(row(n)-col(n))-(-col(n))^(row(n)-col(n)))/(2*col(n)+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072024

/-- `((col(n)+1)^(row(n)-col(n))-(-col(n))^(row(n)-col(n)))/(2*col(n)+1)` -/
def P4623986140297258965.Spec : Prop :=
  ∀ n, P4623986140297258965.a n = (A072024 n : ℚ)

end A072024

/-! ## A072024.P15558291945408478821

`A060959(C(A002378(col(n))+row(n)-col(n)+1, 2)+A002378(col(n)))`
-/

namespace A072024.P15558291945408478821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 ((Nat.choose (A002378 (SequenceMachineLib.triCol n) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1).toNat 2 : ℤ) + A002378 (SequenceMachineLib.triCol n)).toNat

end

end A072024.P15558291945408478821

namespace A072024

/-- `A060959(C(A002378(col(n))+row(n)-col(n)+1, 2)+A002378(col(n)))` -/
def P15558291945408478821.Spec : Prop :=
  ∀ n, P15558291945408478821.a n = A072024 n

end A072024

/-! ## A072024.P12755605519802807266

`A073200(A370773(n)²)`
-/

namespace A072024.P12755605519802807266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A370773 n ^ 2).toNat

end

end A072024.P12755605519802807266

namespace A072024

/-- `A073200(A370773(n)²)` -/
def P12755605519802807266.Spec : Prop :=
  ∀ n, P12755605519802807266.a n = A072024 n

end A072024

/-! ## A072024.P15258373150542519750

`A330958(A330964(n)-A167374(n))`
-/

namespace A072024.P15258373150542519750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 (A330964 n - A167374 n).toNat

end

end A072024.P15258373150542519750

namespace A072024

/-- `A330958(A330964(n)-A167374(n))` -/
def P15258373150542519750.Spec : Prop :=
  ∀ n, P15258373150542519750.a n = A072024 n

end A072024

/-! ## A072024.P3290656830190318734

`A330958(A330964(n)-A337165(n))`
-/

namespace A072024.P3290656830190318734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 (A330964 n - A337165 n).toNat

end

end A072024.P3290656830190318734

namespace A072024

/-- `A330958(A330964(n)-A337165(n))` -/
def P3290656830190318734.Spec : Prop :=
  ∀ n, P3290656830190318734.a n = A072024 n

end A072024

/-!
# A072025: a(n) = n^4 + 2*n^3 + 4*n^2 + 3*n + 1 = ((n+1)^5+n^5) / (2*n+1).

The programs for A072025, the canonical program `A072025.P5013716484922619372` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072025 has offset 0).

The definition of A072025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^5+n^5)/(2*n+1)` (program `A072025.P2513733998693051641`, by `A072025.P2513733998693051641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072025.P10704919103765898202

`ogf((1+6x+10x^2+6x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A072025.P10704919103765898202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 10, 6, 1] [1, -5, 10, -10, 5, -1] n

end

end A072025.P10704919103765898202

namespace A072025

/-- `ogf((1+6x+10x^2+6x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10704919103765898202.Spec : Prop :=
  ∀ n, P10704919103765898202.a n = A072025 n

end A072025

/-! ## A072025.P2513733998693051641

`((n+1)^5+n^5)/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072025.P2513733998693051641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 + n ^ 5 : ℚ) / (2 * n + 1 : ℚ)

end

end A072025.P2513733998693051641

namespace A072025

/-- `((n+1)^5+n^5)/(2*n+1)` -/
def P2513733998693051641.Spec : Prop :=
  ∀ n, P2513733998693051641.a n = (A072025 n : ℚ)

theorem P2513733998693051641.correct : P2513733998693051641.Spec := by
  intro n
  simp only [A072025, Nat.add_sub_cancel, A072025.P2513733998693051641.a, A072025.P5013716484922619372.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A072025

/-! ## A072025.P5013716484922619372

`n^4+2*n^3+4*n²+3*n+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072025

/-- `n^4+2*n^3+4*n²+3*n+1` -/
def P5013716484922619372.Spec : Prop :=
  ∀ n, (P5013716484922619372.a n : ℤ) = A072025 n

theorem P5013716484922619372.correct : P5013716484922619372.Spec := by
  intro n
  simp only [A072025]

end A072025

/-! ## A072025.P8048192567174060730

`∑[n^3+(n+1)^3]+C(n²+1, 2)`
-/

namespace A072025.P8048192567174060730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n ^ 2 + 1) 2

end

end A072025.P8048192567174060730

namespace A072025

/-- `∑[n^3+(n+1)^3]+C(n²+1, 2)` -/
def P8048192567174060730.Spec : Prop :=
  ∀ n, (P8048192567174060730.a n : ℤ) = A072025 n

end A072025

/-! ## A072025.P1558779910285777278

`∑[A008532(n)]`
-/

namespace A072025.P1558779910285777278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072025.P1558779910285777278

namespace A072025

/-- `∑[A008532(n)]` -/
def P1558779910285777278.Spec : Prop :=
  ∀ n, P1558779910285777278.a n = A072025 n

end A072025

/-! ## A072025.P15257133518651541170

`ceil((sqrt(A057721(n))+n)²)`
-/

namespace A072025.P15257133518651541170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A057721 n : ℝ) + (n : ℝ)) ^ 2⌉

end

end A072025.P15257133518651541170

namespace A072025

/-- `ceil((sqrt(A057721(n))+n)²)` -/
def P15257133518651541170.Spec : Prop :=
  ∀ n, P15257133518651541170.a n = A072025 n

end A072025

/-! ## A072025.P4468114427215585737

`∑[A033430(n)+A008458(n)]`
-/

namespace A072025.P4468114427215585737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072025.P4468114427215585737

namespace A072025

/-- `∑[A033430(n)+A008458(n)]` -/
def P4468114427215585737.Spec : Prop :=
  ∀ n, P4468114427215585737.a n = A072025 n

end A072025

/-! ## A072025.P2379032822719555867

`∑[A061804(n)+A008574(n)]`
-/

namespace A072025.P2379032822719555867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072025.P2379032822719555867

namespace A072025

/-- `∑[A061804(n)+A008574(n)]` -/
def P2379032822719555867.Spec : Prop :=
  ∀ n, P2379032822719555867.a n = A072025 n

end A072025

/-! ## A072025.P15855243485710230762

`A082108(∑[n])`
-/

namespace A072025.P15855243485710230762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072025.P15855243485710230762

namespace A072025

/-- `A082108(∑[n])` -/
def P15855243485710230762.Spec : Prop :=
  ∀ n, P15855243485710230762.a n = A072025 n

end A072025

/-! ## A072025.P9150805559402722818

`A028387(∑[2*n])`
-/

namespace A072025.P9150805559402722818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072025.P9150805559402722818

namespace A072025

/-- `A028387(∑[2*n])` -/
def P9150805559402722818.Spec : Prop :=
  ∀ n, P9150805559402722818.a n = A072025 n

end A072025

/-! ## A072025.P5067830342587146441

`A081352(∑[2*n])`
-/

namespace A072025.P5067830342587146441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072025.P5067830342587146441

namespace A072025

/-- `A081352(∑[2*n])` -/
def P5067830342587146441.Spec : Prop :=
  ∀ n, P5067830342587146441.a n = A072025 n

end A072025

/-! ## A072025.P4614266219924326766

`sqrt(A062938(∑[2*n]))`
-/

namespace A072025.P4614266219924326766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062938 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A072025.P4614266219924326766

namespace A072025

/-- `sqrt(A062938(∑[2*n]))` -/
def P4614266219924326766.Spec : Prop :=
  ∀ n, P4614266219924326766.a n = (A072025 n : ℝ)

end A072025

/-! ## A072025.P14004266734452347052

`A165900(n²+n+2)`
-/

namespace A072025.P14004266734452347052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (n ^ 2 + n + 2)

end

end A072025.P14004266734452347052

namespace A072025

/-- `A165900(n²+n+2)` -/
def P14004266734452347052.Spec : Prop :=
  ∀ n, P14004266734452347052.a n = A072025 n

theorem P14004266734452347052.correct : P14004266734452347052.Spec := by
  intro n
  simp only [A072025, Nat.add_sub_cancel, A072025.P14004266734452347052.a, A072025.P5013716484922619372.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072025

/-! ## A072025.P15210056516183769989

`A111802(A003682(n+1))`
-/

namespace A072025.P15210056516183769989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111802 (A003682 (n + 1)).toNat

end

end A072025.P15210056516183769989

namespace A072025

/-- `A111802(A003682(n+1))` -/
def P15210056516183769989.Spec : Prop :=
  ∀ n, P15210056516183769989.a n = A072025 n

end A072025

/-!
# A072026: Swap twin prime pairs >(3,5) in prime factorization of n.

The programs for A072026, there is no canonical definition to state claims against.
-/

/-! ## A072026.P1411206909572010410

`A065331(1+n)*A072027(A065330(n+1))`
-/

namespace A072026.P1411206909572010410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (1 + n) * A072027 (A065330 (n + 1)).toNat

end

end A072026.P1411206909572010410

/-! ## A072026.P8826498633828737051

`A072027(A064614(1+n))`
-/

namespace A072026.P8826498633828737051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072027 (A064614 (1 + n)).toNat

end

end A072026.P8826498633828737051

/-! ## A072026.P17377081855260128880

`∏{d}[A072027(n+1), A086962(A014963(#))]`
-/

namespace A072026.P17377081855260128880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A086962 (A014963 d).toNat

end

end A072026.P17377081855260128880

/-! ## A072026.P3440510400838166821

`lcm(A065330(A072027(n+1)), A065331(n+1))`
-/

namespace A072026.P3440510400838166821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065330 (A072027 (n + 1)).toNat) (A065331 (n + 1))

end

end A072026.P3440510400838166821

/-! ## A072026.P3155135083981499378

`A072027(A065330(n+1)*A072027(n+1))/A065330(n+1)`
-/

namespace A072026.P3155135083981499378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072027 (A065330 (n + 1) * A072027 (n + 1)).toNat : ℚ) / (A065330 (n + 1) : ℚ)

end

end A072026.P3155135083981499378

/-!
# A072027: Swap (2,3) and all twin prime pairs >(3,5) in prime factorization of n.

The programs for A072027, there is no canonical definition to state claims against.
-/

/-! ## A072027.P5493804726522162280

`A061898(A065331(n+1))*A072026(A065330(n+1))`
-/

namespace A072027.P5493804726522162280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A065331 (n + 1)).toNat * A072026 (A065330 (n + 1)).toNat

end

end A072027.P5493804726522162280

/-! ## A072027.P5280360251027392261

`A064614(A072026(n+1))`
-/

namespace A072027.P5280360251027392261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A072026 (n + 1)).toNat

end

end A072027.P5280360251027392261

/-! ## A072027.P13298303794574427671

`∏{d}[A072026(n+1), A086962(A014963(#))]`
-/

namespace A072027.P13298303794574427671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A086962 (A014963 d).toNat

end

end A072027.P13298303794574427671

/-! ## A072027.P8735007515145617453

`A072026(A064614(n+1))`
-/

namespace A072027.P8735007515145617453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072026 (A064614 (n + 1)).toNat

end

end A072027.P8735007515145617453

/-! ## A072027.P13393730831644399944

`A065331(A061898(n+1))*A072026(A065330(n+1))`
-/

namespace A072027.P13393730831644399944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A061898 (n + 1)).toNat * A072026 (A065330 (n + 1)).toNat

end

end A072027.P13393730831644399944

/-! ## A072027.P11032581201467063116

`A065331(A061898(n+1))/A065331(n+1)*A072026(n+1)`
-/

namespace A072027.P11032581201467063116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (A061898 (n + 1)).toNat : ℚ) / (A065331 (n + 1) : ℚ) * (A072026 (n + 1) : ℚ)

end

end A072027.P11032581201467063116

/-!
# A072030: Array read by antidiagonals: T(n,k) = number of steps in simple Euclidean algorithm for gcd(n,k) where n >= 1, k >= 1.

The programs for A072030, there is no canonical definition to state claims against.
-/

/-! ## A072030.P10871030825037900422

`A285721(n+1)+1`
-/

namespace A072030.P10871030825037900422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (n + 1) + 1

end

end A072030.P10871030825037900422

/-! ## A072030.P14067158771542743259

`A049834(A014132(n+1))-1`
-/

namespace A072030.P14067158771542743259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A014132 (n + 1)).toNat - 1

end

end A072030.P14067158771542743259

/-! ## A072030.P228146255468760636

`A049834(lt[1, A277227(n+1)])-1`
-/

namespace A072030.P228146255468760636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A072030.P228146255468760636

/-! ## A072030.P11020651967764352116

`A267177(A060734(n+1))`
-/

namespace A072030.P11020651967764352116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060734 (n + 1)).toNat

end

end A072030.P11020651967764352116

/-! ## A072030.P9439676658246649360

`A267177(A060736(n+1))`
-/

namespace A072030.P9439676658246649360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060736 (n + 1)).toNat

end

end A072030.P9439676658246649360

/-! ## A072030.P1121827513818462408

`A267177(A081344(n+1))`
-/

namespace A072030.P1121827513818462408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A081344 (n + 1)).toNat

end

end A072030.P1121827513818462408

/-! ## A072030.P13476692128690077110

`A267177(A213928(n+1))`
-/

namespace A072030.P13476692128690077110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A213928 (n + 1)).toNat

end

end A072030.P13476692128690077110

/-! ## A072030.P17080148504830948818

`A267177(A219159(n+1))`
-/

namespace A072030.P17080148504830948818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A219159 (n + 1)).toNat

end

end A072030.P17080148504830948818

/-! ## A072030.P17457106023927336388

`A332342(n+1)+A003988(n+1)`
-/

namespace A072030.P17457106023927336388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332342 (n + 1) + A003988 (n + 1)

end

end A072030.P17457106023927336388

/-! ## A072030.P12750139720045550861

`ceil(log2(A338579(n+2)))`
-/

namespace A072030.P12750139720045550861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A338579 (n + 2) : ℝ)⌉

end

end A072030.P12750139720045550861

/-! ## A072030.P7918642118501016661

`A004736(A000124(A285721(A004736(A000124(n)))))`
-/

namespace A072030.P7918642118501016661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000124 (A285721 (A004736 (A000124 n).toNat).toNat).toNat).toNat

end

end A072030.P7918642118501016661

/-! ## A072030.P7106299410870451332

`A029837(A338579(n+2))`
-/

namespace A072030.P7106299410870451332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A338579 (n + 2)).toNat

end

end A072030.P7106299410870451332

/-! ## A072030.P13463969957050997601

`A070939(A338579(n+2)-1)`
-/

namespace A072030.P13463969957050997601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A338579 (n + 2) - 1).toNat

end

end A072030.P13463969957050997601

/-!
# A072031: Row sums of A072030.

The programs for A072031, there is no canonical definition to state claims against.
-/

/-! ## A072031.P8276740797729484687

`A049835(n+2)-(n+2)`
-/

namespace A072031.P8276740797729484687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049835 (n + 2) - (n + 2 : ℤ)

end

end A072031.P8276740797729484687

/-! ## A072031.P12882239789888607714

`A110571(n+2)-(n+3)`
-/

namespace A072031.P12882239789888607714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110571 (n + 2) - (n + 3 : ℤ)

end

end A072031.P12882239789888607714

/-! ## A072031.P11872227716500686677

`Δ[A049836(n+1)]-(n+2)`
-/

namespace A072031.P11872227716500686677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A072031.P11872227716500686677

/-! ## A072031.P4715463544604120214

`2*A274108(n+2)+1+n`
-/

namespace A072031.P4715463544604120214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274108 (n + 2) + 1 + (n : ℤ)

end

end A072031.P4715463544604120214

/-! ## A072031.P4426253123195562114

`Δ[A049836(n+1)-A000096(n)]`
-/

namespace A072031.P4426253123195562114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049836 (n + 1) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072031.P4426253123195562114

/-! ## A072031.P13262800554923147211

`A005408(A274108(n+2))+n`
-/

namespace A072031.P13262800554923147211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A274108 (n + 2)).toNat + (n : ℤ)

end

end A072031.P13262800554923147211

/-! ## A072031.P5746150622229343420

`A005843(A274108(n+2))+A000027(n+1)`
-/

namespace A072031.P5746150622229343420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A274108 (n + 2)).toNat + A000027 (n + 1)

end

end A072031.P5746150622229343420

/-!
# A072032: a(n) = gcd(2^n, reverse(2^n)) = gcd(2^n, A004086(2^n)) = A055483(2^n).

The programs for A072032, there is no canonical definition to state claims against.
-/

/-! ## A072032.P1228163473588458515

`A055483(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072032.P1228163473588458515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (2 ^ (n + 1))

end

end A072032.P1228163473588458515

/-! ## A072032.P12222327795716186092

`gcd(2^(n+1), A004086(2^(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072032.P12222327795716186092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ (n + 1) : ℤ) (A004086 (2 ^ (n + 1)))

end

end A072032.P12222327795716186092

/-! ## A072032.P15353924401207877972

`A000079(val(A004094(n+1), 2))`
-/

namespace A072032.P15353924401207877972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A004094 (n + 1)).toNat 2)

end

end A072032.P15353924401207877972

/-! ## A072032.P10544657119991772607

`gcd(A000079(n+1), A004094(n+1))`
-/

namespace A072032.P10544657119991772607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (n + 1)) (A004094 (n + 1))

end

end A072032.P10544657119991772607

/-! ## A072032.P8315950786519392725

`A001057(xor(A004094(n+1), A341718(n+1)))`
-/

namespace A072032.P8315950786519392725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.xor (A004094 (n + 1)) (A341718 (n + 1))).toNat

end

end A072032.P8315950786519392725

/-! ## A072032.P9353682454408107832

`A000010(xor(A004094(n+1)-1, A004094(n+1))+1)`
-/

namespace A072032.P9353682454408107832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor (A004094 (n + 1) - 1) (A004094 (n + 1)) + 1).toNat

end

end A072032.P9353682454408107832

/-! ## A072032.P11612088935717038295

`gcd(A067507(n+1), A103166(n+1))`
-/

namespace A072032.P11612088935717038295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067507 (n + 1)) (A103166 (n + 1))

end

end A072032.P11612088935717038295

/-! ## A072032.P17719989059817620343

`and(A004094(n+1)*A126646(2*n), A004094(n+1))`
-/

namespace A072032.P17719989059817620343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004094 (n + 1) * A126646 (2 * n)) (A004094 (n + 1))

end

end A072032.P17719989059817620343

/-!
# A072033: Smallest x > 0 such that gcd(2^x, A004086(2^x)) = 2^n.

The programs for A072033, there is no canonical definition to state claims against.
-/

/-! ## A072033.P15917034639062047726

`A003415(A033049(2*a(n-2)))` with `a(0)=4, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A072033.P15917034639062047726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 2, 3] fun n a =>
  A003415 (A033049 (2 * a (n - 2)).toNat).toNat

end

end A072033.P15917034639062047726

/-! ## A072033.P16147957609203817429

`A106502(A056273(n))-A047218(n+1)`
-/

namespace A072033.P16147957609203817429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106502 (A056273 n).toNat - A047218 (n + 1)

end

end A072033.P16147957609203817429

/-!
# A072034: a(n) = Sum_{k=0..n} binomial(n,k)*k^n.

The programs for A072034, the canonical program `A072034.P8714796421729373445` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072034 has offset 0).

The definition of A072034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*#^n]` (program `A072034.P8714796421729373445`, by `A072034.P8714796421729373445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072034.P8714796421729373445

`∑{#}[n, C(n, #)*#^n]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072034

/-- `∑{#}[n, C(n, #)*#^n]` -/
def P8714796421729373445.Spec : Prop :=
  ∀ n, (P8714796421729373445.a n : ℤ) = A072034 n

theorem P8714796421729373445.correct : P8714796421729373445.Spec := by
  intro n
  simp only [A072034]

end A072034

/-! ## A072034.P15547721450446404842

`A215080(∑[n]+n)`
-/

namespace A072034.P15547721450446404842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215080 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A072034.P15547721450446404842

namespace A072034

/-- `A215080(∑[n]+n)` -/
def P15547721450446404842.Spec : Prop :=
  ∀ n, P15547721450446404842.a n = A072034 n

end A072034

/-! ## A072034.P9449342351887883501

`A038049(n+1)-A074932(n+1)`
-/

namespace A072034.P9449342351887883501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038049 (n + 1) - A074932 (n + 1)

end

end A072034.P9449342351887883501

namespace A072034

/-- `A038049(n+1)-A074932(n+1)` -/
def P9449342351887883501.Spec : Prop :=
  ∀ n, P9449342351887883501.a n = A072034 n

end A072034

/-! ## A072034.P7048509410357821985

`2*A214225(n+1)-A074932(n+1)`
-/

namespace A072034.P7048509410357821985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214225 (n + 1) - A074932 (n + 1)

end

end A072034.P7048509410357821985

namespace A072034

/-- `2*A214225(n+1)-A074932(n+1)` -/
def P7048509410357821985.Spec : Prop :=
  ∀ n, P7048509410357821985.a n = A072034 n

end A072034

/-! ## A072034.P5621492564315775732

`A028310(n)*A074932(A028310(n))`
-/

namespace A072034.P5621492564315775732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A074932 (A028310 n).toNat

end

end A072034.P5621492564315775732

namespace A072034

/-- `A028310(n)*A074932(A028310(n))` -/
def P5621492564315775732.Spec : Prop :=
  ∀ n, P5621492564315775732.a n = A072034 n

end A072034

/-! ## A072034.P4583500804378474705

`gcd(A000038(n), A215080(A000096(n)))`
-/

namespace A072034.P4583500804378474705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215080 (A000096 n).toNat)

end

end A072034.P4583500804378474705

namespace A072034

/-- `gcd(A000038(n), A215080(A000096(n)))` -/
def P4583500804378474705.Spec : Prop :=
  ∀ n, (P4583500804378474705.a n : ℤ) = A072034 n

end A072034

/-! ## A072034.P2547085343648428425

`lcm(A028310(n), A215080(A000096(n)))`
-/

namespace A072034.P2547085343648428425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A215080 (A000096 n).toNat)

end

end A072034.P2547085343648428425

namespace A072034

/-- `lcm(A028310(n), A215080(A000096(n)))` -/
def P2547085343648428425.Spec : Prop :=
  ∀ n, (P2547085343648428425.a n : ℤ) = A072034 n

end A072034

/-!
# A072037: Palindromic powers (with positive exponents) of a prime but not a prime (A025475).

The programs for A072037, there is no canonical definition to state claims against.
-/

/-! ## A072037.P14438885540357220123

`A084093(2+n)`
-/

namespace A072037.P14438885540357220123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084093 (2 + n)

end

end A072037.P14438885540357220123

/-! ## A072037.P1794008195263080166

`record[A084093(A133310(A008619(n)))]`
-/

namespace A072037.P1794008195263080166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084093 (A133310 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072037.P1794008195263080166

/-! ## A072037.P12845682116557336749

`record[A084093(A133310(A133310(n)))]`
-/

namespace A072037.P12845682116557336749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084093 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072037.P12845682116557336749

/-! ## A072037.P4537972613679313808

`∩[A025475(n+1), A035132(n+1)]`
-/

namespace A072037.P4537972613679313808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072037.P4537972613679313808

/-! ## A072037.P9106938656060567904

`∩[A035132(n+1), A073540(n+1)]`
-/

namespace A072037.P9106938656060567904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072037.P9106938656060567904

/-!
# A072038: Column of Zorach additive triangle in which n appears (or 0 in the unlikely event that it does not).

The programs for A072038, there is no canonical definition to state claims against.
-/

/-! ## A072038.P10445374888429752756

`A035358(n+1)-A000217(A072039(n+1)-1)`
-/

namespace A072038.P10445374888429752756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035358 (n + 1) - A000217 (A072039 (n + 1) - 1).toNat

end

end A072038.P10445374888429752756

/-! ## A072038.P17955540171782111708

`A002260(A035358(n+1))`
-/

namespace A072038.P17955540171782111708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A035358 (n + 1)).toNat

end

end A072038.P17955540171782111708

/-! ## A072038.P12341097153197426414

`A002262(A035358(n+1)-1)+1`
-/

namespace A072038.P12341097153197426414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A035358 (n + 1) - 1).toNat + 1

end

end A072038.P12341097153197426414

/-! ## A072038.P17959912460545391488

`A131818(A035358(n+1)+1)-1`
-/

namespace A072038.P17959912460545391488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A035358 (n + 1) + 1).toNat - 1

end

end A072038.P17959912460545391488

/-! ## A072038.P11127459775945599148

`A002262(A072039(n+1)+A035358(n+1))`
-/

namespace A072038.P11127459775945599148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072039 (n + 1) + A035358 (n + 1)).toNat

end

end A072038.P11127459775945599148

/-! ## A072038.P2118198666509331869

`A097285(2*A035358(n+1)-1)`
-/

namespace A072038.P2118198666509331869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A035358 (n + 1) - 1).toNat

end

end A072038.P2118198666509331869

/-! ## A072038.P4677346666845329102

`A097285(A035358(n+1)+A035358(n+1)-1)`
-/

namespace A072038.P4677346666845329102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A035358 (n + 1) + (A035358 (n + 1) - 1)).toNat

end

end A072038.P4677346666845329102

/-!
# A072039: Row of Zorach additive triangle in which n appears (or 0 in the unlikely event that it does not).

The programs for A072039, there is no canonical definition to state claims against.
-/

/-! ## A072039.P14752085817776068569

`round(sqrt(2*A035358(n+1)))`
-/

namespace A072039.P14752085817776068569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A035358 (n + 1) : ℝ))

end

end A072039.P14752085817776068569

/-! ## A072039.P11683399066638546342

`A004526(ceil(2*sqrt(2*A035358(n+1))))`
-/

namespace A072039.P11683399066638546342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈2 * Real.sqrt (2 * A035358 (n + 1) : ℝ)⌉.toNat

end

end A072039.P11683399066638546342

/-! ## A072039.P14819408170242539141

`A002024(A035358(n+1))`
-/

namespace A072039.P14819408170242539141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A035358 (n + 1)).toNat

end

end A072039.P14819408170242539141

/-! ## A072039.P7018518768866743310

`A003056(A035358(n+1)-1)+1`
-/

namespace A072039.P7018518768866743310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A035358 (n + 1) - 1).toNat + 1

end

end A072039.P7018518768866743310

/-! ## A072039.P10899592851041139551

`A143182(A035358(n+1)-A072038(n+1))`
-/

namespace A072039.P10899592851041139551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A035358 (n + 1) - A072038 (n + 1)).toNat

end

end A072039.P10899592851041139551

/-! ## A072039.P2316273142300233781

`A003056(A035358(n+1)+A003056(A035358(n+1)))`
-/

namespace A072039.P2316273142300233781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A035358 (n + 1) + A003056 (A035358 (n + 1)).toNat).toNat

end

end A072039.P2316273142300233781

/-! ## A072039.P17884657779253892696

`A097285(2*A035358(n+1))-1`
-/

namespace A072039.P17884657779253892696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A035358 (n + 1)).toNat - 1

end

end A072039.P17884657779253892696

/-!
# A072040: Numbers n of the form k + reverse(k) for exactly two k.

The programs for A072040, there is no canonical definition to state claims against.
-/

/-! ## A072040.P11845017623182179578

`A067030(eq[2, A067032(n)])`
-/

namespace A072040.P11845017623182179578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072040.P11845017623182179578

/-! ## A072040.P1813719423477215551

`A056964(A067033(eq[2, A067032(n)]))`
-/

namespace A072040.P1813719423477215551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072040.P1813719423477215551

/-! ## A072040.P12741318124157033468

`A056964(A067034(eq[2, A067032(n)]))`
-/

namespace A072040.P12741318124157033468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072040.P12741318124157033468

/-!
# A072042: a(n+2) = a(n+1)*a(n)*(1+1/n), a(1)=a(2)=1.

The programs for A072042, the canonical program `A072042.P15217386057401068703` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072042 has offset 1).

The definition of A072042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072042.P15217386057401068703

`a(n-1)*a(n-2)*(1+1/(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072042

/-- `a(n-1)*a(n-2)*(1+1/(n-1))` -/
def P15217386057401068703.Spec : Prop :=
  ∀ n, P15217386057401068703.a n = (A072042 (n + 1) : ℚ)

end A072042

/-! ## A072042.P4854010734821880485

`a(n-1)/(1-1/n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A072042.P4854010734821880485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (1 - 1 / (n : ℚ)) * a (n - 2)

end

end A072042.P4854010734821880485

namespace A072042

/-- `a(n-1)/(1-1/n)*a(n-2)` -/
def P4854010734821880485.Spec : Prop :=
  ∀ n, P4854010734821880485.a n = (A072042 (n + 1) : ℚ)

end A072042

/-! ## A072042.P11725801070483476558

`A028310(n)*A230053(A289207(n))`
-/

namespace A072042.P11725801070483476558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A230053 (A289207 n).toNat

end

end A072042.P11725801070483476558

namespace A072042

/-- `A028310(n)*A230053(A289207(n))` -/
def P11725801070483476558.Spec : Prop :=
  ∀ n, P11725801070483476558.a n = A072042 (n + 1)

end A072042

/-! ## A072042.P4368192705216050439

`ratio[A230053(abs(1-n))]`
-/

namespace A072042.P4368192705216050439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230053 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A072042.P4368192705216050439

namespace A072042

/-- `ratio[A230053(abs(1-n))]` -/
def P4368192705216050439.Spec : Prop :=
  ∀ n, P4368192705216050439.a n = (A072042 (n + 1) : ℚ)

end A072042

/-!
# A072043: a(n) = a(n-1)*a(n-2)*a(n-3)*(1+1/(n-3)), a(1)=a(2)=a(3)=1.

The programs for A072043, the canonical program `A072043.P8552584380672674034` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072043 has offset 1).

The definition of A072043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072043.P8552584380672674034

`a(n-1)*a(n-2)*a(n-3)*(1+1/(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072043

/-- `a(n-1)*a(n-2)*a(n-3)*(1+1/(n-2))` -/
def P8552584380672674034.Spec : Prop :=
  ∀ n, P8552584380672674034.a n = (A072043 (n + 1) : ℚ)

end A072043

/-! ## A072043.P6380840431811683722

`A057508(∏{d}[A214570(n+1), #])`
-/

namespace A072043.P6380840431811683722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A072043.P6380840431811683722

namespace A072043

/-- `A057508(∏{d}[A214570(n+1), #])` -/
def P6380840431811683722.Spec : Prop :=
  ∀ n, P6380840431811683722.a n = A072043 (n + 1)

end A072043

/-! ## A072043.P12031763145196574391

`A291980(A292200(gcd(n, C(2, n))+n))`
-/

namespace A072043.P12031763145196574391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291980 (A292200 (Nat.gcd n (Nat.choose 2 n) + n)).toNat

end

end A072043.P12031763145196574391

namespace A072043

/-- `A291980(A292200(gcd(n, C(2, n))+n))` -/
def P12031763145196574391.Spec : Prop :=
  ∀ n, P12031763145196574391.a n = A072043 (n + 1)

end A072043

/-! ## A072043.P17687482724308227056

`A291980(A297367(n)+A036557(n))`
-/

namespace A072043.P17687482724308227056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291980 (A297367 n + A036557 n).toNat

end

end A072043.P17687482724308227056

namespace A072043

/-- `A291980(A297367(n)+A036557(n))` -/
def P17687482724308227056.Spec : Prop :=
  ∀ n, P17687482724308227056.a n = A072043 (n + 1)

end A072043

/-!
# A072044: Numerator of Product{prime(k)^2/(prime(k)^2 - 1) | 0<k<=n}, Denominator: A072045.

The programs for A072044, there is no canonical definition to state claims against.
-/

/-! ## A072044.P122710940042417113

`A386402(A335069(n+1))`
-/

namespace A072044.P122710940042417113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386402 (A335069 (n + 1)).toNat

end

end A072044.P122710940042417113

/-!
# A072045: Denominator of Product{prime(k)^2/(prime(k)^2 - 1) | 0<k<=n}, Numerator: A072044.

The programs for A072045, there is no canonical definition to state claims against.
-/

/-! ## A072045.P16082390841317194632

`A386401(A002110(n))`
-/

namespace A072045.P16082390841317194632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386401 (A002110 n).toNat

end

end A072045.P16082390841317194632

/-! ## A072045.P15497234396098767748

`A386401(A335069(n+1))`
-/

namespace A072045.P15497234396098767748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386401 (A335069 (n + 1)).toNat

end

end A072045.P15497234396098767748

/-!
# A072046: Greatest common divisor of product of divisors of n and product of non-divisors < n.

The programs for A072046, the canonical program `A072046.P1909165167796001889` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072046 has offset 1).

The definition of A072046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072046.P1909165167796001889

`gcd(A007955(n+1), A055067(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072046

/-- `gcd(A007955(n+1), A055067(n+1))` -/
def P1909165167796001889.Spec : Prop :=
  ∀ n, (P1909165167796001889.a n : ℤ) = A072046 (n + 1)

theorem P1909165167796001889.correct : P1909165167796001889.Spec := by
  intro n
  simp only [A072046, Nat.add_sub_cancel]

end A072046

/-! ## A072046.P5202668549694831774

`A066570(n+1)/lcm(A007955(n+1), A070251(n+1))`
-/

namespace A072046.P5202668549694831774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066570 (n + 1) : ℚ) / (Int.lcm (A007955 (n + 1)) (A070251 (n + 1)) : ℚ)

end

end A072046.P5202668549694831774

namespace A072046

/-- `A066570(n+1)/lcm(A007955(n+1), A070251(n+1))` -/
def P5202668549694831774.Spec : Prop :=
  ∀ n, P5202668549694831774.a n = (A072046 (n + 1) : ℚ)

end A072046

/-! ## A072046.P1431599637658703429

`gcd((n+1)/∏{d}[n+1, #]*n!, ∏{d}[n+1, #])`
-/

namespace A072046.P1431599637658703429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) * (Nat.factorial n : ℚ))) ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A072046.P1431599637658703429

namespace A072046

/-- `gcd((n+1)/∏{d}[n+1, #]*n!, ∏{d}[n+1, #])` -/
def P1431599637658703429.Spec : Prop :=
  ∀ n, (P1431599637658703429.a n : ℤ) = A072046 (n + 1)

end A072046

/-! ## A072046.P4289342284986892680

`and(A147360(n+2), A206435(A003958(n+2)))`
-/

namespace A072046.P4289342284986892680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147360 (n + 2)) (A206435 (A003958 (n + 2)).toNat)

end

end A072046.P4289342284986892680

namespace A072046

/-- `and(A147360(n+2), A206435(A003958(n+2)))` -/
def P4289342284986892680.Spec : Prop :=
  ∀ n, P4289342284986892680.a n = A072046 (n + 1)

end A072046

/-!
# A072047: Number of prime factors of the squarefree numbers: omega(A005117(n)).

The programs for A072047, the canonical program `A072047.P5309175407323094817` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072047 has offset 1).

The definition of A072047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(A005117(n+1))` (program `A072047.P5309175407323094817`, by `A072047.P5309175407323094817.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072047.P5309175407323094817

`A001221(A005117(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072047

/-- `A001221(A005117(n+1))` -/
def P5309175407323094817.Spec : Prop :=
  ∀ n, P5309175407323094817.a n = A072047 (n + 1)

theorem P5309175407323094817.correct : P5309175407323094817.Spec := by
  intro n
  simp only [A072047, Nat.add_sub_cancel]

end A072047

/-! ## A072047.P5552611537557706953

`log2(A072048(n+1))`
-/

namespace A072047.P5552611537557706953
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A072048 (n + 1) : ℝ)

end

end A072047.P5552611537557706953

namespace A072047

/-- `log2(A072048(n+1))` -/
def P5552611537557706953.Spec : Prop :=
  ∀ n, P5552611537557706953.a n = (A072047 (n + 1) : ℝ)

end A072047

/-! ## A072047.P15908249306977040876

`∑{e}[comp[A105570(n)], #]`
-/

namespace A072047.P15908249306977040876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A072047.P15908249306977040876

namespace A072047

/-- `∑{e}[comp[A105570(n)], #]` -/
def P15908249306977040876.Spec : Prop :=
  ∀ n, (P15908249306977040876.a n : ℤ) = A072047 (n + 1)

end A072047

/-! ## A072047.P14021411740152222059

`∑{e}[A005117(n+1), #]`
-/

namespace A072047.P14021411740152222059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072047.P14021411740152222059

namespace A072047

/-- `∑{e}[A005117(n+1), #]` -/
def P14021411740152222059.Spec : Prop :=
  ∀ n, (P14021411740152222059.a n : ℤ) = A072047 (n + 1)

end A072047

/-! ## A072047.P4349575893073782957

`∑{e}[record[A007947(n+1)], #]`
-/

namespace A072047.P4349575893073782957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072047.P4349575893073782957

namespace A072047

/-- `∑{e}[record[A007947(n+1)], #]` -/
def P4349575893073782957.Spec : Prop :=
  ∀ n, (P4349575893073782957.a n : ℤ) = A072047 (n + 1)

end A072047

/-! ## A072047.P2711517027087661074

`A001221(comp[A105570(n)])`
-/

namespace A072047.P2711517027087661074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072047.P2711517027087661074

namespace A072047

/-- `A001221(comp[A105570(n)])` -/
def P2711517027087661074.Spec : Prop :=
  ∀ n, P2711517027087661074.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P16048339369927130493

`A001222(comp[A105570(n)])`
-/

namespace A072047.P16048339369927130493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072047.P16048339369927130493

namespace A072047

/-- `A001222(comp[A105570(n)])` -/
def P16048339369927130493.Spec : Prop :=
  ∀ n, P16048339369927130493.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P6186346683132034736

`A001222(lt[A105570(n), n])`
-/

namespace A072047.P6186346683132034736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A072047.P6186346683132034736

namespace A072047

/-- `A001222(lt[A105570(n), n])` -/
def P6186346683132034736.Spec : Prop :=
  ∀ n, P6186346683132034736.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P13304704325580928964

`A001221(record[A007913(n+1)])`
-/

namespace A072047.P13304704325580928964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072047.P13304704325580928964

namespace A072047

/-- `A001221(record[A007913(n+1)])` -/
def P13304704325580928964.Spec : Prop :=
  ∀ n, P13304704325580928964.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P1466844181242392975

`A001221(record[A007947(n+1)])`
-/

namespace A072047.P1466844181242392975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072047.P1466844181242392975

namespace A072047

/-- `A001221(record[A007947(n+1)])` -/
def P1466844181242392975.Spec : Prop :=
  ∀ n, P1466844181242392975.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P10516322128410761171

`∑{d}[A005117(n+1), A349612(#)]`
-/

namespace A072047.P10516322128410761171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349612 d

end

end A072047.P10516322128410761171

namespace A072047

/-- `∑{d}[A005117(n+1), A349612(#)]` -/
def P10516322128410761171.Spec : Prop :=
  ∀ n, P10516322128410761171.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P3323071212789399690

`A001222(A005117(n+1)+char[1])`
-/

namespace A072047.P3323071212789399690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005117 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A072047.P3323071212789399690

namespace A072047

/-- `A001222(A005117(n+1)+char[1])` -/
def P3323071212789399690.Spec : Prop :=
  ∀ n, P3323071212789399690.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P7679273907226261761

`A001221(A243348(n+1)+n+1)`
-/

namespace A072047.P7679273907226261761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A072047.P7679273907226261761

namespace A072047

/-- `A001221(A243348(n+1)+n+1)` -/
def P7679273907226261761.Spec : Prop :=
  ∀ n, P7679273907226261761.a n = A072047 (n + 1)

theorem P7679273907226261761.correct : P7679273907226261761.Spec := by
  intro n
  simp only [A072047, Nat.add_sub_cancel, A072047.P7679273907226261761.a, A072047.P5309175407323094817.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A243348, A243348.P5579662287376898014.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072047

/-! ## A072047.P8943591234501143223

`A001222(A243348(n+1)+n+1)`
-/

namespace A072047.P8943591234501143223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A072047.P8943591234501143223

namespace A072047

/-- `A001222(A243348(n+1)+n+1)` -/
def P8943591234501143223.Spec : Prop :=
  ∀ n, P8943591234501143223.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P17561905658952756353

`A001222(A005117(2*n+1-n))`
-/

namespace A072047.P17561905658952756353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005117 (2 * n + 1 - n)).toNat

end

end A072047.P17561905658952756353

namespace A072047

/-- `A001222(A005117(2*n+1-n))` -/
def P17561905658952756353.Spec : Prop :=
  ∀ n, P17561905658952756353.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P12788441546338542896

`A001222(eq[1, A008683(n+1)²]+1)`
-/

namespace A072047.P12788441546338542896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072047.P12788441546338542896

namespace A072047

/-- `A001222(eq[1, A008683(n+1)²]+1)` -/
def P12788441546338542896.Spec : Prop :=
  ∀ n, P12788441546338542896.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P2064691885928704048

`A001222(record[lcm(n+1, A008683(n+1))])`
-/

namespace A072047.P2064691885928704048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A072047.P2064691885928704048

namespace A072047

/-- `A001222(record[lcm(n+1, A008683(n+1))])` -/
def P2064691885928704048.Spec : Prop :=
  ∀ n, P2064691885928704048.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P15927568258423349373

`A001222(eq[A001222(n+1), A001221(n+1)]+1)`
-/

namespace A072047.P15927568258423349373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A072047.P15927568258423349373

namespace A072047

/-- `A001222(eq[A001222(n+1), A001221(n+1)]+1)` -/
def P15927568258423349373.Spec : Prop :=
  ∀ n, P15927568258423349373.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P10678355698340804152

`A368779(A371188(n+1))`
-/

namespace A072047.P10678355698340804152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (A371188 (n + 1)).toNat

end

end A072047.P10678355698340804152

namespace A072047

/-- `A368779(A371188(n+1))` -/
def P10678355698340804152.Spec : Prop :=
  ∀ n, P10678355698340804152.a n = A072047 (n + 1)

end A072047

/-! ## A072047.P193038591402096114

`∑{e}[record[∏{p}[n, #]], #]`
-/

namespace A072047.P193038591402096114
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A072047.P193038591402096114

namespace A072047

/-- `∑{e}[record[∏{p}[n, #]], #]` -/
def P193038591402096114.Spec : Prop :=
  ∀ n, (P193038591402096114.a n : ℤ) = A072047 (n + 1)

end A072047

/-!
# A072048: Number of divisors of the squarefree numbers: tau(A005117(n)).

The programs for A072048, the canonical program `A072048.P3004576775245362888` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072048 has offset 1).

The definition of A072048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A005117(n+1))` (program `A072048.P3004576775245362888`, by `A072048.P3004576775245362888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072048.P12003909138747312136

`2^A072047(n+1)`
-/

namespace A072048.P12003909138747312136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A072047 (n + 1) : ℤ)

end

end A072048.P12003909138747312136

namespace A072048

/-- `2^A072047(n+1)` -/
def P12003909138747312136.Spec : Prop :=
  ∀ n, P12003909138747312136.a n = (A072048 (n + 1) : ℚ)

end A072048

/-! ## A072048.P3004576775245362888

`A000005(A005117(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072048

/-- `A000005(A005117(n+1))` -/
def P3004576775245362888.Spec : Prop :=
  ∀ n, P3004576775245362888.a n = A072048 (n + 1)

theorem P3004576775245362888.correct : P3004576775245362888.Spec := by
  intro n
  simp only [A072048, Nat.add_sub_cancel]

end A072048

/-! ## A072048.P5914696817898815359

`2^∑{e}[A005117(n+1), #]`
-/

namespace A072048.P5914696817898815359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A072048.P5914696817898815359

namespace A072048

/-- `2^∑{e}[A005117(n+1), #]` -/
def P5914696817898815359.Spec : Prop :=
  ∀ n, (P5914696817898815359.a n : ℤ) = A072048 (n + 1)

end A072048

/-! ## A072048.P608047053911472675

`A000005(comp[A105570(n)])`
-/

namespace A072048.P608047053911472675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072048.P608047053911472675

namespace A072048

/-- `A000005(comp[A105570(n)])` -/
def P608047053911472675.Spec : Prop :=
  ∀ n, P608047053911472675.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P6794785896790758542

`A000005(lt[A105570(n), n])`
-/

namespace A072048.P6794785896790758542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A072048.P6794785896790758542

namespace A072048

/-- `A000005(lt[A105570(n), n])` -/
def P6794785896790758542.Spec : Prop :=
  ∀ n, P6794785896790758542.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P17162873420871135578

`A000005(sqrt(A062503(n+1)))`
-/

namespace A072048.P17162873420871135578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A072048.P17162873420871135578

namespace A072048

/-- `A000005(sqrt(A062503(n+1)))` -/
def P17162873420871135578.Spec : Prop :=
  ∀ n, P17162873420871135578.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P13429115812740535940

`A000005(record[A003967(n+1)])`
-/

namespace A072048.P13429115812740535940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072048.P13429115812740535940

namespace A072048

/-- `A000005(record[A003967(n+1)])` -/
def P13429115812740535940.Spec : Prop :=
  ∀ n, P13429115812740535940.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P15841455610715223791

`A000005(record[A007913(n+1)])`
-/

namespace A072048.P15841455610715223791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072048.P15841455610715223791

namespace A072048

/-- `A000005(record[A007913(n+1)])` -/
def P15841455610715223791.Spec : Prop :=
  ∀ n, P15841455610715223791.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P8849639169804220647

`A000005(record[A007947(n+1)])`
-/

namespace A072048.P8849639169804220647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072048.P8849639169804220647

namespace A072048

/-- `A000005(record[A007947(n+1)])` -/
def P8849639169804220647.Spec : Prop :=
  ∀ n, P8849639169804220647.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P6763483522883364045

`A000005(record[A055231(n+1)])`
-/

namespace A072048.P6763483522883364045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072048.P6763483522883364045

namespace A072048

/-- `A000005(record[A055231(n+1)])` -/
def P6763483522883364045.Spec : Prop :=
  ∀ n, P6763483522883364045.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P12168784997783041812

`A000005(record[A055653(n+1)])`
-/

namespace A072048.P12168784997783041812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072048.P12168784997783041812

namespace A072048

/-- `A000005(record[A055653(n+1)])` -/
def P12168784997783041812.Spec : Prop :=
  ∀ n, P12168784997783041812.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P15880132047347648984

`∑{d}[A005117(n+1), A008683(#)²]`
-/

namespace A072048.P15880132047347648984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d ^ 2

end

end A072048.P15880132047347648984

namespace A072048

/-- `∑{d}[A005117(n+1), A008683(#)²]` -/
def P15880132047347648984.Spec : Prop :=
  ∀ n, P15880132047347648984.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P7125046838866393513

`A000005(eq[1, A005361(n+1)]+1)`
-/

namespace A072048.P7125046838866393513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072048.P7125046838866393513

namespace A072048

/-- `A000005(eq[1, A005361(n+1)]+1)` -/
def P7125046838866393513.Spec : Prop :=
  ∀ n, P7125046838866393513.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P11954272176457634978

`A293442(A005117(2*n+1-n))`
-/

namespace A072048.P11954272176457634978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A005117 (2 * n + 1 - n)).toNat

end

end A072048.P11954272176457634978

namespace A072048

/-- `A293442(A005117(2*n+1-n))` -/
def P11954272176457634978.Spec : Prop :=
  ∀ n, P11954272176457634978.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P9115192544253753329

`A000005(eq[1, A008683(n+1)²]+1)`
-/

namespace A072048.P9115192544253753329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072048.P9115192544253753329

namespace A072048

/-- `A000005(eq[1, A008683(n+1)²]+1)` -/
def P9115192544253753329.Spec : Prop :=
  ∀ n, P9115192544253753329.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P4902261291221883732

`A000005(record[lcm(n+1, A008683(n+1))])`
-/

namespace A072048.P4902261291221883732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A072048.P4902261291221883732

namespace A072048

/-- `A000005(record[lcm(n+1, A008683(n+1))])` -/
def P4902261291221883732.Spec : Prop :=
  ∀ n, P4902261291221883732.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P11562953004302363603

`A000005(eq[A001222(n+1), A001221(n+1)]+1)`
-/

namespace A072048.P11562953004302363603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A072048.P11562953004302363603

namespace A072048

/-- `A000005(eq[A001222(n+1), A001221(n+1)]+1)` -/
def P11562953004302363603.Spec : Prop :=
  ∀ n, P11562953004302363603.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P11421141254910769705

`A366438(A383031(n+1))`
-/

namespace A072048.P11421141254910769705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (A383031 (n + 1)).toNat

end

end A072048.P11421141254910769705

namespace A072048

/-- `A366438(A383031(n+1))` -/
def P11421141254910769705.Spec : Prop :=
  ∀ n, P11421141254910769705.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P14494214463404066785

`A358040(A371188(n+1))`
-/

namespace A072048.P14494214463404066785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358040 (A371188 (n + 1)).toNat

end

end A072048.P14494214463404066785

namespace A072048

/-- `A358040(A371188(n+1))` -/
def P14494214463404066785.Spec : Prop :=
  ∀ n, P14494214463404066785.a n = A072048 (n + 1)

end A072048

/-! ## A072048.P18117675965268341479

`filter[A358040(n+1), A010060(#)]`
-/

namespace A072048.P18117675965268341479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A072048.P18117675965268341479

namespace A072048

/-- `filter[A358040(n+1), A010060(#)]` -/
def P18117675965268341479.Spec : Prop :=
  ∀ n, P18117675965268341479.a n = A072048 (n + 1)

end A072048

/-!
# A072049: a(n) = floor(2^(n/(floor(n*log(2)/log(prime(n)))))).

The programs for A072049, the canonical program `A072049.P15789203772460847773` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072049 has offset 1).

The definition of A072049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^((n+1)/floor((n+1)*log(2)/log(A000040(n+1)))))` (program `A072049.P15789203772460847773`, by `A072049.P15789203772460847773.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072049.P15789203772460847773

`floor(2^((n+1)/floor((n+1)*log(2)/log(A000040(n+1)))))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072049

/-- `floor(2^((n+1)/floor((n+1)*log(2)/log(A000040(n+1)))))` -/
def P15789203772460847773.Spec : Prop :=
  ∀ n, P15789203772460847773.a n = A072049 (n + 1)

theorem P15789203772460847773.correct : P15789203772460847773.Spec := by
  intro n
  simp only [A072049, Nat.add_sub_cancel]

end A072049

/-! ## A072049.P4904154353626092623

`A320487(A072482(n+1))`
-/

namespace A072049.P4904154353626092623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (A072482 (n + 1)).toNat

end

end A072049.P4904154353626092623

namespace A072049

/-- `A320487(A072482(n+1))` -/
def P4904154353626092623.Spec : Prop :=
  ∀ n, P4904154353626092623.a n = A072049 (n + 1)

end A072049

/-! ## A072049.P14274758675984009418

`A340547(A261422(n+1))`
-/

namespace A072049.P14274758675984009418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340547 (A261422 (n + 1)).toNat

end

end A072049.P14274758675984009418

namespace A072049

/-- `A340547(A261422(n+1))` -/
def P14274758675984009418.Spec : Prop :=
  ∀ n, P14274758675984009418.a n = A072049 (n + 1)

end A072049

/-! ## A072049.P10377130920567209296

`A126605(A344822(n+2))`
-/

namespace A072049.P10377130920567209296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 (A344822 (n + 2)).toNat

end

end A072049.P10377130920567209296

namespace A072049

/-- `A126605(A344822(n+2))` -/
def P10377130920567209296.Spec : Prop :=
  ∀ n, P10377130920567209296.a n = A072049 (n + 1)

end A072049

/-! ## A072049.P14725185371500612048

`A340547(A262544(n+2))`
-/

namespace A072049.P14725185371500612048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340547 (A262544 (n + 2)).toNat

end

end A072049.P14725185371500612048

namespace A072049

/-- `A340547(A262544(n+2))` -/
def P14725185371500612048.Spec : Prop :=
  ∀ n, P14725185371500612048.a n = A072049 (n + 1)

end A072049

/-!
# A072055: a(n) = 2*prime(n)+1.

The programs for A072055, the canonical program `A072055.P8252801676711237860` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072055 has offset 1).

The definition of A072055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)+1` (program `A072055.P8252801676711237860`, by `A072055.P8252801676711237860.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072055.P6834316123461544049

`A089241(n+1)-1`
-/

namespace A072055.P6834316123461544049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 1

end

end A072055.P6834316123461544049

namespace A072055

/-- `A089241(n+1)-1` -/
def P6834316123461544049.Spec : Prop :=
  ∀ n, P6834316123461544049.a n = A072055 (n + 1)

theorem P6834316123461544049.correct : P6834316123461544049.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P6834316123461544049.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P8252801676711237860

`2*A000040(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072055

/-- `2*A000040(n+1)+1` -/
def P8252801676711237860.Spec : Prop :=
  ∀ n, P8252801676711237860.a n = A072055 (n + 1)

theorem P8252801676711237860.correct : P8252801676711237860.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel]

end A072055

/-! ## A072055.P4700824050755401828

`1+A100484(1+n)`
-/

namespace A072055.P4700824050755401828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A100484 (1 + n)

end

end A072055.P4700824050755401828

namespace A072055

/-- `1+A100484(1+n)` -/
def P4700824050755401828.Spec : Prop :=
  ∀ n, P4700824050755401828.a n = A072055 (n + 1)

end A072055

/-! ## A072055.P14879124201152337040

`A037168(n+1)+3`
-/

namespace A072055.P14879124201152337040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + 3

end

end A072055.P14879124201152337040

namespace A072055

/-- `A037168(n+1)+3` -/
def P14879124201152337040.Spec : Prop :=
  ∀ n, P14879124201152337040.a n = A072055 (n + 1)

theorem P14879124201152337040.correct : P14879124201152337040.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P14879124201152337040.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P11513593365738376049

`A129069(n+1)-2`
-/

namespace A072055.P11513593365738376049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - 2

end

end A072055.P11513593365738376049

namespace A072055

/-- `A129069(n+1)-2` -/
def P11513593365738376049.Spec : Prop :=
  ∀ n, P11513593365738376049.a n = A072055 (n + 1)

theorem P11513593365738376049.correct : P11513593365738376049.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P11513593365738376049.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129069, A129069.P1730810587281407252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P6450806481115055279

`A131426(n+1)+4`
-/

namespace A072055.P6450806481115055279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + 4

end

end A072055.P6450806481115055279

namespace A072055

/-- `A131426(n+1)+4` -/
def P6450806481115055279.Spec : Prop :=
  ∀ n, P6450806481115055279.a n = A072055 (n + 1)

theorem P6450806481115055279.correct : P6450806481115055279.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P6450806481115055279.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P10923739222321270603

`A140777(n+1)+5`
-/

namespace A072055.P10923739222321270603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + 5

end

end A072055.P10923739222321270603

namespace A072055

/-- `A140777(n+1)+5` -/
def P10923739222321270603.Spec : Prop :=
  ∀ n, P10923739222321270603.a n = A072055 (n + 1)

theorem P10923739222321270603.correct : P10923739222321270603.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P10923739222321270603.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140777, A140777.P12433789027448162273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P9516456140519172125

`ceil(sqrt(A060429(n+1)))`
-/

namespace A072055.P9516456140519172125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060429 (n + 1) : ℝ)⌉

end

end A072055.P9516456140519172125

namespace A072055

/-- `ceil(sqrt(A060429(n+1)))` -/
def P9516456140519172125.Spec : Prop :=
  ∀ n, P9516456140519172125.a n = A072055 (n + 1)

end A072055

/-! ## A072055.P14183528320965834970

`sqrt(A069262(n+1))+1`
-/

namespace A072055.P14183528320965834970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) + 1

end

end A072055.P14183528320965834970

namespace A072055

/-- `sqrt(A069262(n+1))+1` -/
def P14183528320965834970.Spec : Prop :=
  ∀ n, P14183528320965834970.a n = (A072055 (n + 1) : ℝ)

end A072055

/-! ## A072055.P1124656529309648735

`Δ[2*A007504(n)]+1`
-/

namespace A072055.P1124656529309648735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A072055.P1124656529309648735

namespace A072055

/-- `Δ[2*A007504(n)]+1` -/
def P1124656529309648735.Spec : Prop :=
  ∀ n, P1124656529309648735.a n = A072055 (n + 1)

end A072055

/-! ## A072055.P11704645578150998569

`1+2*A000040(n+1)`
-/

namespace A072055.P11704645578150998569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A000040 (n + 1)

end

end A072055.P11704645578150998569

namespace A072055

/-- `1+2*A000040(n+1)` -/
def P11704645578150998569.Spec : Prop :=
  ∀ n, P11704645578150998569.a n = A072055 (n + 1)

theorem P11704645578150998569.correct : P11704645578150998569.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P11704645578150998569.a, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072055

/-! ## A072055.P17932231789521396250

`A001749(n+1)/2+1`
-/

namespace A072055.P17932231789521396250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 + 1

end

end A072055.P17932231789521396250

namespace A072055

/-- `A001749(n+1)/2+1` -/
def P17932231789521396250.Spec : Prop :=
  ∀ n, P17932231789521396250.a n = (A072055 (n + 1) : ℚ)

theorem P17932231789521396250.correct : P17932231789521396250.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P17932231789521396250.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P17053037127255984533

`2*A008864(n+1)-1`
-/

namespace A072055.P17053037127255984533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) - 1

end

end A072055.P17053037127255984533

namespace A072055

/-- `2*A008864(n+1)-1` -/
def P17053037127255984533.Spec : Prop :=
  ∀ n, P17053037127255984533.a n = A072055 (n + 1)

theorem P17053037127255984533.correct : P17053037127255984533.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P17053037127255984533.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P4304186500579068778

`2*A006093(n+1)+3`
-/

namespace A072055.P4304186500579068778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) + 3

end

end A072055.P4304186500579068778

namespace A072055

/-- `2*A006093(n+1)+3` -/
def P4304186500579068778.Spec : Prop :=
  ∀ n, P4304186500579068778.a n = A072055 (n + 1)

theorem P4304186500579068778.correct : P4304186500579068778.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P4304186500579068778.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P11466328916253345653

`A138636(n+1)/3+1`
-/

namespace A072055.P11466328916253345653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 3 + 1

end

end A072055.P11466328916253345653

namespace A072055

/-- `A138636(n+1)/3+1` -/
def P11466328916253345653.Spec : Prop :=
  ∀ n, P11466328916253345653.a n = (A072055 (n + 1) : ℚ)

theorem P11466328916253345653.correct : P11466328916253345653.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P11466328916253345653.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138636, A138636.P18275506092715506513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P17413876152453845406

`2*A113935(n+1)-5`
-/

namespace A072055.P17413876152453845406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113935 (n + 1) - 5

end

end A072055.P17413876152453845406

namespace A072055

/-- `2*A113935(n+1)-5` -/
def P17413876152453845406.Spec : Prop :=
  ∀ n, P17413876152453845406.a n = A072055 (n + 1)

theorem P17413876152453845406.correct : P17413876152453845406.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P17413876152453845406.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P11066607592242232742

`A134591(n+1)+n+2`
-/

namespace A072055.P11066607592242232742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + (n + 2 : ℤ)

end

end A072055.P11066607592242232742

namespace A072055

/-- `A134591(n+1)+n+2` -/
def P11066607592242232742.Spec : Prop :=
  ∀ n, P11066607592242232742.a n = A072055 (n + 1)

theorem P11066607592242232742.correct : P11066607592242232742.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P11066607592242232742.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A134591, A134591.P13784663667261059065.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P11606192471592402873

`or(1, 2*A000040(2*n-(n-1)))`
-/

namespace A072055.P11606192471592402873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A072055.P11606192471592402873

namespace A072055

/-- `or(1, 2*A000040(2*n-(n-1)))` -/
def P11606192471592402873.Spec : Prop :=
  ∀ n, P11606192471592402873.a n = A072055 (n + 1)

end A072055

/-! ## A072055.P938089580128092560

`A166496(n+1)-A000007(n)`
-/

namespace A072055.P938089580128092560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1) - A000007 n

end

end A072055.P938089580128092560

namespace A072055

/-- `A166496(n+1)-A000007(n)` -/
def P938089580128092560.Spec : Prop :=
  ∀ n, P938089580128092560.a n = A072055 (n + 1)

end A072055

/-! ## A072055.P7913401052694200356

`A008864(n+1)+A000040(n+1)`
-/

namespace A072055.P7913401052694200356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000040 (n + 1)

end

end A072055.P7913401052694200356

namespace A072055

/-- `A008864(n+1)+A000040(n+1)` -/
def P7913401052694200356.Spec : Prop :=
  ∀ n, P7913401052694200356.a n = A072055 (n + 1)

theorem P7913401052694200356.correct : P7913401052694200356.Spec := by
  intro n
  simp only [A072055, Nat.add_sub_cancel, A072055.P7913401052694200356.a, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072055

/-! ## A072055.P11014011063508093950

`2*p?[comp[n²]]+1`
-/

namespace A072055.P11014011063508093950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1

end

end A072055.P11014011063508093950

namespace A072055

/-- `2*p?[comp[n²]]+1` -/
def P11014011063508093950.Spec : Prop :=
  ∀ n, (P11014011063508093950.a n : ℤ) = A072055 (n + 1)

end A072055

/-!
# A072056: Number of divisors of 2*prime(n)+1.

The programs for A072056, the canonical program `A072056.P13940639996211056336` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072056 has offset 1).

The definition of A072056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072056.P13940639996211056336

`A000005(A072055(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072056

/-- `A000005(A072055(n+1))` -/
def P13940639996211056336.Spec : Prop :=
  ∀ n, P13940639996211056336.a n = A072056 (n + 1)

theorem P13940639996211056336.correct : P13940639996211056336.Spec := by
  intro n
  simp only [A072056, Nat.add_sub_cancel]

end A072056

/-! ## A072056.P6078620282800919916

`A000005(2*A000040(n+1)+1)`
-/

namespace A072056.P6078620282800919916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000040 (n + 1) + 1).toNat

end

end A072056.P6078620282800919916

namespace A072056

/-- `A000005(2*A000040(n+1)+1)` -/
def P6078620282800919916.Spec : Prop :=
  ∀ n, P6078620282800919916.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P10697730540514415486

`A000005(A278230(n+1))`
-/

namespace A072056.P10697730540514415486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278230 (n + 1)).toNat

end

end A072056.P10697730540514415486

namespace A072056

/-- `A000005(A278230(n+1))` -/
def P10697730540514415486.Spec : Prop :=
  ∀ n, P10697730540514415486.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P3805140556570797551

`A070824(A278230(n+1))+A040000(3*n+4)`
-/

namespace A072056.P3805140556570797551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A278230 (n + 1)).toNat + A040000 (3 * n + 4)

end

end A072056.P3805140556570797551

namespace A072056

/-- `A070824(A278230(n+1))+A040000(3*n+4)` -/
def P3805140556570797551.Spec : Prop :=
  ∀ n, P3805140556570797551.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P16015498428471405995

`A000005(2*p?[xor(1, n)]+1)`
-/

namespace A072056.P16015498428471405995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A072056.P16015498428471405995

namespace A072056

/-- `A000005(2*p?[xor(1, n)]+1)` -/
def P16015498428471405995.Spec : Prop :=
  ∀ n, P16015498428471405995.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P18099992353760812784

`A000005(or(1, 2*p?[xor(1, n)]))`
-/

namespace A072056.P18099992353760812784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A072056.P18099992353760812784

namespace A072056

/-- `A000005(or(1, 2*p?[xor(1, n)]))` -/
def P18099992353760812784.Spec : Prop :=
  ∀ n, P18099992353760812784.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P12023701850232115918

`A000005(xor(1, 2*p?[xor(1, n)]))`
-/

namespace A072056.P12023701850232115918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.xor 1 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A072056.P12023701850232115918

namespace A072056

/-- `A000005(xor(1, 2*p?[xor(1, n)]))` -/
def P12023701850232115918.Spec : Prop :=
  ∀ n, P12023701850232115918.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P7906858287905642794

`A000005(A100484(n+1)+1)`
-/

namespace A072056.P7906858287905642794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A100484 (n + 1) + 1).toNat

end

end A072056.P7906858287905642794

namespace A072056

/-- `A000005(A100484(n+1)+1)` -/
def P7906858287905642794.Spec : Prop :=
  ∀ n, P7906858287905642794.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P16592188091378546063

`A000005(A001747(n+2)+1)`
-/

namespace A072056.P16592188091378546063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001747 (n + 2) + 1).toNat

end

end A072056.P16592188091378546063

namespace A072056

/-- `A000005(A001747(n+2)+1)` -/
def P16592188091378546063.Spec : Prop :=
  ∀ n, P16592188091378546063.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P3502783732925170367

`A000005(A076274(n+2)+2)`
-/

namespace A072056.P3502783732925170367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076274 (n + 2) + 2).toNat

end

end A072056.P3502783732925170367

namespace A072056

/-- `A000005(A076274(n+2)+2)` -/
def P3502783732925170367.Spec : Prop :=
  ∀ n, P3502783732925170367.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P6996930221148255543

`A000005(lcm(2, A000040(n+1))+1)`
-/

namespace A072056.P6996930221148255543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm 2 (A000040 (n + 1)) + 1)

end

end A072056.P6996930221148255543

namespace A072056

/-- `A000005(lcm(2, A000040(n+1))+1)` -/
def P6996930221148255543.Spec : Prop :=
  ∀ n, P6996930221148255543.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P17470443319029239511

`A000005(2*record[A006530(n+2)]+1)`
-/

namespace A072056.P17470443319029239511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A072056.P17470443319029239511

namespace A072056

/-- `A000005(2*record[A006530(n+2)]+1)` -/
def P17470443319029239511.Spec : Prop :=
  ∀ n, P17470443319029239511.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P13100887794403011622

`A000005(2*record[A020639(n+2)]+1)`
-/

namespace A072056.P13100887794403011622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A072056.P13100887794403011622

namespace A072056

/-- `A000005(2*record[A020639(n+2)]+1)` -/
def P13100887794403011622.Spec : Prop :=
  ∀ n, P13100887794403011622.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P2979407303905386421

`A000005(record[2*A000010(n+1)+3])`
-/

namespace A072056.P2979407303905386421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072056.P2979407303905386421

namespace A072056

/-- `A000005(record[2*A000010(n+1)+3])` -/
def P2979407303905386421.Spec : Prop :=
  ∀ n, P2979407303905386421.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P9921230549988666525

`A000005(record[A020639(n+2)+n+3])`
-/

namespace A072056.P9921230549988666525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072056.P9921230549988666525

namespace A072056

/-- `A000005(record[A020639(n+2)+n+3])` -/
def P9921230549988666525.Spec : Prop :=
  ∀ n, P9921230549988666525.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P5154908648052327661

`A000005(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A072056.P5154908648052327661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A072056.P5154908648052327661

namespace A072056

/-- `A000005(A000040(n+1)+A000040(n+1)+1)` -/
def P5154908648052327661.Spec : Prop :=
  ∀ n, P5154908648052327661.a n = A072056 (n + 1)

theorem P5154908648052327661.correct : P5154908648052327661.Spec := by
  intro n
  simp only [A072056, Nat.add_sub_cancel, A072056.P5154908648052327661.a, A072056.P13940639996211056336.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072056

/-! ## A072056.P6986977597110959546

`A000005(eq[n+1, 2*A006530(n+1)]+2)`
-/

namespace A072056.P6986977597110959546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A072056.P6986977597110959546

namespace A072056

/-- `A000005(eq[n+1, 2*A006530(n+1)]+2)` -/
def P6986977597110959546.Spec : Prop :=
  ∀ n, P6986977597110959546.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P15764547060363310697

`A000005(eq[2, (n+1)/A006530(n+1)]+2)`
-/

namespace A072056.P15764547060363310697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2)

end

end A072056.P15764547060363310697

namespace A072056

/-- `A000005(eq[2, (n+1)/A006530(n+1)]+2)` -/
def P15764547060363310697.Spec : Prop :=
  ∀ n, P15764547060363310697.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P13772976929137671607

`A000005(A002659(A000040(n+1)))`
-/

namespace A072056.P13772976929137671607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002659 (A000040 (n + 1)).toNat).toNat

end

end A072056.P13772976929137671607

namespace A072056

/-- `A000005(A002659(A000040(n+1)))` -/
def P13772976929137671607.Spec : Prop :=
  ∀ n, P13772976929137671607.a n = A072056 (n + 1)

end A072056

/-! ## A072056.P3486449826928116059

`A099774(A008864(n+1))`
-/

namespace A072056.P3486449826928116059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A008864 (n + 1)).toNat

end

end A072056.P3486449826928116059

namespace A072056

/-- `A099774(A008864(n+1))` -/
def P3486449826928116059.Spec : Prop :=
  ∀ n, P3486449826928116059.a n = A072056 (n + 1)

end A072056

/-!
# A072057: Sum of divisors of 2*prime(n)+1.

The programs for A072057, the canonical program `A072057.P2864237752006151958` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072057 has offset 1).

The definition of A072057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072057.P2864237752006151958

`A000203(A072055(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072057

/-- `A000203(A072055(n+1))` -/
def P2864237752006151958.Spec : Prop :=
  ∀ n, P2864237752006151958.a n = A072057 (n + 1)

theorem P2864237752006151958.correct : P2864237752006151958.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel]

end A072057

/-! ## A072057.P17428262155619635969

`A000203(2*A000040(n+1)+1)`
-/

namespace A072057.P17428262155619635969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A000040 (n + 1) + 1).toNat

end

end A072057.P17428262155619635969

namespace A072057

/-- `A000203(2*A000040(n+1)+1)` -/
def P17428262155619635969.Spec : Prop :=
  ∀ n, P17428262155619635969.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P11303706030814953535

`∑{d}[A072055(n+1), #]`
-/

namespace A072057.P11303706030814953535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072057.P11303706030814953535

namespace A072057

/-- `∑{d}[A072055(n+1), #]` -/
def P11303706030814953535.Spec : Prop :=
  ∀ n, (P11303706030814953535.a n : ℤ) = A072057 (n + 1)

end A072057

/-! ## A072057.P1840322522109167582

`∑{d}[1+A100484(n+1), #]`
-/

namespace A072057.P1840322522109167582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072057.P1840322522109167582

namespace A072057

/-- `∑{d}[1+A100484(n+1), #]` -/
def P1840322522109167582.Spec : Prop :=
  ∀ n, (P1840322522109167582.a n : ℤ) = A072057 (n + 1)

end A072057

/-! ## A072057.P7336181249192196779

`∑{d}[A001747(n+2)+1, #]`
-/

namespace A072057.P7336181249192196779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072057.P7336181249192196779

namespace A072057

/-- `∑{d}[A001747(n+2)+1, #]` -/
def P7336181249192196779.Spec : Prop :=
  ∀ n, (P7336181249192196779.a n : ℤ) = A072057 (n + 1)

end A072057

/-! ## A072057.P10256029967892616539

`A000203(A100484(n+1)+1)`
-/

namespace A072057.P10256029967892616539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100484 (n + 1) + 1).toNat

end

end A072057.P10256029967892616539

namespace A072057

/-- `A000203(A100484(n+1)+1)` -/
def P10256029967892616539.Spec : Prop :=
  ∀ n, P10256029967892616539.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P15357390926458667747

`A000203(A001747(n+2)+1)`
-/

namespace A072057.P15357390926458667747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001747 (n + 2) + 1).toNat

end

end A072057.P15357390926458667747

namespace A072057

/-- `A000203(A001747(n+2)+1)` -/
def P15357390926458667747.Spec : Prop :=
  ∀ n, P15357390926458667747.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P6204048238356267148

`A000203(A089241(n+1)-1)`
-/

namespace A072057.P6204048238356267148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089241 (n + 1) - 1).toNat

end

end A072057.P6204048238356267148

namespace A072057

/-- `A000203(A089241(n+1)-1)` -/
def P6204048238356267148.Spec : Prop :=
  ∀ n, P6204048238356267148.a n = A072057 (n + 1)

theorem P6204048238356267148.correct : P6204048238356267148.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P6204048238356267148.a, A072057.P2864237752006151958.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072055, A072055.P8252801676711237860.a, A089241, A089241.P14705987553220613803.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P18331371766212222161

`A000203(A037168(n+1)+3)`
-/

namespace A072057.P18331371766212222161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A037168 (n + 1) + 3).toNat

end

end A072057.P18331371766212222161

namespace A072057

/-- `A000203(A037168(n+1)+3)` -/
def P18331371766212222161.Spec : Prop :=
  ∀ n, P18331371766212222161.a n = A072057 (n + 1)

theorem P18331371766212222161.correct : P18331371766212222161.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P18331371766212222161.a, A072057.P2864237752006151958.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037168, A037168.P225285487484933431.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P7409004072292280127

`A000203(A076274(n+2)+2)`
-/

namespace A072057.P7409004072292280127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A076274 (n + 2) + 2).toNat

end

end A072057.P7409004072292280127

namespace A072057

/-- `A000203(A076274(n+2)+2)` -/
def P7409004072292280127.Spec : Prop :=
  ∀ n, P7409004072292280127.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P10370237971634274672

`A000203(A131426(n+1)+4)`
-/

namespace A072057.P10370237971634274672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A131426 (n + 1) + 4).toNat

end

end A072057.P10370237971634274672

namespace A072057

/-- `A000203(A131426(n+1)+4)` -/
def P10370237971634274672.Spec : Prop :=
  ∀ n, P10370237971634274672.a n = A072057 (n + 1)

theorem P10370237971634274672.correct : P10370237971634274672.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P10370237971634274672.a, A072057.P2864237752006151958.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072055, A072055.P8252801676711237860.a, A131426, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P8127565833796448481

`A000203(A140777(n+1)+5)`
-/

namespace A072057.P8127565833796448481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A140777 (n + 1) + 5).toNat

end

end A072057.P8127565833796448481

namespace A072057

/-- `A000203(A140777(n+1)+5)` -/
def P8127565833796448481.Spec : Prop :=
  ∀ n, P8127565833796448481.a n = A072057 (n + 1)

theorem P8127565833796448481.correct : P8127565833796448481.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P8127565833796448481.a, A072057.P2864237752006151958.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072055, A072055.P8252801676711237860.a, A140777, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P2197885067318007797

`A000203(sqrt(A069262(n+1))+1)`
-/

namespace A072057.P2197885067318007797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A069262 (n + 1) : ℝ) + 1)).toNat

end

end A072057.P2197885067318007797

namespace A072057

/-- `A000203(sqrt(A069262(n+1))+1)` -/
def P2197885067318007797.Spec : Prop :=
  ∀ n, P2197885067318007797.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P863172773924124818

`A000203(A001749(n+1)/2+1)`
-/

namespace A072057.P863172773924124818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A072057.P863172773924124818

namespace A072057

/-- `A000203(A001749(n+1)/2+1)` -/
def P863172773924124818.Spec : Prop :=
  ∀ n, P863172773924124818.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P7957688400722733512

`A000203(2*A008864(n+1)-1)`
-/

namespace A072057.P7957688400722733512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A008864 (n + 1) - 1).toNat

end

end A072057.P7957688400722733512

namespace A072057

/-- `A000203(2*A008864(n+1)-1)` -/
def P7957688400722733512.Spec : Prop :=
  ∀ n, P7957688400722733512.a n = A072057 (n + 1)

theorem P7957688400722733512.correct : P7957688400722733512.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P7957688400722733512.a, A072057.P2864237752006151958.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P1191609207872542245

`A000203(record[A020639(n+2)+n+3])`
-/

namespace A072057.P1191609207872542245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072057.P1191609207872542245

namespace A072057

/-- `A000203(record[A020639(n+2)+n+3])` -/
def P1191609207872542245.Spec : Prop :=
  ∀ n, P1191609207872542245.a n = A072057 (n + 1)

end A072057

/-! ## A072057.P15981390707975983460

`A000203(A008864(n+1)+A000040(n+1))`
-/

namespace A072057.P15981390707975983460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A072057.P15981390707975983460

namespace A072057

/-- `A000203(A008864(n+1)+A000040(n+1))` -/
def P15981390707975983460.Spec : Prop :=
  ∀ n, P15981390707975983460.a n = A072057 (n + 1)

theorem P15981390707975983460.correct : P15981390707975983460.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P15981390707975983460.a, A072057.P2864237752006151958.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P14285598522374318373

`A000203(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A072057.P14285598522374318373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A072057.P14285598522374318373

namespace A072057

/-- `A000203(A000040(n+1)+A000040(n+1)+1)` -/
def P14285598522374318373.Spec : Prop :=
  ∀ n, P14285598522374318373.a n = A072057 (n + 1)

theorem P14285598522374318373.correct : P14285598522374318373.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P14285598522374318373.a, A072057.P2864237752006151958.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P16892234062973935304

`A000203(A006093(n+1)+A008864(n+1)+1)`
-/

namespace A072057.P16892234062973935304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006093 (n + 1) + (A008864 (n + 1) + 1)).toNat

end

end A072057.P16892234062973935304

namespace A072057

/-- `A000203(A006093(n+1)+A008864(n+1)+1)` -/
def P16892234062973935304.Spec : Prop :=
  ∀ n, P16892234062973935304.a n = A072057 (n + 1)

theorem P16892234062973935304.correct : P16892234062973935304.Spec := by
  intro n
  simp only [A072057, Nat.add_sub_cancel, A072057.P16892234062973935304.a, A072057.P2864237752006151958.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072057

/-! ## A072057.P262536115767185495

`A008438(A000040(n+1))`
-/

namespace A072057.P262536115767185495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (A000040 (n + 1)).toNat

end

end A072057.P262536115767185495

namespace A072057

/-- `A008438(A000040(n+1))` -/
def P262536115767185495.Spec : Prop :=
  ∀ n, P262536115767185495.a n = A072057 (n + 1)

end A072057

/-!
# A072058: Squarefree kernel of 2*prime(n)+1.

The programs for A072058, the canonical program `A072058.P15477409953588563310` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072058 has offset 1).

The definition of A072058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072058.P15477409953588563310

`A007947(A072055(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072058

/-- `A007947(A072055(n+1))` -/
def P15477409953588563310.Spec : Prop :=
  ∀ n, P15477409953588563310.a n = A072058 (n + 1)

theorem P15477409953588563310.correct : P15477409953588563310.Spec := by
  intro n
  simp only [A072058, Nat.add_sub_cancel]

end A072058

/-! ## A072058.P14386725061836302511

`∏{p}[A072055(n+1), #]`
-/

namespace A072058.P14386725061836302511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P14386725061836302511

namespace A072058

/-- `∏{p}[A072055(n+1), #]` -/
def P14386725061836302511.Spec : Prop :=
  ∀ n, (P14386725061836302511.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P10118730638238484959

`∏{p}[1+A100484(n+1), #]`
-/

namespace A072058.P10118730638238484959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P10118730638238484959

namespace A072058

/-- `∏{p}[1+A100484(n+1), #]` -/
def P10118730638238484959.Spec : Prop :=
  ∀ n, (P10118730638238484959.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P989703773074219581

`∏{p}[Δ[2*A007504(n)]+1, #]`
-/

namespace A072058.P989703773074219581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P989703773074219581

namespace A072058

/-- `∏{p}[Δ[2*A007504(n)]+1, #]` -/
def P989703773074219581.Spec : Prop :=
  ∀ n, (P989703773074219581.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P6600289941903231817

`∏{p}[2*A000040(n+1)+1, #]`
-/

namespace A072058.P6600289941903231817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P6600289941903231817

namespace A072058

/-- `∏{p}[2*A000040(n+1)+1, #]` -/
def P6600289941903231817.Spec : Prop :=
  ∀ n, (P6600289941903231817.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P17699651829214679346

`∏{p}[2*sqrt(A001248(n+1))+1, #]`
-/

namespace A072058.P17699651829214679346
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A001248 (n + 1) : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A072058.P17699651829214679346

namespace A072058

/-- `∏{p}[2*sqrt(A001248(n+1))+1, #]` -/
def P17699651829214679346.Spec : Prop :=
  ∀ n, (P17699651829214679346.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P8570788471219218168

`∏{p}[A076274(n+2)+2, #]`
-/

namespace A072058.P8570788471219218168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P8570788471219218168

namespace A072058

/-- `∏{p}[A076274(n+2)+2, #]` -/
def P8570788471219218168.Spec : Prop :=
  ∀ n, (P8570788471219218168.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P17120318389318546885

`∏{p}[2*p?[xor(1, n)+1]+1, #]`
-/

namespace A072058.P17120318389318546885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A072058.P17120318389318546885

namespace A072058

/-- `∏{p}[2*p?[xor(1, n)+1]+1, #]` -/
def P17120318389318546885.Spec : Prop :=
  ∀ n, (P17120318389318546885.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P751899606914494605

`A007947(2*(p?[round(8*n/7)]-2)+5)`
-/

namespace A072058.P751899606914494605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) + 5).toNat

end

end A072058.P751899606914494605

namespace A072058

/-- `A007947(2*(p?[round(8*n/7)]-2)+5)` -/
def P751899606914494605.Spec : Prop :=
  ∀ n, P751899606914494605.a n = A072058 (n + 1)

end A072058

/-! ## A072058.P12974912304365896725

`A007947(A100484(n+1)+1)`
-/

namespace A072058.P12974912304365896725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A100484 (n + 1) + 1).toNat

end

end A072058.P12974912304365896725

namespace A072058

/-- `A007947(A100484(n+1)+1)` -/
def P12974912304365896725.Spec : Prop :=
  ∀ n, P12974912304365896725.a n = A072058 (n + 1)

end A072058

/-! ## A072058.P9151451971482576915

`A007947(A001747(n+2)+1)`
-/

namespace A072058.P9151451971482576915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001747 (n + 2) + 1).toNat

end

end A072058.P9151451971482576915

namespace A072058

/-- `A007947(A001747(n+2)+1)` -/
def P9151451971482576915.Spec : Prop :=
  ∀ n, P9151451971482576915.a n = A072058 (n + 1)

end A072058

/-! ## A072058.P14950275366062410547

`A007947(2*A000040(n+1)+1)`
-/

namespace A072058.P14950275366062410547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * A000040 (n + 1) + 1).toNat

end

end A072058.P14950275366062410547

namespace A072058

/-- `A007947(2*A000040(n+1)+1)` -/
def P14950275366062410547.Spec : Prop :=
  ∀ n, P14950275366062410547.a n = A072058 (n + 1)

end A072058

/-! ## A072058.P112628658094517044

`A007947(2*∑[A054541(n+1)]+1)`
-/

namespace A072058.P112628658094517044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A072058.P112628658094517044

namespace A072058

/-- `A007947(2*∑[A054541(n+1)]+1)` -/
def P112628658094517044.Spec : Prop :=
  ∀ n, P112628658094517044.a n = A072058 (n + 1)

end A072058

/-! ## A072058.P9305414041688225864

`A007947(2*(A008864(n+1)-1)+1)`
-/

namespace A072058.P9305414041688225864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (A008864 (n + 1) - 1) + 1).toNat

end

end A072058.P9305414041688225864

namespace A072058

/-- `A007947(2*(A008864(n+1)-1)+1)` -/
def P9305414041688225864.Spec : Prop :=
  ∀ n, P9305414041688225864.a n = A072058 (n + 1)

theorem P9305414041688225864.correct : P9305414041688225864.Spec := by
  intro n
  simp only [A072058, Nat.add_sub_cancel, A072058.P9305414041688225864.a, A072058.P15477409953588563310.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072058

/-! ## A072058.P15956481163434747584

`A007947(A008864(n+1)+A000040(n+1))`
-/

namespace A072058.P15956481163434747584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A072058.P15956481163434747584

namespace A072058

/-- `A007947(A008864(n+1)+A000040(n+1))` -/
def P15956481163434747584.Spec : Prop :=
  ∀ n, P15956481163434747584.a n = A072058 (n + 1)

theorem P15956481163434747584.correct : P15956481163434747584.Spec := by
  intro n
  simp only [A072058, Nat.add_sub_cancel, A072058.P15956481163434747584.a, A072058.P15477409953588563310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072058

/-! ## A072058.P8145463368308895663

`A007947(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A072058.P8145463368308895663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A072058.P8145463368308895663

namespace A072058

/-- `A007947(A000040(n+1)+A000040(n+1)+1)` -/
def P8145463368308895663.Spec : Prop :=
  ∀ n, P8145463368308895663.a n = A072058 (n + 1)

theorem P8145463368308895663.correct : P8145463368308895663.Spec := by
  intro n
  simp only [A072058, Nat.add_sub_cancel, A072058.P8145463368308895663.a, A072058.P15477409953588563310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072058

/-! ## A072058.P3579190491482247980

`∏{p}[A005408(p?[xor(1, n)+1]), #]`
-/

namespace A072058.P3579190491482247980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P3579190491482247980

namespace A072058

/-- `∏{p}[A005408(p?[xor(1, n)+1]), #]` -/
def P3579190491482247980.Spec : Prop :=
  ∀ n, (P3579190491482247980.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P2080057648644824008

`∏{p}[A144396(p?[xor(1, n)+1]), #]`
-/

namespace A072058.P2080057648644824008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P2080057648644824008

namespace A072058

/-- `∏{p}[A144396(p?[xor(1, n)+1]), #]` -/
def P2080057648644824008.Spec : Prop :=
  ∀ n, (P2080057648644824008.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P8074761413679975866

`∏{p}[A038040(p?[xor(1, n)+1])+1, #]`
-/

namespace A072058.P8074761413679975866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P8074761413679975866

namespace A072058

/-- `∏{p}[A038040(p?[xor(1, n)+1])+1, #]` -/
def P8074761413679975866.Spec : Prop :=
  ∀ n, (P8074761413679975866.a n : ℤ) = A072058 (n + 1)

end A072058

/-! ## A072058.P15808951068188897237

`A099984(A008864(n+1))`
-/

namespace A072058.P15808951068188897237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (A008864 (n + 1)).toNat

end

end A072058.P15808951068188897237

namespace A072058

/-- `A099984(A008864(n+1))` -/
def P15808951068188897237.Spec : Prop :=
  ∀ n, P15808951068188897237.a n = A072058 (n + 1)

end A072058

/-!
# A072059: Smallest prime p such that 2*p+1 has n distinct prime factors.

The programs for A072059, there is no canonical definition to state claims against.
-/

/-! ## A072059.P17968278471773728248

`A006530(A098026(n+2)-1)`
-/

namespace A072059.P17968278471773728248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098026 (n + 2) - 1).toNat

end

end A072059.P17968278471773728248

/-!
# A072060: Smallest prime p such that 2*p+1 has n prime factors (with multiplicity).

The programs for A072060, there is no canonical definition to state claims against.
-/

/-! ## A072060.P10466691796080188764

`∩[A023204(n+1), A329774(n)]`
-/

namespace A072060.P10466691796080188764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072060.P10466691796080188764

/-!
# A072061: [t], 1+[t], [2t], 2+[2t], [3t], 3+[3t], ..., where t=tau = (1+sqrt(5))/2 and []=floor.

The programs for A072061, the canonical program `A072061.P9752039672044796997` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072061 has offset 1).

The definition of A072061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072061.P9752039672044796997

`(n+1)*(1+(-1)^(n+1))/4+floor((2*(n+1)+1-(-1)^(n+1))*(1+sqrt(5))/8)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072061

/-- `(n+1)*(1+(-1)^(n+1))/4+floor((2*(n+1)+1-(-1)^(n+1))*(1+sqrt(5))/8)` -/
def P9752039672044796997.Spec : Prop :=
  ∀ n, P9752039672044796997.a n = (A072061 (n + 1) : ℚ)

end A072061

/-! ## A072061.P823231391919841170

`A054084(xor(1, n)+1)`
-/

namespace A072061.P823231391919841170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (Nat.xor 1 n + 1)

end

end A072061.P823231391919841170

namespace A072061

/-- `A054084(xor(1, n)+1)` -/
def P823231391919841170.Spec : Prop :=
  ∀ n, P823231391919841170.a n = A072061 (n + 1)

end A072061

/-! ## A072061.P3193303412330066468

`A054084(abs(xor(n, -2)))`
-/

namespace A072061.P3193303412330066468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 |Int.xor (n : ℤ) (-2)|.toNat

end

end A072061.P3193303412330066468

namespace A072061

/-- `A054084(abs(xor(n, -2)))` -/
def P3193303412330066468.Spec : Prop :=
  ∀ n, P3193303412330066468.a n = A072061 (n + 1)

end A072061

/-! ## A072061.P16170898996416887081

`A054084(-xor(n, -2))`
-/

namespace A072061.P16170898996416887081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (-Int.xor (n : ℤ) (-2)).toNat

end

end A072061.P16170898996416887081

namespace A072061

/-- `A054084(-xor(n, -2))` -/
def P16170898996416887081.Spec : Prop :=
  ∀ n, P16170898996416887081.a n = A072061 (n + 1)

end A072061

/-! ## A072061.P12349946123465513979

`A054084((-1)^n+n+1)`
-/

namespace A072061.P12349946123465513979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A072061.P12349946123465513979

namespace A072061

/-- `A054084((-1)^n+n+1)` -/
def P12349946123465513979.Spec : Prop :=
  ∀ n, P12349946123465513979.a n = A072061 (n + 1)

end A072061

/-! ## A072061.P14804820238748655067

`A002251(A054084(n+1))`
-/

namespace A072061.P14804820238748655067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A054084 (n + 1)).toNat

end

end A072061.P14804820238748655067

namespace A072061

/-- `A002251(A054084(n+1))` -/
def P14804820238748655067.Spec : Prop :=
  ∀ n, P14804820238748655067.a n = A072061 (n + 1)

end A072061

/-!
# A072062: Inverse permutation to A072061.

The programs for A072062, the canonical program `A072062.P12729312681891732768` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072062 has offset 1).

The definition of A072062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072062.P12729312681891732768

`abs(xor(1, -A064786(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072062

/-- `abs(xor(1, -A064786(n+1)))` -/
def P12729312681891732768.Spec : Prop :=
  ∀ n, P12729312681891732768.a n = A072062 (n + 1)

theorem P12729312681891732768.correct : P12729312681891732768.Spec := by
  intro n
  simp only [A072062, Nat.add_sub_cancel]

end A072062

/-! ## A072062.P6770714066546384740

`2*A026242(n+1)-A005614(n)`
-/

namespace A072062.P6770714066546384740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026242 (n + 1) - A005614 n

end

end A072062.P6770714066546384740

namespace A072062

/-- `2*A026242(n+1)-A005614(n)` -/
def P6770714066546384740.Spec : Prop :=
  ∀ n, P6770714066546384740.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P2464471616515515486

`A014681(A064786(1+n))`
-/

namespace A072062.P2464471616515515486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A064786 (1 + n)).toNat

end

end A072062.P2464471616515515486

namespace A072062

/-- `A014681(A064786(1+n))` -/
def P2464471616515515486.Spec : Prop :=
  ∀ n, P2464471616515515486.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P18238673045457209196

`A014681(A064579(n+3)-2)`
-/

namespace A072062.P18238673045457209196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A064579 (n + 3) - 2).toNat

end

end A072062.P18238673045457209196

namespace A072062

/-- `A014681(A064579(n+3)-2)` -/
def P18238673045457209196.Spec : Prop :=
  ∀ n, P18238673045457209196.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P7855554833568268543

`A103889(A064579(n+3)-2)`
-/

namespace A072062.P7855554833568268543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A064579 (n + 3) - 2).toNat

end

end A072062.P7855554833568268543

namespace A072062

/-- `A103889(A064579(n+3)-2)` -/
def P7855554833568268543.Spec : Prop :=
  ∀ n, P7855554833568268543.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P12196309375431034947

`A103889(A064786(n+1)/C(n, n²)!)`
-/

namespace A072062.P12196309375431034947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.roundAway ((A064786 (n + 1) : ℚ) / (Nat.factorial (Nat.choose n (n ^ 2)) : ℚ))).toNat

end

end A072062.P12196309375431034947

namespace A072062

/-- `A103889(A064786(n+1)/C(n, n²)!)` -/
def P12196309375431034947.Spec : Prop :=
  ∀ n, P12196309375431034947.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P15364540945448691355

`A103889(A064786(n+1))%record[A006530(n+2)]`
-/

namespace A072062.P15364540945448691355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103889 (A064786 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A072062.P15364540945448691355

namespace A072062

/-- `A103889(A064786(n+1))%record[A006530(n+2)]` -/
def P15364540945448691355.Spec : Prop :=
  ∀ n, P15364540945448691355.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P6926047911990346876

`A004442(A064786(n+1)+1)-1`
-/

namespace A072062.P6926047911990346876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A064786 (n + 1) + 1).toNat - 1

end

end A072062.P6926047911990346876

namespace A072062

/-- `A004442(A064786(n+1)+1)-1` -/
def P6926047911990346876.Spec : Prop :=
  ∀ n, P6926047911990346876.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P16455636851288726350

`A064786(A002251(n+1))`
-/

namespace A072062.P16455636851288726350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (A002251 (n + 1)).toNat

end

end A072062.P16455636851288726350

namespace A072062

/-- `A064786(A002251(n+1))` -/
def P16455636851288726350.Spec : Prop :=
  ∀ n, P16455636851288726350.a n = A072062 (n + 1)

end A072062

/-! ## A072062.P10444957378246801651

`A113324(A028310(n))+A000040(n+1)%2`
-/

namespace A072062.P10444957378246801651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A072062.P10444957378246801651

namespace A072062

/-- `A113324(A028310(n))+A000040(n+1)%2` -/
def P10444957378246801651.Spec : Prop :=
  ∀ n, P10444957378246801651.a n = A072062 (n + 1)

end A072062

/-!
# A072063: Smallest prime of form prime(n)+k*n, k>0.

The programs for A072063, there is no canonical definition to state claims against.
-/

/-! ## A072063.P3312844678818167287

`A000040(A071850(n+1))`
-/

namespace A072063.P3312844678818167287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071850 (n + 1)).toNat

end

end A072063.P3312844678818167287

/-! ## A072063.P9733620105438462931

`A008578(A071850(1+n)+1)`
-/

namespace A072063.P9733620105438462931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A071850 (1 + n) + 1).toNat

end

end A072063.P9733620105438462931

/-! ## A072063.P16309496847783493941

`A065091(A071850(n+1)-1)`
-/

namespace A072063.P16309496847783493941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A071850 (n + 1) - 1).toNat

end

end A072063.P16309496847783493941

/-! ## A072063.P11904561807156531585

`A158611(A071850(n+1)+2)`
-/

namespace A072063.P11904561807156531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A071850 (n + 1) + 2).toNat

end

end A072063.P11904561807156531585

/-! ## A072063.P4682405039899254537

`∑{d}[A071850(n+1), A007444(#)]`
-/

namespace A072063.P4682405039899254537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A072063.P4682405039899254537

/-! ## A072063.P7093016527363412203

`A006005(A071850(n+1))%A027772(n)`
-/

namespace A072063.P7093016527363412203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (A071850 (n + 1)).toNat) (A027772 (n + 11))

end

end A072063.P7093016527363412203

/-! ## A072063.P8583283662167481795

`A073846(2*A071850(n+1))`
-/

namespace A072063.P8583283662167481795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A071850 (n + 1)).toNat

end

end A072063.P8583283662167481795

/-! ## A072063.P10022157671997353527

`A082500(2*A071850(n+1))`
-/

namespace A072063.P10022157671997353527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A071850 (n + 1)).toNat

end

end A072063.P10022157671997353527

/-! ## A072063.P2198888579677223907

`A219606(2*A071850(n+1))`
-/

namespace A072063.P2198888579677223907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A071850 (n + 1)).toNat

end

end A072063.P2198888579677223907

/-! ## A072063.P13762042639660136085

`A000040(A359273(n+1)+n+1)`
-/

namespace A072063.P13762042639660136085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A359273 (n + 1) + (n + 1 : ℤ)).toNat

end

end A072063.P13762042639660136085

/-!
# A072064: Least k>0 such that prime(n)+k*n is prime.

The programs for A072064, there is no canonical definition to state claims against.
-/

/-! ## A072064.P16016655369036613146

`(A072063(n+1)-A000040(n+1))/(n+1)`
-/

namespace A072064.P16016655369036613146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072063 (n + 1) - A000040 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A072064.P16016655369036613146

/-! ## A072064.P18264526198718583660

`(A072063(n+1)-A008578(n+2))/(n+1)`
-/

namespace A072064.P18264526198718583660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072063 (n + 1) - A008578 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A072064.P18264526198718583660

/-! ## A072064.P2901489146909112261

`A279387(or(A008458(n), A063725(n+1)))`
-/

namespace A072064.P2901489146909112261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (Int.lor (A008458 n) (A063725 (n + 1))).toNat

end

end A072064.P2901489146909112261

/-! ## A072064.P4404908129903840147

`A259177(xor(n, A340951(n+6)))`
-/

namespace A072064.P4404908129903840147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259177 (Int.xor (n : ℤ) (A340951 (n + 6))).toNat

end

end A072064.P4404908129903840147

/-! ## A072064.P11409437938238528286

`∏{e}[A335728(A329423(n+1)), #]`
-/

namespace A072064.P11409437938238528286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335728 (A329423 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072064.P11409437938238528286

/-!
# A072065: Define a "piece" to consist of 3 mutually touching pennies welded together to form a triangle; sequence gives side lengths of triangles that can be made from such pieces.

The programs for A072065, the canonical program `A072065.P7445104955063238776` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072065 has offset 1).

The definition of A072065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072065.P11684110170862347620

`ogf((2x+7x^2+2x^3+x^4)/(1-x-x^4+x^5))`
-/

namespace A072065.P11684110170862347620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 7, 2, 1] [1, -1, 0, 0, -1, 1] n

end

end A072065.P11684110170862347620

namespace A072065

/-- `ogf((2x+7x^2+2x^3+x^4)/(1-x-x^4+x^5))` -/
def P11684110170862347620.Spec : Prop :=
  ∀ n, P11684110170862347620.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P7445104955063238776

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=11, a(4)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072065

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P7445104955063238776.Spec : Prop :=
  ∀ n, P7445104955063238776.a n = A072065 (n + 1)

theorem P7445104955063238776.correct : P7445104955063238776.Spec := by
  intro n
  simp only [A072065, Nat.add_sub_cancel]

end A072065

/-! ## A072065.P8024413077864872648

`(6*(n+1)-4-(-1)^(n+1)+3*(-1)^((2*(n+1)+1-(-1)^(n+1))/4))/2`
-/

namespace A072065.P8024413077864872648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - 4 - (-1) ^ (n + 1) : ℝ) + 3 * (-1 : ℝ) ^ (((2 * (n + 1) + 1 : ℤ) - (-1) ^ (n + 1) : ℚ) / 4 : ℝ)) / 2

end

end A072065.P8024413077864872648

namespace A072065

/-- `(6*(n+1)-4-(-1)^(n+1)+3*(-1)^((2*(n+1)+1-(-1)^(n+1))/4))/2` -/
def P8024413077864872648.Spec : Prop :=
  ∀ n, P8024413077864872648.a n = (A072065 (n + 1) : ℝ)

end A072065

/-! ## A072065.P2374304262667751223

`a(n-4)+12` with `a(0)=0, a(1)=2, a(2)=9, a(3)=11`
-/

namespace A072065.P2374304262667751223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 9, 11] fun n a =>
  a (n - 4) + 12

end

end A072065.P2374304262667751223

namespace A072065

/-- `a(n-4)+12` -/
def P2374304262667751223.Spec : Prop :=
  ∀ n, (P2374304262667751223.a n : ℤ) = A072065 (n + 1)

end A072065

/-! ## A072065.P9481137169310929387

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=7, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A072065.P9481137169310929387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072065.P9481137169310929387

namespace A072065

/-- `∑[floor(a(n-4))]` -/
def P9481137169310929387.Spec : Prop :=
  ∀ n, (P9481137169310929387.a n : ℤ) = A072065 (n + 1)

end A072065

/-! ## A072065.P12524674230499801689

`∑[a(n-4)%8]` with `a(0)=0, a(1)=2, a(2)=7, a(3)=2, a(4)=1`
-/

namespace A072065.P12524674230499801689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7, 2, 1] fun n f1 =>
  f1 (n - 4) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072065.P12524674230499801689

namespace A072065

/-- `∑[a(n-4)%8]` -/
def P12524674230499801689.Spec : Prop :=
  ∀ n, (P12524674230499801689.a n : ℤ) = A072065 (n + 1)

end A072065

/-! ## A072065.P13666294953331750147

`A184549(n)-4*n`
-/

namespace A072065.P13666294953331750147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184549 n - (4 * n : ℤ)

end

end A072065.P13666294953331750147

namespace A072065

/-- `A184549(n)-4*n` -/
def P13666294953331750147.Spec : Prop :=
  ∀ n, P13666294953331750147.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P6846693816240686878

`floor(A074229(n+1)/2)`
-/

namespace A072065.P6846693816240686878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074229 (n + 1) : ℚ) / 2⌋

end

end A072065.P6846693816240686878

namespace A072065

/-- `floor(A074229(n+1)/2)` -/
def P6846693816240686878.Spec : Prop :=
  ∀ n, P6846693816240686878.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P8088404566489197297

`record[n*A322796(2*n+1)]`
-/

namespace A072065.P8088404566489197297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322796 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072065.P8088404566489197297

namespace A072065

/-- `record[n*A322796(2*n+1)]` -/
def P8088404566489197297.Spec : Prop :=
  ∀ n, P8088404566489197297.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P7165118818607061400

`A204542(n+1)-A066530(n)`
-/

namespace A072065.P7165118818607061400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1) - A066530 n

end

end A072065.P7165118818607061400

namespace A072065

/-- `A204542(n+1)-A066530(n)` -/
def P7165118818607061400.Spec : Prop :=
  ∀ n, P7165118818607061400.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P7380826476625593140

`2*A047481(n+1)-A080412(n)`
-/

namespace A072065.P7380826476625593140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047481 (n + 1) - A080412 n

end

end A072065.P7380826476625593140

namespace A072065

/-- `2*A047481(n+1)-A080412(n)` -/
def P7380826476625593140.Spec : Prop :=
  ∀ n, P7380826476625593140.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P13494979749208557004

`A016813(n)+1-A298364(A263449(n))`
-/

namespace A072065.P13494979749208557004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (1 - A298364 (A263449 n).toNat)

end

end A072065.P13494979749208557004

namespace A072065

/-- `A016813(n)+1-A298364(A263449(n))` -/
def P13494979749208557004.Spec : Prop :=
  ∀ n, P13494979749208557004.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P13555022444455781849

`A016813(n)+1-A133256(A298364(n+1))`
-/

namespace A072065.P13555022444455781849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (1 - A133256 (A298364 (n + 1)).toNat)

end

end A072065.P13555022444455781849

namespace A072065

/-- `A016813(n)+1-A133256(A298364(n+1))` -/
def P13555022444455781849.Spec : Prop :=
  ∀ n, P13555022444455781849.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P13379120402148095950

`A007494(A047551(n+1)-n)+A007494(n)`
-/

namespace A072065.P13379120402148095950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A047551 (n + 1) - (n : ℤ)).toNat + A007494 n

end

end A072065.P13379120402148095950

namespace A072065

/-- `A007494(A047551(n+1)-n)+A007494(n)` -/
def P13379120402148095950.Spec : Prop :=
  ∀ n, P13379120402148095950.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P13624167411827961906

`A047589(n+1)+n-A047589(A008619(n))`
-/

namespace A072065.P13624167411827961906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047589 (n + 1) + ((n : ℤ) - A047589 (A008619 n).toNat)

end

end A072065.P13624167411827961906

namespace A072065

/-- `A047589(n+1)+n-A047589(A008619(n))` -/
def P13624167411827961906.Spec : Prop :=
  ∀ n, P13624167411827961906.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P1272631824400758321

`eq[A322796(2*n+1), A322796(A116891(n+2))]`
-/

namespace A072065.P1272631824400758321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (A116891 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072065.P1272631824400758321

namespace A072065

/-- `eq[A322796(2*n+1), A322796(A116891(n+2))]` -/
def P1272631824400758321.Spec : Prop :=
  ∀ n, (P1272631824400758321.a n : ℤ) = A072065 (n + 1)

end A072065

/-! ## A072065.P7265489416778358558

`eq[A123726(n+1)*A322796(2*n+1), A123726(n+1)]`
-/

namespace A072065.P7265489416778358558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 (n + 1) * A322796 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072065.P7265489416778358558

namespace A072065

/-- `eq[A123726(n+1)*A322796(2*n+1), A123726(n+1)]` -/
def P7265489416778358558.Spec : Prop :=
  ∀ n, (P7265489416778358558.a n : ℤ) = A072065 (n + 1)

end A072065

/-! ## A072065.P6416789381704624387

`eq[A322796(2*n+1)*A328578(n+1), A328578(n+1)]`
-/

namespace A072065.P6416789381704624387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (2 * n + 1) * A328578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072065.P6416789381704624387

namespace A072065

/-- `eq[A322796(2*n+1)*A328578(n+1), A328578(n+1)]` -/
def P6416789381704624387.Spec : Prop :=
  ∀ n, (P6416789381704624387.a n : ℤ) = A072065 (n + 1)

end A072065

/-! ## A072065.P12003373808281610974

`A184552(n+1)-5-4*n`
-/

namespace A072065.P12003373808281610974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 (n + 1) - 5 - (4 * n : ℤ)

end

end A072065.P12003373808281610974

namespace A072065

/-- `A184552(n+1)-5-4*n` -/
def P12003373808281610974.Spec : Prop :=
  ∀ n, P12003373808281610974.a n = A072065 (n + 1)

end A072065

/-! ## A072065.P11283081748572857703

`A083026(A047279(n+2))`
-/

namespace A072065.P11283081748572857703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (A047279 (n + 2)).toNat

end

end A072065.P11283081748572857703

namespace A072065

/-- `A083026(A047279(n+2))` -/
def P11283081748572857703.Spec : Prop :=
  ∀ n, P11283081748572857703.a n = A072065 (n + 1)

end A072065

/-!
# A072066: Exceptional (or extraordinary) numbers: m such that A005179(m) < A037019(m).

The programs for A072066, there is no canonical definition to state claims against.
-/

/-! ## A072066.P17038618021492080491

`eq[1, A323510(n+1)]+1`
-/

namespace A072066.P17038618021492080491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072066.P17038618021492080491

/-! ## A072066.P476590587559227203

`filter[A344180(n), A323510(#)]`
-/

namespace A072066.P476590587559227203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P476590587559227203

/-! ## A072066.P7038206789078573429

`filter[A013929(n+1), A323510(#)]`
-/

namespace A072066.P7038206789078573429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P7038206789078573429

/-! ## A072066.P6288762255436135204

`filter[A046099(n+1), A323510(#)]`
-/

namespace A072066.P6288762255436135204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P6288762255436135204

/-! ## A072066.P2941869882991866110

`filter[A046790(n+1), A323510(#)]`
-/

namespace A072066.P2941869882991866110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P2941869882991866110

/-! ## A072066.P4805349551431214032

`filter[A048108(n+1), A323510(#)]`
-/

namespace A072066.P4805349551431214032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P4805349551431214032

/-! ## A072066.P1961147156629822594

`filter[A091212(n+1), A323510(#)]`
-/

namespace A072066.P1961147156629822594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P1961147156629822594

/-! ## A072066.P16096551917737429860

`filter[A100716(n+1), A323510(#)]`
-/

namespace A072066.P16096551917737429860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P16096551917737429860

/-! ## A072066.P12121921434441239944

`filter[A212164(n+1), A323510(#)]`
-/

namespace A072066.P12121921434441239944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P12121921434441239944

/-! ## A072066.P3047588517937056627

`filter[A283312(n+1), A323510(#)]`
-/

namespace A072066.P3047588517937056627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P3047588517937056627

/-! ## A072066.P7808858052962040244

`filter[A293243(n+1), A323510(#)]`
-/

namespace A072066.P7808858052962040244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P7808858052962040244

/-! ## A072066.P7254625701163433790

`filter[A300827(n+1), A323510(#)]`
-/

namespace A072066.P7254625701163433790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P7254625701163433790

/-! ## A072066.P1761466340007235604

`filter[A305800(n+1), A323510(#)]`
-/

namespace A072066.P1761466340007235604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P1761466340007235604

/-! ## A072066.P3100409112175905351

`filter[A305801(n+1), A323510(#)]`
-/

namespace A072066.P3100409112175905351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P3100409112175905351

/-! ## A072066.P17010774411375588280

`filter[A305810(n+1), A323510(#)]`
-/

namespace A072066.P17010774411375588280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P17010774411375588280

/-! ## A072066.P9428502448379302316

`filter[A305811(n+1), A323510(#)]`
-/

namespace A072066.P9428502448379302316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P9428502448379302316

/-! ## A072066.P14499073816145606997

`filter[A305890(n+1), A323510(#)]`
-/

namespace A072066.P14499073816145606997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P14499073816145606997

/-! ## A072066.P15913460084788845004

`filter[A305894(n+1), A323510(#)]`
-/

namespace A072066.P15913460084788845004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P15913460084788845004

/-! ## A072066.P14166698313179689438

`filter[A305900(n+1), A323510(#)]`
-/

namespace A072066.P14166698313179689438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P14166698313179689438

/-! ## A072066.P5747411123441225267

`filter[A305901(n+1), A323510(#)]`
-/

namespace A072066.P5747411123441225267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323510 (f1 j).toNat = 1) n)

end

end A072066.P5747411123441225267

/-!
# A072068: Number of integer solutions to the equation 2x^2+y^2+8z^2=m for an odd number m=2n-1.

The programs for A072068, there is no canonical definition to state claims against.
-/

/-! ## A072068.P9240815552948814210

`A080917(Δ[n²])`
-/

namespace A072068.P9240815552948814210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072068.P9240815552948814210

/-! ## A072068.P12940444614131629723

`lcm(2, A080917(2*n+1))`
-/

namespace A072068.P12940444614131629723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080917 (2 * n + 1))

end

end A072068.P12940444614131629723

/-! ## A072068.P4957812713002136096

`xor(1, xor(1, A080917(n+1+n)))`
-/

namespace A072068.P4957812713002136096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A080917 (n + 1 + n)))

end

end A072068.P4957812713002136096

/-! ## A072068.P10037356774860993801

`A080917(2*n+1)%A002145(n+1)`
-/

namespace A072068.P10037356774860993801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080917 (2 * n + 1)) (A002145 (n + 1))

end

end A072068.P10037356774860993801

/-! ## A072068.P2357864632108010403

`A034947(n+1)²*A080917(2*n+1)`
-/

namespace A072068.P2357864632108010403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * A080917 (2 * n + 1)

end

end A072068.P2357864632108010403

/-! ## A072068.P1536983075029489282

`2*A080918(2*n+1)-A080963(2*n+1)`
-/

namespace A072068.P1536983075029489282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 (2 * n + 1) - A080963 (2 * n + 1)

end

end A072068.P1536983075029489282

/-! ## A072068.P5164388618723593251

`(A246631(2*n+1)-A246814(2*n+1))/2`
-/

namespace A072068.P5164388618723593251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 (2 * n + 1) - A246814 (2 * n + 1) : ℚ) / 2

end

end A072068.P5164388618723593251

/-! ## A072068.P15186927706030369016

`A080918(8*n+4)`
-/

namespace A072068.P15186927706030369016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (8 * n + 4)

end

end A072068.P15186927706030369016

/-!
# A072069: Number of integer solutions to the equation 2x^2+y^2+32z^2=m for an odd number m=2n-1.

The programs for A072069, there is no canonical definition to state claims against.
-/

/-! ## A072069.P5846421350550181568

`A080918(Δ[n²])`
-/

namespace A072069.P5846421350550181568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072069.P5846421350550181568

/-! ## A072069.P181396776438031857

`lcm(2, A080918(2*n+1))`
-/

namespace A072069.P181396776438031857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080918 (2 * n + 1))

end

end A072069.P181396776438031857

/-! ## A072069.P4671682349640750649

`A080918(n+1+n)%(n+7)`
-/

namespace A072069.P4671682349640750649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080918 (n + 1 + n)) (n + 7 : ℤ)

end

end A072069.P4671682349640750649

/-! ## A072069.P17172062981204921445

`A248395(2*n)+A080918(2*n+1)`
-/

namespace A072069.P17172062981204921445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (2 * n) + A080918 (2 * n + 1)

end

end A072069.P17172062981204921445

/-! ## A072069.P16388385575307137773

`(A080963(2*n+1)+A080917(2*n+1))/2`
-/

namespace A072069.P16388385575307137773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 (2 * n + 1) + A080917 (2 * n + 1) : ℚ) / 2

end

end A072069.P16388385575307137773

/-! ## A072069.P4777885578809723115

`A246834(A057944(n))+A080918(n+1+n)`
-/

namespace A072069.P4777885578809723115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246834 (A057944 n).toNat + A080918 (n + 1 + n)

end

end A072069.P4777885578809723115

/-! ## A072069.P12143603899793581681

`A268384(A080918(n+1))+A080918(n+1+n)`
-/

namespace A072069.P12143603899793581681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268384 (A080918 (n + 1)).toNat + A080918 (n + 1 + n)

end

end A072069.P12143603899793581681

/-! ## A072069.P84331071428683899

`A001281(A080963(2*n+1)+A080917(2*n+1))`
-/

namespace A072069.P84331071428683899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A080963 (2 * n + 1) + A080917 (2 * n + 1)).toNat

end

end A072069.P84331071428683899

/-! ## A072069.P5092114075608462609

`A004525(A080963(2*n+1)+A080917(2*n+1))`
-/

namespace A072069.P5092114075608462609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A080963 (2 * n + 1) + A080917 (2 * n + 1)).toNat

end

end A072069.P5092114075608462609

/-! ## A072069.P16580811053629682559

`A004526(A080963(2*n+1)+A080917(2*n+1))`
-/

namespace A072069.P16580811053629682559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080963 (2 * n + 1) + A080917 (2 * n + 1)).toNat

end

end A072069.P16580811053629682559

/-! ## A072069.P12437968328485323353

`A014682(A080963(2*n+1)+A080917(2*n+1))`
-/

namespace A072069.P12437968328485323353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A080963 (2 * n + 1) + A080917 (2 * n + 1)).toNat

end

end A072069.P12437968328485323353

/-! ## A072069.P17163911273906882853

`A183063(2*n+5)+A080918(2*n+1)`
-/

namespace A072069.P17163911273906882853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 5) + A080918 (2 * n + 1)

end

end A072069.P17163911273906882853

/-!
# A072070: Number of integer solutions to the equation 4*x^2 + y^2 + 8*z^2 = n.

The programs for A072070, there is no canonical definition to state claims against.
-/

/-! ## A072070.P13157469324538310549

`A033717(n)*A133872(n)`
-/

namespace A072070.P13157469324538310549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n * A133872 n

end

end A072070.P13157469324538310549

/-! ## A072070.P7961931276989362293

`lcm(A033717(n), A128130(n))`
-/

namespace A072070.P7961931276989362293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033717 n) (A128130 n)

end

end A072070.P7961931276989362293

/-! ## A072070.P16162300862785849055

`∑[A056594(n)]*A033717(n)`
-/

namespace A072070.P16162300862785849055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033717 n

end

end A072070.P16162300862785849055

/-! ## A072070.P5863471280944120270

`2*A072071(n)-A080964(n)`
-/

namespace A072070.P5863471280944120270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072071 n - A080964 n

end

end A072070.P5863471280944120270

/-! ## A072070.P2065846183130345807

`A033717(n)%A022341(A072068(n+1))`
-/

namespace A072070.P2065846183130345807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033717 n) (A022341 (A072068 (n + 1)).toNat)

end

end A072070.P2065846183130345807

/-! ## A072070.P17221965338829961192

`A080917(A047481(n+1))`
-/

namespace A072070.P17221965338829961192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (A047481 (n + 1)).toNat

end

end A072070.P17221965338829961192

/-! ## A072070.P6819760069460727858

`A080917(Δ[A004525(n+1)]+2*n)`
-/

namespace A072070.P6819760069460727858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (f1 (n + 1) - f1 n + (2 * n : ℤ)).toNat

end

end A072070.P6819760069460727858

/-! ## A072070.P3222254150495960026

`A045836(n+1)/A117728(n+1)*A033717(n)`
-/

namespace A072070.P3222254150495960026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045836 (n + 1) : ℚ) / (A117728 (n + 1) : ℚ) * (A033717 n : ℚ)

end

end A072070.P3222254150495960026

/-!
# A072071: Number of integer solutions to the equation 4x^2+y^2+32z^2=n.

The programs for A072071, there is no canonical definition to state claims against.
-/

/-! ## A072071.P16435567789846675234

`(A080964(n)+A072070(n))/2`
-/

namespace A072071.P16435567789846675234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080964 n + A072070 n : ℚ) / 2

end

end A072071.P16435567789846675234

/-! ## A072071.P6608150515236571180

`A004525(A080964(n)+A072070(n))`
-/

namespace A072071.P6608150515236571180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A080964 n + A072070 n).toNat

end

end A072071.P6608150515236571180

/-! ## A072071.P13946137175822116370

`A004526(A080964(n)+A072070(n))`
-/

namespace A072071.P13946137175822116370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080964 n + A072070 n).toNat

end

end A072071.P13946137175822116370

/-! ## A072071.P8713614023699909798

`A014682(A080964(n)+A072070(n))`
-/

namespace A072071.P8713614023699909798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A080964 n + A072070 n).toNat

end

end A072071.P8713614023699909798

/-! ## A072071.P16699541955992483609

`A029578(A080964(n)+A072070(n))`
-/

namespace A072071.P16699541955992483609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A080964 n + A072070 n).toNat

end

end A072071.P16699541955992483609

/-! ## A072071.P10211291921790180672

`A030451(A080964(n)+A072070(n))`
-/

namespace A072071.P10211291921790180672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A080964 n + A072070 n).toNat

end

end A072071.P10211291921790180672

/-! ## A072071.P17157028815081961324

`A064680(A080964(n)+A072070(n))`
-/

namespace A072071.P17157028815081961324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A080964 n + A072070 n).toNat

end

end A072071.P17157028815081961324

/-! ## A072071.P4943435300922131434

`A110654(A080964(n)+A072070(n))`
-/

namespace A072071.P4943435300922131434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A080964 n + A072070 n).toNat

end

end A072071.P4943435300922131434

/-! ## A072071.P14507278036493480267

`A072070(n)-A004526(A072070(n)-A080964(n))`
-/

namespace A072071.P14507278036493480267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 n - A004526 (A072070 n - A080964 n).toNat

end

end A072071.P14507278036493480267

/-!
# A072073: Number of solutions to cototient(x) = A051953(x) = 2^n.

The programs for A072073, the canonical program `A072073.P17267982466277803017` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072073 has offset 1).

The definition of A072073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072073.P17267982466277803017

`A332220(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072073

/-- `A332220(n+1)+1` -/
def P17267982466277803017.Spec : Prop :=
  ∀ n, P17267982466277803017.a n = A072073 (n + 1)

theorem P17267982466277803017.correct : P17267982466277803017.Spec := by
  intro n
  simp only [A072073, Nat.add_sub_cancel]

end A072073

/-! ## A072073.P1664394040649185791

`∑[A332219(1+n)]+1`
-/

namespace A072073.P1664394040649185791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072073.P1664394040649185791

namespace A072073

/-- `∑[A332219(1+n)]+1` -/
def P1664394040649185791.Spec : Prop :=
  ∀ n, P1664394040649185791.a n = A072073 (n + 1)

end A072073

/-! ## A072073.P2053257684841945070

`∑[char[A090748(n+1)]]+1`
-/

namespace A072073.P2053257684841945070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072073.P2053257684841945070

namespace A072073

/-- `∑[char[A090748(n+1)]]+1` -/
def P2053257684841945070.Spec : Prop :=
  ∀ n, (P2053257684841945070.a n : ℤ) = A072073 (n + 1)

end A072073

/-! ## A072073.P17879443895285137464

`∑[char[A153798(n+1)+1]]+1`
-/

namespace A072073.P17879443895285137464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072073.P17879443895285137464

namespace A072073

/-- `∑[char[A153798(n+1)+1]]+1` -/
def P17879443895285137464.Spec : Prop :=
  ∀ n, (P17879443895285137464.a n : ℤ) = A072073 (n + 1)

end A072073

/-! ## A072073.P12217436487149222007

`∑[A048298(A013603(n+1))]+1`
-/

namespace A072073.P12217436487149222007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A013603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072073.P12217436487149222007

namespace A072073

/-- `∑[A048298(A013603(n+1))]+1` -/
def P12217436487149222007.Spec : Prop :=
  ∀ n, P12217436487149222007.a n = A072073 (n + 1)

end A072073

/-! ## A072073.P3072443983602477558

`∑[round(acot(A059499(n+1)))]`
-/

namespace A072073.P3072443983602477558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A059499 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072073.P3072443983602477558

namespace A072073

/-- `∑[round(acot(A059499(n+1)))]` -/
def P3072443983602477558.Spec : Prop :=
  ∀ n, P3072443983602477558.a n = A072073 (n + 1)

end A072073

/-! ## A072073.P4641581302213013136

`∑[round(1/A046801(n+1))]`
-/

namespace A072073.P4641581302213013136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A046801 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072073.P4641581302213013136

namespace A072073

/-- `∑[round(1/A046801(n+1))]` -/
def P4641581302213013136.Spec : Prop :=
  ∀ n, P4641581302213013136.a n = A072073 (n + 1)

end A072073

/-! ## A072073.P16645455362084131543

`∑[A046051(n+1)!%2]`
-/

namespace A072073.P16645455362084131543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A046051 (n + 1)).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072073.P16645455362084131543

namespace A072073

/-- `∑[A046051(n+1)!%2]` -/
def P16645455362084131543.Spec : Prop :=
  ∀ n, (P16645455362084131543.a n : ℤ) = A072073 (n + 1)

end A072073

/-! ## A072073.P13072234608251349902

`∑[A033683(A297294(n+1))]+1`
-/

namespace A072073.P13072234608251349902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A297294 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072073.P13072234608251349902

namespace A072073

/-- `∑[A033683(A297294(n+1))]+1` -/
def P13072234608251349902.Spec : Prop :=
  ∀ n, P13072234608251349902.a n = A072073 (n + 1)

end A072073

/-!
# A072075: Smallest solution to phi(x) = 10^n where phi(x) = A000010(x).

The programs for A072075, there is no canonical definition to state claims against.
-/

/-! ## A072075.P7692365738110356502

`A097650(n)+A011557(n)`
-/

namespace A072075.P7692365738110356502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097650 n + A011557 n

end

end A072075.P7692365738110356502

/-! ## A072075.P14977330901972517293

`A097650(n)+Δ[A002275(n)]`
-/

namespace A072075.P14977330901972517293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097650 n + (f1 (n + 1) - f1 n)

end

end A072075.P14977330901972517293

/-! ## A072075.P17539527502240222105

`A178501(n+1)+A097650(n)`
-/

namespace A072075.P17539527502240222105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 1) + A097650 n

end

end A072075.P17539527502240222105

/-! ## A072075.P12123654781732311915

`A000042(n+1)+A097650(n)-A002275(n)`
-/

namespace A072075.P12123654781732311915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A097650 n - A002275 n)

end

end A072075.P12123654781732311915

/-! ## A072075.P8113090374001857723

`A097638(n+1)+A097650(n)-A097639(n+1)`
-/

namespace A072075.P8113090374001857723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097638 (n + 1) + (A097650 n - A097639 (n + 1))

end

end A072075.P8113090374001857723

/-!
# A072076: Largest k such that EulerPhi(k) = 10^n.

The programs for A072076, there is no canonical definition to state claims against.
-/

/-! ## A072076.P4037069859043967721

`A057635(10^n)`
-/

namespace A072076.P4037069859043967721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (10 ^ n)

end

end A072076.P4037069859043967721

/-!
# A072077: Number of even nontotients not exceeding 2^n.

The programs for A072077, there is no canonical definition to state claims against.
-/

/-! ## A072077.P1854877789995514479

`2^n-A394380(n+1)`
-/

namespace A072077.P1854877789995514479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A394380 (n + 1)

end

end A072077.P1854877789995514479

/-! ## A072077.P17830392216251540984

`abs(A394380(n+1)-A000079(n))`
-/

namespace A072077.P17830392216251540984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A394380 (n + 1) - A000079 n|

end

end A072077.P17830392216251540984

/-! ## A072077.P6585885594908769907

`2^n-A264810(A095121(n))`
-/

namespace A072077.P6585885594908769907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A264810 (A095121 n).toNat

end

end A072077.P6585885594908769907

/-! ## A072077.P1561118322665738225

`A000079(n)-A264810(A126646(n))`
-/

namespace A072077.P1561118322665738225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A264810 (A126646 n).toNat

end

end A072077.P1561118322665738225

/-! ## A072077.P2059447108872375545

`abs(A000079(n)-A264810(A095121(n)))`
-/

namespace A072077.P2059447108872375545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A264810 (A095121 n).toNat|

end

end A072077.P2059447108872375545

/-!
# A072078: Number of 3-smooth divisors of n.

The programs for A072078, the canonical program `A072078.P15683580229449578343` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072078 has offset 1).

The definition of A072078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072078.P13111867054011598649

`(1+val(n+1, 2))*(1+val(n+1, 3))`
-/

namespace A072078.P13111867054011598649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.valuation (n + 1) 2) * (1 + SequenceMachineLib.valuation (n + 1) 3)

end

end A072078.P13111867054011598649

namespace A072078

/-- `(1+val(n+1, 2))*(1+val(n+1, 3))` -/
def P13111867054011598649.Spec : Prop :=
  ∀ n, (P13111867054011598649.a n : ℤ) = A072078 (n + 1)

end A072078

/-! ## A072078.P7187918630399650406

`A000005(A065331(n+1))`
-/

namespace A072078.P7187918630399650406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065331 (n + 1)).toNat

end

end A072078.P7187918630399650406

namespace A072078

/-- `A000005(A065331(n+1))` -/
def P7187918630399650406.Spec : Prop :=
  ∀ n, P7187918630399650406.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P15683580229449578343

`(A007814(n+1)+1)*(A007949(n+1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072078

/-- `(A007814(n+1)+1)*(A007949(n+1)+1)` -/
def P15683580229449578343.Spec : Prop :=
  ∀ n, P15683580229449578343.a n = A072078 (n + 1)

theorem P15683580229449578343.correct : P15683580229449578343.Spec := by
  intro n
  simp only [A072078, Nat.add_sub_cancel]

end A072078

/-! ## A072078.P2920572773130523570

`log2((2^(1+val(n+1, 2)))^(1+val(n+1, 3)))`
-/

namespace A072078.P2920572773130523570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ (1 + SequenceMachineLib.valuation (n + 1) 2)) ^ (1 + SequenceMachineLib.valuation (n + 1) 3) : ℝ)

end

end A072078.P2920572773130523570

namespace A072078

/-- `log2((2^(1+val(n+1, 2)))^(1+val(n+1, 3)))` -/
def P2920572773130523570.Spec : Prop :=
  ∀ n, P2920572773130523570.a n = (A072078 (n + 1) : ℝ)

end A072078

/-! ## A072078.P12139444697972039950

`∑{d}[n+1, A065333(#)]`
-/

namespace A072078.P12139444697972039950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d

end

end A072078.P12139444697972039950

namespace A072078

/-- `∑{d}[n+1, A065333(#)]` -/
def P12139444697972039950.Spec : Prop :=
  ∀ n, P12139444697972039950.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P2905429478022678000

`(val(n+1, 2)+1)*A051064(n+1)`
-/

namespace A072078.P2905429478022678000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A051064 (n + 1)

end

end A072078.P2905429478022678000

namespace A072078

/-- `(val(n+1, 2)+1)*A051064(n+1)` -/
def P2905429478022678000.Spec : Prop :=
  ∀ n, P2905429478022678000.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P13433917338672268899

`(val(n+1, 3)+1)*A001511(n+1)`
-/

namespace A072078.P13433917338672268899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 3 + 1 : ℤ) * A001511 (n + 1)

end

end A072078.P13433917338672268899

namespace A072078

/-- `(val(n+1, 3)+1)*A001511(n+1)` -/
def P13433917338672268899.Spec : Prop :=
  ∀ n, P13433917338672268899.a n = A072078 (n + 1)

theorem P13433917338672268899.correct : P13433917338672268899.Spec := by
  intro n
  simp only [A072078, Nat.add_sub_cancel, A072078.P13433917338672268899.a, A072078.P15683580229449578343.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072078

/-! ## A072078.P10004347626205209699

`A000005(lcm(3^val(n+1, 3), and(n+1, -(n+1))))`
-/

namespace A072078.P10004347626205209699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))))

end

end A072078.P10004347626205209699

namespace A072078

/-- `A000005(lcm(3^val(n+1, 3), and(n+1, -(n+1))))` -/
def P10004347626205209699.Spec : Prop :=
  ∀ n, P10004347626205209699.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P1239703400488277593

`A035207(A355582(n+1))`
-/

namespace A072078.P1239703400488277593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035207 (A355582 (n + 1)).toNat

end

end A072078.P1239703400488277593

namespace A072078

/-- `A035207(A355582(n+1))` -/
def P1239703400488277593.Spec : Prop :=
  ∀ n, P1239703400488277593.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P16586597777742181075

`A086416(A322026(n+1))`
-/

namespace A072078.P16586597777742181075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086416 (A322026 (n + 1)).toNat

end

end A072078.P16586597777742181075

namespace A072078

/-- `A086416(A322026(n+1))` -/
def P16586597777742181075.Spec : Prop :=
  ∀ n, P16586597777742181075.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P16121184117403096494

`A355583(A072438(n+1))`
-/

namespace A072078.P16121184117403096494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355583 (A072438 (n + 1)).toNat

end

end A072078.P16121184117403096494

namespace A072078

/-- `A355583(A072438(n+1))` -/
def P16121184117403096494.Spec : Prop :=
  ∀ n, P16121184117403096494.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P2247501259220460237

`A355583(A132739(n+1))`
-/

namespace A072078.P2247501259220460237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355583 (A132739 (n + 1)).toNat

end

end A072078.P2247501259220460237

namespace A072078

/-- `A355583(A132739(n+1))` -/
def P2247501259220460237.Spec : Prop :=
  ∀ n, P2247501259220460237.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P8058643519313021742

`∑{d}[A065331(n+1), A060904(#)]`
-/

namespace A072078.P8058643519313021742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A060904 d

end

end A072078.P8058643519313021742

namespace A072078

/-- `∑{d}[A065331(n+1), A060904(#)]` -/
def P8058643519313021742.Spec : Prop :=
  ∀ n, P8058643519313021742.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P6618670740258368876

`Δ[A005187(n)]*A051064(n+1)`
-/

namespace A072078.P6618670740258368876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A051064 (n + 1)

end

end A072078.P6618670740258368876

namespace A072078

/-- `Δ[A005187(n)]*A051064(n+1)` -/
def P6618670740258368876.Spec : Prop :=
  ∀ n, P6618670740258368876.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P10112568738629927828

`Δ[A054519(n)]/A035218(n+1)`
-/

namespace A072078.P10112568738629927828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A035218 (n + 1) : ℚ)

end

end A072078.P10112568738629927828

namespace A072078

/-- `Δ[A054519(n)]/A035218(n+1)` -/
def P10112568738629927828.Spec : Prop :=
  ∀ n, P10112568738629927828.a n = (A072078 (n + 1) : ℚ)

end A072078

/-! ## A072078.P9935691185737054350

`A382487(n+1)+A001511(n+1)`
-/

namespace A072078.P9935691185737054350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382487 (n + 1) + A001511 (n + 1)

end

end A072078.P9935691185737054350

namespace A072078

/-- `A382487(n+1)+A001511(n+1)` -/
def P9935691185737054350.Spec : Prop :=
  ∀ n, P9935691185737054350.a n = A072078 (n + 1)

theorem P9935691185737054350.correct : P9935691185737054350.Spec := by
  intro n
  simp only [A072078, Nat.add_sub_cancel, A072078.P9935691185737054350.a, A072078.P15683580229449578343.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A382487, A382487.P7296272307731951991.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072078

/-! ## A072078.P2825471456785938489

`A001511(n+1)*A051064(n+1)`
-/

namespace A072078.P2825471456785938489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A051064 (n + 1)

end

end A072078.P2825471456785938489

namespace A072078

/-- `A001511(n+1)*A051064(n+1)` -/
def P2825471456785938489.Spec : Prop :=
  ∀ n, P2825471456785938489.a n = A072078 (n + 1)

theorem P2825471456785938489.correct : P2825471456785938489.Spec := by
  intro n
  simp only [A072078, Nat.add_sub_cancel, A072078.P2825471456785938489.a, A072078.P15683580229449578343.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A051064, A051064.P9470330273706946210.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072078

/-! ## A072078.P7840761188635718738

`A000005(n+1)/A035218(n+1)`
-/

namespace A072078.P7840761188635718738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A035218 (n + 1) : ℚ)

end

end A072078.P7840761188635718738

namespace A072078

/-- `A000005(n+1)/A035218(n+1)` -/
def P7840761188635718738.Spec : Prop :=
  ∀ n, P7840761188635718738.a n = (A072078 (n + 1) : ℚ)

end A072078

/-! ## A072078.P2919902428233323390

`A000005((n+1)/A065330(n+1))`
-/

namespace A072078.P2919902428233323390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A072078.P2919902428233323390

namespace A072078

/-- `A000005((n+1)/A065330(n+1))` -/
def P2919902428233323390.Spec : Prop :=
  ∀ n, P2919902428233323390.a n = A072078 (n + 1)

end A072078

/-! ## A072078.P3254074959467590538

`A355583(n+1)/A055457(n+1)`
-/

namespace A072078.P3254074959467590538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355583 (n + 1) : ℚ) / (A055457 (n + 1) : ℚ)

end

end A072078.P3254074959467590538

namespace A072078

/-- `A355583(n+1)/A055457(n+1)` -/
def P3254074959467590538.Spec : Prop :=
  ∀ n, P3254074959467590538.a n = (A072078 (n + 1) : ℚ)

end A072078

/-!
# A072079: Sum of 3-smooth divisors of n.

The programs for A072079, the canonical program `A072079.P16858641240834044496` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072079 has offset 1).

The definition of A072079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072079.P3150830761146015194

`(2^(val(n+1, 2)+1)-1)*(3^(val(n+1, 3)+1)-1)/2`
-/

namespace A072079.P3150830761146015194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℤ) - 1) * ((3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℤ) - 1) : ℚ) / 2

end

end A072079.P3150830761146015194

namespace A072079

/-- `(2^(val(n+1, 2)+1)-1)*(3^(val(n+1, 3)+1)-1)/2` -/
def P3150830761146015194.Spec : Prop :=
  ∀ n, P3150830761146015194.a n = (A072079 (n + 1) : ℚ)

end A072079

/-! ## A072079.P16858641240834044496

`A000203(A065331(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072079

/-- `A000203(A065331(n+1))` -/
def P16858641240834044496.Spec : Prop :=
  ∀ n, P16858641240834044496.a n = A072079 (n + 1)

theorem P16858641240834044496.correct : P16858641240834044496.Spec := by
  intro n
  simp only [A072079, Nat.add_sub_cancel]

end A072079

/-! ## A072079.P7841555005448977079

`(2^(A007814(n+1)+1)-1)*(3^(A007949(n+1)+1)-1)/2`
-/

namespace A072079.P7841555005448977079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) * ((3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ) - 1) / 2

end

end A072079.P7841555005448977079

namespace A072079

/-- `(2^(A007814(n+1)+1)-1)*(3^(A007949(n+1)+1)-1)/2` -/
def P7841555005448977079.Spec : Prop :=
  ∀ n, P7841555005448977079.a n = (A072079 (n + 1) : ℚ)

end A072079

/-! ## A072079.P8555144421953383515

`∑{d}[2^val(n+1, 2)*3^val(n+1, 3), #]`
-/

namespace A072079.P8555144421953383515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A072079.P8555144421953383515

namespace A072079

/-- `∑{d}[2^val(n+1, 2)*3^val(n+1, 3), #]` -/
def P8555144421953383515.Spec : Prop :=
  ∀ n, (P8555144421953383515.a n : ℤ) = A072079 (n + 1)

end A072079

/-! ## A072079.P562736238300791996

`∑{d}[A065331(n+1), #]`
-/

namespace A072079.P562736238300791996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072079.P562736238300791996

namespace A072079

/-- `∑{d}[A065331(n+1), #]` -/
def P562736238300791996.Spec : Prop :=
  ∀ n, (P562736238300791996.a n : ℤ) = A072079 (n + 1)

end A072079

/-! ## A072079.P5114955099044451867

`∑{d}[n+1, A065332(#)]`
-/

namespace A072079.P5114955099044451867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d

end

end A072079.P5114955099044451867

namespace A072079

/-- `∑{d}[n+1, A065332(#)]` -/
def P5114955099044451867.Spec : Prop :=
  ∀ n, P5114955099044451867.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P100939507607446014

`∑{d}[n+1, #*A065333(#)]`
-/

namespace A072079.P100939507607446014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065333 d

end

end A072079.P100939507607446014

namespace A072079

/-- `∑{d}[n+1, #*A065333(#)]` -/
def P100939507607446014.Spec : Prop :=
  ∀ n, P100939507607446014.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P2890252117734063142

`A000203(2^val(n+1, 2)*3^val(n+1, 3))`
-/

namespace A072079.P2890252117734063142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A072079.P2890252117734063142

namespace A072079

/-- `A000203(2^val(n+1, 2)*3^val(n+1, 3))` -/
def P2890252117734063142.Spec : Prop :=
  ∀ n, P2890252117734063142.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P2740611392357558524

`A086417(A322026(n+1))`
-/

namespace A072079.P2740611392357558524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086417 (A322026 (n + 1)).toNat

end

end A072079.P2740611392357558524

namespace A072079

/-- `A086417(A322026(n+1))` -/
def P2740611392357558524.Spec : Prop :=
  ∀ n, P2740611392357558524.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P6702216198316108634

`A355584(A072438(n+1))`
-/

namespace A072079.P6702216198316108634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (A072438 (n + 1)).toNat

end

end A072079.P6702216198316108634

namespace A072079

/-- `A355584(A072438(n+1))` -/
def P6702216198316108634.Spec : Prop :=
  ∀ n, P6702216198316108634.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P11737614887777657007

`A116073(A355582(n+1))`
-/

namespace A072079.P11737614887777657007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (A355582 (n + 1)).toNat

end

end A072079.P11737614887777657007

namespace A072079

/-- `A116073(A355582(n+1))` -/
def P11737614887777657007.Spec : Prop :=
  ∀ n, P11737614887777657007.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P3168703339235794115

`A355584(A132739(n+1))`
-/

namespace A072079.P3168703339235794115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (A132739 (n + 1)).toNat

end

end A072079.P3168703339235794115

namespace A072079

/-- `A355584(A132739(n+1))` -/
def P3168703339235794115.Spec : Prop :=
  ∀ n, P3168703339235794115.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P14965849236775652671

`A245092(2*A065331(n+1)-1)`
-/

namespace A072079.P14965849236775652671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * A065331 (n + 1) - 1).toNat

end

end A072079.P14965849236775652671

namespace A072079

/-- `A245092(2*A065331(n+1)-1)` -/
def P14965849236775652671.Spec : Prop :=
  ∀ n, P14965849236775652671.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P17136366774079130084

`A038712(n+1)*A080278(n+1)`
-/

namespace A072079.P17136366774079130084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A080278 (n + 1)

end

end A072079.P17136366774079130084

namespace A072079

/-- `A038712(n+1)*A080278(n+1)` -/
def P17136366774079130084.Spec : Prop :=
  ∀ n, P17136366774079130084.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P15626996812568206378

`A000203((n+1)/A065330(n+1))`
-/

namespace A072079.P15626996812568206378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A072079.P15626996812568206378

namespace A072079

/-- `A000203((n+1)/A065330(n+1))` -/
def P15626996812568206378.Spec : Prop :=
  ∀ n, P15626996812568206378.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P1860385357687735008

`A000203(n+1)/A186099(n+1)`
-/

namespace A072079.P1860385357687735008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A186099 (n + 1) : ℚ)

end

end A072079.P1860385357687735008

namespace A072079

/-- `A000203(n+1)/A186099(n+1)` -/
def P1860385357687735008.Spec : Prop :=
  ∀ n, P1860385357687735008.a n = (A072079 (n + 1) : ℚ)

end A072079

/-! ## A072079.P3111973800292033519

`A355584((n+1)/A060904(n+1))`
-/

namespace A072079.P3111973800292033519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A072079.P3111973800292033519

namespace A072079

/-- `A355584((n+1)/A060904(n+1))` -/
def P3111973800292033519.Spec : Prop :=
  ∀ n, P3111973800292033519.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P7334724925056363226

`A355584((n+1)/A065330(n+1))`
-/

namespace A072079.P7334724925056363226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A072079.P7334724925056363226

namespace A072079

/-- `A355584((n+1)/A065330(n+1))` -/
def P7334724925056363226.Spec : Prop :=
  ∀ n, P7334724925056363226.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P811998175638815575

`A365209((n+1)/A065330(n+1))`
-/

namespace A072079.P811998175638815575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A072079.P811998175638815575

namespace A072079

/-- `A365209((n+1)/A065330(n+1))` -/
def P811998175638815575.Spec : Prop :=
  ∀ n, P811998175638815575.a n = A072079 (n + 1)

end A072079

/-! ## A072079.P12299212102600093522

`A385137(n+1)/A065330(n+1)`
-/

namespace A072079.P12299212102600093522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385137 (n + 1) : ℚ) / (A065330 (n + 1) : ℚ)

end

end A072079.P12299212102600093522

namespace A072079

/-- `A385137(n+1)/A065330(n+1)` -/
def P12299212102600093522.Spec : Prop :=
  ∀ n, P12299212102600093522.a n = (A072079 (n + 1) : ℚ)

end A072079

/-!
# A072081: Numbers divisible by the square of the sum of their digits in base 10.

The programs for A072081, there is no canonical definition to state claims against.
-/

/-! ## A072081.P2209891221319198596

`record[gcd(A113315(n+1)², A005349(n+1))]`
-/

namespace A072081.P2209891221319198596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113315 (n + 1) ^ 2) (A005349 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072081.P2209891221319198596

/-! ## A072081.P17440074643724764571

`record[gcd(A066578(n+1)², n+1)]`
-/

namespace A072081.P17440074643724764571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066578 (n + 1) ^ 2) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072081.P17440074643724764571

/-! ## A072081.P11522084288528110567

`eq[lcm(n, A118881(n)), A028310(n)]`
-/

namespace A072081.P11522084288528110567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A118881 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072081.P11522084288528110567

/-!
# A072082: Numbers divisible by the cube of the sum of their digits in base 10.

The programs for A072082, there is no canonical definition to state claims against.
-/

/-! ## A072082.P9950598715487403378

`eq[A053150(A233583(n+1)), A331472(n)]`
-/

namespace A072082.P9950598715487403378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072082.P9950598715487403378

/-!
# A072083: Numbers divisible by the 4th power of the sum of their digits in base 10.

The programs for A072083, there is no canonical definition to state claims against.
-/

/-! ## A072083.P10675361082709988235

`A049073(10^n)`
-/

namespace A072083.P10675361082709988235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (10 ^ n)

end

end A072083.P10675361082709988235

/-!
# A072084: In prime factorization of n replace all primes with their numbers of 1's in binary representation.

The programs for A072084, the canonical program `A072084.P10567843185268876748` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072084 has offset 1).

The definition of A072084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072084.P614790467759869123

`∏{p}[n+1, A000120(#)^val(n+1, #)]`
-/

namespace A072084.P614790467759869123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000120 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A072084.P614790467759869123

namespace A072084

/-- `∏{p}[n+1, A000120(#)^val(n+1, #)]` -/
def P614790467759869123.Spec : Prop :=
  ∀ n, P614790467759869123.a n = A072084 (n + 1)

end A072084

/-! ## A072084.P10567843185268876748

`∏{d}[n+1, A000120(A014963(#))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072084

/-- `∏{d}[n+1, A000120(A014963(#))]` -/
def P10567843185268876748.Spec : Prop :=
  ∀ n, P10567843185268876748.a n = A072084 (n + 1)

theorem P10567843185268876748.correct : P10567843185268876748.Spec := by
  intro n
  simp only [A072084, Nat.add_sub_cancel]

end A072084

/-! ## A072084.P8764949020776720332

`∏{d}[A000265(n+1), A061338(A014963(#))]`
-/

namespace A072084.P8764949020776720332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A061338 (A014963 d).toNat

end

end A072084.P8764949020776720332

namespace A072084

/-- `∏{d}[A000265(n+1), A061338(A014963(#))]` -/
def P8764949020776720332.Spec : Prop :=
  ∀ n, P8764949020776720332.a n = A072084 (n + 1)

end A072084

/-! ## A072084.P17736960480257709458

`∏{e}[A181821(n+1), A014499(#)]`
-/

namespace A072084.P17736960480257709458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014499 (Nat.factorization (f1 n).natAbs p)

end

end A072084.P17736960480257709458

namespace A072084

/-- `∏{e}[A181821(n+1), A014499(#)]` -/
def P17736960480257709458.Spec : Prop :=
  ∀ n, P17736960480257709458.a n = A072084 (n + 1)

end A072084

/-! ## A072084.P10756030696949101474

`∏{e}[A181821(n+1), A000120(A000040(#))]`
-/

namespace A072084.P10756030696949101474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A072084.P10756030696949101474

namespace A072084

/-- `∏{e}[A181821(n+1), A000120(A000040(#))]` -/
def P10756030696949101474.Spec : Prop :=
  ∀ n, P10756030696949101474.a n = A072084 (n + 1)

end A072084

/-!
# A072085: a(n) = A072084(A072084(n)).

The programs for A072085, the canonical program `A072085.P201290304430267741` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072085 has offset 1).

The definition of A072085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072084, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072085.P201290304430267741

`A072084(A072084(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072085

/-- `A072084(A072084(n+1))` -/
def P201290304430267741.Spec : Prop :=
  ∀ n, P201290304430267741.a n = A072085 (n + 1)

theorem P201290304430267741.correct : P201290304430267741.Spec := by
  intro n
  simp only [A072085, Nat.add_sub_cancel]

end A072085

/-! ## A072085.P41522473093421924

`A349494(A100577(n+5)*A349494(n+1))`
-/

namespace A072085.P41522473093421924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349494 (A100577 (n + 5) * A349494 (n + 1)).toNat

end

end A072085.P41522473093421924

namespace A072085

/-- `A349494(A100577(n+5)*A349494(n+1))` -/
def P41522473093421924.Spec : Prop :=
  ∀ n, P41522473093421924.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P15095788421993788809

`A349494(lcm(A100577(n+5), A349494(n+1)))`
-/

namespace A072085.P15095788421993788809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349494 (Int.lcm (A100577 (n + 5)) (A349494 (n + 1)))

end

end A072085.P15095788421993788809

namespace A072085

/-- `A349494(lcm(A100577(n+5), A349494(n+1)))` -/
def P15095788421993788809.Spec : Prop :=
  ∀ n, P15095788421993788809.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P5576326138771447755

`A349494(A349494(n+1)^A354487(n+4))`
-/

namespace A072085.P5576326138771447755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349494 (SequenceMachineLib.roundAway ((A349494 (n + 1) : ℚ) ^ (A354487 (n + 4) : ℤ))).toNat

end

end A072085.P5576326138771447755

namespace A072085

/-- `A349494(A349494(n+1)^A354487(n+4))` -/
def P5576326138771447755.Spec : Prop :=
  ∀ n, P5576326138771447755.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P15026481788746450611

`A349494(A349494(n+1))%A240760(n+1)`
-/

namespace A072085.P15026481788746450611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349494 (A349494 (n + 1)).toNat) (A240760 (n + 1))

end

end A072085.P15026481788746450611

namespace A072085

/-- `A349494(A349494(n+1))%A240760(n+1)` -/
def P15026481788746450611.Spec : Prop :=
  ∀ n, P15026481788746450611.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P10471718921758282278

`A349494(A175632(n+3)*A349494(n+1))`
-/

namespace A072085.P10471718921758282278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349494 (A175632 (n + 3) * A349494 (n + 1)).toNat

end

end A072085.P10471718921758282278

namespace A072085

/-- `A349494(A175632(n+3)*A349494(n+1))` -/
def P10471718921758282278.Spec : Prop :=
  ∀ n, P10471718921758282278.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P13462712374430551893

`A295660(A072084(∑[or(1, 2*n)]))`
-/

namespace A072085.P13462712374430551893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A072084 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A072085.P13462712374430551893

namespace A072085

/-- `A295660(A072084(∑[or(1, 2*n)]))` -/
def P13462712374430551893.Spec : Prop :=
  ∀ n, P13462712374430551893.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P7086106913804923103

`A334541(A072084(∑[A005408(n)]))`
-/

namespace A072085.P7086106913804923103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334541 (A072084 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A072085.P7086106913804923103

namespace A072085

/-- `A334541(A072084(∑[A005408(n)]))` -/
def P7086106913804923103.Spec : Prop :=
  ∀ n, P7086106913804923103.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P1295350728566855650

`A349494(gcd(A025562(n), A349494(n+1)))`
-/

namespace A072085.P1295350728566855650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349494 (Int.gcd (A025562 n) (A349494 (n + 1)))

end

end A072085.P1295350728566855650

namespace A072085

/-- `A349494(gcd(A025562(n), A349494(n+1)))` -/
def P1295350728566855650.Spec : Prop :=
  ∀ n, P1295350728566855650.a n = A072085 (n + 1)

end A072085

/-! ## A072085.P6321807480459781037

`A295660(∏{e}[A181821(n+1), A014499(#)²])`
-/

namespace A072085.P6321807480459781037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014499 (Nat.factorization (f1 n).natAbs p) ^ 2).toNat

end

end A072085.P6321807480459781037

namespace A072085

/-- `A295660(∏{e}[A181821(n+1), A014499(#)²])` -/
def P6321807480459781037.Spec : Prop :=
  ∀ n, P6321807480459781037.a n = A072085 (n + 1)

end A072085

/-!
# A072086: Number of steps to reach 1, starting with n and applying the A072084-map repeatedly.

The programs for A072086, the canonical program `A072086.P8115136836013124802` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072086 has offset 1).

The definition of A072086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072086.P8115136836013124802

`A201219(A072085(n+1))+A201219(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072086

/-- `A201219(A072085(n+1))+A201219(n+1)` -/
def P8115136836013124802.Spec : Prop :=
  ∀ n, P8115136836013124802.a n = A072086 (n + 1)

theorem P8115136836013124802.correct : P8115136836013124802.Spec := by
  intro n
  simp only [A072086, Nat.add_sub_cancel]

end A072086

/-! ## A072086.P9409426218614962491

`A078627(A072084(n+1))-A008683(A102376(n))`
-/

namespace A072086.P9409426218614962491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (A072084 (n + 1)).toNat - A008683 (A102376 n).toNat

end

end A072086.P9409426218614962491

namespace A072086

/-- `A078627(A072084(n+1))-A008683(A102376(n))` -/
def P9409426218614962491.Spec : Prop :=
  ∀ n, P9409426218614962491.a n = A072086 (n + 1)

end A072086

/-! ## A072086.P1701706834475800203

`A078627(A072084(n+1))-A036987(A000096(n))`
-/

namespace A072086.P1701706834475800203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (A072084 (n + 1)).toNat - A036987 (A000096 n).toNat

end

end A072086.P1701706834475800203

namespace A072086

/-- `A078627(A072084(n+1))-A036987(A000096(n))` -/
def P1701706834475800203.Spec : Prop :=
  ∀ n, P1701706834475800203.a n = A072086 (n + 1)

end A072086

/-! ## A072086.P17070929106989739700

`A078627(A072084(n+1))-A000005(n²+1)%2`
-/

namespace A072086.P17070929106989739700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (A072084 (n + 1)).toNat - Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A072086.P17070929106989739700

namespace A072086

/-- `A078627(A072084(n+1))-A000005(n²+1)%2` -/
def P17070929106989739700.Spec : Prop :=
  ∀ n, P17070929106989739700.a n = A072086 (n + 1)

end A072086

/-! ## A072086.P1262395138683195690

`A078627(A072084(n+1))-A036987(∑[2*n])`
-/

namespace A072086.P1262395138683195690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (A072084 (n + 1)).toNat - A036987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072086.P1262395138683195690

namespace A072086

/-- `A078627(A072084(n+1))-A036987(∑[2*n])` -/
def P1262395138683195690.Spec : Prop :=
  ∀ n, P1262395138683195690.a n = A072086 (n + 1)

end A072086

/-! ## A072086.P1205270608381703243

`A180094(A000188(A006530(n+1)²))`
-/

namespace A072086.P1205270608381703243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180094 (A000188 (A006530 (n + 1) ^ 2).toNat).toNat

end

end A072086.P1205270608381703243

namespace A072086

/-- `A180094(A000188(A006530(n+1)²))` -/
def P1205270608381703243.Spec : Prop :=
  ∀ n, P1205270608381703243.a n = A072086 (n + 1)

end A072086

/-!
# A072087: Least k such that A072084(k) = n.

The programs for A072087, there is no canonical definition to state claims against.
-/

/-! ## A072087.P2973637921165325663

`∏{e}[A181821(1+n), A081093(#)]`
-/

namespace A072087.P2973637921165325663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A081093 (Nat.factorization (f1 n).natAbs p)

end

end A072087.P2973637921165325663

/-! ## A072087.P753992030983336270

`A182139(A038547(n+1))`
-/

namespace A072087.P753992030983336270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A038547 (n + 1)).toNat

end

end A072087.P753992030983336270

/-! ## A072087.P10487588010012814163

`A182139(A175351(n+1))`
-/

namespace A072087.P10487588010012814163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A175351 (n + 1)).toNat

end

end A072087.P10487588010012814163

/-! ## A072087.P5149430469545912805

`A182139(A348199(n+1))`
-/

namespace A072087.P5149430469545912805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A348199 (n + 1)).toNat

end

end A072087.P5149430469545912805

/-! ## A072087.P2122064818828142746

`A182139(A396139(n+1))`
-/

namespace A072087.P2122064818828142746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A396139 (n + 1)).toNat

end

end A072087.P2122064818828142746

/-!
# A072088: Permutation of natural numbers induced by the automorphism gt-bf->df (switch from the Breadth First to the Depth First coding for the general trees/parenthesizations) acting on the parenthesizations encoded by A014486.

The programs for A072088, there is no canonical definition to state claims against.
-/

/-! ## A072088.P16542885879435921047

`A125985(A057506(n))`
-/

namespace A072088.P16542885879435921047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125985 (A057506 n).toNat

end

end A072088.P16542885879435921047

/-! ## A072088.P5758523033316060884

`A082852(n)+A072619(A082853(n))`
-/

namespace A072088.P5758523033316060884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A072619 (A082853 n).toNat

end

end A072088.P5758523033316060884

/-! ## A072088.P1841649705466742204

`A082852(n)+A072619(n-A082852(n))`
-/

namespace A072088.P1841649705466742204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A072619 ((n : ℤ) - A082852 n).toNat

end

end A072088.P1841649705466742204

/-! ## A072088.P3929345997970506196

`A072089(A072089(A072089(A072089(A072089(n)))))`
-/

namespace A072088.P3929345997970506196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A072089 (A072089 (A072089 (A072089 n).toNat).toNat).toNat).toNat

end

end A072088.P3929345997970506196

/-! ## A072088.P10079005544101654771

`A072089(n)%A330811(n)`
-/

namespace A072088.P10079005544101654771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072089 n) (A330811 n)

end

end A072088.P10079005544101654771

/-!
# A072089: Permutation of natural numbers induced by the automorphism gt-df->bf (switch from the Depth First to the Breadth First coding for the general trees/parenthesizations) acting on the parenthesizations encoded by A014486.

The programs for A072089, there is no canonical definition to state claims against.
-/

/-! ## A072089.P12398354718808538773

`A057505(A125986(n))`
-/

namespace A072089.P12398354718808538773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125986 n).toNat

end

end A072089.P12398354718808538773

/-! ## A072089.P14698613863213426112

`A082852(n)+A072620(A082853(n))`
-/

namespace A072089.P14698613863213426112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A072620 (A082853 n).toNat

end

end A072089.P14698613863213426112

/-! ## A072089.P11654842348838070514

`A082852(n)+A072620(n-A082852(n))`
-/

namespace A072089.P11654842348838070514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A072620 ((n : ℤ) - A082852 n).toNat

end

end A072089.P11654842348838070514

/-! ## A072089.P11063682370036186425

`A072088(A072088(A072088(A072088(A072088(n)))))`
-/

namespace A072089.P11063682370036186425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A072088 (A072088 (A072088 (A072088 n).toNat).toNat).toNat).toNat

end

end A072089.P11063682370036186425

/-!
# A072090: Permutation of natural numbers induced by the automorphism cdr_robr_car! acting on the parenthesizations encoded by A014486.

The programs for A072090, there is no canonical definition to state claims against.
-/

/-! ## A072090.P3852014018666734230

`A057163(A072091(A057163(n)))`
-/

namespace A072090.P3852014018666734230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072091 (A057163 n).toNat).toNat

end

end A072090.P3852014018666734230

/-!
# A072091: Permutation of natural numbers induced by the automorphism car_robl_cdr! acting on the parenthesizations encoded by A014486.

The programs for A072091, there is no canonical definition to state claims against.
-/

/-! ## A072091.P1094887219383905768

`A057163(A072090(A057163(n)))`
-/

namespace A072091.P1094887219383905768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072090 (A057163 n).toNat).toNat

end

end A072091.P1094887219383905768

/-! ## A072091.P8022702941244964389

`A089870(A130369(n))%p?[5*n²-8]`
-/

namespace A072091.P8022702941244964389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089870 (A130369 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A072091.P8022702941244964389

/-! ## A072091.P14984210299436012256

`A089870(A130369(n))%A141214(n)`
-/

namespace A072091.P14984210299436012256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089870 (A130369 n).toNat) (A141214 n)

end

end A072091.P14984210299436012256

/-! ## A072091.P16901166601075533889

`A089867(A130369(n)%A089867(2*n+1))`
-/

namespace A072091.P16901166601075533889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (Int.tmod (A130369 n) (A089867 (2 * n + 1))).toNat

end

end A072091.P16901166601075533889

/-! ## A072091.P17219144670555196886

`A130369(n)-A240330(A098789(n+1))`
-/

namespace A072091.P17219144670555196886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 n - A240330 (A098789 (n + 1)).toNat

end

end A072091.P17219144670555196886

/-!
# A072092: Permutation of natural numbers induced by the automorphism car_robr_car! acting on the parenthesizations encoded by A014486.

The programs for A072092, there is no canonical definition to state claims against.
-/

/-! ## A072092.P2712593420880741317

`A057163(A072095(A057163(n)))`
-/

namespace A072092.P2712593420880741317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072095 (A057163 n).toNat).toNat

end

end A072092.P2712593420880741317

/-! ## A072092.P6667125898299757102

`A074680(A073287(n)%A103915(n))`
-/

namespace A072092.P6667125898299757102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (Int.tmod (A073287 n) (A103915 n)).toNat

end

end A072092.P6667125898299757102

/-! ## A072092.P8655256799038907605

`A074680(A122311(n)%A103915(n))`
-/

namespace A072092.P8655256799038907605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (Int.tmod (A122311 n) (A103915 n)).toNat

end

end A072092.P8655256799038907605

/-! ## A072092.P11220193177614476131

`A074680(A130986(n)%A103915(n))`
-/

namespace A072092.P11220193177614476131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (Int.tmod (A130986 n) (A103915 n)).toNat

end

end A072092.P11220193177614476131

/-! ## A072092.P13056288953045428797

`A074680(A073287(n))%A057973(n+1)`
-/

namespace A072092.P13056288953045428797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074680 (A073287 n).toNat) (A057973 (n + 1))

end

end A072092.P13056288953045428797

/-!
# A072093: Permutation of natural numbers induced by the automorphism car_robl_car! acting on the parenthesizations encoded by A014486.

The programs for A072093, there is no canonical definition to state claims against.
-/

/-! ## A072093.P11982153639660501956

`A057163(A072094(A057163(n)))`
-/

namespace A072093.P11982153639660501956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072094 (A057163 n).toNat).toNat

end

end A072093.P11982153639660501956

/-! ## A072093.P3537140627349643280

`A131160(A130347(n)%A127406(n+1))`
-/

namespace A072093.P3537140627349643280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131160 (Int.tmod (A130347 n) (A127406 (n + 1))).toNat

end

end A072093.P3537140627349643280

/-! ## A072093.P16607906345392653280

`A069773(n)+A025469(A033483(n))`
-/

namespace A072093.P16607906345392653280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 n + A025469 (A033483 n).toNat

end

end A072093.P16607906345392653280

/-! ## A072093.P6120243994757296288

`A354926(A329430(n+1))+A069773(n)`
-/

namespace A072093.P6120243994757296288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (A329430 (n + 1)).toNat + A069773 n

end

end A072093.P6120243994757296288

/-! ## A072093.P3187541422165330556

`A127708(A208510(2*n+3))+A069773(n)`
-/

namespace A072093.P3187541422165330556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (A208510 (2 * n + 3)).toNat + A069773 n

end

end A072093.P3187541422165330556

/-!
# A072094: Permutation of natural numbers induced by the automorphism cdr_robr_cdr! acting on the parenthesizations encoded by A014486.

The programs for A072094, there is no canonical definition to state claims against.
-/

/-! ## A072094.P7621901965039670490

`A057163(A072093(A057163(n)))`
-/

namespace A072094.P7621901965039670490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072093 (A057163 n).toNat).toNat

end

end A072094.P7621901965039670490

/-! ## A072094.P2105858202236187315

`A057501(n)-Δ[A306437(A112624(n+1))]`
-/

namespace A072094.P2105858202236187315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306437 (A112624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n - (f1 (n + 1) - f1 n)

end

end A072094.P2105858202236187315

/-! ## A072094.P15799986523639569114

`xor(A023531(A146607(n+1)), A057501(n))`
-/

namespace A072094.P15799986523639569114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023531 (A146607 (n + 1)).toNat) (A057501 n)

end

end A072094.P15799986523639569114

/-! ## A072094.P1586699973930612560

`A057501(xor(n, A304570(A289768(n))))`
-/

namespace A072094.P1586699973930612560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (Int.xor (n : ℤ) (A304570 (A289768 n).toNat)).toNat

end

end A072094.P1586699973930612560

/-! ## A072094.P14517645976078130961

`A057501(xor(n, A025456(A307877(n))))`
-/

namespace A072094.P14517645976078130961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (Int.xor (n : ℤ) (A025456 (A307877 n).toNat)).toNat

end

end A072094.P14517645976078130961

/-!
# A072095: Permutation of natural numbers induced by the automorphism cdr_robl_cdr! acting on the parenthesizations encoded by A014486.

The programs for A072095, there is no canonical definition to state claims against.
-/

/-! ## A072095.P15547329846132116821

`A057163(A072092(A057163(n)))`
-/

namespace A072095.P15547329846132116821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072092 (A057163 n).toNat).toNat

end

end A072095.P15547329846132116821

/-! ## A072095.P15055198388091526735

`A154122(A131171(n)%A122239(n+1))`
-/

namespace A072095.P15055198388091526735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (Int.tmod (A131171 n) (A122239 (n + 1))).toNat

end

end A072095.P15055198388091526735

/-! ## A072095.P12579822724387318848

`A074683(A073287(n))%A113717(n)`
-/

namespace A072095.P12579822724387318848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074683 (A073287 n).toNat) (A113717 n)

end

end A072095.P12579822724387318848

/-! ## A072095.P13101634178521967383

`A131009(n)%∑[A215796(n+1)]`
-/

namespace A072095.P13101634178521967383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131009 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072095.P13101634178521967383

/-! ## A072095.P10131805490483804304

`gcd(A131009(n), A255308(A091940(n+1)))`
-/

namespace A072095.P10131805490483804304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131009 n) (A255308 (A091940 (n + 1)).toNat)

end

end A072095.P10131805490483804304

/-!
# A072099: First term = 1 and, for each n > 1, n*a(n) does not appear.

The programs for A072099, there is no canonical definition to state claims against.
-/

/-! ## A072099.P10415906783288069704

`comp[A297190(n+1)-1]+1`
-/

namespace A072099.P10415906783288069704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297190 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072099.P10415906783288069704

/-! ## A072099.P18387635436482241813

`eq[char[A297190(n+1)], A151933(n)]`
-/

namespace A072099.P18387635436482241813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A072099.P18387635436482241813

/-! ## A072099.P12283872078550680496

`lt[A360170(A299702(n+1)), A304236(n)]`
-/

namespace A072099.P12283872078550680496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360170 (A299702 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072099.P12283872078550680496

/-! ## A072099.P5532846072871369407

`eq[0, and(A212810(n+1), A317026(n))]`
-/

namespace A072099.P5532846072871369407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212810 (n + 1)) (A317026 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072099.P5532846072871369407

/-! ## A072099.P460954069458462493

`lt[A265140(n+1), A272685(A056011(n+1))]`
-/

namespace A072099.P460954069458462493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272685 (A056011 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072099.P460954069458462493

