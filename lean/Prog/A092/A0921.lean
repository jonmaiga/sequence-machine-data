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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A092100: Smallest number of 1's in binary representations of primes between 2^n and 2^(n+1) is 4.

The programs for A092100, there is no canonical definition to state claims against.
-/

/-! ## A092100.P16308952820004810079

`A081504(n+2)`
-/

namespace A092100.P16308952820004810079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081504 (n + 2)

end

end A092100.P16308952820004810079

/-! ## A092100.P3202912141159410954

`eq[4, A091935(n+1)]+1`
-/

namespace A092100.P3202912141159410954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092100.P3202912141159410954

/-! ## A092100.P15617959906163562179

`record[A081504(A185585(n)-1)]`
-/

namespace A092100.P15617959906163562179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081504 (A185585 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092100.P15617959906163562179

/-! ## A092100.P5049831446469520622

`record[A081504(A109785(xor(1, n)))]`
-/

namespace A092100.P5049831446469520622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081504 (A109785 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092100.P5049831446469520622

/-! ## A092100.P15854893716958039208

`record[A081504(A080513(A008611(n)))]`
-/

namespace A092100.P15854893716958039208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081504 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092100.P15854893716958039208

/-!
# A092102: Non-harmonic primes: the odd primes not in A092101.

The programs for A092102, there is no canonical definition to state claims against.
-/

/-! ## A092102.P10223590822411827519

`A065091(lt[A147954(2*(n+2)), A092103(n+2)]+1)`
-/

namespace A092102.P10223590822411827519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147954 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A092102.P10223590822411827519

/-! ## A092102.P17214026517476079597

`record[p?[A130573(A092486(n))]]`
-/

namespace A092102.P17214026517476079597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A092486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092102.P17214026517476079597

/-! ## A092102.P2314315036379037312

`record[p?[A130573(A159966(n))]]`
-/

namespace A092102.P2314315036379037312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A159966 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092102.P2314315036379037312

/-! ## A092102.P17081509939957422028

`p?[n*Δ[A348518(n+1)]]`
-/

namespace A092102.P17081509939957422028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348518 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092102.P17081509939957422028

/-! ## A092102.P11340831428720692396

`p?[∑[A001222(A213363(n+1))]]`
-/

namespace A092102.P11340831428720692396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A213363 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092102.P11340831428720692396

/-!
# A092104: Primes of form p*q + 4, with prime p and q.

The programs for A092104, the canonical program `A092104.P3319558944324579569` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092104 has offset 1).

The definition of A092104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092104.P3319558944324579569

`p?[A088707(n+1)+3]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A092104

/-- `p?[A088707(n+1)+3]` -/
def P3319558944324579569.Spec : Prop :=
  ∀ n, P3319558944324579569.a n = A092104 (n + 1)

theorem P3319558944324579569.correct : P3319558944324579569.Spec := by
  intro n
  simp only [A092104, Nat.add_sub_cancel]

end A092104

/-! ## A092104.P3087721763569913042

`p?[A001358(n+1)+4]`
-/

namespace A092104.P3087721763569913042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P3087721763569913042

namespace A092104

/-- `p?[A001358(n+1)+4]` -/
def P3087721763569913042.Spec : Prop :=
  ∀ n, P3087721763569913042.a n = A092104 (n + 1)

theorem P3087721763569913042.correct : P3087721763569913042.Spec := by
  intro n
  simp only [A092104, Nat.add_sub_cancel, A092104.P3087721763569913042.f1, A092104.P3087721763569913042.a, A092104.P3319558944324579569.f1, A092104.P3319558944324579569.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092104

/-! ## A092104.P17642132235114807184

`p?[A046315(n+1)+4]`
-/

namespace A092104.P17642132235114807184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P17642132235114807184

namespace A092104

/-- `p?[A046315(n+1)+4]` -/
def P17642132235114807184.Spec : Prop :=
  ∀ n, P17642132235114807184.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P10425035868062169038

`p?[A176406(n+1)+6]`
-/

namespace A092104.P10425035868062169038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P10425035868062169038

namespace A092104

/-- `p?[A176406(n+1)+6]` -/
def P10425035868062169038.Spec : Prop :=
  ∀ n, P10425035868062169038.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P2361768448917986753

`p?[eq[2, A001222(n+1)]+5]`
-/

namespace A092104.P2361768448917986753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092104.P2361768448917986753

namespace A092104

/-- `p?[eq[2, A001222(n+1)]+5]` -/
def P2361768448917986753.Spec : Prop :=
  ∀ n, (P2361768448917986753.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P4759087498030469991

`p?[A084126(n+1)*A084127(n+1)+4]`
-/

namespace A092104.P4759087498030469991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P4759087498030469991

namespace A092104

/-- `p?[A084126(n+1)*A084127(n+1)+4]` -/
def P4759087498030469991.Spec : Prop :=
  ∀ n, P4759087498030469991.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P832898939432022727

`p?[(n+5)*A316681(A001222(n+1)+1)]`
-/

namespace A092104.P832898939432022727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A316681 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P832898939432022727

namespace A092104

/-- `p?[(n+5)*A316681(A001222(n+1)+1)]` -/
def P832898939432022727.Spec : Prop :=
  ∀ n, P832898939432022727.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P18060924438066079862

`p?[record[A052369(n+1)*A056608(n+1)]+4]`
-/

namespace A092104.P18060924438066079862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) * A056608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P18060924438066079862

namespace A092104

/-- `p?[record[A052369(n+1)*A056608(n+1)]+4]` -/
def P18060924438066079862.Spec : Prop :=
  ∀ n, P18060924438066079862.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P14560098375605918169

`p?[eq[2, A226378(n)]+4]`
-/

namespace A092104.P14560098375605918169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092104.P14560098375605918169

namespace A092104

/-- `p?[eq[2, A226378(n)]+4]` -/
def P14560098375605918169.Spec : Prop :=
  ∀ n, (P14560098375605918169.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P15344847205226688494

`p?[eq[2, A284289(n)]+4]`
-/

namespace A092104.P15344847205226688494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092104.P15344847205226688494

namespace A092104

/-- `p?[eq[2, A284289(n)]+4]` -/
def P15344847205226688494.Spec : Prop :=
  ∀ n, (P15344847205226688494.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P14383358731709220355

`p?[2*n+1+A105700(2*n+1)²]`
-/

namespace A092104.P14383358731709220355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + A105700 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092104.P14383358731709220355

namespace A092104

/-- `p?[2*n+1+A105700(2*n+1)²]` -/
def P14383358731709220355.Spec : Prop :=
  ∀ n, P14383358731709220355.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P10351590589249566047

`eq[A143862(n), A395255(n)]`
-/

namespace A092104.P10351590589249566047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092104.P10351590589249566047

namespace A092104

/-- `eq[A143862(n), A395255(n)]` -/
def P10351590589249566047.Spec : Prop :=
  ∀ n, (P10351590589249566047.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P14428563250863298295

`eq[A217668(n), A395255(n)]`
-/

namespace A092104.P14428563250863298295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092104.P14428563250863298295

namespace A092104

/-- `eq[A217668(n), A395255(n)]` -/
def P14428563250863298295.Spec : Prop :=
  ∀ n, (P14428563250863298295.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P6812592003683363063

`eq[A317086(n), A395255(n)]`
-/

namespace A092104.P6812592003683363063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092104.P6812592003683363063

namespace A092104

/-- `eq[A317086(n), A395255(n)]` -/
def P6812592003683363063.Spec : Prop :=
  ∀ n, (P6812592003683363063.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P31241262578657223

`eq[A327642(n), A395255(n)]`
-/

namespace A092104.P31241262578657223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092104.P31241262578657223

namespace A092104

/-- `eq[A327642(n), A395255(n)]` -/
def P31241262578657223.Spec : Prop :=
  ∀ n, (P31241262578657223.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P15248522750186431301

`eq[A395097(n), A395255(n)]`
-/

namespace A092104.P15248522750186431301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092104.P15248522750186431301

namespace A092104

/-- `eq[A395097(n), A395255(n)]` -/
def P15248522750186431301.Spec : Prop :=
  ∀ n, (P15248522750186431301.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P2278819456377713307

`eq[A331991(n+1), A395255(n)]`
-/

namespace A092104.P2278819456377713307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092104.P2278819456377713307

namespace A092104

/-- `eq[A331991(n+1), A395255(n)]` -/
def P2278819456377713307.Spec : Prop :=
  ∀ n, (P2278819456377713307.a n : ℤ) = A092104 (n + 1)

end A092104

/-! ## A092104.P3571741817661442995

`record[A014963(A046315(n+1)+4)]`
-/

namespace A092104.P3571741817661442995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046315 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092104.P3571741817661442995

namespace A092104

/-- `record[A014963(A046315(n+1)+4)]` -/
def P3571741817661442995.Spec : Prop :=
  ∀ n, P3571741817661442995.a n = A092104 (n + 1)

end A092104

/-! ## A092104.P13560178510953001358

`record[A014963(sqrt(A075730(n+1))+4)]`
-/

namespace A092104.P13560178510953001358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (A075730 (n + 1) : ℝ) + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092104.P13560178510953001358

namespace A092104

/-- `record[A014963(sqrt(A075730(n+1))+4)]` -/
def P13560178510953001358.Spec : Prop :=
  ∀ n, P13560178510953001358.a n = A092104 (n + 1)

end A092104

/-!
# A092105: Primes p such that both p-2 and p-4 are semiprimes.

The programs for A092105, there is no canonical definition to state claims against.
-/

/-! ## A092105.P8001000068353581266

`p?[A198327(n+1)+2]`
-/

namespace A092105.P8001000068353581266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092105.P8001000068353581266

/-! ## A092105.P14908623239898017752

`p?[A124936(n+1)+3]`
-/

namespace A092105.P14908623239898017752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092105.P14908623239898017752

/-! ## A092105.P2741330760151863782

`p?[A092207(n+1)+4]`
-/

namespace A092105.P2741330760151863782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092105.P2741330760151863782

/-! ## A092105.P10136323970324616453

`record[A006530(A198327(n+2)+2)]`
-/

namespace A092105.P10136323970324616453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A198327 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092105.P10136323970324616453

/-! ## A092105.P9778084225289290734

`record[A020639(A198327(n+2)+2)]`
-/

namespace A092105.P9778084225289290734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A198327 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092105.P9778084225289290734

/-!
# A092106: Fractal mountains in base 3.

The programs for A092106, there is no canonical definition to state claims against.
-/

/-! ## A092106.P2072220236923937628

`∑[n%3-a(floor(n/3))]` with `a(0)=0`
-/

namespace A092106.P2072220236923937628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n % 3 : ℕ) : ℤ) - f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P2072220236923937628

/-! ## A092106.P12275840021623981309

`∑[A065368(n)]`
-/

namespace A092106.P12275840021623981309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P12275840021623981309

/-! ## A092106.P9970039521339600706

`∑[n-∑[(2*A163533(n))²]]`
-/

namespace A092106.P9970039521339600706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A163533 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P9970039521339600706

/-! ## A092106.P9177581695379074527

`∑[A010872(n)-a(floor(n/3))]` with `a(0)=0`
-/

namespace A092106.P9177581695379074527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010872 n - f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P9177581695379074527

/-! ## A092106.P7239683728991947362

`∑[A055017(A007089(n))]`
-/

namespace A092106.P7239683728991947362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P7239683728991947362

/-! ## A092106.P11957482661279231189

`∑[A195017(A101278(n))]`
-/

namespace A092106.P11957482661279231189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A101278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P11957482661279231189

/-! ## A092106.P5773968287522484841

`∑[2*A053735(n)-A053830(n)]`
-/

namespace A092106.P5773968287522484841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A053830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P5773968287522484841

/-! ## A092106.P18222543382623477173

`A323048(A065368(n)+a(n-1)+1)` with `a(0)=0`
-/

namespace A092106.P18222543382623477173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323048 (A065368 n + a (n - 1) + 1).toNat

end

end A092106.P18222543382623477173

/-! ## A092106.P12043485824574646893

`∑[A004092(A007089(n))-A053830(n)]`
-/

namespace A092106.P12043485824574646893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A007089 n).toNat - A053830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092106.P12043485824574646893

/-!
# A092107: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having exactly k UUU's (triple rises) where U=(1,1). Rows have 1,1,1,2,3,4,5,... entries, respectively.

The programs for A092107, there is no canonical definition to state claims against.
-/

/-! ## A092107.P3094092495792917207

`A085516(A114489(n))`
-/

namespace A092107.P3094092495792917207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A114489 n).toNat

end

end A092107.P3094092495792917207

/-! ## A092107.P8246747212938902656

`A342999(A271206(n))`
-/

namespace A092107.P8246747212938902656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342999 (A271206 n).toNat

end

end A092107.P8246747212938902656

/-!
# A092108: Numbers m such that m-th prime + m-th semiprime is prime.

The programs for A092108, the canonical program `A092108.P11943261216955232362` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092108 has offset 1).

The definition of A092108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092108.P11943261216955232362

`eq[1, A001222(A133796(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092108

/-- `eq[1, A001222(A133796(n+1))]+1` -/
def P11943261216955232362.Spec : Prop :=
  ∀ n, (P11943261216955232362.a n : ℤ) = A092108 (n + 1)

theorem P11943261216955232362.correct : P11943261216955232362.Spec := by
  intro n
  simp only [A092108, Nat.add_sub_cancel]

end A092108

/-! ## A092108.P9250075582667592904

`lt[A001222(A001358(n+1)+A000040(n+1)), 2]+1`
-/

namespace A092108.P9250075582667592904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A092108.P9250075582667592904

namespace A092108

/-- `lt[A001222(A001358(n+1)+A000040(n+1)), 2]+1` -/
def P9250075582667592904.Spec : Prop :=
  ∀ n, (P9250075582667592904.a n : ℤ) = A092108 (n + 1)

end A092108

/-! ## A092108.P13918087340978489319

`lt[A000005(A001358(n+1)+A000040(n+1)), 3]+1`
-/

namespace A092108.P13918087340978489319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001358 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A092108.P13918087340978489319

namespace A092108

/-- `lt[A000005(A001358(n+1)+A000040(n+1)), 3]+1` -/
def P13918087340978489319.Spec : Prop :=
  ∀ n, (P13918087340978489319.a n : ℤ) = A092108 (n + 1)

end A092108

/-!
# A092109: Primes p such that p+3 is a semiprime.

The programs for A092109, there is no canonical definition to state claims against.
-/

/-! ## A092109.P13185429486972625945

`2*A063908(n+1)-3`
-/

namespace A092109.P13185429486972625945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063908 (n + 1) - 3

end

end A092109.P13185429486972625945

/-! ## A092109.P4143205795995125681

`A241817(n+1)-3`
-/

namespace A092109.P4143205795995125681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241817 (n + 1) - 3

end

end A092109.P4143205795995125681

/-! ## A092109.P18142684739897368334

`A226755(n+1)/A063908(n+1)`
-/

namespace A092109.P18142684739897368334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226755 (n + 1) : ℚ) / (A063908 (n + 1) : ℚ)

end

end A092109.P18142684739897368334

/-! ## A092109.P990162177376563883

`p?[A015819(n+1)]`
-/

namespace A092109.P990162177376563883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P990162177376563883

/-! ## A092109.P14852632867857065978

`p?[A308169(n+1)]`
-/

namespace A092109.P14852632867857065978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P14852632867857065978

/-! ## A092109.P9918698135940765270

`∩[A002145(n+1), A015819(n+1)]`
-/

namespace A092109.P9918698135940765270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092109.P9918698135940765270

/-! ## A092109.P1586167503446759745

`∩[A015819(n+1), A045326(n+1)]`
-/

namespace A092109.P1586167503446759745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092109.P1586167503446759745

/-! ## A092109.P5379243967536854797

`∩[A015819(n+1), A015919(n+1)]`
-/

namespace A092109.P5379243967536854797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092109.P5379243967536854797

/-! ## A092109.P2052079016533713600

`p?[2*p?[2*n+1]-3]`
-/

namespace A092109.P2052079016533713600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P2052079016533713600

/-! ## A092109.P10861418325988613921

`p?[A131426(n+1)]`
-/

namespace A092109.P10861418325988613921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P10861418325988613921

/-! ## A092109.P7550896406769270410

`p?[A037168(n+1)-1]`
-/

namespace A092109.P7550896406769270410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P7550896406769270410

/-! ## A092109.P17814764912383625509

`p?[A076274(n+1)-2]`
-/

namespace A092109.P17814764912383625509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P17814764912383625509

/-! ## A092109.P6489505009990314367

`p?[A001747(n+1)-3]`
-/

namespace A092109.P6489505009990314367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P6489505009990314367

/-! ## A092109.P8666664948466738055

`p?[A100484(n+1)-3]`
-/

namespace A092109.P8666664948466738055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P8666664948466738055

/-! ## A092109.P8832917425427351262

`p?[A072055(n+1)-4]`
-/

namespace A092109.P8832917425427351262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P8832917425427351262

/-! ## A092109.P9882545767289523103

`p?[2*A000040(n+1)-3]`
-/

namespace A092109.P9882545767289523103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P9882545767289523103

/-! ## A092109.P7247812447215820773

`∩[A002145(n+1), A131426(n+1)]`
-/

namespace A092109.P7247812447215820773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092109.P7247812447215820773

/-! ## A092109.P15579925000622522542

`p?[A086801(n+1)+A008578(n+2)]`
-/

namespace A092109.P15579925000622522542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P15579925000622522542

/-! ## A092109.P6946595696289269867

`p?[A033945(n+1)-2]`
-/

namespace A092109.P6946595696289269867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P6946595696289269867

/-! ## A092109.P1814882389796535951

`p?[2*n-A001222(n+1)!]`
-/

namespace A092109.P1814882389796535951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.factorial (A001222 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092109.P1814882389796535951

/-!
# A092110: Primes p such that 2p+3 and 2p-3 are both prime.

The programs for A092110, the canonical program `A092110.P15519591343573927648` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092110 has offset 1).

The definition of A092110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092110.P14381165301725522189

`∩[A023204(n+1), A063908(n+1)]`
-/

namespace A092110.P14381165301725522189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P14381165301725522189

namespace A092110

/-- `∩[A023204(n+1), A063908(n+1)]` -/
def P14381165301725522189.Spec : Prop :=
  ∀ n, (P14381165301725522189.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P3208170161004757781

`∩[A015782(n+1), A241817(n+1)]/2`
-/

namespace A092110.P3208170161004757781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241817 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A092110.P3208170161004757781

namespace A092110

/-- `∩[A015782(n+1), A241817(n+1)]/2` -/
def P3208170161004757781.Spec : Prop :=
  ∀ n, P3208170161004757781.a n = (A092110 (n + 1) : ℚ)

end A092110

/-! ## A092110.P15519591343573927648

`p?[A088763(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A092110

/-- `p?[A088763(n+1)]` -/
def P15519591343573927648.Spec : Prop :=
  ∀ n, P15519591343573927648.a n = A092110 (n + 1)

theorem P15519591343573927648.correct : P15519591343573927648.Spec := by
  intro n
  simp only [A092110, Nat.add_sub_cancel]

end A092110

/-! ## A092110.P14079050580321198789

`∩[A023204(n+1), A088763(n+1)]`
-/

namespace A092110.P14079050580321198789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P14079050580321198789

namespace A092110

/-- `∩[A023204(n+1), A088763(n+1)]` -/
def P14079050580321198789.Spec : Prop :=
  ∀ n, (P14079050580321198789.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P16818567532849868513

`∩[A063908(n+1), A088763(n+1)]`
-/

namespace A092110.P16818567532849868513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P16818567532849868513

namespace A092110

/-- `∩[A063908(n+1), A088763(n+1)]` -/
def P16818567532849868513.Spec : Prop :=
  ∀ n, (P16818567532849868513.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P511195674818212955

`∩[A088763(n+1), A283562(n+1)]`
-/

namespace A092110.P511195674818212955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P511195674818212955

namespace A092110

/-- `∩[A088763(n+1), A283562(n+1)]` -/
def P511195674818212955.Spec : Prop :=
  ∀ n, (P511195674818212955.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P16347397817688931373

`∩[A015782(n+1), A087695(n+1)]/2`
-/

namespace A092110.P16347397817688931373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A092110.P16347397817688931373

namespace A092110

/-- `∩[A015782(n+1), A087695(n+1)]/2` -/
def P16347397817688931373.Spec : Prop :=
  ∀ n, P16347397817688931373.a n = (A092110 (n + 1) : ℚ)

end A092110

/-! ## A092110.P7243580342286147826

`∩[A087695(n+1), A241817(n+1)]/2`
-/

namespace A092110.P7243580342286147826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241817 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A092110.P7243580342286147826

namespace A092110

/-- `∩[A087695(n+1), A241817(n+1)]/2` -/
def P7243580342286147826.Spec : Prop :=
  ∀ n, P7243580342286147826.a n = (A092110 (n + 1) : ℚ)

end A092110

/-! ## A092110.P13447474396805530653

`∩[A042993(n+1), A088763(n+1)]`
-/

namespace A092110.P13447474396805530653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P13447474396805530653

namespace A092110

/-- `∩[A042993(n+1), A088763(n+1)]` -/
def P13447474396805530653.Spec : Prop :=
  ∀ n, (P13447474396805530653.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P13914018999320421528

`p?[A387935(n+1)]`
-/

namespace A092110.P13914018999320421528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092110.P13914018999320421528

namespace A092110

/-- `p?[A387935(n+1)]` -/
def P13914018999320421528.Spec : Prop :=
  ∀ n, P13914018999320421528.a n = A092110 (n + 1)

end A092110

/-! ## A092110.P3238198545759862461

`∩[A023204(n+1), A387935(n+1)]`
-/

namespace A092110.P3238198545759862461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P3238198545759862461

namespace A092110

/-- `∩[A023204(n+1), A387935(n+1)]` -/
def P3238198545759862461.Spec : Prop :=
  ∀ n, (P3238198545759862461.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P18288416024437481396

`∩[A042986(n+1), A088763(n+1)]`
-/

namespace A092110.P18288416024437481396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P18288416024437481396

namespace A092110

/-- `∩[A042986(n+1), A088763(n+1)]` -/
def P18288416024437481396.Spec : Prop :=
  ∀ n, (P18288416024437481396.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P14135308072389324082

`∩[A042991(n+1), A088763(n+1)]`
-/

namespace A092110.P14135308072389324082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P14135308072389324082

namespace A092110

/-- `∩[A042991(n+1), A088763(n+1)]` -/
def P14135308072389324082.Spec : Prop :=
  ∀ n, (P14135308072389324082.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P15068938318855814143

`∩[A088763(n+1), A216286(n+1)]`
-/

namespace A092110.P15068938318855814143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P15068938318855814143

namespace A092110

/-- `∩[A088763(n+1), A216286(n+1)]` -/
def P15068938318855814143.Spec : Prop :=
  ∀ n, (P15068938318855814143.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P17952349803074921120

`∩[A080191(n+1), A088763(n+1)]`
-/

namespace A092110.P17952349803074921120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P17952349803074921120

namespace A092110

/-- `∩[A080191(n+1), A088763(n+1)]` -/
def P17952349803074921120.Spec : Prop :=
  ∀ n, (P17952349803074921120.a n : ℤ) = A092110 (n + 1)

end A092110

/-! ## A092110.P14341126499964429790

`∩[A049557(n+1), A088763(n+1)]`
-/

namespace A092110.P14341126499964429790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092110.P14341126499964429790

namespace A092110

/-- `∩[A049557(n+1), A088763(n+1)]` -/
def P14341126499964429790.Spec : Prop :=
  ∀ n, (P14341126499964429790.a n : ℤ) = A092110 (n + 1)

end A092110

/-!
# A092111: a(n) = n+1 minus the greatest number of 1's in the binary representations of primes between 2^n and 2^(n+1).

The programs for A092111, there is no canonical definition to state claims against.
-/

/-! ## A092111.P17680884427126108537

`n+2-A091937(n+1)`
-/

namespace A092111.P17680884427126108537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A091937 (n + 1)

end

end A092111.P17680884427126108537

/-! ## A092111.P5770806331344218832

`A007920(A091937(n+1)-n)`
-/

namespace A092111.P5770806331344218832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A091937 (n + 1) - (n : ℤ)).toNat

end

end A092111.P5770806331344218832

/-! ## A092111.P14840082809591354140

`A051652(A091937(n+1)-n)`
-/

namespace A092111.P14840082809591354140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A091937 (n + 1) - (n : ℤ)).toNat

end

end A092111.P14840082809591354140

/-! ## A092111.P15023014251559546122

`A051699(A091937(n+1)-n)`
-/

namespace A092111.P15023014251559546122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A091937 (n + 1) - (n : ℤ)).toNat

end

end A092111.P15023014251559546122

/-! ## A092111.P12184675756620737992

`A237053(A091937(n+1)-n)`
-/

namespace A092111.P12184675756620737992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A091937 (n + 1) - (n : ℤ)).toNat

end

end A092111.P12184675756620737992

/-! ## A092111.P11563565484019028043

`A020725(n+1)%A091937(n+1)`
-/

namespace A092111.P11563565484019028043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (A091937 (n + 1))

end

end A092111.P11563565484019028043

/-! ## A092111.P15057004192875185999

`A114637(n+1)%A091937(n+1)`
-/

namespace A092111.P15057004192875185999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114637 (n + 1)) (A091937 (n + 1))

end

end A092111.P15057004192875185999

/-! ## A092111.P17241740585869635738

`(n+2)%A091937(A000027(n+1))`
-/

namespace A092111.P17241740585869635738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A091937 (A000027 (n + 1)).toNat)

end

end A092111.P17241740585869635738

/-! ## A092111.P6177444813251658496

`A029578((n+3)%A091937(n+1))`
-/

namespace A092111.P6177444813251658496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Int.tmod (n + 3 : ℤ) (A091937 (n + 1))).toNat

end

end A092111.P6177444813251658496

/-! ## A092111.P17741832169432273131

`(A000005(gcd(n, n+1))+n+1)%A091937(n+1)`
-/

namespace A092111.P17741832169432273131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (Nat.gcd n (n + 1)) + (n + 1 : ℤ)) (A091937 (n + 1))

end

end A092111.P17741832169432273131

/-!
# A092112: Where A092111 equals 2.

The programs for A092112, there is no canonical definition to state claims against.
-/

/-! ## A092112.P5534916196173365659

`lt[1, A092111(n+1)]+1`
-/

namespace A092112.P5534916196173365659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A092112.P5534916196173365659

/-! ## A092112.P8624373878644024657

`eq[2, A092111(n+2)]+2`
-/

namespace A092112.P8624373878644024657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A092112.P8624373878644024657

/-! ## A092112.P13488943640563146226

`eq[2, A092111(A028310(n))]`
-/

namespace A092112.P13488943640563146226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092112.P13488943640563146226

/-! ## A092112.P14423584937512955797

`eq[2, A092111(A060000(n+1))]`
-/

namespace A092112.P14423584937512955797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092112.P14423584937512955797

/-! ## A092112.P18190141656141096615

`A153152(eq[2, A092111(n+1)])`
-/

namespace A092112.P18190141656141096615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092112.P18190141656141096615

/-! ## A092112.P8693723910614815099

`lt[1, A092111(A233583(n+1))]`
-/

namespace A092112.P8693723910614815099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092112.P8693723910614815099

/-! ## A092112.P12701543529099285238

`eq[A106821(n+1), A336923(n+1)]`
-/

namespace A092112.P12701543529099285238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092112.P12701543529099285238

/-!
# A092118: 

The programs for A092118, there is no canonical definition to state claims against.
-/

/-! ## A092118.P9815418167653088306

`A106497(n+1)²`
-/

namespace A092118.P9815418167653088306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (n + 1) ^ 2

end

end A092118.P9815418167653088306

/-! ## A092118.P13535736688735159625

`(A116279(n+1)+1)²`
-/

namespace A092118.P13535736688735159625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116279 (n + 1) + 1) ^ 2

end

end A092118.P13535736688735159625

/-! ## A092118.P12718813473077180337

`A106497(comp[12*n])*A106497(n+1)`
-/

namespace A092118.P12718813473077180337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A106497 (n + 1)

end

end A092118.P12718813473077180337

/-! ## A092118.P14298282168808499956

`A106497(n+1)^(A018252(gcd(n, n+1))+1)`
-/

namespace A092118.P14298282168808499956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106497 (n + 1) : ℚ) ^ (A018252 (Nat.gcd n (n + 1)) + 1 : ℤ)

end

end A092118.P14298282168808499956

/-!
# A092119: Euler transform of A001511.

The programs for A092119, there is no canonical definition to state claims against.
-/

/-! ## A092119.P4966286209205000456

`A003056(A000070(n)*A056504(n))`
-/

namespace A092119.P4966286209205000456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000070 n * A056504 n).toNat

end

end A092119.P4966286209205000456

/-! ## A092119.P11765319174595724667

`A056556(A279568(n))+A056453(n+1)`
-/

namespace A092119.P11765319174595724667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A279568 n).toNat + A056453 (n + 1)

end

end A092119.P11765319174595724667

/-! ## A092119.P13621920479021027418

`A325106(A257801(n+1)+A000032(n))`
-/

namespace A092119.P13621920479021027418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A257801 (n + 1) + A000032 n).toNat

end

end A092119.P13621920479021027418

/-!
# A092123: Largest coefficient in expansion of P(0)=x, P(n+1)=P(n)*[1+P(n)].

The programs for A092123, there is no canonical definition to state claims against.
-/

/-! ## A092123.P2339398431881060864

`A225201(A260239(n))`
-/

namespace A092123.P2339398431881060864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225201 (A260239 n).toNat

end

end A092123.P2339398431881060864

/-! ## A092123.P2526128964838574362

`A122888(eq[A006257(n), A062298(n+1)])`
-/

namespace A092123.P2526128964838574362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A092123.P2526128964838574362

/-!
# A092124: a(0) = 2, a(n) = (2^(2^n)+2)*a(n-1) for n>0.

The programs for A092124, the canonical program `A092124.P17694749049019044371` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092124 has offset 0).

The definition of A092124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^2^n+2)*a(n-1)` (program `A092124.P17694749049019044371`, by `A092124.P17694749049019044371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092124.P17694749049019044371

`(2^2^n+2)*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092124

/-- `(2^2^n+2)*a(n-1)` -/
def P17694749049019044371.Spec : Prop :=
  ∀ n, (P17694749049019044371.a n : ℤ) = A092124 n

theorem P17694749049019044371.correct : P17694749049019044371.Spec := by
  intro n
  simp only [A092124]

end A092124

/-! ## A092124.P14407450124120534300

`∏[or(2, 2^2^n)]`
-/

namespace A092124.P14407450124120534300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (2 ^ 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092124.P14407450124120534300

namespace A092124

/-- `∏[or(2, 2^2^n)]` -/
def P14407450124120534300.Spec : Prop :=
  ∀ n, (P14407450124120534300.a n : ℤ) = A092124 n

end A092124

/-! ## A092124.P7941374096842399598

`∏[A073096(n)]/3`
-/

namespace A092124.P7941374096842399598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073096 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A092124.P7941374096842399598

namespace A092124

/-- `∏[A073096(n)]/3` -/
def P7941374096842399598.Spec : Prop :=
  ∀ n, P7941374096842399598.a n = (A092124 n : ℚ)

end A092124

/-! ## A092124.P6639262373059514601

`∏[lcm(2, A332203(n))]`
-/

namespace A092124.P6639262373059514601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A332203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092124.P6639262373059514601

namespace A092124

/-- `∏[lcm(2, A332203(n))]` -/
def P6639262373059514601.Spec : Prop :=
  ∀ n, (P6639262373059514601.a n : ℤ) = A092124 n

end A092124

/-!
# A092125: Numbers k such that k, k+2, k+4 are semiprimes.

The programs for A092125, the canonical program `A092125.P10354082193665829780` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092125 has offset 1).

The definition of A092125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092125.P10354082193665829780

`A082131(n+1)-2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A092125

/-- `A082131(n+1)-2` -/
def P10354082193665829780.Spec : Prop :=
  ∀ n, P10354082193665829780.a n = A092125 (n + 1)

theorem P10354082193665829780.correct : P10354082193665829780.Spec := by
  intro n
  simp only [A092125, Nat.add_sub_cancel]

end A092125

/-! ## A092125.P4377606852684575941

`∩[A092207(n+1), A175648(n+1)]`
-/

namespace A092125.P4377606852684575941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092125.P4377606852684575941

namespace A092125

/-- `∩[A092207(n+1), A175648(n+1)]` -/
def P4377606852684575941.Spec : Prop :=
  ∀ n, (P4377606852684575941.a n : ℤ) = A092125 (n + 1)

end A092125

/-! ## A092125.P17807753306963682503

`∩[A175648(n+1), A176406(n+1)]`
-/

namespace A092125.P17807753306963682503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092125.P17807753306963682503

namespace A092125

/-- `∩[A175648(n+1), A176406(n+1)]` -/
def P17807753306963682503.Spec : Prop :=
  ∀ n, (P17807753306963682503.a n : ℤ) = A092125 (n + 1)

end A092125

/-! ## A092125.P5654298623753242538

`∩[A001358(n+1), A105571(n+1)]-2`
-/

namespace A092125.P5654298623753242538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P5654298623753242538

namespace A092125

/-- `∩[A001358(n+1), A105571(n+1)]-2` -/
def P5654298623753242538.Spec : Prop :=
  ∀ n, P5654298623753242538.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P18284598139702734586

`∩[A046315(n+1), A105571(n+1)]-2`
-/

namespace A092125.P18284598139702734586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P18284598139702734586

namespace A092125

/-- `∩[A046315(n+1), A105571(n+1)]-2` -/
def P18284598139702734586.Spec : Prop :=
  ∀ n, P18284598139702734586.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P8516828459156605604

`∩[A089268(n+1), A105571(n+1)]-2`
-/

namespace A092125.P8516828459156605604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P8516828459156605604

namespace A092125

/-- `∩[A089268(n+1), A105571(n+1)]-2` -/
def P8516828459156605604.Spec : Prop :=
  ∀ n, P8516828459156605604.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P8633046540914296642

`∩[A092207(n+1), A200925(n+1)]-2`
-/

namespace A092125.P8633046540914296642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200925 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P8633046540914296642

namespace A092125

/-- `∩[A092207(n+1), A200925(n+1)]-2` -/
def P8633046540914296642.Spec : Prop :=
  ∀ n, P8633046540914296642.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P5737621838233924405

`∩[A105571(n+1), A198327(n+1)]-2`
-/

namespace A092125.P5737621838233924405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P5737621838233924405

namespace A092125

/-- `∩[A105571(n+1), A198327(n+1)]-2` -/
def P5737621838233924405.Spec : Prop :=
  ∀ n, P5737621838233924405.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P15744466340664560530

`∩[A092207(n+1), A371656(n+1)-2]`
-/

namespace A092125.P15744466340664560530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092125.P15744466340664560530

namespace A092125

/-- `∩[A092207(n+1), A371656(n+1)-2]` -/
def P15744466340664560530.Spec : Prop :=
  ∀ n, (P15744466340664560530.a n : ℤ) = A092125 (n + 1)

end A092125

/-! ## A092125.P11459724296854647643

`∩[A092207(n+2)-2, A092207(n+2)]`
-/

namespace A092125.P11459724296854647643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092125.P11459724296854647643

namespace A092125

/-- `∩[A092207(n+2)-2, A092207(n+2)]` -/
def P11459724296854647643.Spec : Prop :=
  ∀ n, (P11459724296854647643.a n : ℤ) = A092125 (n + 1)

end A092125

/-! ## A092125.P13139929885259487292

`A118824(A304042(n))+A082131(n+1)`
-/

namespace A092125.P13139929885259487292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A304042 n).toNat + A082131 (n + 1)

end

end A092125.P13139929885259487292

namespace A092125

/-- `A118824(A304042(n))+A082131(n+1)` -/
def P13139929885259487292.Spec : Prop :=
  ∀ n, P13139929885259487292.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P14516956571716695750

`A118824(A045425(n+1))+A082131(n+1)`
-/

namespace A092125.P14516956571716695750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A045425 (n + 1)).toNat + A082131 (n + 1)

end

end A092125.P14516956571716695750

namespace A092125

/-- `A118824(A045425(n+1))+A082131(n+1)` -/
def P14516956571716695750.Spec : Prop :=
  ∀ n, P14516956571716695750.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P13141966185671342561

`A118824(A348048(n+1))+A082131(n+1)`
-/

namespace A092125.P13141966185671342561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A348048 (n + 1)).toNat + A082131 (n + 1)

end

end A092125.P13141966185671342561

namespace A092125

/-- `A118824(A348048(n+1))+A082131(n+1)` -/
def P13141966185671342561.Spec : Prop :=
  ∀ n, P13141966185671342561.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P16270025013296233014

`A118824(A082131(n+1)+2)+A082131(n+1)`
-/

namespace A092125.P16270025013296233014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A082131 (n + 1) + 2).toNat + A082131 (n + 1)

end

end A092125.P16270025013296233014

namespace A092125

/-- `A118824(A082131(n+1)+2)+A082131(n+1)` -/
def P16270025013296233014.Spec : Prop :=
  ∀ n, P16270025013296233014.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P10357424095512594146

`∩[A105571(n+1), A131368(n+1)]-2`
-/

namespace A092125.P10357424095512594146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P10357424095512594146

namespace A092125

/-- `∩[A105571(n+1), A131368(n+1)]-2` -/
def P10357424095512594146.Spec : Prop :=
  ∀ n, P10357424095512594146.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P6924904979971217734

`∩[A105571(n+1), A176540(n+1)]-2`
-/

namespace A092125.P6924904979971217734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P6924904979971217734

namespace A092125

/-- `∩[A105571(n+1), A176540(n+1)]-2` -/
def P6924904979971217734.Spec : Prop :=
  ∀ n, P6924904979971217734.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P6699110980241603587

`∩[A105571(n+1), A328359(n+1)]-2`
-/

namespace A092125.P6699110980241603587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328359 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P6699110980241603587

namespace A092125

/-- `∩[A105571(n+1), A328359(n+1)]-2` -/
def P6699110980241603587.Spec : Prop :=
  ∀ n, P6699110980241603587.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P18026872784904693280

`∩[A198327(n+1), A328359(n+1)]-2`
-/

namespace A092125.P18026872784904693280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328359 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092125.P18026872784904693280

namespace A092125

/-- `∩[A198327(n+1), A328359(n+1)]-2` -/
def P18026872784904693280.Spec : Prop :=
  ∀ n, P18026872784904693280.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P14115021643715607037

`A023444(A082131(n+1))`
-/

namespace A092125.P14115021643715607037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082131 (n + 1)).toNat

end

end A092125.P14115021643715607037

namespace A092125

/-- `A023444(A082131(n+1))` -/
def P14115021643715607037.Spec : Prop :=
  ∀ n, P14115021643715607037.a n = A092125 (n + 1)

end A092125

/-! ## A092125.P18126586224181977977

`A014681(xor(1, A082131(n+1)))`
-/

namespace A092125.P18126586224181977977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Int.xor 1 (A082131 (n + 1))).toNat

end

end A092125.P18126586224181977977

namespace A092125

/-- `A014681(xor(1, A082131(n+1)))` -/
def P18126586224181977977.Spec : Prop :=
  ∀ n, P18126586224181977977.a n = A092125 (n + 1)

end A092125

/-!
# A092126: Numbers n such that n, n+2, n+4, n+6 are semiprimes.

The programs for A092126, the canonical program `A092126.P2291738424321848284` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092126 has offset 1).

The definition of A092126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092126.P3486941070013608267

`∩[A105571(n+1), A175648(n+1)]-2`
-/

namespace A092126.P3486941070013608267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092126.P3486941070013608267

namespace A092126

/-- `∩[A105571(n+1), A175648(n+1)]-2` -/
def P3486941070013608267.Spec : Prop :=
  ∀ n, P3486941070013608267.a n = A092126 (n + 1)

end A092126

/-! ## A092126.P2291738424321848284

`∩[A175648(n+2)-2, A175648(n+2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092126

/-- `∩[A175648(n+2)-2, A175648(n+2)]` -/
def P2291738424321848284.Spec : Prop :=
  ∀ n, (P2291738424321848284.a n : ℤ) = A092126 (n + 1)

theorem P2291738424321848284.correct : P2291738424321848284.Spec := by
  intro n
  simp only [A092126, Nat.add_sub_cancel]

end A092126

/-! ## A092126.P4382473742494505556

`∩[A175648(A103838(n)), A175648(n+1)-2]`
-/

namespace A092126.P4382473742494505556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (A103838 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092126.P4382473742494505556

namespace A092126

/-- `∩[A175648(A103838(n)), A175648(n+1)-2]` -/
def P4382473742494505556.Spec : Prop :=
  ∀ n, (P4382473742494505556.a n : ℤ) = A092126 (n + 1)

end A092126

/-! ## A092126.P3110048145901429787

`∩[A082131(n+1), A092125(n+1)]-2`
-/

namespace A092126.P3110048145901429787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A092126.P3110048145901429787

namespace A092126

/-- `∩[A082131(n+1), A092125(n+1)]-2` -/
def P3110048145901429787.Spec : Prop :=
  ∀ n, P3110048145901429787.a n = A092126 (n + 1)

end A092126

/-! ## A092126.P10142113992611167651

`∩[A092125(n+2)-2, A092125(n+2)]`
-/

namespace A092126.P10142113992611167651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092126.P10142113992611167651

namespace A092126

/-- `∩[A092125(n+2)-2, A092125(n+2)]` -/
def P10142113992611167651.Spec : Prop :=
  ∀ n, (P10142113992611167651.a n : ℤ) = A092126 (n + 1)

end A092126

/-! ## A092126.P16213953847416825738

`A092125(eq[2, A092125(n+2)-A092125(n+1)]+1)`
-/

namespace A092126.P16213953847416825738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 2) - A092125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A092126.P16213953847416825738

namespace A092126

/-- `A092125(eq[2, A092125(n+2)-A092125(n+1)]+1)` -/
def P16213953847416825738.Spec : Prop :=
  ∀ n, P16213953847416825738.a n = A092126 (n + 1)

end A092126

/-! ## A092126.P10656594223741790597

`A023444(∩[A082131(n+1), A092125(n+1)])`
-/

namespace A092126.P10656594223741790597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A092126.P10656594223741790597

namespace A092126

/-- `A023444(∩[A082131(n+1), A092125(n+1)])` -/
def P10656594223741790597.Spec : Prop :=
  ∀ n, P10656594223741790597.a n = A092126 (n + 1)

end A092126

/-! ## A092126.P6772805988023219865

`∩[A092207(n+1), A023446(A092207(n+1))]`
-/

namespace A092126.P6772805988023219865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A092207 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092126.P6772805988023219865

namespace A092126

/-- `∩[A092207(n+1), A023446(A092207(n+1))]` -/
def P6772805988023219865.Spec : Prop :=
  ∀ n, (P6772805988023219865.a n : ℤ) = A092126 (n + 1)

end A092126

/-! ## A092126.P10775744276792961228

`A023444(∩[A105571(n+1), A175648(n+1)])`
-/

namespace A092126.P10775744276792961228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A092126.P10775744276792961228

namespace A092126

/-- `A023444(∩[A105571(n+1), A175648(n+1)])` -/
def P10775744276792961228.Spec : Prop :=
  ∀ n, P10775744276792961228.a n = A092126 (n + 1)

end A092126

/-! ## A092126.P12949103354766820668

`A023444(∩[A092125(n+1), A328359(n+1)])`
-/

namespace A092126.P12949103354766820668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328359 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A092126.P12949103354766820668

namespace A092126

/-- `A023444(∩[A092125(n+1), A328359(n+1)])` -/
def P12949103354766820668.Spec : Prop :=
  ∀ n, P12949103354766820668.a n = A092126 (n + 1)

end A092126

/-!
# A092127: Numbers k such that k, k+2, k+4, k+6, k+8 are semiprimes.

The programs for A092127, the canonical program `A092127.P15249321925772856810` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092127 has offset 1).

The definition of A092127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092127.P15249321925772856810

`∩[A092126(n+1)-2, A092126(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092127

/-- `∩[A092126(n+1)-2, A092126(n+1)]` -/
def P15249321925772856810.Spec : Prop :=
  ∀ n, (P15249321925772856810.a n : ℤ) = A092127 (n + 1)

theorem P15249321925772856810.correct : P15249321925772856810.Spec := by
  intro n
  simp only [A092127, Nat.add_sub_cancel]

end A092127

/-! ## A092127.P13365384737769930164

`∩[A092125(n+1), A023446(A092125(n+1))]`
-/

namespace A092127.P13365384737769930164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A092125 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092127.P13365384737769930164

namespace A092127

/-- `∩[A092125(n+1), A023446(A092125(n+1))]` -/
def P13365384737769930164.Spec : Prop :=
  ∀ n, (P13365384737769930164.a n : ℤ) = A092127 (n + 1)

end A092127

/-! ## A092127.P16886023406811638267

`∩[A092126(n+1), A023444(A092126(n+1))]`
-/

namespace A092127.P16886023406811638267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A092126 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092127.P16886023406811638267

namespace A092127

/-- `∩[A092126(n+1), A023444(A092126(n+1))]` -/
def P16886023406811638267.Spec : Prop :=
  ∀ n, (P16886023406811638267.a n : ℤ) = A092127 (n + 1)

end A092127

/-! ## A092127.P9868128457117776459

`∩[A092126(n+1), A023446(A175648(n+1))]`
-/

namespace A092127.P9868128457117776459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A175648 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092127.P9868128457117776459

namespace A092127

/-- `∩[A092126(n+1), A023446(A175648(n+1))]` -/
def P9868128457117776459.Spec : Prop :=
  ∀ n, (P9868128457117776459.a n : ℤ) = A092127 (n + 1)

end A092127

/-! ## A092127.P18071435789635148972

`∩[A023446(A092126(n+1)+2), A092126(n+1)]`
-/

namespace A092127.P18071435789635148972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A092126 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092127.P18071435789635148972

namespace A092127

/-- `∩[A023446(A092126(n+1)+2), A092126(n+1)]` -/
def P18071435789635148972.Spec : Prop :=
  ∀ n, (P18071435789635148972.a n : ℤ) = A092127 (n + 1)

end A092127

/-!
# A092128: Numbers k such that k, k+2, k+4, k+6, k+8, k+10 are semiprimes.

The programs for A092128, the canonical program `A092128.P10566791276092694477` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092128 has offset 1).

The definition of A092128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092128.P10566791276092694477

`∩[A092127(n+1)-2, A092127(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A092128

/-- `∩[A092127(n+1)-2, A092127(n+1)]` -/
def P10566791276092694477.Spec : Prop :=
  ∀ n, (P10566791276092694477.a n : ℤ) = A092128 (n + 1)

theorem P10566791276092694477.correct : P10566791276092694477.Spec := by
  intro n
  simp only [A092128, Nat.add_sub_cancel]

end A092128

/-! ## A092128.P7727666204358668239

`∩[A092126(n+1)-4, A092126(n+1)]`
-/

namespace A092128.P7727666204358668239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092128.P7727666204358668239

namespace A092128

/-- `∩[A092126(n+1)-4, A092126(n+1)]` -/
def P7727666204358668239.Spec : Prop :=
  ∀ n, (P7727666204358668239.a n : ℤ) = A092128 (n + 1)

end A092128

/-! ## A092128.P4051387205139435227

`∩[A092125(n+1)-6, A092125(n+1)]`
-/

namespace A092128.P4051387205139435227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092128.P4051387205139435227

namespace A092128

/-- `∩[A092125(n+1)-6, A092125(n+1)]` -/
def P4051387205139435227.Spec : Prop :=
  ∀ n, (P4051387205139435227.a n : ℤ) = A092128 (n + 1)

end A092128

/-! ## A092128.P446553472364006284

`∩[A092126(n+1), A023446(A092126(n+1))]`
-/

namespace A092128.P446553472364006284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A092126 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092128.P446553472364006284

namespace A092128

/-- `∩[A092126(n+1), A023446(A092126(n+1))]` -/
def P446553472364006284.Spec : Prop :=
  ∀ n, (P446553472364006284.a n : ℤ) = A092128 (n + 1)

end A092128

/-! ## A092128.P9454540373235991091

`∩[A092127(n+1), A023444(A092127(n+1))]`
-/

namespace A092128.P9454540373235991091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A092127 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092128.P9454540373235991091

namespace A092128

/-- `∩[A092127(n+1), A023444(A092127(n+1))]` -/
def P9454540373235991091.Spec : Prop :=
  ∀ n, (P9454540373235991091.a n : ℤ) = A092128 (n + 1)

end A092128

/-!
# A092129: Numbers k such that k, k+2, k+4, k+6, k+8, k+10, k+12 are semiprimes.

The programs for A092129, there is no canonical definition to state claims against.
-/

/-! ## A092129.P198708347556113530

`A268578(n+1)+2`
-/

namespace A092129.P198708347556113530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268578 (n + 1) + 2

end

end A092129.P198708347556113530

/-! ## A092129.P15325138963699958512

`∩[A092128(n+1)-2, A092128(n+1)]`
-/

namespace A092129.P15325138963699958512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092128 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092129.P15325138963699958512

/-! ## A092129.P7737881978924696660

`∩[A092126(n+1)-6, A092126(n+1)]`
-/

namespace A092129.P7737881978924696660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092129.P7737881978924696660

/-!
# A092130: Number of partitions of n into distinct parts == 1 (mod 3), with 1 as the smallest part.

The programs for A092130, there is no canonical definition to state claims against.
-/

/-! ## A092130.P12495233606275789902

`A261612(n)-a(n-1)` with `a(0)=1`
-/

namespace A092130.P12495233606275789902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261612 n - a (n - 1)

end

end A092130.P12495233606275789902

/-! ## A092130.P7905659390863234937

`abs(∑[A033999(n)*A261612(n)])`
-/

namespace A092130.P7905659390863234937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A092130.P7905659390863234937

/-! ## A092130.P14059251372901168027

`∑[A033999(n)*A261612(n)]*A009001(2*n)`
-/

namespace A092130.P14059251372901168027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A092130.P14059251372901168027

/-! ## A092130.P5402901706596798559

`∑[A033999(n+2)*A261612(n)]*A033999(n)`
-/

namespace A092130.P5402901706596798559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 2) * A261612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A092130.P5402901706596798559

/-! ## A092130.P10052133536312064102

`lcm(∑[A033999(n)*A261612(n)], A008314(n²))`
-/

namespace A092130.P10052133536312064102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A008314 (n ^ 2))

end

end A092130.P10052133536312064102

/-!
# A092131: Distance from 2^n to the next prime.

The programs for A092131, the canonical program `A092131.P9669914762726222244` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092131 has offset 1).

The definition of A092131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092131.P9669914762726222244

`A007920(A000079(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092131

/-- `A007920(A000079(n+1))` -/
def P9669914762726222244.Spec : Prop :=
  ∀ n, P9669914762726222244.a n = A092131 (n + 1)

theorem P9669914762726222244.correct : P9669914762726222244.Spec := by
  intro n
  simp only [A092131, Nat.add_sub_cancel]

end A092131

/-! ## A092131.P2307947649775479021

`A013597(n+1)%(n+1)²`
-/

namespace A092131.P2307947649775479021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013597 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A092131.P2307947649775479021

namespace A092131

/-- `A013597(n+1)%(n+1)²` -/
def P2307947649775479021.Spec : Prop :=
  ∀ n, P2307947649775479021.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P2678828978476528948

`A013597(n+1)-A000007(n)`
-/

namespace A092131.P2678828978476528948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (n + 1) - A000007 n

end

end A092131.P2678828978476528948

namespace A092131

/-- `A013597(n+1)-A000007(n)` -/
def P2678828978476528948.Spec : Prop :=
  ∀ n, P2678828978476528948.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P8083702507887298814

`A058249(n+1)-A013603(n+1)`
-/

namespace A092131.P8083702507887298814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (n + 1) - A013603 (n + 1)

end

end A092131.P8083702507887298814

namespace A092131

/-- `A058249(n+1)-A013603(n+1)` -/
def P8083702507887298814.Spec : Prop :=
  ∀ n, P8083702507887298814.a n = A092131 (n + 1)

theorem P8083702507887298814.correct : P8083702507887298814.Spec := by
  intro n
  simp only [A092131, Nat.add_sub_cancel, A092131.P8083702507887298814.a, A092131.P9669914762726222244.a, A000079, A000079.P10855139691139572931.a, A007920, A007920.P3719263903022372137.a, A013603, A013603.P6161341145836320004.a, A058249, A058249.P13656201722121013867.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092131

/-! ## A092131.P10049235261277849165

`A013597(n+1)-A010051(2*(n+1))`
-/

namespace A092131.P10049235261277849165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (n + 1) - A010051 (2 * (n + 1))

end

end A092131.P10049235261277849165

namespace A092131

/-- `A013597(n+1)-A010051(2*(n+1))` -/
def P10049235261277849165.Spec : Prop :=
  ∀ n, P10049235261277849165.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P8685992440288880565

`A057427(n)+A037035(n+1)`
-/

namespace A092131.P8685992440288880565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A037035 (n + 1)

end

end A092131.P8685992440288880565

namespace A092131

/-- `A057427(n)+A037035(n+1)` -/
def P8685992440288880565.Spec : Prop :=
  ∀ n, P8685992440288880565.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P10107717986008792877

`2*n+1+A037035(n+1)-A028310(2*n)`
-/

namespace A092131.P10107717986008792877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A037035 (n + 1) - A028310 (2 * n))

end

end A092131.P10107717986008792877

namespace A092131

/-- `2*n+1+A037035(n+1)-A028310(2*n)` -/
def P10107717986008792877.Spec : Prop :=
  ∀ n, P10107717986008792877.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P4900690042708057117

`A264050(n+1)%A324549(n+1)`
-/

namespace A092131.P4900690042708057117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264050 (n + 1)) (A324549 (n + 1))

end

end A092131.P4900690042708057117

namespace A092131

/-- `A264050(n+1)%A324549(n+1)` -/
def P4900690042708057117.Spec : Prop :=
  ∀ n, P4900690042708057117.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P15875477631619492593

`A104080(n+1)-2^(n+1)`
-/

namespace A092131.P15875477631619492593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A092131.P15875477631619492593

namespace A092131

/-- `A104080(n+1)-2^(n+1)` -/
def P15875477631619492593.Spec : Prop :=
  ∀ n, P15875477631619492593.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P10788823996040499264

`A014210(n+1)%A000079(n)`
-/

namespace A092131.P10788823996040499264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014210 (n + 1)) (A000079 n)

end

end A092131.P10788823996040499264

namespace A092131

/-- `A014210(n+1)%A000079(n)` -/
def P10788823996040499264.Spec : Prop :=
  ∀ n, P10788823996040499264.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P7237716190501988884

`A104080(n+1)%A000079(n)`
-/

namespace A092131.P7237716190501988884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104080 (n + 1)) (A000079 n)

end

end A092131.P7237716190501988884

namespace A092131

/-- `A104080(n+1)%A000079(n)` -/
def P7237716190501988884.Spec : Prop :=
  ∀ n, P7237716190501988884.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P17358561767091849734

`and(A013597(n+1), A104080(n+1))`
-/

namespace A092131.P17358561767091849734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013597 (n + 1)) (A104080 (n + 1))

end

end A092131.P17358561767091849734

namespace A092131

/-- `and(A013597(n+1), A104080(n+1))` -/
def P17358561767091849734.Spec : Prop :=
  ∀ n, P17358561767091849734.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P10463151527015122325

`and(A056453(n+2)+1, A104080(n+1))`
-/

namespace A092131.P10463151527015122325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056453 (n + 2) + 1) (A104080 (n + 1))

end

end A092131.P10463151527015122325

namespace A092131

/-- `and(A056453(n+2)+1, A104080(n+1))` -/
def P10463151527015122325.Spec : Prop :=
  ∀ n, P10463151527015122325.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P4573702334950551897

`and(A056453(2*(n+1))/2, A013597(n+1))`
-/

namespace A092131.P4573702334950551897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A056453 (2 * (n + 1)) : ℚ) / 2)) (A013597 (n + 1))

end

end A092131.P4573702334950551897

namespace A092131

/-- `and(A056453(2*(n+1))/2, A013597(n+1))` -/
def P4573702334950551897.Spec : Prop :=
  ∀ n, P4573702334950551897.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P10281339368032917946

`and(A056453(2*(n+1))/2, A014210(n+1))`
-/

namespace A092131.P10281339368032917946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A056453 (2 * (n + 1)) : ℚ) / 2)) (A014210 (n + 1))

end

end A092131.P10281339368032917946

namespace A092131

/-- `and(A056453(2*(n+1))/2, A014210(n+1))` -/
def P10281339368032917946.Spec : Prop :=
  ∀ n, P10281339368032917946.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P17486073086815958750

`A014234(n+1)+A058249(n+1)-A000079(n+1)`
-/

namespace A092131.P17486073086815958750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (n + 1) + (A058249 (n + 1) - A000079 (n + 1))

end

end A092131.P17486073086815958750

namespace A092131

/-- `A014234(n+1)+A058249(n+1)-A000079(n+1)` -/
def P17486073086815958750.Spec : Prop :=
  ∀ n, P17486073086815958750.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P18032426206266763438

`A013597(n+1)+A104080(n+1)-A014210(n+1)`
-/

namespace A092131.P18032426206266763438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (n + 1) + (A104080 (n + 1) - A014210 (n + 1))

end

end A092131.P18032426206266763438

namespace A092131

/-- `A013597(n+1)+A104080(n+1)-A014210(n+1)` -/
def P18032426206266763438.Spec : Prop :=
  ∀ n, P18032426206266763438.a n = A092131 (n + 1)

end A092131

/-! ## A092131.P72917361350379501

`and(A033484(n+1)+1, A104080(n+1))`
-/

namespace A092131.P72917361350379501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033484 (n + 1) + 1) (A104080 (n + 1))

end

end A092131.P72917361350379501

namespace A092131

/-- `and(A033484(n+1)+1, A104080(n+1))` -/
def P72917361350379501.Spec : Prop :=
  ∀ n, P72917361350379501.a n = A092131 (n + 1)

end A092131

/-!
# A092133: Prime numerators of Bernoulli numbers, i.e., numerators of Bernoulli numbers with indices A092132.

The programs for A092133, there is no canonical definition to state claims against.
-/

/-! ## A092133.P18373476428779914366

`(-1)^n*p?[A051716(n)]`
-/

namespace A092133.P18373476428779914366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092133.P18373476428779914366

/-!
# A092136: Number of spanning trees in S_5 x P_n.

The programs for A092136, the canonical program `A092136.P16124548491755164650` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092136 has offset 1).

The definition of A092136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092136.P16124548491755164650

`A004187(n+1)*A001906(n+1)^3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092136

/-- `A004187(n+1)*A001906(n+1)^3` -/
def P16124548491755164650.Spec : Prop :=
  ∀ n, P16124548491755164650.a n = A092136 (n + 1)

theorem P16124548491755164650.correct : P16124548491755164650.Spec := by
  intro n
  simp only [A092136, Nat.add_sub_cancel]

end A092136

/-! ## A092136.P482179049775551210

`A004187(n+1)*A001906(n+1)*A049684(n+1)`
-/

namespace A092136.P482179049775551210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) * A001906 (n + 1) * A049684 (n + 1)

end

end A092136.P482179049775551210

namespace A092136

/-- `A004187(n+1)*A001906(n+1)*A049684(n+1)` -/
def P482179049775551210.Spec : Prop :=
  ∀ n, P482179049775551210.a n = A092136 (n + 1)

end A092136

/-! ## A092136.P6157752508066585701

`A334995(2*(n+1))/15`
-/

namespace A092136.P6157752508066585701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334995 (2 * (n + 1)) : ℚ) / 15

end

end A092136.P6157752508066585701

namespace A092136

/-- `A334995(2*(n+1))/15` -/
def P6157752508066585701.Spec : Prop :=
  ∀ n, P6157752508066585701.a n = (A092136 (n + 1) : ℚ)

end A092136

/-! ## A092136.P13823418071555377879

`A167058(n+1)/A167064(n+1)*A167058(n+1)`
-/

namespace A092136.P13823418071555377879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167058 (n + 1) : ℚ) / (A167064 (n + 1) : ℚ) * (A167058 (n + 1) : ℚ)

end

end A092136.P13823418071555377879

namespace A092136

/-- `A167058(n+1)/A167064(n+1)*A167058(n+1)` -/
def P13823418071555377879.Spec : Prop :=
  ∀ n, P13823418071555377879.a n = (A092136 (n + 1) : ℚ)

end A092136

/-! ## A092136.P9294147589798972720

`A167058(n+1)²/A167064(n+1)`
-/

namespace A092136.P9294147589798972720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167058 (n + 1) ^ 2 : ℚ) / (A167064 (n + 1) : ℚ)

end

end A092136.P9294147589798972720

namespace A092136

/-- `A167058(n+1)²/A167064(n+1)` -/
def P9294147589798972720.Spec : Prop :=
  ∀ n, P9294147589798972720.a n = (A092136 (n + 1) : ℚ)

end A092136

/-!
# A092137: Lower bound for A005842(n).

The programs for A092137, the canonical program `A092137.P8683289346343519200` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092137 has offset 1).

The definition of A092137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092137.P10360102927221288385

`ceil(sqrt(∑[(n+1)²]))`
-/

namespace A092137.P10360102927221288385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A092137.P10360102927221288385

namespace A092137

/-- `ceil(sqrt(∑[(n+1)²]))` -/
def P10360102927221288385.Spec : Prop :=
  ∀ n, P10360102927221288385.a n = A092137 (n + 1)

end A092137

/-! ## A092137.P8683289346343519200

`floor(sqrt(A000330(n+1)-1))+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092137

/-- `floor(sqrt(A000330(n+1)-1))+1` -/
def P8683289346343519200.Spec : Prop :=
  ∀ n, P8683289346343519200.a n = A092137 (n + 1)

theorem P8683289346343519200.correct : P8683289346343519200.Spec := by
  intro n
  simp only [A092137, Nat.add_sub_cancel]

end A092137

/-! ## A092137.P11638605232812452807

`A000027(ceil(sqrt(A000330(n+1))))`
-/

namespace A092137.P11638605232812452807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈Real.sqrt (A000330 (n + 1) : ℝ)⌉.toNat

end

end A092137.P11638605232812452807

namespace A092137

/-- `A000027(ceil(sqrt(A000330(n+1))))` -/
def P11638605232812452807.Spec : Prop :=
  ∀ n, P11638605232812452807.a n = A092137 (n + 1)

end A092137

/-! ## A092137.P8881528468270598569

`A000027(ceil(sqrt(A008610(2*n+1))))`
-/

namespace A092137.P8881528468270598569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈Real.sqrt (A008610 (2 * n + 1) : ℝ)⌉.toNat

end

end A092137.P8881528468270598569

namespace A092137

/-- `A000027(ceil(sqrt(A008610(2*n+1))))` -/
def P8881528468270598569.Spec : Prop :=
  ∀ n, P8881528468270598569.a n = A092137 (n + 1)

end A092137

/-! ## A092137.P15489641783013341523

`A014682(2*ceil(sqrt(A000330(n+1))))`
-/

namespace A092137.P15489641783013341523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * ⌈Real.sqrt (A000330 (n + 1) : ℝ)⌉).toNat

end

end A092137.P15489641783013341523

namespace A092137

/-- `A014682(2*ceil(sqrt(A000330(n+1))))` -/
def P15489641783013341523.Spec : Prop :=
  ∀ n, P15489641783013341523.a n = A092137 (n + 1)

end A092137

/-!
# A092143: Cumulative product of all divisors of 1..n.

The programs for A092143, there is no canonical definition to state claims against.
-/

/-! ## A092143.P6511234531007845192

`sqrt(A175493(n+1))`
-/

namespace A092143.P6511234531007845192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175493 (n + 1) : ℝ)

end

end A092143.P6511234531007845192

/-! ## A092143.P16384851066705067486

`A000178(n+1)/A280714(n+1)`
-/

namespace A092143.P16384851066705067486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) : ℚ) / (A280714 (n + 1) : ℚ)

end

end A092143.P16384851066705067486

/-! ## A092143.P11229607346528646733

`∏[∏{d}[n+1, #]]`
-/

namespace A092143.P11229607346528646733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092143.P11229607346528646733

/-! ## A092143.P6620948917898885741

`exp(∑[∑{d}[n+1, log(#)]])`
-/

namespace A092143.P6620948917898885741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092143.P6620948917898885741

/-! ## A092143.P14765922651199822153

`exp(∑[log(∏{d}[n+1, #])])`
-/

namespace A092143.P14765922651199822153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092143.P14765922651199822153

/-!
# A092144: a(n) = A092143(n)/n!.

The programs for A092144, there is no canonical definition to state claims against.
-/

/-! ## A092144.P9090953763107416552

`A092143(n+1)/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092144.P9090953763107416552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092143 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A092144.P9090953763107416552

/-! ## A092144.P10048389394148575888

`∏[∏{d}[n+1, #]/(n+1)]`
-/

namespace A092144.P10048389394148575888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092144.P10048389394148575888

/-! ## A092144.P12309961011283807057

`exp(∑[log(∏{d}[n+1, #]/(n+1))])`
-/

namespace A092144.P12309961011283807057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092144.P12309961011283807057

/-! ## A092144.P2278826214680033554

`∏[(n+1)^-1*∏{d}[n+1, #]]`
-/

namespace A092144.P2278826214680033554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ) * ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092144.P2278826214680033554

/-! ## A092144.P3631773724194392364

`∏{d}[n+1, #]/(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A092144.P3631773724194392364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * a (n - 1)

end

end A092144.P3631773724194392364

/-! ## A092144.P17121108706569923077

`∏[A007956(n+1)]`
-/

namespace A092144.P17121108706569923077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092144.P17121108706569923077

/-! ## A092144.P9228208409218695615

`∏[sqrt(A277169(n+1))]`
-/

namespace A092144.P9228208409218695615
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277169 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092144.P9228208409218695615

/-!
# A092146: Primes of the form p + 10 where p is a prime.

The programs for A092146, there is no canonical definition to state claims against.
-/

/-! ## A092146.P11557531435497259909

`A087696(n+1)+5`
-/

namespace A092146.P11557531435497259909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1) + 5

end

end A092146.P11557531435497259909

/-! ## A092146.P9171421017839195153

`2*A088765(n+1)+5`
-/

namespace A092146.P9171421017839195153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088765 (n + 1) + 5

end

end A092146.P9171421017839195153

/-! ## A092146.P12345879808451772549

`A140445(2*(n+1))`
-/

namespace A092146.P12345879808451772549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * (n + 1))

end

end A092146.P12345879808451772549

/-! ## A092146.P9667566398590253754

`p?[p?[2*n+1]+10]`
-/

namespace A092146.P9667566398590253754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092146.P9667566398590253754

/-! ## A092146.P8017809218582854151

`p?[A175225(n+1)]`
-/

namespace A092146.P8017809218582854151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P8017809218582854151

/-! ## A092146.P7785784401783874106

`p?[A140353(n+1)+1]`
-/

namespace A092146.P7785784401783874106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P7785784401783874106

/-! ## A092146.P4025555124922954770

`p?[A175224(n+1)+2]`
-/

namespace A092146.P4025555124922954770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P4025555124922954770

/-! ## A092146.P16329209621296118187

`p?[A008864(n+1)+9]`
-/

namespace A092146.P16329209621296118187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P16329209621296118187

/-! ## A092146.P1779930601380440345

`p?[A000040(n+1)+10]`
-/

namespace A092146.P1779930601380440345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P1779930601380440345

/-! ## A092146.P15420768110430834568

`p?[A028815(n+2)+9]`
-/

namespace A092146.P15420768110430834568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 2) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P15420768110430834568

/-! ## A092146.P14827291863004318491

`p?[A065091(n+1)+10]`
-/

namespace A092146.P14827291863004318491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P14827291863004318491

/-! ## A092146.P454701831660820688

`p?[A006093(n+1)+11]`
-/

namespace A092146.P454701831660820688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P454701831660820688

/-! ## A092146.P8983374220091604478

`p?[A040976(n+1)+12]`
-/

namespace A092146.P8983374220091604478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092146.P8983374220091604478

/-! ## A092146.P7755089711259345458

`∩[A000040(n+1), A175225(n+1)]`
-/

namespace A092146.P7755089711259345458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092146.P7755089711259345458

/-! ## A092146.P78026509525713459

`∩[A004139(n+1), A175225(n+1)]`
-/

namespace A092146.P78026509525713459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092146.P78026509525713459

/-! ## A092146.P18089358826099684073

`∩[A006005(n+1), A175225(n+1)]`
-/

namespace A092146.P18089358826099684073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092146.P18089358826099684073

/-! ## A092146.P16750214667970634805

`∩[A008578(n+1), A175225(n+1)]`
-/

namespace A092146.P16750214667970634805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092146.P16750214667970634805

/-! ## A092146.P11118493029269837062

`∩[A040044(n+1), A175225(n+1)]`
-/

namespace A092146.P11118493029269837062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092146.P11118493029269837062

/-! ## A092146.P10387603790148798475

`∩[A040062(n+1), A175225(n+1)]`
-/

namespace A092146.P10387603790148798475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092146.P10387603790148798475

/-!
# A092147: Number of even-length palindromes among the k-tuples of partial quotients of the continued fraction expansions of n/r, r=1,...,n.

The programs for A092147, the canonical program `A092147.P10469589743159074619` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092147 has offset 1).

The definition of A092147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092147.P10469589743159074619

`gcd(n+1, 2)*A256452(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092147

/-- `gcd(n+1, 2)*A256452(n+1)-1` -/
def P10469589743159074619.Spec : Prop :=
  ∀ n, P10469589743159074619.a n = A092147 (n + 1)

theorem P10469589743159074619.correct : P10469589743159074619.Spec := by
  intro n
  simp only [A092147, Nat.add_sub_cancel]

end A092147

/-! ## A092147.P7362101994296480782

`∑{d}[n+1, A000089(#)]-1`
-/

namespace A092147.P7362101994296480782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d - 1

end

end A092147.P7362101994296480782

namespace A092147

/-- `∑{d}[n+1, A000089(#)]-1` -/
def P7362101994296480782.Spec : Prop :=
  ∀ n, P7362101994296480782.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P559166852783117599

`2*A338939(n+1)-n%2`
-/

namespace A092147.P559166852783117599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338939 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A092147.P559166852783117599

namespace A092147

/-- `2*A338939(n+1)-n%2` -/
def P559166852783117599.Spec : Prop :=
  ∀ n, P559166852783117599.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P11733150034843351642

`A000034(n)*A256452(n+1)-1`
-/

namespace A092147.P11733150034843351642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A256452 (n + 1) - 1

end

end A092147.P11733150034843351642

namespace A092147

/-- `A000034(n)*A256452(n+1)-1` -/
def P11733150034843351642.Spec : Prop :=
  ∀ n, P11733150034843351642.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P9719856617392879151

`A040001(n+1)*A256452(n+1)-1`
-/

namespace A092147.P9719856617392879151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A256452 (n + 1) - 1

end

end A092147.P9719856617392879151

namespace A092147

/-- `A040001(n+1)*A256452(n+1)-1` -/
def P9719856617392879151.Spec : Prop :=
  ∀ n, P9719856617392879151.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P536651528211174293

`∑{d}[n+1, A008966(#)*A063725((n+1)/#)]`
-/

namespace A092147.P536651528211174293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A063725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092147.P536651528211174293

namespace A092147

/-- `∑{d}[n+1, A008966(#)*A063725((n+1)/#)]` -/
def P536651528211174293.Spec : Prop :=
  ∀ n, P536651528211174293.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P9290132944595981465

`A001511(A007947(n+1))*A256452(n+1)-1`
-/

namespace A092147.P9290132944595981465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A007947 (n + 1)).toNat * A256452 (n + 1) - 1

end

end A092147.P9290132944595981465

namespace A092147

/-- `A001511(A007947(n+1))*A256452(n+1)-1` -/
def P9290132944595981465.Spec : Prop :=
  ∀ n, P9290132944595981465.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P781425838028355655

`2*A338939(n+1)-A338939(A006519(n+1))`
-/

namespace A092147.P781425838028355655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338939 (n + 1) - A338939 (A006519 (n + 1)).toNat

end

end A092147.P781425838028355655

namespace A092147

/-- `2*A338939(n+1)-A338939(A006519(n+1))` -/
def P781425838028355655.Spec : Prop :=
  ∀ n, P781425838028355655.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P5635444849845515076

`∑{d}[n+1, A295819(#)]-2`
-/

namespace A092147.P5635444849845515076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295819 d - 2

end

end A092147.P5635444849845515076

namespace A092147

/-- `∑{d}[n+1, A295819(#)]-2` -/
def P5635444849845515076.Spec : Prop :=
  ∀ n, P5635444849845515076.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P16031202657750263790

`∑{d}[n+1, A295819(#%#²)]`
-/

namespace A092147.P16031202657750263790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295819 (d % d ^ 2)

end

end A092147.P16031202657750263790

namespace A092147

/-- `∑{d}[n+1, A295819(#%#²)]` -/
def P16031202657750263790.Spec : Prop :=
  ∀ n, P16031202657750263790.a n = A092147 (n + 1)

end A092147

/-! ## A092147.P15960405158786737351

`A046109(n+1)/A010694(n+1)-1`
-/

namespace A092147.P15960405158786737351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046109 (n + 1) : ℚ) / (A010694 (n + 1) : ℚ) - 1

end

end A092147.P15960405158786737351

namespace A092147

/-- `A046109(n+1)/A010694(n+1)-1` -/
def P15960405158786737351.Spec : Prop :=
  ∀ n, P15960405158786737351.a n = (A092147 (n + 1) : ℚ)

end A092147

/-! ## A092147.P8283943785090005827

`A004531((n+1)²)/2-1`
-/

namespace A092147.P8283943785090005827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004531 ((n + 1) ^ 2) : ℚ) / 2 - 1

end

end A092147.P8283943785090005827

namespace A092147

/-- `A004531((n+1)²)/2-1` -/
def P8283943785090005827.Spec : Prop :=
  ∀ n, P8283943785090005827.a n = (A092147 (n + 1) : ℚ)

end A092147

/-! ## A092147.P243075865612437956

`A001511(n²+1)*A256452(n+1)-1`
-/

namespace A092147.P243075865612437956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1) * A256452 (n + 1) - 1

end

end A092147.P243075865612437956

namespace A092147

/-- `A001511(n²+1)*A256452(n+1)-1` -/
def P243075865612437956.Spec : Prop :=
  ∀ n, P243075865612437956.a n = A092147 (n + 1)

end A092147

/-!
# A092148: Expansion of e.g.f. 1/(exp(x)-x*exp(2*x)).

The programs for A092148, there is no canonical definition to state claims against.
-/

/-! ## A092148.P406217256912618991

`A138910(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A092148.P406217256912618991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138910 n - (n : ℤ) * a (n - 1)

end

end A092148.P406217256912618991

/-! ## A092148.P10741017783662571198

`A297477(A001053(n))+A052864(n)`
-/

namespace A092148.P10741017783662571198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297477 (A001053 n).toNat + A052864 n

end

end A092148.P10741017783662571198

/-!
# A092149: Partial sums of A092673.

The programs for A092149, the canonical program `A092149.P912198196001553053` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092149 has offset 1).

The definition of A092149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092149.P912198196001553053

`∑[A092673(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A092149

/-- `∑[A092673(n+1)]` -/
def P912198196001553053.Spec : Prop :=
  ∀ n, P912198196001553053.a n = A092149 (n + 1)

theorem P912198196001553053.correct : P912198196001553053.Spec := by
  intro n
  simp only [A092149, Nat.add_sub_cancel]

end A092149

/-! ## A092149.P14077785289467258300

`∑[A092155(n)+a(n-1)]` with `a(0)=1`
-/

namespace A092149.P14077785289467258300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A092155 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P14077785289467258300

namespace A092149

/-- `∑[A092155(n)+a(n-1)]` -/
def P14077785289467258300.Spec : Prop :=
  ∀ n, P14077785289467258300.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P5256285669721625004

`∑[A323885(n+1)-A001511(n+1)]`
-/

namespace A092149.P5256285669721625004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P5256285669721625004

namespace A092149

/-- `∑[A323885(n+1)-A001511(n+1)]` -/
def P5256285669721625004.Spec : Prop :=
  ∀ n, P5256285669721625004.a n = A092149 (n + 1)

theorem P5256285669721625004.correct : P5256285669721625004.Spec := by
  intro n
  simp only [A092149, Nat.add_sub_cancel, A092149.P5256285669721625004.f1, A092149.P5256285669721625004.a, A092149.P912198196001553053.f1, A092149.P912198196001553053.a, A001511, A001511.P17146462531039486101.a, A092673, A092673.P12157065487718693493.a, A323885, A323885.P16180047191006952152.a, A006519, A006519.P10435570611646570274.a, A056832, A056832.P3449662837231089589.a, A092152, A092152.P12315494469493917720.a, A035263, A035263.P6825362395192920526.a, A171977, A171977.P14092944863121073856.a, A212793, A212793.P4153428830166235404.a, A359551, A359551.P4733184215772970261.f1, A359551.P4733184215772970261.a, A000035, A000035.P2023072528413494694.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A038712, A038712.P3404197303190209645.a, A053864, A053864.P17726123655565789623.f1, A053864.P17726123655565789623.a, A365632, A365632.P6636790932743859901.f1, A365632.P6636790932743859901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092149

/-! ## A092149.P3698512920190020355

`∑[A092152(n+1)-A292273(n+1)]`
-/

namespace A092149.P3698512920190020355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) - A292273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P3698512920190020355

namespace A092149

/-- `∑[A092152(n+1)-A292273(n+1)]` -/
def P3698512920190020355.Spec : Prop :=
  ∀ n, P3698512920190020355.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P11797372393076523563

`∑[A056832(n+1)*A092152(n+1)]`
-/

namespace A092149.P11797372393076523563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A092152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P11797372393076523563

namespace A092149

/-- `∑[A056832(n+1)*A092152(n+1)]` -/
def P11797372393076523563.Spec : Prop :=
  ∀ n, P11797372393076523563.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P15532249350074007672

`∑[A092152(n+1)*A138191(n+1)]`
-/

namespace A092149.P15532249350074007672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A138191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P15532249350074007672

namespace A092149

/-- `∑[A092152(n+1)*A138191(n+1)]` -/
def P15532249350074007672.Spec : Prop :=
  ∀ n, P15532249350074007672.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P12045589634875693198

`∑[A092152(n+1)*A158298(n+1)]`
-/

namespace A092149.P12045589634875693198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A158298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P12045589634875693198

namespace A092149

/-- `∑[A092152(n+1)*A158298(n+1)]` -/
def P12045589634875693198.Spec : Prop :=
  ∀ n, P12045589634875693198.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P12987408805144536166

`∑[A306653(n+1)/A060594(n+1)]`
-/

namespace A092149.P12987408805144536166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P12987408805144536166

namespace A092149

/-- `∑[A306653(n+1)/A060594(n+1)]` -/
def P12987408805144536166.Spec : Prop :=
  ∀ n, P12987408805144536166.a n = (A092149 (n + 1) : ℚ)

end A092149

/-! ## A092149.P8320379543914510600

`∑[A306653(n+1)/A174273(n+1)]`
-/

namespace A092149.P8320379543914510600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A174273 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P8320379543914510600

namespace A092149

/-- `∑[A306653(n+1)/A174273(n+1)]` -/
def P8320379543914510600.Spec : Prop :=
  ∀ n, P8320379543914510600.a n = (A092149 (n + 1) : ℚ)

end A092149

/-! ## A092149.P1379848115857812361

`∑[A306653(n+1)/(A155828(n+1)+1)]`
-/

namespace A092149.P1379848115857812361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A155828 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P1379848115857812361

namespace A092149

/-- `∑[A306653(n+1)/(A155828(n+1)+1)]` -/
def P1379848115857812361.Spec : Prop :=
  ∀ n, P1379848115857812361.a n = (A092149 (n + 1) : ℚ)

end A092149

/-! ## A092149.P16646737005189050289

`∑[A306653(n+1)/2^val(A319100(n+1), 2)]`
-/

namespace A092149.P16646737005189050289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P16646737005189050289

namespace A092149

/-- `∑[A306653(n+1)/2^val(A319100(n+1), 2)]` -/
def P16646737005189050289.Spec : Prop :=
  ∀ n, P16646737005189050289.a n = (A092149 (n + 1) : ℚ)

end A092149

/-! ## A092149.P17467491885858969059

`∑[A123706(∑[n]+1)]`
-/

namespace A092149.P17467491885858969059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123706 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092149.P17467491885858969059

namespace A092149

/-- `∑[A123706(∑[n]+1)]` -/
def P17467491885858969059.Spec : Prop :=
  ∀ n, P17467491885858969059.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P12489606514606311192

`A143158(A080827(n+1))`
-/

namespace A092149.P12489606514606311192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A080827 (n + 1)).toNat

end

end A092149.P12489606514606311192

namespace A092149

/-- `A143158(A080827(n+1))` -/
def P12489606514606311192.Spec : Prop :=
  ∀ n, P12489606514606311192.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P7817691616406945251

`A143158(A099392(n+2))`
-/

namespace A092149.P7817691616406945251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A099392 (n + 2)).toNat

end

end A092149.P7817691616406945251

namespace A092149

/-- `A143158(A099392(n+2))` -/
def P7817691616406945251.Spec : Prop :=
  ∀ n, P7817691616406945251.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P11650965018616258167

`A143158(A061925(n)+n)`
-/

namespace A092149.P11650965018616258167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A061925 n + (n : ℤ)).toNat

end

end A092149.P11650965018616258167

namespace A092149

/-- `A143158(A061925(n)+n)` -/
def P11650965018616258167.Spec : Prop :=
  ∀ n, P11650965018616258167.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P1504147539996682127

`A143158(A074148(n+1)-n)`
-/

namespace A092149.P1504147539996682127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A074148 (n + 1) - (n : ℤ)).toNat

end

end A092149.P1504147539996682127

namespace A092149

/-- `A143158(A074148(n+1)-n)` -/
def P1504147539996682127.Spec : Prop :=
  ∀ n, P1504147539996682127.a n = A092149 (n + 1)

end A092149

/-! ## A092149.P17362143701397546831

`A100198(n+1)-A100198(∑[n%2])`
-/

namespace A092149.P17362143701397546831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (n + 1) - A100198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092149.P17362143701397546831

namespace A092149

/-- `A100198(n+1)-A100198(∑[n%2])` -/
def P17362143701397546831.Spec : Prop :=
  ∀ n, P17362143701397546831.a n = A092149 (n + 1)

end A092149

/-!
# A092150: Partial sums of A092674.

The programs for A092150, there is no canonical definition to state claims against.
-/

/-! ## A092150.P16980718449762645334

`∑[A092674(n+1)]`
-/

namespace A092150.P16980718449762645334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092150.P16980718449762645334

/-! ## A092150.P14640131001042728414

`∑[A092154(n)+a(n-1)]` with `a(0)=0`
-/

namespace A092150.P14640131001042728414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A092154 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092150.P14640131001042728414

/-! ## A092150.P15041805073162043655

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-A092149(n+1)`
-/

namespace A092150.P15041805073162043655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A092149 (n + 1) : ℚ)

end

end A092150.P15041805073162043655

/-! ## A092150.P9228179151335503858

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A092673(n+1)]`
-/

namespace A092150.P9228179151335503858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A092673 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092150.P9228179151335503858

/-! ## A092150.P3230095995110766454

`∑[∑[A092154(A000038(n)+n)]]`
-/

namespace A092150.P3230095995110766454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092154 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092150.P3230095995110766454

/-! ## A092150.P16262369848189871476

`A002088(n+1)-A092149(n+1)`
-/

namespace A092150.P16262369848189871476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A092149 (n + 1)

end

end A092150.P16262369848189871476

/-! ## A092150.P16181252960376600055

`A092249(n+1)-A092149(n+1)`
-/

namespace A092150.P16181252960376600055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - A092149 (n + 1)

end

end A092150.P16181252960376600055

/-! ## A092150.P15417670242923596934

`∑[A000010(n+1)]-A092149(n+1)`
-/

namespace A092150.P15417670242923596934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092149 (n + 1)

end

end A092150.P15417670242923596934

/-! ## A092150.P10373891351934260959

`∑[A000010(n+1)-A092673(n+1)]`
-/

namespace A092150.P10373891351934260959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092150.P10373891351934260959

/-! ## A092150.P13372904999798078891

`∑[A000010(n+1)-A123706(∑[n]+1)]`
-/

namespace A092150.P13372904999798078891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A123706 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092150.P13372904999798078891

/-!
# A092151: A092673(n)*A092674(n).

The programs for A092151, there is no canonical definition to state claims against.
-/

/-! ## A092151.P10478702918169597395

`A092673(n+1)*A092674(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092151.P10478702918169597395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) * A092674 (n + 1)

end

end A092151.P10478702918169597395

/-! ## A092151.P12190567670027095539

`A092674(n+1)*A123706(A000124(n))`
-/

namespace A092151.P12190567670027095539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (n + 1) * A123706 (A000124 n).toNat

end

end A092151.P12190567670027095539

/-! ## A092151.P8230113283501749039

`∑[A092154(A000038(n)+n)]*A092673(n+1)`
-/

namespace A092151.P8230113283501749039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092154 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A092673 (n + 1)

end

end A092151.P8230113283501749039

/-! ## A092151.P13692459589859791159

`(Δ[A002088(n)]-A092673(n+1))*A092673(n+1)`
-/

namespace A092151.P13692459589859791159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A092673 (n + 1)) * A092673 (n + 1)

end

end A092151.P13692459589859791159

/-! ## A092151.P2615638054553386829

`(Δ[A005728(n)]-A092673(n+1))*A092673(n+1)`
-/

namespace A092151.P2615638054553386829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A092673 (n + 1)) * A092673 (n + 1)

end

end A092151.P2615638054553386829

/-! ## A092151.P4409120171331625343

`(A000217(n+1)-A092169(n+1))*A092673(n+1)`
-/

namespace A092151.P4409120171331625343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) - A092169 (n + 1)) * A092673 (n + 1)

end

end A092151.P4409120171331625343

/-! ## A092151.P18382305781564645802

`(A000010(n+1)-A092673(n+1))*A092673(n+1)`
-/

namespace A092151.P18382305781564645802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A092673 (n + 1)) * A092673 (n + 1)

end

end A092151.P18382305781564645802

/-! ## A092151.P4272191223083604987

`(A000010(n+1)-A092674(n+1))*A092674(n+1)`
-/

namespace A092151.P4272191223083604987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A092674 (n + 1)) * A092674 (n + 1)

end

end A092151.P4272191223083604987

/-! ## A092151.P14976166068674122619

`∑{d}[n+1, A008683(#)*A154955((n+1)/#)]*A092674(n+1)`
-/

namespace A092151.P14976166068674122619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A092674 (n + 1)

end

end A092151.P14976166068674122619

/-! ## A092151.P2426086927237193559

`(∑{d}[n+1, (n+1)/#*A008683(#)]-A092673(n+1))*A092673(n+1)`
-/

namespace A092151.P2426086927237193559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (A092673 (n + 1) : ℚ)) * (A092673 (n + 1) : ℚ)

end

end A092151.P2426086927237193559

/-!
# A092152: Sign of A092673(n).

The programs for A092152, the canonical program `A092152.P12315494469493917720` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092152 has offset 1).

The definition of A092152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092152.P11388094612389290830

`round(sin(A092673(n+1)))`
-/

namespace A092152.P11388094612389290830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A092673 (n + 1) : ℝ))

end

end A092152.P11388094612389290830

namespace A092152

/-- `round(sin(A092673(n+1)))` -/
def P11388094612389290830.Spec : Prop :=
  ∀ n, P11388094612389290830.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P11460847838121505932

`A008683((n+1)/gcd(n+1, ∑[n]+2))`
-/

namespace A092152.P11460847838121505932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ))).toNat

end

end A092152.P11460847838121505932

namespace A092152

/-- `A008683((n+1)/gcd(n+1, ∑[n]+2))` -/
def P11460847838121505932.Spec : Prop :=
  ∀ n, P11460847838121505932.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P78023419224980467

`A292273(n+1)+A092673(n+1)`
-/

namespace A092152.P78023419224980467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (n + 1) + A092673 (n + 1)

end

end A092152.P78023419224980467

namespace A092152

/-- `A292273(n+1)+A092673(n+1)` -/
def P78023419224980467.Spec : Prop :=
  ∀ n, P78023419224980467.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P13977066081297280836

`A189021(n+1)*A359432(n+1)`
-/

namespace A092152.P13977066081297280836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A359432 (n + 1)

end

end A092152.P13977066081297280836

namespace A092152

/-- `A189021(n+1)*A359432(n+1)` -/
def P13977066081297280836.Spec : Prop :=
  ∀ n, P13977066081297280836.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P4893232133240866364

`A212793(n+1)*A355689(n+1)`
-/

namespace A092152.P4893232133240866364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A355689 (n + 1)

end

end A092152.P4893232133240866364

namespace A092152

/-- `A212793(n+1)*A355689(n+1)` -/
def P4893232133240866364.Spec : Prop :=
  ∀ n, P4893232133240866364.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P12315494469493917720

`A212793(n+1)*A359551(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092152

/-- `A212793(n+1)*A359551(n+1)` -/
def P12315494469493917720.Spec : Prop :=
  ∀ n, P12315494469493917720.a n = A092152 (n + 1)

theorem P12315494469493917720.correct : P12315494469493917720.Spec := by
  intro n
  simp only [A092152, Nat.add_sub_cancel]

end A092152

/-! ## A092152.P7428936023589451086

`A212793(n+1)*A359833(n+1)`
-/

namespace A092152.P7428936023589451086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A359833 (n + 1)

end

end A092152.P7428936023589451086

namespace A092152

/-- `A212793(n+1)*A359833(n+1)` -/
def P7428936023589451086.Spec : Prop :=
  ∀ n, P7428936023589451086.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P15457386592264448604

`A355689(n+1)*A359471(n+1)`
-/

namespace A092152.P15457386592264448604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n + 1) * A359471 (n + 1)

end

end A092152.P15457386592264448604

namespace A092152

/-- `A355689(n+1)*A359471(n+1)` -/
def P15457386592264448604.Spec : Prop :=
  ∀ n, P15457386592264448604.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P348965328427700234

`A353627(n+1)*A363551(n+1)`
-/

namespace A092152.P348965328427700234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) * A363551 (n + 1)

end

end A092152.P348965328427700234

namespace A092152

/-- `A353627(n+1)*A363551(n+1)` -/
def P348965328427700234.Spec : Prop :=
  ∀ n, P348965328427700234.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P16404026439219223312

`A353628(n+1)*A363551(n+1)`
-/

namespace A092152.P16404026439219223312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (n + 1) * A363551 (n + 1)

end

end A092152.P16404026439219223312

namespace A092152

/-- `A353628(n+1)*A363551(n+1)` -/
def P16404026439219223312.Spec : Prop :=
  ∀ n, P16404026439219223312.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P12151739135352660674

`A359471(n+1)*A359551(n+1)`
-/

namespace A092152.P12151739135352660674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (n + 1) * A359551 (n + 1)

end

end A092152.P12151739135352660674

namespace A092152

/-- `A359471(n+1)*A359551(n+1)` -/
def P12151739135352660674.Spec : Prop :=
  ∀ n, P12151739135352660674.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P597365271626069156

`A359471(n+1)*A359833(n+1)`
-/

namespace A092152.P597365271626069156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (n + 1) * A359833 (n + 1)

end

end A092152.P597365271626069156

namespace A092152

/-- `A359471(n+1)*A359833(n+1)` -/
def P597365271626069156.Spec : Prop :=
  ∀ n, P597365271626069156.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P9980432272316232664

`A359834(n+1)*A363551(n+1)`
-/

namespace A092152.P9980432272316232664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (n + 1) * A363551 (n + 1)

end

end A092152.P9980432272316232664

namespace A092152

/-- `A359834(n+1)*A363551(n+1)` -/
def P9980432272316232664.Spec : Prop :=
  ∀ n, P9980432272316232664.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P7837107596950743880

`A359834(n+1)*A363552(n+1)`
-/

namespace A092152.P7837107596950743880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (n + 1) * A363552 (n + 1)

end

end A092152.P7837107596950743880

namespace A092152

/-- `A359834(n+1)*A363552(n+1)` -/
def P7837107596950743880.Spec : Prop :=
  ∀ n, P7837107596950743880.a n = A092152 (n + 1)

end A092152

/-! ## A092152.P465144001973724768

`A092673(n+1)/A056832(n+1)`
-/

namespace A092152.P465144001973724768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092673 (n + 1) : ℚ) / (A056832 (n + 1) : ℚ)

end

end A092152.P465144001973724768

namespace A092152

/-- `A092673(n+1)/A056832(n+1)` -/
def P465144001973724768.Spec : Prop :=
  ∀ n, P465144001973724768.a n = (A092152 (n + 1) : ℚ)

end A092152

/-! ## A092152.P9069736194108070411

`A092673(n+1)/A138191(n+1)`
-/

namespace A092152.P9069736194108070411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092673 (n + 1) : ℚ) / (A138191 (n + 1) : ℚ)

end

end A092152.P9069736194108070411

namespace A092152

/-- `A092673(n+1)/A138191(n+1)` -/
def P9069736194108070411.Spec : Prop :=
  ∀ n, P9069736194108070411.a n = (A092152 (n + 1) : ℚ)

end A092152

/-! ## A092152.P3957034577016786999

`A092673(n+1)/A158298(n+1)`
-/

namespace A092152.P3957034577016786999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092673 (n + 1) : ℚ) / (A158298 (n + 1) : ℚ)

end

end A092152.P3957034577016786999

namespace A092152

/-- `A092673(n+1)/A158298(n+1)` -/
def P3957034577016786999.Spec : Prop :=
  ∀ n, P3957034577016786999.a n = (A092152 (n + 1) : ℚ)

end A092152

/-! ## A092152.P397585224458487154

`A306653(n+1)/A034444(n+1)`
-/

namespace A092152.P397585224458487154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A092152.P397585224458487154

namespace A092152

/-- `A306653(n+1)/A034444(n+1)` -/
def P397585224458487154.Spec : Prop :=
  ∀ n, P397585224458487154.a n = (A092152 (n + 1) : ℚ)

end A092152

/-! ## A092152.P14252564275375614966

`A306653(n+1)/A037445(n+1)`
-/

namespace A092152.P14252564275375614966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ)

end

end A092152.P14252564275375614966

namespace A092152

/-- `A306653(n+1)/A037445(n+1)` -/
def P14252564275375614966.Spec : Prop :=
  ∀ n, P14252564275375614966.a n = (A092152 (n + 1) : ℚ)

end A092152

/-! ## A092152.P17228240002145167329

`A306653(n+1)/A061389(n+1)`
-/

namespace A092152.P17228240002145167329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A061389 (n + 1) : ℚ)

end

end A092152.P17228240002145167329

namespace A092152

/-- `A306653(n+1)/A061389(n+1)` -/
def P17228240002145167329.Spec : Prop :=
  ∀ n, P17228240002145167329.a n = (A092152 (n + 1) : ℚ)

end A092152

/-!
# A092153: a(n) = (1/24) * (A018188(n)-11).

The programs for A092153, there is no canonical definition to state claims against.
-/

/-! ## A092153.P13976708839040076372

`1/24*(A018188(n+1)-11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092153.P13976708839040076372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (A018188 (n + 1) - 11 : ℚ)

end

end A092153.P13976708839040076372

/-! ## A092153.P13890731105948020051

`floor(A018188(n+1)/24)`
-/

namespace A092153.P13890731105948020051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018188 (n + 1) : ℚ) / 24⌋

end

end A092153.P13890731105948020051

/-! ## A092153.P5324755445338955950

`ceil(1/A007318(n))*round(A018188(n+1)/24)`
-/

namespace A092153.P5324755445338955950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * SequenceMachineLib.roundAway ((A018188 (n + 1) : ℚ) / 24)

end

end A092153.P5324755445338955950

/-! ## A092153.P5475005616779949181

`round(A018188(n+1)/24*(A000041(n)%2)!)`
-/

namespace A092153.P5475005616779949181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A018188 (n + 1) : ℚ) / 24 * (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℚ))

end

end A092153.P5475005616779949181

/-! ## A092153.P13505654027825923130

`A007318(∑[n])*round(A018188(n+1)/24)`
-/

namespace A092153.P13505654027825923130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A018188 (n + 1) : ℚ) / 24)

end

end A092153.P13505654027825923130

/-!
# A092154: First differences of A092674.

The programs for A092154, there is no canonical definition to state claims against.
-/

/-! ## A092154.P15063297747875238397

`A057000(n+1)-A092155(n+1)`
-/

namespace A092154.P15063297747875238397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1) - A092155 (n + 1)

end

end A092154.P15063297747875238397

/-! ## A092154.P2200598694306881505

`Δ[Δ[A002088(n)]-A092673(n+1)]`
-/

namespace A092154.P2200598694306881505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092154.P2200598694306881505

/-! ## A092154.P8543224873488570345

`Δ[Δ[A005728(n)]-A092673(n+1)]`
-/

namespace A092154.P8543224873488570345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092154.P8543224873488570345

/-! ## A092154.P10906673913329185091

`Δ[A000010(n+1)]-A092155(n+1)`
-/

namespace A092154.P10906673913329185091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092155 (n + 1)

end

end A092154.P10906673913329185091

/-! ## A092154.P3752437629119570908

`Δ[A000010(n+1)-A092673(n+1)]`
-/

namespace A092154.P3752437629119570908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092154.P3752437629119570908

/-! ## A092154.P13760014298088855142

`Δ[A039649(n+1)]-A092155(n+1)`
-/

namespace A092154.P13760014298088855142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092155 (n + 1)

end

end A092154.P13760014298088855142

/-! ## A092154.P16595608264276609133

`Δ[A039649(n+1)-A092673(n+1)]`
-/

namespace A092154.P16595608264276609133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092154.P16595608264276609133

/-! ## A092154.P3291074290429289313

`Δ[A109606(n+1)-A092673(n+1)]`
-/

namespace A092154.P3291074290429289313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092154.P3291074290429289313

/-! ## A092154.P17729515018091814516

`1-Δ[A219428(n+1)+A092673(n+1)]`
-/

namespace A092154.P17729515018091814516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A092154.P17729515018091814516

/-! ## A092154.P6163775481219031472

`Δ[A000010(n+1)-A123706(A000124(n))]`
-/

namespace A092154.P6163775481219031472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A123706 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092154.P6163775481219031472

/-!
# A092155: First differences of A092673.

The programs for A092155, the canonical program `A092155.P7232812234662655176` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092155 has offset 1).

The definition of A092155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092155.P7232812234662655176

`Δ[A323885(n+1)-val(n+1, 2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092155

/-- `Δ[A323885(n+1)-val(n+1, 2)]` -/
def P7232812234662655176.Spec : Prop :=
  ∀ n, P7232812234662655176.a n = A092155 (n + 1)

theorem P7232812234662655176.correct : P7232812234662655176.Spec := by
  intro n
  simp only [A092155, Nat.add_sub_cancel]

end A092155

/-! ## A092155.P768808566370305153

`Δ[A323885(n+1)-A085058(n)]`
-/

namespace A092155.P768808566370305153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A085058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P768808566370305153

namespace A092155

/-- `Δ[A323885(n+1)-A085058(n)]` -/
def P768808566370305153.Spec : Prop :=
  ∀ n, P768808566370305153.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P6404228565026541285

`Δ[A323885(n+1)-A000005(or(n, n+1)-n)]`
-/

namespace A092155.P6404228565026541285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A000005 (Nat.lor n (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P6404228565026541285

namespace A092155

/-- `Δ[A323885(n+1)-A000005(or(n, n+1)-n)]` -/
def P6404228565026541285.Spec : Prop :=
  ∀ n, P6404228565026541285.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P17531872142091622787

`Δ[A323885(n+1)-A001222(or(n, n+1)-n)]`
-/

namespace A092155.P17531872142091622787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A001222 (Nat.lor n (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P17531872142091622787

namespace A092155

/-- `Δ[A323885(n+1)-A001222(or(n, n+1)-n)]` -/
def P17531872142091622787.Spec : Prop :=
  ∀ n, P17531872142091622787.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P14348938630812155753

`Δ[A323885(n+1)-A001222(and(n+1, -(n+1)))]`
-/

namespace A092155.P14348938630812155753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P14348938630812155753

namespace A092155

/-- `Δ[A323885(n+1)-A001222(and(n+1, -(n+1)))]` -/
def P14348938630812155753.Spec : Prop :=
  ∀ n, P14348938630812155753.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P11963010559339814898

`Δ[A323885(n+1)-(A000005(xor(n, n+1)+1)-1)]`
-/

namespace A092155.P11963010559339814898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - (A000005 (Nat.xor n (n + 1) + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P11963010559339814898

namespace A092155

/-- `Δ[A323885(n+1)-(A000005(xor(n, n+1)+1)-1)]` -/
def P11963010559339814898.Spec : Prop :=
  ∀ n, P11963010559339814898.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P12884545108351060424

`Δ[A092673(n+1)]`
-/

namespace A092155.P12884545108351060424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P12884545108351060424

namespace A092155

/-- `Δ[A092673(n+1)]` -/
def P12884545108351060424.Spec : Prop :=
  ∀ n, P12884545108351060424.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P7086946678522122814

`Δ[gcd(4, n+1)%3*A092152(n+1)]`
-/

namespace A092155.P7086946678522122814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 4 (n + 1) % 3 : ℕ) : ℤ) * A092152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P7086946678522122814

namespace A092155

/-- `Δ[gcd(4, n+1)%3*A092152(n+1)]` -/
def P7086946678522122814.Spec : Prop :=
  ∀ n, P7086946678522122814.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P1084185599752681532

`A092673(n+2)-A092673(n+1)`
-/

namespace A092155.P1084185599752681532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 2) - A092673 (n + 1)

end

end A092155.P1084185599752681532

namespace A092155

/-- `A092673(n+2)-A092673(n+1)` -/
def P1084185599752681532.Spec : Prop :=
  ∀ n, P1084185599752681532.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P14258438127906294604

`Δ[A323885(n+1)-A001511(n+1)]`
-/

namespace A092155.P14258438127906294604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P14258438127906294604

namespace A092155

/-- `Δ[A323885(n+1)-A001511(n+1)]` -/
def P14258438127906294604.Spec : Prop :=
  ∀ n, P14258438127906294604.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P1571094252864793893

`Δ[A323885(n+1)-A007814(n+1)]`
-/

namespace A092155.P1571094252864793893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P1571094252864793893

namespace A092155

/-- `Δ[A323885(n+1)-A007814(n+1)]` -/
def P1571094252864793893.Spec : Prop :=
  ∀ n, P1571094252864793893.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P8885417856815345781

`Δ[A092152(n+1)-A292273(n+1)]`
-/

namespace A092155.P8885417856815345781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) - A292273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P8885417856815345781

namespace A092155

/-- `Δ[A092152(n+1)-A292273(n+1)]` -/
def P8885417856815345781.Spec : Prop :=
  ∀ n, P8885417856815345781.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P11524436655112905550

`Δ[A056832(n+1)*A092152(n+1)]`
-/

namespace A092155.P11524436655112905550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A092152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P11524436655112905550

namespace A092155

/-- `Δ[A056832(n+1)*A092152(n+1)]` -/
def P11524436655112905550.Spec : Prop :=
  ∀ n, P11524436655112905550.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P15440578466587973672

`Δ[A092152(n+1)*A138191(n+1)]`
-/

namespace A092155.P15440578466587973672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A138191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P15440578466587973672

namespace A092155

/-- `Δ[A092152(n+1)*A138191(n+1)]` -/
def P15440578466587973672.Spec : Prop :=
  ∀ n, P15440578466587973672.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P17121403546706265481

`Δ[A092152(n+1)*A158298(n+1)]`
-/

namespace A092155.P17121403546706265481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A158298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P17121403546706265481

namespace A092155

/-- `Δ[A092152(n+1)*A158298(n+1)]` -/
def P17121403546706265481.Spec : Prop :=
  ∀ n, P17121403546706265481.a n = A092155 (n + 1)

end A092155

/-! ## A092155.P16117333348889490539

`Δ[A306653(n+1)/A060594(n+1)]`
-/

namespace A092155.P16117333348889490539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P16117333348889490539

namespace A092155

/-- `Δ[A306653(n+1)/A060594(n+1)]` -/
def P16117333348889490539.Spec : Prop :=
  ∀ n, P16117333348889490539.a n = (A092155 (n + 1) : ℚ)

end A092155

/-! ## A092155.P13710796668063056902

`Δ[A306653(n+1)/(A155828(n+1)+1)]`
-/

namespace A092155.P13710796668063056902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A155828 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P13710796668063056902

namespace A092155

/-- `Δ[A306653(n+1)/(A155828(n+1)+1)]` -/
def P13710796668063056902.Spec : Prop :=
  ∀ n, P13710796668063056902.a n = (A092155 (n + 1) : ℚ)

end A092155

/-! ## A092155.P3479093366910866853

`Δ[A306653(n+1)/2^val(A319100(n+1), 2)]`
-/

namespace A092155.P3479093366910866853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P3479093366910866853

namespace A092155

/-- `Δ[A306653(n+1)/2^val(A319100(n+1), 2)]` -/
def P3479093366910866853.Spec : Prop :=
  ∀ n, P3479093366910866853.a n = (A092155 (n + 1) : ℚ)

end A092155

/-! ## A092155.P464463533462963749

`Δ[A123706(A000124(n))]`
-/

namespace A092155.P464463533462963749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123706 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092155.P464463533462963749

namespace A092155

/-- `Δ[A123706(A000124(n))]` -/
def P464463533462963749.Spec : Prop :=
  ∀ n, P464463533462963749.a n = A092155 (n + 1)

end A092155

/-!
# A092163: a(n) = prime(2n) + prime(2n+1).

The programs for A092163, the canonical program `A092163.P2119975698864424644` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092163 has offset 1).

The definition of A092163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))+A000040(2*(n+1)+1)` (program `A092163.P2119975698864424644`, by `A092163.P2119975698864424644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092163.P2121220792161246039

`2*A058296(n+2)`
-/

namespace A092163.P2121220792161246039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058296 (n + 2)

end

end A092163.P2121220792161246039

namespace A092163

/-- `2*A058296(n+2)` -/
def P2121220792161246039.Spec : Prop :=
  ∀ n, P2121220792161246039.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P5531235535382628886

`A001043(2*(n+1))`
-/

namespace A092163.P5531235535382628886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * (n + 1))

end

end A092163.P5531235535382628886

namespace A092163

/-- `A001043(2*(n+1))` -/
def P5531235535382628886.Spec : Prop :=
  ∀ n, P5531235535382628886.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P2119975698864424644

`A000040(2*(n+1))+A000040(2*(n+1)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092163

/-- `A000040(2*(n+1))+A000040(2*(n+1)+1)` -/
def P2119975698864424644.Spec : Prop :=
  ∀ n, P2119975698864424644.a n = A092163 (n + 1)

theorem P2119975698864424644.correct : P2119975698864424644.Spec := by
  intro n
  simp only [A092163, Nat.add_sub_cancel]

end A092163

/-! ## A092163.P10215418340304746328

`Δ[A109723(n)]`
-/

namespace A092163.P10215418340304746328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092163.P10215418340304746328

namespace A092163

/-- `Δ[A109723(n)]` -/
def P10215418340304746328.Spec : Prop :=
  ∀ n, P10215418340304746328.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P8897129063782739413

`Δ[2*A321178(n)]`
-/

namespace A092163.P8897129063782739413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092163.P8897129063782739413

namespace A092163

/-- `Δ[2*A321178(n)]` -/
def P8897129063782739413.Spec : Prop :=
  ∀ n, P8897129063782739413.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P12162799366443740652

`Δ[A007504(2*n+1)]`
-/

namespace A092163.P12162799366443740652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092163.P12162799366443740652

namespace A092163

/-- `Δ[A007504(2*n+1)]` -/
def P12162799366443740652.Spec : Prop :=
  ∀ n, P12162799366443740652.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P1791260929860415584

`abs(Δ[A007504(A005408(n))])`
-/

namespace A092163.P1791260929860415584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A092163.P1791260929860415584

namespace A092163

/-- `abs(Δ[A007504(A005408(n))])` -/
def P1791260929860415584.Spec : Prop :=
  ∀ n, P1791260929860415584.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P5517760476858159139

`A109723(n+1)-A109723(n)`
-/

namespace A092163.P5517760476858159139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 (n + 1) - A109723 n

end

end A092163.P5517760476858159139

namespace A092163

/-- `A109723(n+1)-A109723(n)` -/
def P5517760476858159139.Spec : Prop :=
  ∀ n, P5517760476858159139.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P6214038877029549964

`A135274(n+1)+A031368(n+1)`
-/

namespace A092163.P6214038877029549964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135274 (n + 1) + A031368 (n + 1)

end

end A092163.P6214038877029549964

namespace A092163

/-- `A135274(n+1)+A031368(n+1)` -/
def P6214038877029549964.Spec : Prop :=
  ∀ n, P6214038877029549964.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P14674769490151775365

`A155067(n+1)+A100479(n+1)`
-/

namespace A092163.P14674769490151775365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) + A100479 (n + 1)

end

end A092163.P14674769490151775365

namespace A092163

/-- `A155067(n+1)+A100479(n+1)` -/
def P14674769490151775365.Spec : Prop :=
  ∀ n, P14674769490151775365.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P13225455210142998526

`A345071(n+1)+A078584(n+1)`
-/

namespace A092163.P13225455210142998526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345071 (n + 1) + A078584 (n + 1)

end

end A092163.P13225455210142998526

namespace A092163

/-- `A345071(n+1)+A078584(n+1)` -/
def P13225455210142998526.Spec : Prop :=
  ∀ n, P13225455210142998526.a n = A092163 (n + 1)

theorem P13225455210142998526.correct : P13225455210142998526.Spec := by
  intro n
  simp only [A092163, Nat.add_sub_cancel, A092163.P13225455210142998526.a, A092163.P2119975698864424644.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A078584, A078584.P9091488304949966444.a, A345071, A345071.P17369145219068528899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092163

/-! ## A092163.P7999181025631689954

`A135277(n+1)-A031368(n+1)`
-/

namespace A092163.P7999181025631689954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (n + 1) - A031368 (n + 1)

end

end A092163.P7999181025631689954

namespace A092163

/-- `A135277(n+1)-A031368(n+1)` -/
def P7999181025631689954.Spec : Prop :=
  ∀ n, P7999181025631689954.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P14162182502730921813

`2*A162801(n+2)`
-/

namespace A092163.P14162182502730921813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162801 (n + 2)

end

end A092163.P14162182502730921813

namespace A092163

/-- `2*A162801(n+2)` -/
def P14162182502730921813.Spec : Prop :=
  ∀ n, P14162182502730921813.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P12514405378444565865

`A031368(n+2)+A031215(n+1)`
-/

namespace A092163.P12514405378444565865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 2) + A031215 (n + 1)

end

end A092163.P12514405378444565865

namespace A092163

/-- `A031368(n+2)+A031215(n+1)` -/
def P12514405378444565865.Spec : Prop :=
  ∀ n, P12514405378444565865.a n = A092163 (n + 1)

theorem P12514405378444565865.correct : P12514405378444565865.Spec := by
  intro n
  simp only [A092163, Nat.add_sub_cancel, A092163.P12514405378444565865.a, A092163.P2119975698864424644.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A031368, A031368.P13740709942306963407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092163

/-! ## A092163.P9265690415655496937

`A162801(n+2)+A058296(n+2)`
-/

namespace A092163.P9265690415655496937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 2) + A058296 (n + 2)

end

end A092163.P9265690415655496937

namespace A092163

/-- `A162801(n+2)+A058296(n+2)` -/
def P9265690415655496937.Spec : Prop :=
  ∀ n, P9265690415655496937.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P3163811502572043385

`record[A008866(n+2)]`
-/

namespace A092163.P3163811502572043385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092163.P3163811502572043385

namespace A092163

/-- `record[A008866(n+2)]` -/
def P3163811502572043385.Spec : Prop :=
  ∀ n, P3163811502572043385.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P3335045656980938323

`A008866(2*(n+1))`
-/

namespace A092163.P3335045656980938323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 (2 * (n + 1))

end

end A092163.P3335045656980938323

namespace A092163

/-- `A008866(2*(n+1))` -/
def P3335045656980938323.Spec : Prop :=
  ∀ n, P3335045656980938323.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P8691265245355705243

`A011974(2*n+3)`
-/

namespace A092163.P8691265245355705243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (2 * n + 3)

end

end A092163.P8691265245355705243

namespace A092163

/-- `A011974(2*n+3)` -/
def P8691265245355705243.Spec : Prop :=
  ∀ n, P8691265245355705243.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P1780467814419809371

`2*A024675(Δ[n²])`
-/

namespace A092163.P1780467814419809371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092163.P1780467814419809371

namespace A092163

/-- `2*A024675(Δ[n²])` -/
def P1780467814419809371.Spec : Prop :=
  ∀ n, P1780467814419809371.a n = A092163 (n + 1)

end A092163

/-! ## A092163.P13439788767967939770

`record[A001043(xor(1, n)+1)]`
-/

namespace A092163.P13439788767967939770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092163.P13439788767967939770

namespace A092163

/-- `record[A001043(xor(1, n)+1)]` -/
def P13439788767967939770.Spec : Prop :=
  ∀ n, P13439788767967939770.a n = A092163 (n + 1)

end A092163

/-!
# A092164: Let M = 2 X 2 matrix [ 1 2 / 5 4 ]; a(n) = (1,1) entry of M^n.

The programs for A092164, the canonical program `A092164.P1128834441900371102` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092164 has offset 0).

The definition of A092164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092164.P13273490103755352282

`(2*6^n+5*(-1)^n)/7`
-/

namespace A092164.P13273490103755352282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 6 ^ n : ℤ) + 5 * (-1) ^ n : ℚ) / 7

end

end A092164.P13273490103755352282

namespace A092164

/-- `(2*6^n+5*(-1)^n)/7` -/
def P13273490103755352282.Spec : Prop :=
  ∀ n, P13273490103755352282.a n = (A092164 n : ℚ)

theorem P13273490103755352282.correct : P13273490103755352282.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092164, Nat.add_sub_cancel, A092164.P13273490103755352282.a, A092164.P1128834441900371102.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092164, Nat.add_sub_cancel, A092164.P13273490103755352282.a, A092164.P1128834441900371102.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092164

/-! ## A092164.P1128834441900371102

`5*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092164

/-- `5*a(n-1)+6*a(n-2)` -/
def P1128834441900371102.Spec : Prop :=
  ∀ n, (P1128834441900371102.a n : ℤ) = A092164 n

theorem P1128834441900371102.correct : P1128834441900371102.Spec := by
  intro n
  simp only [A092164]

end A092164

/-! ## A092164.P1242805225369021160

`A092165(n)+(-1)^n`
-/

namespace A092164.P1242805225369021160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092165 n + (-1) ^ n

end

end A092164.P1242805225369021160

namespace A092164

/-- `A092165(n)+(-1)^n` -/
def P1242805225369021160.Spec : Prop :=
  ∀ n, P1242805225369021160.a n = A092164 n

end A092164

/-! ## A092164.P6068124181543261568

`ogf((-1+4x)/(-1+5x+6x^2))`
-/

namespace A092164.P6068124181543261568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -6] n

end

end A092164.P6068124181543261568

namespace A092164

/-- `ogf((-1+4x)/(-1+5x+6x^2))` -/
def P6068124181543261568.Spec : Prop :=
  ∀ n, P6068124181543261568.a n = A092164 n

end A092164

/-! ## A092164.P3361735533735227594

`6^n/3-a(n-1)` with `a(0)=1`
-/

namespace A092164.P3361735533735227594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 ^ n : ℚ) / 3 - a (n - 1)

end

end A092164.P3361735533735227594

namespace A092164

/-- `6^n/3-a(n-1)` -/
def P3361735533735227594.Spec : Prop :=
  ∀ n, P3361735533735227594.a n = (A092164 n : ℚ)

end A092164

/-!
# A092165: Let M = 2 X 2 matrix [ 1 2 / 5 4 ]; a(n) = (1,2) entry of M^n.

The programs for A092165, the canonical program `A092165.P9260798533044663786` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092165 has offset 0).

The definition of A092165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092165.P8093396430579155487

`(2*6^n-2*(-1)^n)/7`
-/

namespace A092165.P8093396430579155487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 6 ^ n : ℤ) - 2 * (-1) ^ n : ℚ) / 7

end

end A092165.P8093396430579155487

namespace A092165

/-- `(2*6^n-2*(-1)^n)/7` -/
def P8093396430579155487.Spec : Prop :=
  ∀ n, P8093396430579155487.a n = (A092165 n : ℚ)

theorem P8093396430579155487.correct : P8093396430579155487.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092165, Nat.add_sub_cancel, A092165.P8093396430579155487.a, A092165.P9260798533044663786.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092165, Nat.add_sub_cancel, A092165.P8093396430579155487.a, A092165.P9260798533044663786.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092165

/-! ## A092165.P9260798533044663786

`5*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092165

/-- `5*a(n-1)+6*a(n-2)` -/
def P9260798533044663786.Spec : Prop :=
  ∀ n, (P9260798533044663786.a n : ℤ) = A092165 n

theorem P9260798533044663786.correct : P9260798533044663786.Spec := by
  intro n
  simp only [A092165]

end A092165

/-! ## A092165.P3939281874738471443

`2*A015540(n)`
-/

namespace A092165.P3939281874738471443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015540 n

end

end A092165.P3939281874738471443

namespace A092165

/-- `2*A015540(n)` -/
def P3939281874738471443.Spec : Prop :=
  ∀ n, P3939281874738471443.a n = A092165 n

end A092165

/-! ## A092165.P4175193499607853305

`A092164(n)-(-1)^n`
-/

namespace A092165.P4175193499607853305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092164 n - (-1) ^ n

end

end A092165.P4175193499607853305

namespace A092165

/-- `A092164(n)-(-1)^n` -/
def P4175193499607853305.Spec : Prop :=
  ∀ n, P4175193499607853305.a n = A092165 n

end A092165

/-! ## A092165.P1437185794694049951

`ogf(2x/(1-5x-6x^2))`
-/

namespace A092165.P1437185794694049951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -5, -6] n

end

end A092165.P1437185794694049951

namespace A092165

/-- `ogf(2x/(1-5x-6x^2))` -/
def P1437185794694049951.Spec : Prop :=
  ∀ n, P1437185794694049951.a n = A092165 n

end A092165

/-!
# A092166: Let M = 2 X 2 matrix [ 1 2 / 5 4 ]; a(n) = (2,1) entry of M^n.

The programs for A092166, the canonical program `A092166.P5736016443161837397` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092166 has offset 1).

The definition of A092166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092166.P5736016443161837397

`5*a(n-1)+6*a(n-2)` with `a(0)=5, a(1)=25`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092166

/-- `5*a(n-1)+6*a(n-2)` -/
def P5736016443161837397.Spec : Prop :=
  ∀ n, (P5736016443161837397.a n : ℤ) = A092166 (n + 1)

theorem P5736016443161837397.correct : P5736016443161837397.Spec := by
  intro n
  simp only [A092166, Nat.add_sub_cancel]

end A092166

/-! ## A092166.P7052346281098421165

`5*A015540(n+1)`
-/

namespace A092166.P7052346281098421165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A015540 (n + 1)

end

end A092166.P7052346281098421165

namespace A092166

/-- `5*A015540(n+1)` -/
def P7052346281098421165.Spec : Prop :=
  ∀ n, P7052346281098421165.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P17424228628106392581

`A092167(n+1)+(-1)^n`
-/

namespace A092166.P17424228628106392581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092167 (n + 1) + (-1) ^ n

end

end A092166.P17424228628106392581

namespace A092166

/-- `A092167(n+1)+(-1)^n` -/
def P17424228628106392581.Spec : Prop :=
  ∀ n, P17424228628106392581.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P16149841754677962500

`(5*6^(n+1)-5*(-1)^(n+1))/7`
-/

namespace A092166.P16149841754677962500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 6 ^ (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) : ℚ) / 7

end

end A092166.P16149841754677962500

namespace A092166

/-- `(5*6^(n+1)-5*(-1)^(n+1))/7` -/
def P16149841754677962500.Spec : Prop :=
  ∀ n, P16149841754677962500.a n = (A092166 (n + 1) : ℚ)

theorem P16149841754677962500.correct : P16149841754677962500.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092166, Nat.add_sub_cancel, A092166.P16149841754677962500.a, A092166.P5736016443161837397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092166, Nat.add_sub_cancel, A092166.P16149841754677962500.a, A092166.P5736016443161837397.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092166

/-! ## A092166.P14697087782974989777

`ogf(5/(1-5x-6x^2))`
-/

namespace A092166.P14697087782974989777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -5, -6] n

end

end A092166.P14697087782974989777

namespace A092166

/-- `ogf(5/(1-5x-6x^2))` -/
def P14697087782974989777.Spec : Prop :=
  ∀ n, P14697087782974989777.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P882653551976386250

`Δ[6^n]-a(n-1)` with `a(0)=5`
-/

namespace A092166.P882653551976386250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A092166.P882653551976386250

namespace A092166

/-- `Δ[6^n]-a(n-1)` -/
def P882653551976386250.Spec : Prop :=
  ∀ n, P882653551976386250.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P12218635075982024910

`abs(∑[-(6*a(n-1))])` with `a(0)=5`
-/

namespace A092166.P12218635075982024910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -(6 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A092166.P12218635075982024910

namespace A092166

/-- `abs(∑[-(6*a(n-1))])` -/
def P12218635075982024910.Spec : Prop :=
  ∀ n, P12218635075982024910.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P16551086986782674120

`round(5*6^n-a(n-1))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A092166.P16551086986782674120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (5 * 6 ^ n : ℤ) - a (n - 1)

end

end A092166.P16551086986782674120

namespace A092166

/-- `round(5*6^n-a(n-1))` -/
def P16551086986782674120.Spec : Prop :=
  ∀ n, P16551086986782674120.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P3154754280065350788

`lcm(5, 5*6^n-a(n-1))` with `a(0)=5`
-/

namespace A092166.P3154754280065350788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Int.lcm 5 ((5 * 6 ^ n : ℤ) - (a (n - 1) : ℤ))

end

end A092166.P3154754280065350788

namespace A092166

/-- `lcm(5, 5*6^n-a(n-1))` -/
def P3154754280065350788.Spec : Prop :=
  ∀ n, (P3154754280065350788.a n : ℤ) = A092166 (n + 1)

end A092166

/-! ## A092166.P3166594356153043793

`abs(5*A014987(n+1))`
-/

namespace A092166.P3166594356153043793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A014987 (n + 1)|

end

end A092166.P3166594356153043793

namespace A092166

/-- `abs(5*A014987(n+1))` -/
def P3166594356153043793.Spec : Prop :=
  ∀ n, P3166594356153043793.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P9523798269971302941

`or(1, ∑[A232956(n+1)])`
-/

namespace A092166.P9523798269971302941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092166.P9523798269971302941

namespace A092166

/-- `or(1, ∑[A232956(n+1)])` -/
def P9523798269971302941.Spec : Prop :=
  ∀ n, P9523798269971302941.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P17884681639751105223

`Δ[A015540(n+1)+A000034(n)]`
-/

namespace A092166.P17884681639751105223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092166.P17884681639751105223

namespace A092166

/-- `Δ[A015540(n+1)+A000034(n)]` -/
def P17884681639751105223.Spec : Prop :=
  ∀ n, P17884681639751105223.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P10459337148413289492

`Δ[A015540(n+1)+A000035(n)]`
-/

namespace A092166.P10459337148413289492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092166.P10459337148413289492

namespace A092166

/-- `Δ[A015540(n+1)+A000035(n)]` -/
def P10459337148413289492.Spec : Prop :=
  ∀ n, P10459337148413289492.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P119697845058173601

`Δ[A109501(n+1)+A059841(n)]`
-/

namespace A092166.P119697845058173601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (n + 1) + A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092166.P119697845058173601

namespace A092166

/-- `Δ[A109501(n+1)+A059841(n)]` -/
def P119697845058173601.Spec : Prop :=
  ∀ n, P119697845058173601.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P6564455517636140124

`Δ[A015540(n+1)-A059841(n)]`
-/

namespace A092166.P6564455517636140124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092166.P6564455517636140124

namespace A092166

/-- `Δ[A015540(n+1)-A059841(n)]` -/
def P6564455517636140124.Spec : Prop :=
  ∀ n, P6564455517636140124.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P9723384304694549746

`Δ[A109501(n+1)-A000035(n)]`
-/

namespace A092166.P9723384304694549746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092166.P9723384304694549746

namespace A092166

/-- `Δ[A109501(n+1)-A000035(n)]` -/
def P9723384304694549746.Spec : Prop :=
  ∀ n, P9723384304694549746.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P15791705642867207111

`Δ[A109501(n+1)]-A033999(n)`
-/

namespace A092166.P15791705642867207111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033999 n

end

end A092166.P15791705642867207111

namespace A092166

/-- `Δ[A109501(n+1)]-A033999(n)` -/
def P15791705642867207111.Spec : Prop :=
  ∀ n, P15791705642867207111.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P14915968505165897113

`A015540(n+2)-A109501(n+1)`
-/

namespace A092166.P14915968505165897113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 2) - A109501 (n + 1)

end

end A092166.P14915968505165897113

namespace A092166

/-- `A015540(n+2)-A109501(n+1)` -/
def P14915968505165897113.Spec : Prop :=
  ∀ n, P14915968505165897113.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P6272316879216775104

`Δ[A059841(n+1)+A015540(n+1)]`
-/

namespace A092166.P6272316879216775104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A015540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092166.P6272316879216775104

namespace A092166

/-- `Δ[A059841(n+1)+A015540(n+1)]` -/
def P6272316879216775104.Spec : Prop :=
  ∀ n, P6272316879216775104.a n = A092166 (n + 1)

end A092166

/-! ## A092166.P2955405325442365882

`A033999(n+1)+Δ[A109501(n+1)]`
-/

namespace A092166.P2955405325442365882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092166.P2955405325442365882

namespace A092166

/-- `A033999(n+1)+Δ[A109501(n+1)]` -/
def P2955405325442365882.Spec : Prop :=
  ∀ n, P2955405325442365882.a n = A092166 (n + 1)

end A092166

/-!
# A092167: Let M = 2 X 2 matrix [ 1 2 / 5 4 ]; a(n) = (2,2) entry of M^n.

The programs for A092167, the canonical program `A092167.P2332009381812861236` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092167 has offset 1).

The definition of A092167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092167.P2332009381812861236

`5*a(n-1)+6*a(n-2)` with `a(0)=4, a(1)=26`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092167

/-- `5*a(n-1)+6*a(n-2)` -/
def P2332009381812861236.Spec : Prop :=
  ∀ n, (P2332009381812861236.a n : ℤ) = A092167 (n + 1)

theorem P2332009381812861236.correct : P2332009381812861236.Spec := by
  intro n
  simp only [A092167, Nat.add_sub_cancel]

end A092167

/-! ## A092167.P820880237368330766

`(5*6^(n+1)+2*(-1)^(n+1))/7`
-/

namespace A092167.P820880237368330766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 6 ^ (n + 1) : ℤ) + 2 * (-1) ^ (n + 1) : ℚ) / 7

end

end A092167.P820880237368330766

namespace A092167

/-- `(5*6^(n+1)+2*(-1)^(n+1))/7` -/
def P820880237368330766.Spec : Prop :=
  ∀ n, P820880237368330766.a n = (A092167 (n + 1) : ℚ)

theorem P820880237368330766.correct : P820880237368330766.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092167, Nat.add_sub_cancel, A092167.P820880237368330766.a, A092167.P2332009381812861236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092167, Nat.add_sub_cancel, A092167.P820880237368330766.a, A092167.P2332009381812861236.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092167

/-! ## A092167.P12972501003074411297

`ogf((4+6x)/(1-5x-6x^2))`
-/

namespace A092167.P12972501003074411297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6] [1, -5, -6] n

end

end A092167.P12972501003074411297

namespace A092167

/-- `ogf((4+6x)/(1-5x-6x^2))` -/
def P12972501003074411297.Spec : Prop :=
  ∀ n, P12972501003074411297.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P2785586166311399852

`Δ[6^n-a(n-1)]` with `a(0)=1`
-/

namespace A092167.P2785586166311399852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P2785586166311399852

namespace A092167

/-- `Δ[6^n-a(n-1)]` -/
def P2785586166311399852.Spec : Prop :=
  ∀ n, P2785586166311399852.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P8956625339771068607

`5*6^n-a(n-1)` with `a(0)=4`
-/

namespace A092167.P8956625339771068607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (5 * 6 ^ n : ℤ) - a (n - 1)

end

end A092167.P8956625339771068607

namespace A092167

/-- `5*6^n-a(n-1)` -/
def P8956625339771068607.Spec : Prop :=
  ∀ n, P8956625339771068607.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P12229966946006018518

`Δ[A015540(n+1)]`
-/

namespace A092167.P12229966946006018518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P12229966946006018518

namespace A092167

/-- `Δ[A015540(n+1)]` -/
def P12229966946006018518.Spec : Prop :=
  ∀ n, P12229966946006018518.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P17037166233249038900

`Δ[abs(A014987(n+1))]`
-/

namespace A092167.P17037166233249038900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014987 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P17037166233249038900

namespace A092167

/-- `Δ[abs(A014987(n+1))]` -/
def P17037166233249038900.Spec : Prop :=
  ∀ n, P17037166233249038900.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P3847273976116617957

`Δ[A000400(n)-A015540(n)]`
-/

namespace A092167.P3847273976116617957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P3847273976116617957

namespace A092167

/-- `Δ[A000400(n)-A015540(n)]` -/
def P3847273976116617957.Spec : Prop :=
  ∀ n, P3847273976116617957.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P17754070345340522693

`Δ[Δ[A003464(n)]-A015540(n)]`
-/

namespace A092167.P17754070345340522693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P17754070345340522693

namespace A092167

/-- `Δ[Δ[A003464(n)]-A015540(n)]` -/
def P17754070345340522693.Spec : Prop :=
  ∀ n, P17754070345340522693.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P2868937480617640948

`Δ[Δ[A047851(n)]-A015540(n)]`
-/

namespace A092167.P2868937480617640948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P2868937480617640948

namespace A092167

/-- `Δ[Δ[A047851(n)]-A015540(n)]` -/
def P2868937480617640948.Spec : Prop :=
  ∀ n, P2868937480617640948.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P4342730859676354218

`Δ[A109501(n+1)+A033999(n)]`
-/

namespace A092167.P4342730859676354218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (n + 1) + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P4342730859676354218

namespace A092167

/-- `Δ[A109501(n+1)+A033999(n)]` -/
def P4342730859676354218.Spec : Prop :=
  ∀ n, P4342730859676354218.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P5201083398534191496

`A015540(n+2)-A015540(n+1)`
-/

namespace A092167.P5201083398534191496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 2) - A015540 (n + 1)

end

end A092167.P5201083398534191496

namespace A092167

/-- `A015540(n+2)-A015540(n+1)` -/
def P5201083398534191496.Spec : Prop :=
  ∀ n, P5201083398534191496.a n = A092167 (n + 1)

end A092167

/-! ## A092167.P6329063528505354784

`Δ[A092166(n+1)/5]`
-/

namespace A092167.P6329063528505354784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092166 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P6329063528505354784

namespace A092167

/-- `Δ[A092166(n+1)/5]` -/
def P6329063528505354784.Spec : Prop :=
  ∀ n, P6329063528505354784.a n = (A092167 (n + 1) : ℚ)

end A092167

/-! ## A092167.P15409618699490214644

`Δ[A037760(n+1)-A037732(n+1)]`
-/

namespace A092167.P15409618699490214644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) - A037732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092167.P15409618699490214644

namespace A092167

/-- `Δ[A037760(n+1)-A037732(n+1)]` -/
def P15409618699490214644.Spec : Prop :=
  ∀ n, P15409618699490214644.a n = A092167 (n + 1)

end A092167

/-!
# A092168: Primes congruent to 3 (modulo 19).

The programs for A092168, the canonical program `A092168.P11994040160184331559` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092168 has offset 1).

The definition of A092168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092168.P11994040160184331559

`p?[19*n+3]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092168

/-- `p?[19*n+3]` -/
def P11994040160184331559.Spec : Prop :=
  ∀ n, (P11994040160184331559.a n : ℤ) = A092168 (n + 1)

theorem P11994040160184331559.correct : P11994040160184331559.Spec := by
  intro n
  simp only [A092168, Nat.add_sub_cancel]

end A092168

/-! ## A092168.P6046085017272932980

`or(1, p?[19*n-16])`
-/

namespace A092168.P6046085017272932980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A092168.P6046085017272932980

namespace A092168

/-- `or(1, p?[19*n-16])` -/
def P6046085017272932980.Spec : Prop :=
  ∀ n, P6046085017272932980.a n = A092168 (n + 1)

end A092168

/-! ## A092168.P2473202921346496056

`∩[A215101(n+1), A215133(n+1)]`
-/

namespace A092168.P2473202921346496056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P2473202921346496056

namespace A092168

/-- `∩[A215101(n+1), A215133(n+1)]` -/
def P2473202921346496056.Spec : Prop :=
  ∀ n, (P2473202921346496056.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P2831661669114128996

`∩[A215133(n+1), A215154(n+1)]`
-/

namespace A092168.P2831661669114128996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P2831661669114128996

namespace A092168

/-- `∩[A215133(n+1), A215154(n+1)]` -/
def P2831661669114128996.Spec : Prop :=
  ∀ n, (P2831661669114128996.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P14676365474567280752

`∩[A215133(n+1), A215377(n+1)]`
-/

namespace A092168.P14676365474567280752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P14676365474567280752

namespace A092168

/-- `∩[A215133(n+1), A215377(n+1)]` -/
def P14676365474567280752.Spec : Prop :=
  ∀ n, (P14676365474567280752.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P1652671535693012388

`∩[A215133(n+1), A215381(n+1)]`
-/

namespace A092168.P1652671535693012388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P1652671535693012388

namespace A092168

/-- `∩[A215133(n+1), A215381(n+1)]` -/
def P1652671535693012388.Spec : Prop :=
  ∀ n, (P1652671535693012388.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P7932685750234586675

`∩[A215133(n+1), A215282(n+1)]`
-/

namespace A092168.P7932685750234586675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P7932685750234586675

namespace A092168

/-- `∩[A215133(n+1), A215282(n+1)]` -/
def P7932685750234586675.Spec : Prop :=
  ∀ n, (P7932685750234586675.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P8832392429545452713

`∩[A215133(n+1), A215361(n+1)]`
-/

namespace A092168.P8832392429545452713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P8832392429545452713

namespace A092168

/-- `∩[A215133(n+1), A215361(n+1)]` -/
def P8832392429545452713.Spec : Prop :=
  ∀ n, (P8832392429545452713.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P18260860215005824848

`∩[A215133(n+1), A215305(n+1)]`
-/

namespace A092168.P18260860215005824848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P18260860215005824848

namespace A092168

/-- `∩[A215133(n+1), A215305(n+1)]` -/
def P18260860215005824848.Spec : Prop :=
  ∀ n, (P18260860215005824848.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P12320182230433517514

`∩[A191063(n+1), A215133(n+1)]`
-/

namespace A092168.P12320182230433517514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P12320182230433517514

namespace A092168

/-- `∩[A191063(n+1), A215133(n+1)]` -/
def P12320182230433517514.Spec : Prop :=
  ∀ n, (P12320182230433517514.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P2916608634458995994

`∩[A215154(n+1), A215144(n)+2]`
-/

namespace A092168.P2916608634458995994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P2916608634458995994

namespace A092168

/-- `∩[A215154(n+1), A215144(n)+2]` -/
def P2916608634458995994.Spec : Prop :=
  ∀ n, (P2916608634458995994.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P15868909086202722075

`∩[A215305(n+1), A215144(n)+2]`
-/

namespace A092168.P15868909086202722075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P15868909086202722075

namespace A092168

/-- `∩[A215305(n+1), A215144(n)+2]` -/
def P15868909086202722075.Spec : Prop :=
  ∀ n, (P15868909086202722075.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P7285028400660814139

`∩[A215309(n+1), A215144(n)+2]`
-/

namespace A092168.P7285028400660814139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P7285028400660814139

namespace A092168

/-- `∩[A215309(n+1), A215144(n)+2]` -/
def P7285028400660814139.Spec : Prop :=
  ∀ n, (P7285028400660814139.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P7427554783352809039

`∩[A215313(n+1), A215144(n)+2]`
-/

namespace A092168.P7427554783352809039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P7427554783352809039

namespace A092168

/-- `∩[A215313(n+1), A215144(n)+2]` -/
def P7427554783352809039.Spec : Prop :=
  ∀ n, (P7427554783352809039.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P18425506172390499714

`∩[A215321(n+1), A215144(n)+2]`
-/

namespace A092168.P18425506172390499714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P18425506172390499714

namespace A092168

/-- `∩[A215321(n+1), A215144(n)+2]` -/
def P18425506172390499714.Spec : Prop :=
  ∀ n, (P18425506172390499714.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P330244653385006095

`∩[A215325(n+1), A215144(n)+2]`
-/

namespace A092168.P330244653385006095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P330244653385006095

namespace A092168

/-- `∩[A215325(n+1), A215144(n)+2]` -/
def P330244653385006095.Spec : Prop :=
  ∀ n, (P330244653385006095.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P14367897800703628284

`∩[A215381(n+1), A215144(n)+2]`
-/

namespace A092168.P14367897800703628284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P14367897800703628284

namespace A092168

/-- `∩[A215381(n+1), A215144(n)+2]` -/
def P14367897800703628284.Spec : Prop :=
  ∀ n, (P14367897800703628284.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P3037104603809029227

`∩[A215385(n+1), A215144(n)+2]`
-/

namespace A092168.P3037104603809029227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092168.P3037104603809029227

namespace A092168

/-- `∩[A215385(n+1), A215144(n)+2]` -/
def P3037104603809029227.Spec : Prop :=
  ∀ n, (P3037104603809029227.a n : ℤ) = A092168 (n + 1)

end A092168

/-! ## A092168.P10917807319189573923

`record[A020639(19*n+3)]`
-/

namespace A092168.P10917807319189573923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (19 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092168.P10917807319189573923

namespace A092168

/-- `record[A020639(19*n+3)]` -/
def P10917807319189573923.Spec : Prop :=
  ∀ n, P10917807319189573923.a n = A092168 (n + 1)

end A092168

/-! ## A092168.P17850771469832044368

`record[A006530(38*n+3)]`
-/

namespace A092168.P17850771469832044368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (38 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092168.P17850771469832044368

namespace A092168

/-- `record[A006530(38*n+3)]` -/
def P17850771469832044368.Spec : Prop :=
  ∀ n, P17850771469832044368.a n = A092168 (n + 1)

end A092168

/-!
# A092169: a(n) = A000217(n)-A092674(n).

The programs for A092169, there is no canonical definition to state claims against.
-/

/-! ## A092169.P16070996627149949952

`A000217(n+1)-A092674(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092169.P16070996627149949952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A092674 (n + 1)

end

end A092169.P16070996627149949952

/-! ## A092169.P18108353220841171696

`a(n-1)+1-A092154(n)+n` with `a(0)=1`
-/

namespace A092169.P18108353220841171696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - A092154 n + (n : ℤ)

end

end A092169.P18108353220841171696

/-! ## A092169.P14345649688887931885

`A000096(n)+1-A092674(n+1)`
-/

namespace A092169.P14345649688887931885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A092674 (n + 1))

end

end A092169.P14345649688887931885

/-! ## A092169.P7156953808341676911

`A167499(n)-(A092674(n+1)+5)`
-/

namespace A092169.P7156953808341676911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n - (A092674 (n + 1) + 5)

end

end A092169.P7156953808341676911

/-! ## A092169.P7606983344246140416

`A000124(n)-A092674(n+1)+n`
-/

namespace A092169.P7606983344246140416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A092674 (n + 1) + (n : ℤ)

end

end A092169.P7606983344246140416

/-! ## A092169.P10354235159674094878

`∑[n+1-A092154(A000038(n)+n)]`
-/

namespace A092169.P10354235159674094878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A092154 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092169.P10354235159674094878

/-! ## A092169.P14480061506472546702

`∑[n+1]-(A000010(n+1)-A092673(n+1))`
-/

namespace A092169.P14480061506472546702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A000010 (n + 1) - A092673 (n + 1))

end

end A092169.P14480061506472546702

/-! ## A092169.P144326276625609532

`∑[n+1]-(A000010(n+1)-A123706(∑[n]+1))`
-/

namespace A092169.P144326276625609532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A000010 (n + 1) - A123706 (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A092169.P144326276625609532

/-! ## A092169.P1896024509229059999

`∑[n+1]-(∑{d}[n+1, (n+1)/#*A008683(#)]-A092673(n+1))`
-/

namespace A092169.P1896024509229059999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (A092673 (n + 1) : ℚ))

end

end A092169.P1896024509229059999

/-!
# A092170: Sum of squares of alternating factorials : n!^2 - (n-1)!^2 + (n-2)!^2 - ... 1!^2.

The programs for A092170, the canonical program `A092170.P10769540384056338854` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092170 has offset 1).

The definition of A092170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092170.P10769540384056338854

`(n+1)!²-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092170

/-- `(n+1)!²-a(n-1)` -/
def P10769540384056338854.Spec : Prop :=
  ∀ n, P10769540384056338854.a n = A092170 (n + 1)

theorem P10769540384056338854.correct : P10769540384056338854.Spec := by
  intro n
  simp only [A092170, Nat.add_sub_cancel]

end A092170

/-! ## A092170.P6111206003024120534

`abs(∑[∏[-(n+1)²]])`
-/

namespace A092170.P6111206003024120534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A092170.P6111206003024120534

namespace A092170

/-- `abs(∑[∏[-(n+1)²]])` -/
def P6111206003024120534.Spec : Prop :=
  ∀ n, P6111206003024120534.a n = A092170 (n + 1)

end A092170

/-! ## A092170.P15087029116261425802

`∏[(n+1)²]-a(n-1)` with `a(0)=1`
-/

namespace A092170.P15087029116261425802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A092170.P15087029116261425802

namespace A092170

/-- `∏[(n+1)²]-a(n-1)` -/
def P15087029116261425802.Spec : Prop :=
  ∀ n, P15087029116261425802.a n = A092170 (n + 1)

end A092170

/-! ## A092170.P7897310598159596736

`record[(n-1)!²-a(n-1)]` with `a(0)=1`
-/

namespace A092170.P7897310598159596736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial ((n : ℤ) - 1).toNat ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092170.P7897310598159596736

namespace A092170

/-- `record[(n-1)!²-a(n-1)]` -/
def P7897310598159596736.Spec : Prop :=
  ∀ n, P7897310598159596736.a n = A092170 (n + 1)

end A092170

/-! ## A092170.P7993481261956883902

`Δ[a(n-2)+A000142(n)²]` with `a(0)=1, a(1)=2`
-/

namespace A092170.P7993481261956883902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + A000142 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092170.P7993481261956883902

namespace A092170

/-- `Δ[a(n-2)+A000142(n)²]` -/
def P7993481261956883902.Spec : Prop :=
  ∀ n, P7993481261956883902.a n = A092170 (n + 1)

end A092170

/-!
# A092175: Define d(n,k) to be the number of '1' digits required to write out all the integers from 1 through k in base n. E.g., d(10,9) = 1 (just '1'), d(10,10) = 2 ('1' and '10'), d(10,11) = 4 ('1', '10' and '11'). Then a(n) is the first k >= 1 such that d(n,k) > k.

The programs for A092175, there is no canonical definition to state claims against.
-/

/-! ## A092175.P1350648340549854755

`A053328(A032025(n+1))`
-/

namespace A092175.P1350648340549854755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053328 (A032025 (n + 1)).toNat

end

end A092175.P1350648340549854755

/-!
# A092176: a(n) = A067076(n) + A000079(n)/2 with A067076(0)=0.

The programs for A092176, the canonical program `A092176.P14535964819899791975` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092176 has offset 0).

The definition of A092176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092176.P14535964819899791975

`A111333(n+1)-A122958(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092176

/-- `A111333(n+1)-A122958(n)` -/
def P14535964819899791975.Spec : Prop :=
  ∀ n, P14535964819899791975.a n = A092176 n

theorem P14535964819899791975.correct : P14535964819899791975.Spec := by
  intro n
  simp only [A092176]

end A092176

/-! ## A092176.P10650176545002152785

`floor(or(p?[xor(1, n)]-2, 2^n)/2)`
-/

namespace A092176.P10650176545002152785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2) (2 ^ n : ℤ) : ℚ) / 2⌋

end

end A092176.P10650176545002152785

namespace A092176

/-- `floor(or(p?[xor(1, n)]-2, 2^n)/2)` -/
def P10650176545002152785.Spec : Prop :=
  ∀ n, P10650176545002152785.a n = A092176 n

end A092176

/-! ## A092176.P11050062880888152266

`abs((3-p?[xor(1, n)+1]-2^n)/2)`
-/

namespace A092176.P11050062880888152266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(3 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (2 ^ n : ℤ) : ℚ) / 2|

end

end A092176.P11050062880888152266

namespace A092176

/-- `abs((3-p?[xor(1, n)+1]-2^n)/2)` -/
def P11050062880888152266.Spec : Prop :=
  ∀ n, P11050062880888152266.a n = (A092176 n : ℚ)

end A092176

/-! ## A092176.P5599479167804566968

`(A040976(n+1)+2^n-1)/2`
-/

namespace A092176.P5599479167804566968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + (2 ^ n : ℤ) - 1 : ℚ) / 2

end

end A092176.P5599479167804566968

namespace A092176

/-- `(A040976(n+1)+2^n-1)/2` -/
def P5599479167804566968.Spec : Prop :=
  ∀ n, P5599479167804566968.a n = (A092176 n : ℚ)

end A092176

/-! ## A092176.P3822112452085628252

`(2^n+A000040(n+1)-3)/2`
-/

namespace A092176.P3822112452085628252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + (A000040 (n + 1) - 3) : ℚ) / 2

end

end A092176.P3822112452085628252

namespace A092176

/-- `(2^n+A000040(n+1)-3)/2` -/
def P3822112452085628252.Spec : Prop :=
  ∀ n, P3822112452085628252.a n = (A092176 n : ℚ)

end A092176

/-! ## A092176.P607335712464691948

`(record[A000010(n+1)]+2^n)/2-1`
-/

namespace A092176.P607335712464691948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 ^ n : ℤ) : ℚ) / 2 - 1

end

end A092176.P607335712464691948

namespace A092176

/-- `(record[A000010(n+1)]+2^n)/2-1` -/
def P607335712464691948.Spec : Prop :=
  ∀ n, P607335712464691948.a n = (A092176 n : ℚ)

end A092176

/-! ## A092176.P2472405088079022371

`A000071(n+2)+A000079(n)-A093304(n+1)`
-/

namespace A092176.P2472405088079022371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000079 n - A093304 (n + 1))

end

end A092176.P2472405088079022371

namespace A092176

/-- `A000071(n+2)+A000079(n)-A093304(n+1)` -/
def P2472405088079022371.Spec : Prop :=
  ∀ n, P2472405088079022371.a n = A092176 n

theorem P2472405088079022371.correct : P2472405088079022371.Spec := by
  intro n
  simp only [A092176, Nat.add_sub_cancel, A092176.P2472405088079022371.a, A092176.P14535964819899791975.a, A000071, A000071.P17543778731970887199.a, A000079, A000079.P10855139691139572931.a, A093304, A093304.P2617661038661647900.a, A111333, A111333.P16384259974901065454.a, A122958, A122958.P17438442665224267042.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092176

/-!
# A092177: a(n) = position of first occurrence of n in A093578. I.e., A093578(a(n)) = n and a(n) is the smallest number for which that is true.

The programs for A092177, there is no canonical definition to state claims against.
-/

/-! ## A092177.P7653872162385278824

`A258817(A002720(n+1)+1)`
-/

namespace A092177.P7653872162385278824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258817 (A002720 (n + 1) + 1).toNat

end

end A092177.P7653872162385278824

/-!
# A092178: Primes congruent to 8 mod 13.

The programs for A092178, the canonical program `A092178.P7112471024238772753` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092178 has offset 1).

The definition of A092178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092178.P7112471024238772753

`∪[A142164(n+1), A142179(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092178

/-- `∪[A142164(n+1), A142179(n+1)]` -/
def P7112471024238772753.Spec : Prop :=
  ∀ n, (P7112471024238772753.a n : ℤ) = A092178 (n + 1)

theorem P7112471024238772753.correct : P7112471024238772753.Spec := by
  intro n
  simp only [A092178, Nat.add_sub_cancel]

end A092178

/-! ## A092178.P15755678978977675885

`∪[A142517(n+1), A142529(n+1)]`
-/

namespace A092178.P15755678978977675885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P15755678978977675885

namespace A092178

/-- `∪[A142517(n+1), A142529(n+1)]` -/
def P15755678978977675885.Spec : Prop :=
  ∀ n, (P15755678978977675885.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P8677084412056095553

`p?[a(n-1)+13]` with `a(0)=8`
-/

namespace A092178.P8677084412056095553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092178.P8677084412056095553

namespace A092178

/-- `p?[a(n-1)+13]` -/
def P8677084412056095553.Spec : Prop :=
  ∀ n, (P8677084412056095553.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P18235551324119701628

`or(1, p?[26*n-5])`
-/

namespace A092178.P18235551324119701628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (26 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A092178.P18235551324119701628

namespace A092178

/-- `or(1, p?[26*n-5])` -/
def P18235551324119701628.Spec : Prop :=
  ∀ n, P18235551324119701628.a n = A092178 (n + 1)

end A092178

/-! ## A092178.P14604421722913457334

`p?[12*n+8+n]`
-/

namespace A092178.P14604421722913457334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 8 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092178.P14604421722913457334

namespace A092178

/-- `p?[12*n+8+n]` -/
def P14604421722913457334.Spec : Prop :=
  ∀ n, (P14604421722913457334.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P16772738937734461334

`∑{d}[p?[13*n-5], #]-1`
-/

namespace A092178.P16772738937734461334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A092178.P16772738937734461334

namespace A092178

/-- `∑{d}[p?[13*n-5], #]-1` -/
def P16772738937734461334.Spec : Prop :=
  ∀ n, P16772738937734461334.a n = A092178 (n + 1)

end A092178

/-! ## A092178.P10853390925701605417

`A000027(p?[A017617(n)+n])`
-/

namespace A092178.P10853390925701605417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092178.P10853390925701605417

namespace A092178

/-- `A000027(p?[A017617(n)+n])` -/
def P10853390925701605417.Spec : Prop :=
  ∀ n, P10853390925701605417.a n = A092178 (n + 1)

end A092178

/-! ## A092178.P5632369634769688318

`∩[A038884(n+1), A269044(n)+1]`
-/

namespace A092178.P5632369634769688318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P5632369634769688318

namespace A092178

/-- `∩[A038884(n+1), A269044(n)+1]` -/
def P5632369634769688318.Spec : Prop :=
  ∀ n, (P5632369634769688318.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P12269008779899982928

`∩[A040127(n+1), A269044(n)+1]`
-/

namespace A092178.P12269008779899982928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P12269008779899982928

namespace A092178

/-- `∩[A040127(n+1), A269044(n)+1]` -/
def P12269008779899982928.Spec : Prop :=
  ∀ n, (P12269008779899982928.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P7731886052465230551

`∩[A038884(n+1), A306285(n+1)]`
-/

namespace A092178.P7731886052465230551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P7731886052465230551

namespace A092178

/-- `∩[A038884(n+1), A306285(n+1)]` -/
def P7731886052465230551.Spec : Prop :=
  ∀ n, (P7731886052465230551.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P13389048164549550570

`∩[A040127(n+1), A306285(n+1)]`
-/

namespace A092178.P13389048164549550570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P13389048164549550570

namespace A092178

/-- `∩[A040127(n+1), A306285(n+1)]` -/
def P13389048164549550570.Spec : Prop :=
  ∀ n, (P13389048164549550570.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P17625734413883255824

`∩[A115058(n+1), A306285(n+1)]`
-/

namespace A092178.P17625734413883255824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P17625734413883255824

namespace A092178

/-- `∩[A115058(n+1), A306285(n+1)]` -/
def P17625734413883255824.Spec : Prop :=
  ∀ n, (P17625734413883255824.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P15867823895183441350

`∩[A120330(n+1), A306285(n+1)]`
-/

namespace A092178.P15867823895183441350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P15867823895183441350

namespace A092178

/-- `∩[A120330(n+1), A306285(n+1)]` -/
def P15867823895183441350.Spec : Prop :=
  ∀ n, (P15867823895183441350.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P14636919471050803986

`∩[A038884(n+1), A186113(n)+2]`
-/

namespace A092178.P14636919471050803986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P14636919471050803986

namespace A092178

/-- `∩[A038884(n+1), A186113(n)+2]` -/
def P14636919471050803986.Spec : Prop :=
  ∀ n, (P14636919471050803986.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P11898484987137804555

`∩[A040127(n+1), A186113(n)+2]`
-/

namespace A092178.P11898484987137804555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P11898484987137804555

namespace A092178

/-- `∩[A040127(n+1), A186113(n)+2]` -/
def P11898484987137804555.Spec : Prop :=
  ∀ n, (P11898484987137804555.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P2966706998486095141

`p?[A306285(n+1)]%A126557(n+1)`
-/

namespace A092178.P2966706998486095141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A126557 (n + 1))

end

end A092178.P2966706998486095141

namespace A092178

/-- `p?[A306285(n+1)]%A126557(n+1)` -/
def P2966706998486095141.Spec : Prop :=
  ∀ n, P2966706998486095141.a n = A092178 (n + 1)

end A092178

/-! ## A092178.P10530770611435109986

`∩[A165681(n+1), A306285(n+1)]`
-/

namespace A092178.P10530770611435109986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P10530770611435109986

namespace A092178

/-- `∩[A165681(n+1), A306285(n+1)]` -/
def P10530770611435109986.Spec : Prop :=
  ∀ n, (P10530770611435109986.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P10408154795539899007

`∩[A094516(n+1), A306285(n+1)]`
-/

namespace A092178.P10408154795539899007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P10408154795539899007

namespace A092178

/-- `∩[A094516(n+1), A306285(n+1)]` -/
def P10408154795539899007.Spec : Prop :=
  ∀ n, (P10408154795539899007.a n : ℤ) = A092178 (n + 1)

end A092178

/-! ## A092178.P3542757067667671769

`∩[A049545(n+1), A306285(n+1)]`
-/

namespace A092178.P3542757067667671769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P3542757067667671769

namespace A092178

/-- `∩[A049545(n+1), A306285(n+1)]` -/
def P3542757067667671769.Spec : Prop :=
  ∀ n, (P3542757067667671769.a n : ℤ) = A092178 (n + 1)

end A092178

/-!
# A092179: Number of partitions of n^2 into squares providing no dissections of the square n X n into smaller squares.

The programs for A092179, there is no canonical definition to state claims against.
-/

/-! ## A092179.P678882750058611116

`A037444(n+1)-A034295(n+1)`
-/

namespace A092179.P678882750058611116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037444 (n + 1) - A034295 (n + 1)

end

end A092179.P678882750058611116

/-! ## A092179.P10643435567923538503

`A001156((n+1)²)-A034295(n+1)`
-/

namespace A092179.P10643435567923538503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 ((n + 1) ^ 2) - A034295 (n + 1)

end

end A092179.P10643435567923538503

/-! ## A092179.P8573122162380521565

`A037444(A000027(n+1))%A034295(n+1)`
-/

namespace A092179.P8573122162380521565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037444 (A000027 (n + 1)).toNat) (A034295 (n + 1))

end

end A092179.P8573122162380521565

/-! ## A092179.P2435273787440680626

`A037444(A090107(n+1))%A034295(n+1)`
-/

namespace A092179.P2435273787440680626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037444 (A090107 (n + 1)).toNat) (A034295 (n + 1))

end

end A092179.P2435273787440680626

/-! ## A092179.P7780145434880269207

`(A037444(n)+Δ[A037444(n)])%A034295(n+1)`
-/

namespace A092179.P7780145434880269207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037444 n + (f1 (n + 1) - f1 n)) (A034295 (n + 1))

end

end A092179.P7780145434880269207

/-!
# A092180: Permutation of primes generated by triangle shown below.

The programs for A092180, there is no canonical definition to state claims against.
-/

/-! ## A092180.P15908371268031774632

`A000040(A090894(n)+1)`
-/

namespace A092180.P15908371268031774632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090894 n + 1).toNat

end

end A092180.P15908371268031774632

/-! ## A092180.P11343884722271276238

`A000040(A091995(n+1))`
-/

namespace A092180.P11343884722271276238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091995 (n + 1)).toNat

end

end A092180.P11343884722271276238

/-! ## A092180.P14280372246855270445

`A008578(A090894(n)+2)`
-/

namespace A092180.P14280372246855270445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A090894 n + 2).toNat

end

end A092180.P14280372246855270445

/-! ## A092180.P2665717856904744548

`A182986(A090894(n)+2)`
-/

namespace A092180.P2665717856904744548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A090894 n + 2).toNat

end

end A092180.P2665717856904744548

/-! ## A092180.P5791601064026478592

`A324050(A090894(n)+2)`
-/

namespace A092180.P5791601064026478592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A090894 n + 2).toNat

end

end A092180.P5791601064026478592

/-! ## A092180.P15882156121095746513

`A158611(A090894(n)+3)`
-/

namespace A092180.P15882156121095746513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A090894 n + 3).toNat

end

end A092180.P15882156121095746513

/-! ## A092180.P17281072937140764904

`A000040(A056536(A271647(n+1)))`
-/

namespace A092180.P17281072937140764904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A056536 (A271647 (n + 1)).toNat).toNat

end

end A092180.P17281072937140764904

/-! ## A092180.P4772341950176115459

`A000040(A285723(A274428(n+1)))`
-/

namespace A092180.P4772341950176115459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A285723 (A274428 (n + 1)).toNat).toNat

end

end A092180.P4772341950176115459

/-! ## A092180.P3392319328349903411

`A000040(A008619(2*A090894(n)))`
-/

namespace A092180.P3392319328349903411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 (2 * A090894 n).toNat).toNat

end

end A092180.P3392319328349903411

/-!
# A092181: Figurate numbers based on the 24-cell (4-D polytope with Schlaefli symbol {3,4,3}).

The programs for A092181, the canonical program `A092181.P6544429591107631927` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092181 has offset 0).

The definition of A092181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092181.P6544429591107631927

`n²*(3*n²-4*n+2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092181

/-- `n²*(3*n²-4*n+2)` -/
def P6544429591107631927.Spec : Prop :=
  ∀ n, P6544429591107631927.a n = A092181 n

theorem P6544429591107631927.correct : P6544429591107631927.Spec := by
  intro n
  simp only [A092181]

end A092181

/-! ## A092181.P16040357760772087176

`C(n+3, 4)+19*C(n+2, 4)+43*C(n+1, 4)+9*C(n, 4)`
-/

namespace A092181.P16040357760772087176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + 19 * Nat.choose (n + 2) 4 + 43 * Nat.choose (n + 1) 4 + 9 * Nat.choose n 4

end

end A092181.P16040357760772087176

namespace A092181

/-- `C(n+3, 4)+19*C(n+2, 4)+43*C(n+1, 4)+9*C(n, 4)` -/
def P16040357760772087176.Spec : Prop :=
  ∀ n, (P16040357760772087176.a n : ℤ) = A092181 n

theorem P16040357760772087176.correct : P16040357760772087176.Spec := by
  intro n
  simp only [A092181, Nat.add_sub_cancel, A092181.P16040357760772087176.a, A092181.P6544429591107631927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092181

/-! ## A092181.P16741062715027655014

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=24, a(3)=153, a(4)=544`
-/

namespace A092181.P16741062715027655014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 24, 153, 544] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A092181.P16741062715027655014

namespace A092181

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16741062715027655014.Spec : Prop :=
  ∀ n, P16741062715027655014.a n = A092181 n

theorem P16741062715027655014.correct : P16741062715027655014.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A092181, Nat.add_sub_cancel, A092181.P16741062715027655014.a, A092181.P6544429591107631927.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A092181, Nat.add_sub_cancel, A092181.P16741062715027655014.a, A092181.P6544429591107631927.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092181

/-! ## A092181.P14918369274117585183

`A344866(n+1)+A085537(n)`
-/

namespace A092181.P14918369274117585183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344866 (n + 1) + A085537 n

end

end A092181.P14918369274117585183

namespace A092181

/-- `A344866(n+1)+A085537(n)` -/
def P14918369274117585183.Spec : Prop :=
  ∀ n, P14918369274117585183.a n = A092181 n

theorem P14918369274117585183.correct : P14918369274117585183.Spec := by
  intro n
  simp only [A092181, Nat.add_sub_cancel, A092181.P14918369274117585183.a, A092181.P6544429591107631927.a, A085537, A085537.P16655703013365461026.a, A344866, A344866.P1105936836514059683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092181

/-! ## A092181.P12557788316605787198

`A365929(n)+A389626(n)-A366478(n)`
-/

namespace A092181.P12557788316605787198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365929 n + (A389626 n - A366478 n)

end

end A092181.P12557788316605787198

namespace A092181

/-- `A365929(n)+A389626(n)-A366478(n)` -/
def P12557788316605787198.Spec : Prop :=
  ∀ n, P12557788316605787198.a n = A092181 n

end A092181

/-!
# A092182: Figurate numbers based on the 600-cell (4-D polytope with Schlaefli symbol {3,3,5}).

The programs for A092182, the canonical program `A092182.P11868213307580132711` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092182 has offset 1).

The definition of A092182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092182.P2283504891396874473

`(n+1)*(145*(n+1)^3-280*(n+1)²+179*(n+1)-38)/6`
-/

namespace A092182.P2283504891396874473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((145 * (n + 1) ^ 3 : ℤ) - (280 * (n + 1) ^ 2 : ℤ) + (179 * (n + 1) : ℤ) - 38) : ℚ) / 6

end

end A092182.P2283504891396874473

namespace A092182

/-- `(n+1)*(145*(n+1)^3-280*(n+1)²+179*(n+1)-38)/6` -/
def P2283504891396874473.Spec : Prop :=
  ∀ n, P2283504891396874473.a n = (A092182 (n + 1) : ℚ)

theorem P2283504891396874473.correct : P2283504891396874473.Spec := by
  intro n
  simp only [A092182, Nat.add_sub_cancel, A092182.P2283504891396874473.a, A092182.P11868213307580132711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092182

/-! ## A092182.P11868213307580132711

`C(n+4, 4)+115*C(n+3, 4)+357*C(n+2, 4)+107*C(n+1, 4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092182

/-- `C(n+4, 4)+115*C(n+3, 4)+357*C(n+2, 4)+107*C(n+1, 4)` -/
def P11868213307580132711.Spec : Prop :=
  ∀ n, (P11868213307580132711.a n : ℤ) = A092182 (n + 1)

theorem P11868213307580132711.correct : P11868213307580132711.Spec := by
  intro n
  simp only [A092182, Nat.add_sub_cancel]

end A092182

/-! ## A092182.P1728453642865867596

`A011245(n)+A008911(n)`
-/

namespace A092182.P1728453642865867596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011245 n + A008911 n

end

end A092182.P1728453642865867596

namespace A092182

/-- `A011245(n)+A008911(n)` -/
def P1728453642865867596.Spec : Prop :=
  ∀ n, P1728453642865867596.a n = A092182 (n + 1)

theorem P1728453642865867596.correct : P1728453642865867596.Spec := by
  intro n
  simp only [A092182, Nat.add_sub_cancel, A092182.P1728453642865867596.a, A092182.P11868213307580132711.a, A008911, A008911.P13273812959186450040.a, A011245, A011245.P9498667021958090682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092182

/-! ## A092182.P17393998637199211260

`A062786(n+1)²-A008354(n)`
-/

namespace A092182.P17393998637199211260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) ^ 2 - A008354 n

end

end A092182.P17393998637199211260

namespace A092182

/-- `A062786(n+1)²-A008354(n)` -/
def P17393998637199211260.Spec : Prop :=
  ∀ n, P17393998637199211260.a n = A092182 (n + 1)

end A092182

/-! ## A092182.P6499744170396677161

`A062786(n+1)²-n*A004068(n)`
-/

namespace A092182.P6499744170396677161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) ^ 2 - (n : ℤ) * A004068 n

end

end A092182.P6499744170396677161

namespace A092182

/-- `A062786(n+1)²-n*A004068(n)` -/
def P6499744170396677161.Spec : Prop :=
  ∀ n, P6499744170396677161.a n = A092182 (n + 1)

end A092182

/-! ## A092182.P10915954459567602478

`A008911(n)+A011199(n)*A016813(n)`
-/

namespace A092182.P10915954459567602478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + A011199 n * A016813 n

end

end A092182.P10915954459567602478

namespace A092182

/-- `A008911(n)+A011199(n)*A016813(n)` -/
def P10915954459567602478.Spec : Prop :=
  ∀ n, P10915954459567602478.a n = A092182 (n + 1)

theorem P10915954459567602478.correct : P10915954459567602478.Spec := by
  intro n
  simp only [A092182, Nat.add_sub_cancel, A092182.P10915954459567602478.a, A092182.P11868213307580132711.a, A008911, A008911.P13273812959186450040.a, A011199, A011199.P5039899721906082050.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092182

/-! ## A092182.P2396749190670914557

`Δ[A004466(n)]²-A008354(n)`
-/

namespace A092182.P2396749190670914557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A008354 n

end

end A092182.P2396749190670914557

namespace A092182

/-- `Δ[A004466(n)]²-A008354(n)` -/
def P2396749190670914557.Spec : Prop :=
  ∀ n, P2396749190670914557.a n = A092182 (n + 1)

end A092182

/-!
# A092183: Figurate numbers based on the 120-cell (4-D polytope with Schlaefli symbol {5,3,3}).

The programs for A092183, the canonical program `A092183.P16580815685519882933` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092183 has offset 1).

The definition of A092183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092183.P16580815685519882933

`(n+1)*(261*(n+1)^3-504*(n+1)²+283*(n+1)-38)/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092183

/-- `(n+1)*(261*(n+1)^3-504*(n+1)²+283*(n+1)-38)/2` -/
def P16580815685519882933.Spec : Prop :=
  ∀ n, P16580815685519882933.a n = (A092183 (n + 1) : ℚ)

end A092183

/-!
# A092184: Sequence S_6 of the S_r family.

The programs for A092184, the canonical program `A092184.P3874901060963972069` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092184 has offset 0).

The definition of A092184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092184.P3874901060963972069

`4*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092184

/-- `4*a(n-1)-a(n-2)+2` -/
def P3874901060963972069.Spec : Prop :=
  ∀ n, P3874901060963972069.a n = A092184 n

theorem P3874901060963972069.correct : P3874901060963972069.Spec := by
  intro n
  simp only [A092184]

end A092184

/-! ## A092184.P6855031044591497780

`A001075(n)-1`
-/

namespace A092184.P6855031044591497780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n - 1

end

end A092184.P6855031044591497780

namespace A092184

/-- `A001075(n)-1` -/
def P6855031044591497780.Spec : Prop :=
  ∀ n, P6855031044591497780.a n = A092184 n

end A092184

/-! ## A092184.P645755464738488802

`∑[ogf((x+x^2)/(1-4x+x^2))]`
-/

namespace A092184.P645755464738488802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092184.P645755464738488802

namespace A092184

/-- `∑[ogf((x+x^2)/(1-4x+x^2))]` -/
def P645755464738488802.Spec : Prop :=
  ∀ n, P645755464738488802.a n = A092184 n

end A092184

/-! ## A092184.P6364643762657855435

`ogf((x+x^2)/(1-5x+5x^2-x^3))`
-/

namespace A092184.P6364643762657855435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 5, -1] n

end

end A092184.P6364643762657855435

namespace A092184

/-- `ogf((x+x^2)/(1-5x+5x^2-x^3))` -/
def P6364643762657855435.Spec : Prop :=
  ∀ n, P6364643762657855435.a n = A092184 n

end A092184

/-! ## A092184.P6404135718371672703

`floor((sqrt(3)+2)*a(n-1))+3` with `a(0)=0, a(1)=1`
-/

namespace A092184.P6404135718371672703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 3

end

end A092184.P6404135718371672703

namespace A092184

/-- `floor((sqrt(3)+2)*a(n-1))+3` -/
def P6404135718371672703.Spec : Prop :=
  ∀ n, P6404135718371672703.a n = A092184 n

end A092184

/-! ## A092184.P15445945531021501985

`ceil((sqrt(3)+2)*a(n-1))+2` with `a(0)=0, a(1)=1`
-/

namespace A092184.P15445945531021501985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 2

end

end A092184.P15445945531021501985

namespace A092184

/-- `ceil((sqrt(3)+2)*a(n-1))+2` -/
def P15445945531021501985.Spec : Prop :=
  ∀ n, P15445945531021501985.a n = A092184 n

end A092184

/-! ## A092184.P7721672101655810202

`∑[round((sqrt(3)+2)*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A092184.P7721672101655810202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092184.P7721672101655810202

namespace A092184

/-- `∑[round((sqrt(3)+2)*a(n-1))]` -/
def P7721672101655810202.Spec : Prop :=
  ∀ n, P7721672101655810202.a n = A092184 n

end A092184

/-! ## A092184.P11071279631086111968

`2-(a(n-2)-4*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A092184.P11071279631086111968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 4 * a (n - 1))

end

end A092184.P11071279631086111968

namespace A092184

/-- `2-(a(n-2)-4*a(n-1))` -/
def P11071279631086111968.Spec : Prop :=
  ∀ n, P11071279631086111968.a n = A092184 n

end A092184

/-! ## A092184.P11217050084092982526

`∑[-round(a(n-1)/(sqrt(3)-2))]-1` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A092184.P11217050084092982526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092184.P11217050084092982526

namespace A092184

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]-1` -/
def P11217050084092982526.Spec : Prop :=
  ∀ n, P11217050084092982526.a n = A092184 n

end A092184

/-! ## A092184.P1083294997386978768

`A121401(n)-2`
-/

namespace A092184.P1083294997386978768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - 2

end

end A092184.P1083294997386978768

namespace A092184

/-- `A121401(n)-2` -/
def P1083294997386978768.Spec : Prop :=
  ∀ n, P1083294997386978768.a n = A092184 n

end A092184

/-! ## A092184.P10246101934499919018

`A002531(2*n)-1`
-/

namespace A092184.P10246101934499919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n) - 1

end

end A092184.P10246101934499919018

namespace A092184

/-- `A002531(2*n)-1` -/
def P10246101934499919018.Spec : Prop :=
  ∀ n, P10246101934499919018.a n = A092184 n

end A092184

/-! ## A092184.P5219368609335648639

`A005246(Δ[n²])-1`
-/

namespace A092184.P5219368609335648639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A092184.P5219368609335648639

namespace A092184

/-- `A005246(Δ[n²])-1` -/
def P5219368609335648639.Spec : Prop :=
  ∀ n, P5219368609335648639.a n = A092184 n

end A092184

/-! ## A092184.P9726140114636070880

`record[Δ[A002530(n)]-1]`
-/

namespace A092184.P9726140114636070880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092184.P9726140114636070880

namespace A092184

/-- `record[Δ[A002530(n)]-1]` -/
def P9726140114636070880.Spec : Prop :=
  ∀ n, P9726140114636070880.a n = A092184 n

end A092184

/-! ## A092184.P10459974264797547379

`Δ[A107401(2*n)]-1`
-/

namespace A092184.P10459974264797547379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A092184.P10459974264797547379

namespace A092184

/-- `Δ[A107401(2*n)]-1` -/
def P10459974264797547379.Spec : Prop :=
  ∀ n, P10459974264797547379.a n = A092184 n

end A092184

/-! ## A092184.P8158896475437746409

`∑[abs(A108413(2*n))]-1`
-/

namespace A092184.P8158896475437746409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092184.P8158896475437746409

namespace A092184

/-- `∑[abs(A108413(2*n))]-1` -/
def P8158896475437746409.Spec : Prop :=
  ∀ n, P8158896475437746409.a n = A092184 n

end A092184

/-! ## A092184.P5604496872009413669

`abs(A108413(2*n+1))-1`
-/

namespace A092184.P5604496872009413669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n + 1)| - 1

end

end A092184.P5604496872009413669

namespace A092184

/-- `abs(A108413(2*n+1))-1` -/
def P5604496872009413669.Spec : Prop :=
  ∀ n, P5604496872009413669.a n = A092184 n

end A092184

/-! ## A092184.P9946116419026281227

`A259592(A004273(n))-1`
-/

namespace A092184.P9946116419026281227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (A004273 n).toNat - 1

end

end A092184.P9946116419026281227

namespace A092184

/-- `A259592(A004273(n))-1` -/
def P9946116419026281227.Spec : Prop :=
  ∀ n, P9946116419026281227.a n = A092184 n

end A092184

/-! ## A092184.P5294987051338847662

`xor(A001075(n), A010684(n))`
-/

namespace A092184.P5294987051338847662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001075 n) (A010684 n)

end

end A092184.P5294987051338847662

namespace A092184

/-- `xor(A001075(n), A010684(n))` -/
def P5294987051338847662.Spec : Prop :=
  ∀ n, P5294987051338847662.a n = A092184 n

end A092184

/-! ## A092184.P6079507014182826086

`A249578(A008585(n)+1)-1`
-/

namespace A092184.P6079507014182826086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A008585 n + 1).toNat - 1

end

end A092184.P6079507014182826086

namespace A092184

/-- `A249578(A008585(n)+1)-1` -/
def P6079507014182826086.Spec : Prop :=
  ∀ n, P6079507014182826086.a n = A092184 n

end A092184

/-! ## A092184.P16969002445161108515

`A001571(n)-A107401(2*n)`
-/

namespace A092184.P16969002445161108515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n - A107401 (2 * n)

end

end A092184.P16969002445161108515

namespace A092184

/-- `A001571(n)-A107401(2*n)` -/
def P16969002445161108515.Spec : Prop :=
  ∀ n, P16969002445161108515.a n = A092184 n

end A092184

/-!
# A092185: a(n) = (5/6)*n^3+(5/2)*n^2+(8/3)*n.

The programs for A092185, the canonical program `A092185.P16863492281060480228` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092185 has offset 0).

The definition of A092185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092185.P16863492281060480228

`5/6*n^3+5/2*n²+8/3*n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092185

/-- `5/6*n^3+5/2*n²+8/3*n` -/
def P16863492281060480228.Spec : Prop :=
  ∀ n, P16863492281060480228.a n = (A092185 n : ℚ)

end A092185

/-! ## A092185.P15850823179044417437

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=6, a(2)=10`
-/

namespace A092185.P15850823179044417437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 10] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P15850823179044417437

namespace A092185

/-- `∑[∑[a(n-1)+5]]` -/
def P15850823179044417437.Spec : Prop :=
  ∀ n, (P15850823179044417437.a n : ℤ) = A092185 n

end A092185

/-! ## A092185.P7188273000897733217

`floor(n-∑[∑[a(n-1)-5]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A092185.P7188273000897733217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P7188273000897733217

namespace A092185

/-- `floor(n-∑[∑[a(n-1)-5]])` -/
def P7188273000897733217.Spec : Prop :=
  ∀ n, P7188273000897733217.a n = A092185 n

end A092185

/-! ## A092185.P14415575393969580620

`abs(∑[∑[A008706(n)]]-1)`
-/

namespace A092185.P14415575393969580620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A092185.P14415575393969580620

namespace A092185

/-- `abs(∑[∑[A008706(n)]]-1)` -/
def P14415575393969580620.Spec : Prop :=
  ∀ n, P14415575393969580620.a n = A092185 n

end A092185

/-! ## A092185.P5549538167464123613

`∑[A046092(n)+∑[char[1]+n]]`
-/

namespace A092185.P5549538167464123613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P5549538167464123613

namespace A092185

/-- `∑[A046092(n)+∑[char[1]+n]]` -/
def P5549538167464123613.Spec : Prop :=
  ∀ n, P5549538167464123613.a n = A092185 n

end A092185

/-! ## A092185.P3513582727660141346

`abs(A162147(n)+(n+1)²-1)`
-/

namespace A092185.P3513582727660141346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162147 n + ((n + 1) ^ 2 : ℤ) - 1|

end

end A092185.P3513582727660141346

namespace A092185

/-- `abs(A162147(n)+(n+1)²-1)` -/
def P3513582727660141346.Spec : Prop :=
  ∀ n, P3513582727660141346.a n = A092185 n

end A092185

/-! ## A092185.P11792563320558615595

`∑[lcm(ceil(n/(n+1)), A005891(n))]`
-/

namespace A092185.P11792563320558615595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / (n + 1 : ℚ)⌉ (A005891 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P11792563320558615595

namespace A092185

/-- `∑[lcm(ceil(n/(n+1)), A005891(n))]` -/
def P11792563320558615595.Spec : Prop :=
  ∀ n, (P11792563320558615595.a n : ℤ) = A092185 n

end A092185

/-! ## A092185.P1761999781151491269

`∑[(A028895(n)+1)%(2*n+1)²²]`
-/

namespace A092185.P1761999781151491269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028895 n + 1) (((2 * n + 1) ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P1761999781151491269

namespace A092185

/-- `∑[(A028895(n)+1)%(2*n+1)²²]` -/
def P1761999781151491269.Spec : Prop :=
  ∀ n, P1761999781151491269.a n = A092185 n

end A092185

/-! ## A092185.P14382264095100649615

`∑[A005891(n)-A000007(n)]`
-/

namespace A092185.P14382264095100649615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P14382264095100649615

namespace A092185

/-- `∑[A005891(n)-A000007(n)]` -/
def P14382264095100649615.Spec : Prop :=
  ∀ n, P14382264095100649615.a n = A092185 n

end A092185

/-! ## A092185.P14926014483988870298

`∑[A005891(n)%A003215(n)]`
-/

namespace A092185.P14926014483988870298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005891 n) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P14926014483988870298

namespace A092185

/-- `∑[A005891(n)%A003215(n)]` -/
def P14926014483988870298.Spec : Prop :=
  ∀ n, P14926014483988870298.a n = A092185 n

end A092185

/-! ## A092185.P2700064385119618225

`∑[∑[A008706(n)]-A000007(n)]`
-/

namespace A092185.P2700064385119618225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P2700064385119618225

namespace A092185

/-- `∑[∑[A008706(n)]-A000007(n)]` -/
def P2700064385119618225.Spec : Prop :=
  ∀ n, P2700064385119618225.a n = A092185 n

end A092185

/-! ## A092185.P6332694904008358775

`abs(1-(A000578(n+1)-A000292(n)))`
-/

namespace A092185.P6332694904008358775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000578 (n + 1) - A000292 n)|

end

end A092185.P6332694904008358775

namespace A092185

/-- `abs(1-(A000578(n+1)-A000292(n)))` -/
def P6332694904008358775.Spec : Prop :=
  ∀ n, P6332694904008358775.a n = A092185 n

end A092185

/-! ## A092185.P1058666047138485381

`Δ[∑[A004068(n)]-n]`
-/

namespace A092185.P1058666047138485381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092185.P1058666047138485381

namespace A092185

/-- `Δ[∑[A004068(n)]-n]` -/
def P1058666047138485381.Spec : Prop :=
  ∀ n, P1058666047138485381.a n = A092185 n

end A092185

/-! ## A092185.P17710911587475605391

`abs(1-A004068(n+1))`
-/

namespace A092185.P17710911587475605391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004068 (n + 1)|

end

end A092185.P17710911587475605391

namespace A092185

/-- `abs(1-A004068(n+1))` -/
def P17710911587475605391.Spec : Prop :=
  ∀ n, P17710911587475605391.a n = A092185 n

end A092185

/-! ## A092185.P11371388083785848300

`(A004466(n+1)+n-1)/2`
-/

namespace A092185.P11371388083785848300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004466 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A092185.P11371388083785848300

namespace A092185

/-- `(A004466(n+1)+n-1)/2` -/
def P11371388083785848300.Spec : Prop :=
  ∀ n, P11371388083785848300.a n = (A092185 n : ℚ)

end A092185

/-! ## A092185.P3179403899384521780

`abs(A002413(n+1)-(∑[n]+1))`
-/

namespace A092185.P3179403899384521780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002413 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)|

end

end A092185.P3179403899384521780

namespace A092185

/-- `abs(A002413(n+1)-(∑[n]+1))` -/
def P3179403899384521780.Spec : Prop :=
  ∀ n, P3179403899384521780.a n = A092185 n

end A092185

/-! ## A092185.P17476857017554892007

`∑[A253145(A004273(n))+A253145(n)]`
-/

namespace A092185.P17476857017554892007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A004273 n).toNat + A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092185.P17476857017554892007

namespace A092185

/-- `∑[A253145(A004273(n))+A253145(n)]` -/
def P17476857017554892007.Spec : Prop :=
  ∀ n, P17476857017554892007.a n = A092185 n

end A092185

/-! ## A092185.P4232156618752873740

`(∑[A016873(∑[2*n])]-2)/2`
-/

namespace A092185.P4232156618752873740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ) : ℚ) / 2

end

end A092185.P4232156618752873740

namespace A092185

/-- `(∑[A016873(∑[2*n])]-2)/2` -/
def P4232156618752873740.Spec : Prop :=
  ∀ n, P4232156618752873740.a n = (A092185 n : ℚ)

end A092185

/-!
# A092186: a(n) = 2(m!)^2 for n = 2m and m!(m+1)! for n = 2m+1.

The programs for A092186, the canonical program `A092186.P1615796067117835363` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092186 has offset 0).

The definition of A092186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092186.P1615796067117835363

`(n*(3*n-1)*(n-1)*a(n-2)-4*a(n-1))/(12*n-16)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092186

/-- `(n*(3*n-1)*(n-1)*a(n-2)-4*a(n-1))/(12*n-16)` -/
def P1615796067117835363.Spec : Prop :=
  ∀ n, P1615796067117835363.a n = (A092186 n : ℚ)

end A092186

/-! ## A092186.P7719699317942077047

`a(n-2)*floor((n/2)²)` with `a(0)=2, a(1)=1`
-/

namespace A092186.P7719699317942077047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) * ⌊((n : ℚ) / 2) ^ 2⌋

end

end A092186.P7719699317942077047

namespace A092186

/-- `a(n-2)*floor((n/2)²)` -/
def P7719699317942077047.Spec : Prop :=
  ∀ n, P7719699317942077047.a n = A092186 n

end A092186

/-! ## A092186.P15282397213685762012

`floor(n*n/4)*a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A092186.P15282397213685762012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / 4)⌋ * a (n - 2)

end

end A092186.P15282397213685762012

namespace A092186

/-- `floor(n*n/4)*a(n-2)` -/
def P15282397213685762012.Spec : Prop :=
  ∀ n, P15282397213685762012.a n = A092186 n

end A092186

/-! ## A092186.P9088343645156938417

`gcd(2, n)*A010551(n)`
-/

namespace A092186.P9088343645156938417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A010551 n

end

end A092186.P9088343645156938417

namespace A092186

/-- `gcd(2, n)*A010551(n)` -/
def P9088343645156938417.Spec : Prop :=
  ∀ n, P9088343645156938417.a n = A092186 n

end A092186

/-! ## A092186.P15098307895196136423

`Δ[A007494(n)]*A010551(n)`
-/

namespace A092186.P15098307895196136423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010551 n

end

end A092186.P15098307895196136423

namespace A092186

/-- `Δ[A007494(n)]*A010551(n)` -/
def P15098307895196136423.Spec : Prop :=
  ∀ n, P15098307895196136423.a n = A092186 n

end A092186

/-! ## A092186.P10771344702539783759

`A000034(n+1)*A010551(n)`
-/

namespace A092186.P10771344702539783759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A010551 n

end

end A092186.P10771344702539783759

namespace A092186

/-- `A000034(n+1)*A010551(n)` -/
def P10771344702539783759.Spec : Prop :=
  ∀ n, P10771344702539783759.a n = A092186 n

end A092186

/-! ## A092186.P18138301500322293114

`(2-A000035(n))*A010551(n)`
-/

namespace A092186.P18138301500322293114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A010551 n

end

end A092186.P18138301500322293114

namespace A092186

/-- `(2-A000035(n))*A010551(n)` -/
def P18138301500322293114.Spec : Prop :=
  ∀ n, P18138301500322293114.a n = A092186 n

end A092186

/-! ## A092186.P11036945983580477814

`2/A000034(n)*A010551(n)`
-/

namespace A092186.P11036945983580477814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A010551 n : ℚ)

end

end A092186.P11036945983580477814

namespace A092186

/-- `2/A000034(n)*A010551(n)` -/
def P11036945983580477814.Spec : Prop :=
  ∀ n, P11036945983580477814.a n = (A092186 n : ℚ)

end A092186

/-! ## A092186.P13334422835437573015

`∏[A065033(n)]*A055770(n²+4)`
-/

namespace A092186.P13334422835437573015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A055770 (n ^ 2 + 4)

end

end A092186.P13334422835437573015

namespace A092186

/-- `∏[A065033(n)]*A055770(n²+4)` -/
def P13334422835437573015.Spec : Prop :=
  ∀ n, P13334422835437573015.a n = A092186 n

end A092186

/-! ## A092186.P7232748521719383540

`A010551(n)*A204125(A157339(n))`
-/

namespace A092186.P7232748521719383540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010551 n * A204125 (A157339 n).toNat

end

end A092186.P7232748521719383540

namespace A092186

/-- `A010551(n)*A204125(A157339(n))` -/
def P7232748521719383540.Spec : Prop :=
  ∀ n, P7232748521719383540.a n = A092186 n

end A092186

/-!
# A092187: A092186(n)/2.

The programs for A092187, the canonical program `A092187.P14294753257025407272` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092187 has offset 2).

The definition of A092187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092187.P14294753257025407272

`A092186(n+2)/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092187

/-- `A092186(n+2)/2` -/
def P14294753257025407272.Spec : Prop :=
  ∀ n, P14294753257025407272.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P15329131675908317813

`a(n-2)*∑[∑[∑[(-1)^n]]]` with `a(0)=1, a(1)=1`
-/

namespace A092187.P15329131675908317813
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092187.P15329131675908317813

namespace A092187

/-- `a(n-2)*∑[∑[∑[(-1)^n]]]` -/
def P15329131675908317813.Spec : Prop :=
  ∀ n, P15329131675908317813.a n = A092187 (n + 2)

end A092187

/-! ## A092187.P11128250504780251361

`floor(((n+2)/2)²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A092187.P11128250504780251361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊((n + 2 : ℚ) / 2) ^ 2⌋ * a (n - 2)

end

end A092187.P11128250504780251361

namespace A092187

/-- `floor(((n+2)/2)²)*a(n-2)` -/
def P11128250504780251361.Spec : Prop :=
  ∀ n, P11128250504780251361.a n = A092187 (n + 2)

end A092187

/-! ## A092187.P6967706814862962238

`∑[a(n-2)+1]/a(n-2)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A092187.P6967706814862962238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 2) ^ (-1 : ℤ)

end

end A092187.P6967706814862962238

namespace A092187

/-- `∑[a(n-2)+1]/a(n-2)^(-1)` -/
def P6967706814862962238.Spec : Prop :=
  ∀ n, P6967706814862962238.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P7704501858760158246

`∏[A080513(n)]/A000034(n)`
-/

namespace A092187.P7704501858760158246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A092187.P7704501858760158246

namespace A092187

/-- `∏[A080513(n)]/A000034(n)` -/
def P7704501858760158246.Spec : Prop :=
  ∀ n, P7704501858760158246.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P14495012828778531109

`A010551(n+2)/A000034(n)`
-/

namespace A092187.P14495012828778531109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010551 (n + 2) : ℚ) / (A000034 n : ℚ)

end

end A092187.P14495012828778531109

namespace A092187

/-- `A010551(n+2)/A000034(n)` -/
def P14495012828778531109.Spec : Prop :=
  ∀ n, P14495012828778531109.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P9104915473666155816

`∏[A008619(n+1)]/A000034(n)`
-/

namespace A092187.P9104915473666155816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A092187.P9104915473666155816

namespace A092187

/-- `∏[A008619(n+1)]/A000034(n)` -/
def P9104915473666155816.Spec : Prop :=
  ∀ n, P9104915473666155816.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P12960891043189511827

`∏[A004526(n+3)]/A000034(n)`
-/

namespace A092187.P12960891043189511827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A092187.P12960891043189511827

namespace A092187

/-- `∏[A004526(n+3)]/A000034(n)` -/
def P12960891043189511827.Spec : Prop :=
  ∀ n, P12960891043189511827.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P10919349974662924436

`∏[A080513(n)]/Δ[A001651(n+1)]`
-/

namespace A092187.P10919349974662924436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A092187.P10919349974662924436

namespace A092187

/-- `∏[A080513(n)]/Δ[A001651(n+1)]` -/
def P10919349974662924436.Spec : Prop :=
  ∀ n, P10919349974662924436.a n = (A092187 (n + 2) : ℚ)

end A092187

/-! ## A092187.P1657637101360906828

`∏[A004526(n+3)]/A176895(2*n)`
-/

namespace A092187.P1657637101360906828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A176895 (2 * n) : ℚ)

end

end A092187.P1657637101360906828

namespace A092187

/-- `∏[A004526(n+3)]/A176895(2*n)` -/
def P1657637101360906828.Spec : Prop :=
  ∀ n, P1657637101360906828.a n = (A092187 (n + 2) : ℚ)

end A092187

/-!
# A092188: a(n) = smallest positive integer m such that 2^3^4^5^...^n == m (mod n).

The programs for A092188, there is no canonical definition to state claims against.
-/

/-! ## A092188.P11099670346334995166

`A213013(n+2)+A048298(n+2)`
-/

namespace A092188.P11099670346334995166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213013 (n + 2) + A048298 (n + 2)

end

end A092188.P11099670346334995166

/-! ## A092188.P8655779813412273963

`A213013(n+2)+Δ[A076877(n+1)]`
-/

namespace A092188.P8655779813412273963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213013 (n + 2) + (f1 (n + 1) - f1 n)

end

end A092188.P8655779813412273963

/-! ## A092188.P11839246582761359959

`floor(A213013(n+2)+ratio[A080079(n+1)])`
-/

namespace A092188.P11839246582761359959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213013 (n + 2) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A092188.P11839246582761359959

/-! ## A092188.P10148196052121181263

`A213013(n+2)+Δ[A053644(2*(n+1))]`
-/

namespace A092188.P10148196052121181263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213013 (n + 2) + (f1 (n + 1) - f1 n)

end

end A092188.P10148196052121181263

/-!
# A092189: Numbers k such that the sum of the first k semiprimes is a semiprime.

The programs for A092189, the canonical program `A092189.P6598962799079077533` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092189 has offset 1).

The definition of A092189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092189.P8848121868843283119

`eq[A062198(n+1), A265438(n+1)]+1`
-/

namespace A092189.P8848121868843283119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A092189.P8848121868843283119

namespace A092189

/-- `eq[A062198(n+1), A265438(n+1)]+1` -/
def P8848121868843283119.Spec : Prop :=
  ∀ n, (P8848121868843283119.a n : ℤ) = A092189 (n + 1)

end A092189

/-! ## A092189.P10706261121391515536

`record[∑[A088707(n+1)]-A265438(n+1)]`
-/

namespace A092189.P10706261121391515536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A265438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092189.P10706261121391515536

namespace A092189

/-- `record[∑[A088707(n+1)]-A265438(n+1)]` -/
def P10706261121391515536.Spec : Prop :=
  ∀ n, P10706261121391515536.a n = A092189 (n + 1)

end A092189

/-! ## A092189.P6598962799079077533

`eq[2, ∑{e}[∑[A001358(n+1)], #]]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A092189

/-- `eq[2, ∑{e}[∑[A001358(n+1)], #]]+1` -/
def P6598962799079077533.Spec : Prop :=
  ∀ n, (P6598962799079077533.a n : ℤ) = A092189 (n + 1)

theorem P6598962799079077533.correct : P6598962799079077533.Spec := by
  intro n
  simp only [A092189, Nat.add_sub_cancel]

end A092189

/-! ## A092189.P15963983140182774395

`eq[2, A001222(A062198(n+1))]+1`
-/

namespace A092189.P15963983140182774395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062198 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092189.P15963983140182774395

namespace A092189

/-- `eq[2, A001222(A062198(n+1))]+1` -/
def P15963983140182774395.Spec : Prop :=
  ∀ n, (P15963983140182774395.a n : ℤ) = A092189 (n + 1)

end A092189

/-! ## A092189.P6092878497655905171

`eq[2, A001222(∑[A001358(n+1)])]+1`
-/

namespace A092189.P6092878497655905171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092189.P6092878497655905171

namespace A092189

/-- `eq[2, A001222(∑[A001358(n+1)])]+1` -/
def P6092878497655905171.Spec : Prop :=
  ∀ n, (P6092878497655905171.a n : ℤ) = A092189 (n + 1)

end A092189

/-!
# A092190: Semiprimes that are the sum of the first n semiprimes for some n.

The programs for A092190, the canonical program `A092190.P7188414819425157467` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092190 has offset 1).

The definition of A092190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1725 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092190.P7188414819425157467

`A062198(A092189(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092190

/-- `A062198(A092189(n+1))` -/
def P7188414819425157467.Spec : Prop :=
  ∀ n, P7188414819425157467.a n = A092190 (n + 1)

theorem P7188414819425157467.correct : P7188414819425157467.Spec := by
  intro n
  simp only [A092190, Nat.add_sub_cancel]

end A092190

/-! ## A092190.P15383826120102340709

`A265438(and(-1, A092189(n+1)))`
-/

namespace A092190.P15383826120102340709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (Int.land (-1) (A092189 (n + 1))).toNat

end

end A092190.P15383826120102340709

namespace A092190

/-- `A265438(and(-1, A092189(n+1)))` -/
def P15383826120102340709.Spec : Prop :=
  ∀ n, P15383826120102340709.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P16809254114639732425

`A265438(or(char[3], A092189(n+1)))`
-/

namespace A092190.P16809254114639732425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A092189 (n + 1))).toNat

end

end A092190.P16809254114639732425

namespace A092190

/-- `A265438(or(char[3], A092189(n+1)))` -/
def P16809254114639732425.Spec : Prop :=
  ∀ n, P16809254114639732425.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P17647819423327307200

`A265438(A092189(2*n+1-n))`
-/

namespace A092190.P17647819423327307200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A092189 (2 * n + 1 - n)).toNat

end

end A092190.P17647819423327307200

namespace A092190

/-- `A265438(A092189(2*n+1-n))` -/
def P17647819423327307200.Spec : Prop :=
  ∀ n, P17647819423327307200.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P13348412824963633771

`A265438(A092189(n+1)%(n+2)²)`
-/

namespace A092190.P13348412824963633771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (Int.tmod (A092189 (n + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A092190.P13348412824963633771

namespace A092190

/-- `A265438(A092189(n+1)%(n+2)²)` -/
def P13348412824963633771.Spec : Prop :=
  ∀ n, P13348412824963633771.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P7347993262083968180

`record[gcd(A062198(n+1), A265438(n+1))]`
-/

namespace A092190.P7347993262083968180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062198 (n + 1)) (A265438 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092190.P7347993262083968180

namespace A092190

/-- `record[gcd(A062198(n+1), A265438(n+1))]` -/
def P7347993262083968180.Spec : Prop :=
  ∀ n, (P7347993262083968180.a n : ℤ) = A092190 (n + 1)

end A092190

/-! ## A092190.P1387601466372342189

`A265438(A004526(2*A092189(n+1)))`
-/

namespace A092190.P1387601466372342189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A004526 (2 * A092189 (n + 1)).toNat).toNat

end

end A092190.P1387601466372342189

namespace A092190

/-- `A265438(A004526(2*A092189(n+1)))` -/
def P1387601466372342189.Spec : Prop :=
  ∀ n, P1387601466372342189.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P11719834720209415161

`A265438(A092189(n+1))%A016828(n)`
-/

namespace A092190.P11719834720209415161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265438 (A092189 (n + 1)).toNat) (A016828 n)

end

end A092190.P11719834720209415161

namespace A092190

/-- `A265438(A092189(n+1))%A016828(n)` -/
def P11719834720209415161.Spec : Prop :=
  ∀ n, P11719834720209415161.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P15582291601585196624

`lcm(A065357(n), A265438(A092189(n+1)))`
-/

namespace A092190.P15582291601585196624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A265438 (A092189 (n + 1)).toNat)

end

end A092190.P15582291601585196624

namespace A092190

/-- `lcm(A065357(n), A265438(A092189(n+1)))` -/
def P15582291601585196624.Spec : Prop :=
  ∀ n, (P15582291601585196624.a n : ℤ) = A092190 (n + 1)

end A092190

/-! ## A092190.P8462974296424827654

`A007318(C(2, n))*A265438(A092189(n+1))`
-/

namespace A092190.P8462974296424827654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265438 (A092189 (n + 1)).toNat

end

end A092190.P8462974296424827654

namespace A092190

/-- `A007318(C(2, n))*A265438(A092189(n+1))` -/
def P8462974296424827654.Spec : Prop :=
  ∀ n, P8462974296424827654.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P11219111537496036943

`A265438(A092189(n+1))+char[A000032(n+15)]`
-/

namespace A092190.P11219111537496036943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 15)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A092189 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092190.P11219111537496036943

namespace A092190

/-- `A265438(A092189(n+1))+char[A000032(n+15)]` -/
def P11219111537496036943.Spec : Prop :=
  ∀ n, P11219111537496036943.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P10959304816462739957

`A062198(eq[A062198(n+1), A265438(n+1)]+1)`
-/

namespace A092190.P10959304816462739957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A092190.P10959304816462739957

namespace A092190

/-- `A062198(eq[A062198(n+1), A265438(n+1)]+1)` -/
def P10959304816462739957.Spec : Prop :=
  ∀ n, P10959304816462739957.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P12389455594105828651

`A265438(A092189(n+1))+A000007(A007918(n))`
-/

namespace A092190.P12389455594105828651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A092189 (n + 1)).toNat + A000007 (A007918 n).toNat

end

end A092190.P12389455594105828651

namespace A092190

/-- `A265438(A092189(n+1))+A000007(A007918(n))` -/
def P12389455594105828651.Spec : Prop :=
  ∀ n, P12389455594105828651.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P1306207538864105493

`A265438(A092189(n+1))+A000007(A008619(n))`
-/

namespace A092190.P1306207538864105493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A092189 (n + 1)).toNat + A000007 (A008619 n).toNat

end

end A092190.P1306207538864105493

namespace A092190

/-- `A265438(A092189(n+1))+A000007(A008619(n))` -/
def P1306207538864105493.Spec : Prop :=
  ∀ n, P1306207538864105493.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P17391356503937505062

`A265438(A092189(n+1))+A000007(A226378(n))`
-/

namespace A092190.P17391356503937505062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A092189 (n + 1)).toNat + A000007 (A226378 n).toNat

end

end A092190.P17391356503937505062

namespace A092190

/-- `A265438(A092189(n+1))+A000007(A226378(n))` -/
def P17391356503937505062.Spec : Prop :=
  ∀ n, P17391356503937505062.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P13502571566182374692

`A265438(A014963(A254712(n+1))*A092189(n+1))`
-/

namespace A092190.P13502571566182374692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (A014963 (A254712 (n + 1)).toNat * A092189 (n + 1)).toNat

end

end A092190.P13502571566182374692

namespace A092190

/-- `A265438(A014963(A254712(n+1))*A092189(n+1))` -/
def P13502571566182374692.Spec : Prop :=
  ∀ n, P13502571566182374692.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P14013628499902364949

`A265438(A092189(n+1)/A014963(A254712(n+1)))`
-/

namespace A092190.P14013628499902364949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (SequenceMachineLib.roundAway ((A092189 (n + 1) : ℚ) / (A014963 (A254712 (n + 1)).toNat : ℚ))).toNat

end

end A092190.P14013628499902364949

namespace A092190

/-- `A265438(A092189(n+1)/A014963(A254712(n+1)))` -/
def P14013628499902364949.Spec : Prop :=
  ∀ n, P14013628499902364949.a n = A092190 (n + 1)

end A092190

/-! ## A092190.P14680570828901928416

`A265438(A092189(n+1)^A014963(A254712(n+1)))`
-/

namespace A092190.P14680570828901928416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265438 (SequenceMachineLib.roundAway ((A092189 (n + 1) : ℚ) ^ (A014963 (A254712 (n + 1)).toNat : ℤ))).toNat

end

end A092190.P14680570828901928416

namespace A092190

/-- `A265438(A092189(n+1)^A014963(A254712(n+1)))` -/
def P14680570828901928416.Spec : Prop :=
  ∀ n, P14680570828901928416.a n = A092190 (n + 1)

end A092190

/-!
# A092191: Numbers n such that sum of n-th and (n+1)-th semiprimes is a semiprime.

The programs for A092191, there is no canonical definition to state claims against.
-/

/-! ## A092191.P1507912681616461009

`A058933(A272306(n+1))`
-/

namespace A092191.P1507912681616461009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A272306 (n + 1)).toNat

end

end A092191.P1507912681616461009

/-! ## A092191.P1539105398692439771

`∑{d}[A272306(n+1), A174956(#)]`
-/

namespace A092191.P1539105398692439771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d

end

end A092191.P1539105398692439771

/-! ## A092191.P9258125085981954352

`A174956(and(-1, A272306(n+1)))`
-/

namespace A092191.P9258125085981954352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (Int.land (-1) (A272306 (n + 1))).toNat

end

end A092191.P9258125085981954352

/-! ## A092191.P13575505325789436035

`A072000(floor(A092192(n+1)/2))`
-/

namespace A092191.P13575505325789436035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 ⌊(A092192 (n + 1) : ℚ) / 2⌋.toNat

end

end A092191.P13575505325789436035

/-! ## A092191.P9568551870776005308

`A072000(A272306(n+1)+char[1])`
-/

namespace A092191.P9568551870776005308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A272306 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A092191.P9568551870776005308

/-! ## A092191.P18230414753942566645

`eq[2, A001222(A118717(n+1))]+1`
-/

namespace A092191.P18230414753942566645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118717 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092191.P18230414753942566645

/-! ## A092191.P15180480570518671333

`A072000(A272306(n+1)%A074985(n+1))`
-/

namespace A092191.P15180480570518671333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.tmod (A272306 (n + 1)) (A074985 (n + 1))).toNat

end

end A092191.P15180480570518671333

/-!
# A092192: Semiprimes that are the sum of two successive semiprimes.

The programs for A092192, the canonical program `A092192.P13501975544095601998` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092192 has offset 1).

The definition of A092192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092192.P13501975544095601998

`∩[A001358(n+1), A118717(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092192

/-- `∩[A001358(n+1), A118717(n+1)]` -/
def P13501975544095601998.Spec : Prop :=
  ∀ n, (P13501975544095601998.a n : ℤ) = A092192 (n + 1)

theorem P13501975544095601998.correct : P13501975544095601998.Spec := by
  intro n
  simp only [A092192, Nat.add_sub_cancel]

end A092192

/-! ## A092192.P10047692068217223270

`filter[A118717(n+1), A064911(#)]`
-/

namespace A092192.P10047692068217223270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A092192.P10047692068217223270

namespace A092192

/-- `filter[A118717(n+1), A064911(#)]` -/
def P10047692068217223270.Spec : Prop :=
  ∀ n, P10047692068217223270.a n = A092192 (n + 1)

end A092192

/-! ## A092192.P5244459595705599615

`∩[A118717(n+1), A176540(n+1)]`
-/

namespace A092192.P5244459595705599615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092192.P5244459595705599615

namespace A092192

/-- `∩[A118717(n+1), A176540(n+1)]` -/
def P5244459595705599615.Spec : Prop :=
  ∀ n, (P5244459595705599615.a n : ℤ) = A092192 (n + 1)

end A092192

/-! ## A092192.P775297280672958966

`∩[A118717(n+1), A186621(n+1)+1]`
-/

namespace A092192.P775297280672958966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092192.P775297280672958966

namespace A092192

/-- `∩[A118717(n+1), A186621(n+1)+1]` -/
def P775297280672958966.Spec : Prop :=
  ∀ n, (P775297280672958966.a n : ℤ) = A092192 (n + 1)

end A092192

/-! ## A092192.P17148064650035721631

`∩[A088707(n+1)-1, A118717(n+1)]`
-/

namespace A092192.P17148064650035721631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092192.P17148064650035721631

namespace A092192

/-- `∩[A088707(n+1)-1, A118717(n+1)]` -/
def P17148064650035721631.Spec : Prop :=
  ∀ n, (P17148064650035721631.a n : ℤ) = A092192 (n + 1)

end A092192

/-! ## A092192.P1955451090407517231

`∩[A077135(n+1), A118717(n+1)]`
-/

namespace A092192.P1955451090407517231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092192.P1955451090407517231

namespace A092192

/-- `∩[A077135(n+1), A118717(n+1)]` -/
def P1955451090407517231.Spec : Prop :=
  ∀ n, (P1955451090407517231.a n : ℤ) = A092192 (n + 1)

end A092192

/-! ## A092192.P15315113909484954254

`A118717(∑{d}[A272306(n+1), A174956(#)])`
-/

namespace A092192.P15315113909484954254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d).toNat

end

end A092192.P15315113909484954254

namespace A092192

/-- `A118717(∑{d}[A272306(n+1), A174956(#)])` -/
def P15315113909484954254.Spec : Prop :=
  ∀ n, P15315113909484954254.a n = A092192 (n + 1)

end A092192

/-! ## A092192.P11440545787842901358

`record[A179312(A118717(n+1))]`
-/

namespace A092192.P11440545787842901358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092192.P11440545787842901358

namespace A092192

/-- `record[A179312(A118717(n+1))]` -/
def P11440545787842901358.Spec : Prop :=
  ∀ n, P11440545787842901358.a n = A092192 (n + 1)

end A092192

/-! ## A092192.P16946911704103664555

`record[A179312(A075818(n+1)+A065516(n+1))]`
-/

namespace A092192.P16946911704103664555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A075818 (n + 1) + A065516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092192.P16946911704103664555

namespace A092192

/-- `record[A179312(A075818(n+1)+A065516(n+1))]` -/
def P16946911704103664555.Spec : Prop :=
  ∀ n, P16946911704103664555.a n = A092192 (n + 1)

end A092192

/-! ## A092192.P14631007362219695381

`record[A179312(A001358(n+1)+A001358(n+2))]`
-/

namespace A092192.P14631007362219695381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A001358 (n + 1) + A001358 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092192.P14631007362219695381

namespace A092192

/-- `record[A179312(A001358(n+1)+A001358(n+2))]` -/
def P14631007362219695381.Spec : Prop :=
  ∀ n, P14631007362219695381.a n = A092192 (n + 1)

end A092192

/-! ## A092192.P3969456283651701511

`record[A179312(A129767(2*(n+1))+A129767(2*(n+2)))]`
-/

namespace A092192.P3969456283651701511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A129767 (2 * (n + 1)) + A129767 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092192.P3969456283651701511

namespace A092192

/-- `record[A179312(A129767(2*(n+1))+A129767(2*(n+2)))]` -/
def P3969456283651701511.Spec : Prop :=
  ∀ n, P3969456283651701511.a n = A092192 (n + 1)

end A092192

/-!
# A092194: Primes p that divide A001008(k), the numerator of the k-th harmonic number H(k), for some k < p-1.

The programs for A092194, there is no canonical definition to state claims against.
-/

/-! ## A092194.P14126840421221393424

`A045344(lt[0, A093569(n+1)])`
-/

namespace A092194.P14126840421221393424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092194.P14126840421221393424

/-! ## A092194.P11422831680486227605

`A065091(lt[0, A093569(n+1)])`
-/

namespace A092194.P11422831680486227605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092194.P11422831680486227605

/-! ## A092194.P16519816645394295575

`A000040(lt[0, A093569(n+1)]+1)`
-/

namespace A092194.P16519816645394295575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A092194.P16519816645394295575

/-! ## A092194.P208362847825069804

`A006005(lt[1, A093569(n+1)]+1)`
-/

namespace A092194.P208362847825069804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A092194.P208362847825069804

/-! ## A092194.P15419703503770906948

`p?[A000040(n+1)%(n^A093569(n+1))]`
-/

namespace A092194.P15419703503770906948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway ((n : ℚ) ^ (A093569 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092194.P15419703503770906948

/-! ## A092194.P13802326277202978531

`eq[C(A110545(n+1), n)+1, A002033(n)]+1`
-/

namespace A092194.P13802326277202978531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110545 (n + 1)).toNat n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092194.P13802326277202978531

/-!
# A092195: Primes p that do not divide A001008(k), the numerator of the k-th harmonic number H(k), for any k < p-1.

The programs for A092195, there is no canonical definition to state claims against.
-/

/-! ## A092195.P9848622217305435355

`record[A072984(n+2)+1]`
-/

namespace A092195.P9848622217305435355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072984 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092195.P9848622217305435355

/-! ## A092195.P16867278387138030254

`eq[n, A110545(n+1)]+1`
-/

namespace A092195.P16867278387138030254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092195.P16867278387138030254

/-! ## A092195.P9321654091667160534

`record[A110545(A007918(n))+1]`
-/

namespace A092195.P9321654091667160534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A007918 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092195.P9321654091667160534

/-! ## A092195.P12987059921988848159

`record[A110545(A151800(n))+1]`
-/

namespace A092195.P12987059921988848159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A151800 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092195.P12987059921988848159

/-! ## A092195.P3312184074373670434

`A004442(record[A072984(n+2)])`
-/

namespace A092195.P3312184074373670434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092195.P3312184074373670434

/-! ## A092195.P9839390349001764581

`A020725(record[A072984(n+2)])`
-/

namespace A092195.P9839390349001764581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092195.P9839390349001764581

/-! ## A092195.P17237910536443780954

`A049283(record[A072984(n+2)])`
-/

namespace A092195.P17237910536443780954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092195.P17237910536443780954

/-! ## A092195.P4057262435871770170

`record[A110545(A000040(n+1))+1]`
-/

namespace A092195.P4057262435871770170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092195.P4057262435871770170

/-! ## A092195.P16715260454170216647

`record[A110545(A006530(n+2))+1]`
-/

namespace A092195.P16715260454170216647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A006530 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092195.P16715260454170216647

/-! ## A092195.P4709262103074137597

`record[A110545(A020639(n+2))+1]`
-/

namespace A092195.P4709262103074137597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A020639 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092195.P4709262103074137597

/-!
# A092196: Number of letters in "old style" Roman numeral representation of n (e.g., IIII rather than IV).

The programs for A092196, the canonical program `A092196.P2295295724916669380` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092196 has offset 0).

The definition of A092196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092196.P2295295724916669380

`∑{digits}[2*n, ceil(#/2)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092196

/-- `∑{digits}[2*n, ceil(#/2)]` -/
def P2295295724916669380.Spec : Prop :=
  ∀ n, P2295295724916669380.a n = A092196 n

theorem P2295295724916669380.correct : P2295295724916669380.Spec := by
  intro n
  simp only [A092196]

end A092196

/-! ## A092196.P18106852230401616

`∑{digits}[n, #]-A008586(∑{digits}[n, floor(#/5)])`
-/

namespace A092196.P18106852230401616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A008586 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 5⌋).sum.toNat

end

end A092196.P18106852230401616

namespace A092196

/-- `∑{digits}[n, #]-A008586(∑{digits}[n, floor(#/5)])` -/
def P18106852230401616.Spec : Prop :=
  ∀ n, P18106852230401616.a n = A092196 n

end A092196

/-! ## A092196.P10093835520030699947

`(A102675(n)+A004092(n))/2`
-/

namespace A092196.P10093835520030699947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102675 n + A004092 n : ℚ) / 2

end

end A092196.P10093835520030699947

namespace A092196

/-- `(A102675(n)+A004092(n))/2` -/
def P10093835520030699947.Spec : Prop :=
  ∀ n, P10093835520030699947.a n = (A092196 n : ℚ)

end A092196

/-! ## A092196.P16156470144868254235

`A004525(A102675(n)+A004092(n))`
-/

namespace A092196.P16156470144868254235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A102675 n + A004092 n).toNat

end

end A092196.P16156470144868254235

namespace A092196

/-- `A004525(A102675(n)+A004092(n))` -/
def P16156470144868254235.Spec : Prop :=
  ∀ n, P16156470144868254235.a n = A092196 n

end A092196

/-! ## A092196.P11598591321873676138

`A110654(A102675(n)+A004092(n))`
-/

namespace A092196.P11598591321873676138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A102675 n + A004092 n).toNat

end

end A092196.P11598591321873676138

namespace A092196

/-- `A110654(A102675(n)+A004092(n))` -/
def P11598591321873676138.Spec : Prop :=
  ∀ n, P11598591321873676138.a n = A092196 n

end A092196

/-! ## A092196.P10230814593128873444

`A001222(A054842(2*n)/A054842(A106747(2*n)))`
-/

namespace A092196.P10230814593128873444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A054842 (2 * n) : ℚ) / (A054842 (A106747 (2 * n)).toNat : ℚ))).toNat

end

end A092196.P10230814593128873444

namespace A092196

/-- `A001222(A054842(2*n)/A054842(A106747(2*n)))` -/
def P10230814593128873444.Spec : Prop :=
  ∀ n, P10230814593128873444.a n = A092196 n

end A092196

/-! ## A092196.P562982357161779831

`A260688(A051022(n))`
-/

namespace A092196.P562982357161779831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260688 (A051022 n).toNat

end

end A092196.P562982357161779831

namespace A092196

/-- `A260688(A051022(n))` -/
def P562982357161779831.Spec : Prop :=
  ∀ n, P562982357161779831.a n = A092196 n

end A092196

/-! ## A092196.P1302140619366468646

`A004427(n*A276502(2*n+1))`
-/

namespace A092196.P1302140619366468646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 ((n : ℤ) * A276502 (2 * n + 1)).toNat

end

end A092196.P1302140619366468646

namespace A092196

/-- `A004427(n*A276502(2*n+1))` -/
def P1302140619366468646.Spec : Prop :=
  ∀ n, P1302140619366468646.a n = A092196 n

end A092196

/-!
# A092197: Brevity advantage of "new style" over "old style" Roman numerals.

The programs for A092197, there is no canonical definition to state claims against.
-/

/-! ## A092197.P8199887224917344390

`A092196(n+1)-A006968(n+1)`
-/

namespace A092197.P8199887224917344390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (n + 1) - A006968 (n + 1)

end

end A092197.P8199887224917344390

/-! ## A092197.P6091633565582273476

`A092196(n+1)-∑{digits}[A061493(n+1), A055642(#)]`
-/

namespace A092197.P6091633565582273476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (n + 1) - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A092197.P6091633565582273476

/-! ## A092197.P3123601886226563454

`A092196(n+1)-A092196(A093783(n+1))`
-/

namespace A092197.P3123601886226563454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (n + 1) - A092196 (A093783 (n + 1)).toNat

end

end A092197.P3123601886226563454

/-! ## A092197.P7389749493574968801

`A040492(3*(n+1))%A040492(A033581(n+2))`
-/

namespace A092197.P7389749493574968801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040492 (3 * (n + 1))) (A040492 (A033581 (n + 2)).toNat)

end

end A092197.P7389749493574968801

/-! ## A092197.P11696919043865355623

`A331383(gcd(A112032(2*(n+2)), A250120(2*(n+2))))`
-/

namespace A092197.P11696919043865355623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (Int.gcd (A112032 (2 * (n + 2))) (A250120 (2 * (n + 2))))

end

end A092197.P11696919043865355623

/-!
# A092198: Equal count of primes congruent to 1 mod 4 and 3 mod 4 associated with primes in A007351 (the zero beginning the sequence indicates the prime 2).

The programs for A092198, there is no canonical definition to state claims against.
-/

/-! ## A092198.P304130275491930862

`floor(A038691(n+1)/2)`
-/

namespace A092198.P304130275491930862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038691 (n + 1) : ℚ) / 2⌋

end

end A092198.P304130275491930862

/-! ## A092198.P12207982835456369326

`(A038691(C(n+1, n))-1)/2`
-/

namespace A092198.P12207982835456369326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038691 (Nat.choose (n + 1) n) - 1 : ℚ) / 2

end

end A092198.P12207982835456369326

/-! ## A092198.P15298477849299671709

`A267097(A038691(n+1))`
-/

namespace A092198.P15298477849299671709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (A038691 (n + 1)).toNat

end

end A092198.P15298477849299671709

/-! ## A092198.P2169626788768747060

`A014682(A038691(n+1)-1)`
-/

namespace A092198.P2169626788768747060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A038691 (n + 1) - 1).toNat

end

end A092198.P2169626788768747060

/-! ## A092198.P4743572362591513216

`A318518(A038691(n+1)+1)-1`
-/

namespace A092198.P4743572362591513216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A038691 (n + 1) + 1).toNat - 1

end

end A092198.P4743572362591513216

/-!
# A092199: Number of Ore graphs on n nodes using Skiena's nonstandard definition > n (instead of the usual >= n).

The programs for A092199, there is no canonical definition to state claims against.
-/

/-! ## A092199.P8551883026877993728

`A340996(A218939(n)+1)`
-/

namespace A092199.P8551883026877993728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340996 (A218939 n + 1).toNat

end

end A092199.P8551883026877993728

/-! ## A092199.P3809070969225663007

`A198061(A000332(n)+3)`
-/

namespace A092199.P3809070969225663007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198061 (A000332 n + 3).toNat

end

end A092199.P3809070969225663007

/-! ## A092199.P18424813957429967392

`A065744(or(3, A215008(n)))`
-/

namespace A092199.P18424813957429967392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (Int.lor 3 (A215008 n)).toNat

end

end A092199.P18424813957429967392

/-! ## A092199.P13488552349545823797

`A346721(∑[A260661(n)]+1)`
-/

namespace A092199.P13488552349545823797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346721 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A092199.P13488552349545823797

