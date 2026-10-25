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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A278100: Number of squarefree positive integers less than n^2.

The programs for A278100, the canonical program `A278100.P13036125497431391876` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278100 has offset 1).

The definition of A278100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278100.P13036125497431391876

`A013928((n+1)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A278100

/-- `A013928((n+1)²)` -/
def P13036125497431391876.Spec : Prop :=
  ∀ n, P13036125497431391876.a n = A278100 (n + 1)

theorem P13036125497431391876.correct : P13036125497431391876.Spec := by
  intro n
  simp only [A278100, Nat.add_sub_cancel]

end A278100

/-! ## A278100.P7079076429065764425

`A107079((n+1)²)-1`
-/

namespace A278100.P7079076429065764425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 ((n + 1) ^ 2) - 1

end

end A278100.P7079076429065764425

namespace A278100

/-- `A107079((n+1)²)-1` -/
def P7079076429065764425.Spec : Prop :=
  ∀ n, P7079076429065764425.a n = A278100 (n + 1)

theorem P7079076429065764425.correct : P7079076429065764425.Spec := by
  intro n
  simp only [A278100, Nat.add_sub_cancel, A278100.P7079076429065764425.a, A278100.P13036125497431391876.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A107079, A107079.P8145768499534566836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278100

/-! ## A278100.P12234597991587785965

`A013928(∑[2*n+1])%∑[2*n+1]`
-/

namespace A278100.P12234597991587785965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013928 (∑ j ∈ Finset.range (n + 1), f1 j)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A278100.P12234597991587785965

namespace A278100

/-- `A013928(∑[2*n+1])%∑[2*n+1]` -/
def P12234597991587785965.Spec : Prop :=
  ∀ n, P12234597991587785965.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P12564649474181368425

`record[A013928(A065648(n)²)]`
-/

namespace A278100.P12564649474181368425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278100.P12564649474181368425

namespace A278100

/-- `record[A013928(A065648(n)²)]` -/
def P12564649474181368425.Spec : Prop :=
  ∀ n, P12564649474181368425.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P1020835468717962234

`record[A013928(A134967(n)²)]`
-/

namespace A278100.P1020835468717962234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A134967 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278100.P1020835468717962234

namespace A278100

/-- `record[A013928(A134967(n)²)]` -/
def P1020835468717962234.Spec : Prop :=
  ∀ n, P1020835468717962234.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P5817268973633698602

`record[A013928(A141256(n)²)]`
-/

namespace A278100.P5817268973633698602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A141256 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278100.P5817268973633698602

namespace A278100

/-- `record[A013928(A141256(n)²)]` -/
def P5817268973633698602.Spec : Prop :=
  ∀ n, P5817268973633698602.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P5467595429613197409

`record[A013928(A341440(n)²)]`
-/

namespace A278100.P5467595429613197409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A341440 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278100.P5467595429613197409

namespace A278100

/-- `record[A013928(A341440(n)²)]` -/
def P5467595429613197409.Spec : Prop :=
  ∀ n, P5467595429613197409.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P8618738885393329181

`record[A013928(A088004(n+1)^2)]`
-/

namespace A278100.P8618738885393329181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A088004 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278100.P8618738885393329181

namespace A278100

/-- `record[A013928(A088004(n+1)^2)]` -/
def P8618738885393329181.Spec : Prop :=
  ∀ n, P8618738885393329181.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P612101360914953901

`gcd(n, n+1)*A013928(∑[A005408(n)])`
-/

namespace A278100.P612101360914953901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A013928 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278100.P612101360914953901

namespace A278100

/-- `gcd(n, n+1)*A013928(∑[A005408(n)])` -/
def P612101360914953901.Spec : Prop :=
  ∀ n, P612101360914953901.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P940023850606172025

`A023443(A107079((n+1)²))`
-/

namespace A278100.P940023850606172025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A107079 ((n + 1) ^ 2)).toNat

end

end A278100.P940023850606172025

namespace A278100

/-- `A023443(A107079((n+1)²))` -/
def P940023850606172025.Spec : Prop :=
  ∀ n, P940023850606172025.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P18340091616085690984

`A091813((n+1)²)%(n+1)²`
-/

namespace A278100.P18340091616085690984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091813 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A278100.P18340091616085690984

namespace A278100

/-- `A091813((n+1)²)%(n+1)²` -/
def P18340091616085690984.Spec : Prop :=
  ∀ n, P18340091616085690984.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P583812289802985361

`A091813((n+1)²)*A178334(n)`
-/

namespace A278100.P583812289802985361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091813 ((n + 1) ^ 2) * A178334 n

end

end A278100.P583812289802985361

namespace A278100

/-- `A091813((n+1)²)*A178334(n)` -/
def P583812289802985361.Spec : Prop :=
  ∀ n, P583812289802985361.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P2386137234306465294

`xor(A010054(∑[n+2]+4), A091813((n+1)²))`
-/

namespace A278100.P2386137234306465294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) (A091813 ((n + 1) ^ 2))

end

end A278100.P2386137234306465294

namespace A278100

/-- `xor(A010054(∑[n+2]+4), A091813((n+1)²))` -/
def P2386137234306465294.Spec : Prop :=
  ∀ n, P2386137234306465294.a n = A278100 (n + 1)

end A278100

/-! ## A278100.P14204205827435108650

`A001221(A001316(n))*A091813((n+1)²)`
-/

namespace A278100.P14204205827435108650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A091813 ((n + 1) ^ 2)

end

end A278100.P14204205827435108650

namespace A278100

/-- `A001221(A001316(n))*A091813((n+1)²)` -/
def P14204205827435108650.Spec : Prop :=
  ∀ n, P14204205827435108650.a n = A278100 (n + 1)

end A278100

/-!
# A278102: a(n) is the largest j such that A278101(n,k) strictly decreases for k=1..j.

The programs for A278102, there is no canonical definition to state claims against.
-/

/-! ## A278102.P4439474853331903299

`Δ[eq[A278104(n+1)², A278103(n+1)]]`
-/

namespace A278102.P4439474853331903299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278104 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278103 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278102.P4439474853331903299

/-! ## A278102.P361951449796033311

`dr(A106801(A037461(n+1)))%5`
-/

namespace A278102.P361951449796033311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A106801 (A037461 (n + 1)).toNat) % 5

end

end A278102.P361951449796033311

/-! ## A278102.P15686852481810728087

`A107260(p?[A228730(A211969(n+2))])`
-/

namespace A278102.P15686852481810728087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228730 (A211969 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107260 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A278102.P15686852481810728087

/-! ## A278102.P13276062978083913538

`A076982(lt[A097621(n+1), A282062(3*n+2)])`
-/

namespace A278102.P13276062978083913538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278102.P13276062978083913538

/-!
# A278104: Irregular triangle T(n,k) := A277648(n,k) for k = 1...A278102(n), read by rows.

The programs for A278104, there is no canonical definition to state claims against.
-/

/-! ## A278104.P14389033742715423400

`A000188(A278103(n+1))`
-/

namespace A278104.P14389033742715423400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A278103 (n + 1)).toNat

end

end A278104.P14389033742715423400

/-! ## A278104.P6346505679249518674

`A337101(2*A278103(n+1))`
-/

namespace A278104.P6346505679249518674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A278103 (n + 1)).toNat

end

end A278104.P6346505679249518674

/-! ## A278104.P13461249044428391633

`A337101(A278103(n+1)+A278103(n+1))`
-/

namespace A278104.P13461249044428391633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A278103 (n + 1) + A278103 (n + 1)).toNat

end

end A278104.P13461249044428391633

/-! ## A278104.P942598431660725447

`char[A158364(n+1)]+A057918(A278103(n+1))+1`
-/

namespace A278104.P942598431660725447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A057918 (A278103 (n + 1)).toNat + 1)

end

end A278104.P942598431660725447

/-! ## A278104.P13226434600180509540

`A057918(A278103(n+1))-A008683(A023246(n+1))`
-/

namespace A278104.P13226434600180509540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278103 (n + 1)).toNat - A008683 (A023246 (n + 1)).toNat

end

end A278104.P13226434600180509540

/-! ## A278104.P14013207437900783198

`A105700(A006512(n+1))+A057918(A278103(n+1))`
-/

namespace A278104.P14013207437900783198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A006512 (n + 1)).toNat + A057918 (A278103 (n + 1)).toNat

end

end A278104.P14013207437900783198

/-! ## A278104.P8027652498235043991

`A057918(A278103(n+1))+A030523(∑[n+1])`
-/

namespace A278104.P8027652498235043991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278103 (n + 1)).toNat + A030523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278104.P8027652498235043991

/-!
# A278105: a(n) = floor(3/n).

The programs for A278105, the canonical program `A278105.P4872380215375185102` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278105 has offset 1).

The definition of A278105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3/(n+1))` (program `A278105.P4872380215375185102`, by `A278105.P4872380215375185102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278105.P4872380215375185102

`floor(3/(n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278105

/-- `floor(3/(n+1))` -/
def P4872380215375185102.Spec : Prop :=
  ∀ n, P4872380215375185102.a n = A278105 (n + 1)

theorem P4872380215375185102.correct : P4872380215375185102.Spec := by
  intro n
  simp only [A278105, Nat.add_sub_cancel]

end A278105

/-!
# A278106: a(n) is the index of the first occurrence of n in A278102.

The programs for A278106, there is no canonical definition to state claims against.
-/

/-! ## A278106.P16743207997470595358

`record[∑[A177762(A288807(n))]]`
-/

namespace A278106.P16743207997470595358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177762 (A288807 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278106.P16743207997470595358

/-!
# A278108: Irregular triangle read by rows: T(n,k) = floor(n/k^2) for 1 <= k^2 <= n.

The programs for A278108, there is no canonical definition to state claims against.
-/

/-! ## A278108.P16230198457554451672

`gcd(A115994(n+1), A116979(A035363(n)))`
-/

namespace A278108.P16230198457554451672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115994 (n + 1)) (A116979 (A035363 n).toNat)

end

end A278108.P16230198457554451672

/-! ## A278108.P4055946406286268269

`A308073(lt[A125219(n+4), A125195(n+1)])`
-/

namespace A278108.P4055946406286268269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125219 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308073 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278108.P4055946406286268269

/-! ## A278108.P8793865899458123497

`A065120(A107326(n+1)%A093037(3*(n+1)))`
-/

namespace A278108.P8793865899458123497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (Int.tmod (A107326 (n + 1)) (A093037 (3 * (n + 1)))).toNat

end

end A278108.P8793865899458123497

/-! ## A278108.P13386815458326258137

`A302035(A302030(n+2))%A302019(3*(n+1))`
-/

namespace A278108.P13386815458326258137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302035 (A302030 (n + 2)).toNat) (A302019 (3 * (n + 1)))

end

end A278108.P13386815458326258137

/-! ## A278108.P1899881684028382330

`A109004(lt[A002260(n+1), A332089(2*n+5)])`
-/

namespace A278108.P1899881684028382330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332089 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278108.P1899881684028382330

/-!
# A278109: Irregular triangle read by rows: T(n,k) = floor(n/prime(k)^2) for 1 <= prime(k)^2 <= n.

The programs for A278109, there is no canonical definition to state claims against.
-/

/-! ## A278109.P17020254425425736220

`gcd(A019426(A022896(n+1)), A132085(n+1))`
-/

namespace A278109.P17020254425425736220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019426 (A022896 (n + 1)).toNat) (A132085 (n + 1))

end

end A278109.P17020254425425736220

/-! ## A278109.P6055586945548521518

`A048766(A101881(n))^A151878(A046779(n+2))`
-/

namespace A278109.P6055586945548521518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 (A101881 n).toNat : ℚ) ^ (A151878 (A046779 (n + 2)).toNat : ℤ)

end

end A278109.P6055586945548521518

/-! ## A278109.P16672654901988701308

`A048766(A327672(n+1))^A151878(A046779(n+2))`
-/

namespace A278109.P16672654901988701308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 (A327672 (n + 1)).toNat : ℚ) ^ (A151878 (A046779 (n + 2)).toNat : ℤ)

end

end A278109.P16672654901988701308

/-! ## A278109.P1345207768391758629

`A262190(and(A281991(n+1), A282005(n)))`
-/

namespace A278109.P1345207768391758629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (Int.land (A281991 (n + 1)) (A282005 n)).toNat

end

end A278109.P1345207768391758629

/-! ## A278109.P6689279061854962816

`A070939(A239660(3*n+5)%A261172(2*n+1))`
-/

namespace A278109.P6689279061854962816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A239660 (3 * n + 5)) (A261172 (2 * n + 1))).toNat

end

end A278109.P6689279061854962816

/-!
# A278110: a(n) = Product_{k=1..A056811(n)} A000040(k)^A278109(n,k).

The programs for A278110, the canonical program `A278110.P6513647593467893847` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278110 has offset 1).

The definition of A278110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278110.P6513647593467893847

`∏[∏{p}[(n+1)/∏{p}[n+1, #], #]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278110

/-- `∏[∏{p}[(n+1)/∏{p}[n+1, #], #]]` -/
def P6513647593467893847.Spec : Prop :=
  ∀ n, (P6513647593467893847.a n : ℤ) = A278110 (n + 1)

theorem P6513647593467893847.correct : P6513647593467893847.Spec := by
  intro n
  simp only [A278110, Nat.add_sub_cancel]

end A278110

/-! ## A278110.P12919635685121272723

`∏[A071773(n+1)]`
-/

namespace A278110.P12919635685121272723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P12919635685121272723

namespace A278110

/-- `∏[A071773(n+1)]` -/
def P12919635685121272723.Spec : Prop :=
  ∀ n, P12919635685121272723.a n = A278110 (n + 1)

end A278110

/-! ## A278110.P11943401597998028191

`∏[gcd(∑{p}[n+1, (n+1)/#], A007947(n+1))]`
-/

namespace A278110.P11943401597998028191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (A007947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P11943401597998028191

namespace A278110

/-- `∏[gcd(∑{p}[n+1, (n+1)/#], A007947(n+1))]` -/
def P11943401597998028191.Spec : Prop :=
  ∀ n, (P11943401597998028191.a n : ℤ) = A278110 (n + 1)

end A278110

/-! ## A278110.P10632396185410162477

`∏[A000188(A007948(n+1))]`
-/

namespace A278110.P10632396185410162477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P10632396185410162477

namespace A278110

/-- `∏[A000188(A007948(n+1))]` -/
def P10632396185410162477.Spec : Prop :=
  ∀ n, P10632396185410162477.a n = A278110 (n + 1)

end A278110

/-! ## A278110.P7201850354437102727

`∏[A000188(A058035(n+1))]`
-/

namespace A278110.P7201850354437102727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A058035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P7201850354437102727

namespace A278110

/-- `∏[A000188(A058035(n+1))]` -/
def P7201850354437102727.Spec : Prop :=
  ∀ n, P7201850354437102727.a n = A278110 (n + 1)

end A278110

/-! ## A278110.P8086343737843685018

`∏[A348036(A000188(n+1))]`
-/

namespace A278110.P8086343737843685018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P8086343737843685018

namespace A278110

/-- `∏[A348036(A000188(n+1))]` -/
def P8086343737843685018.Spec : Prop :=
  ∀ n, P8086343737843685018.a n = A278110 (n + 1)

end A278110

/-! ## A278110.P16438906438056106818

`∏[A007947(n+1)/A055231(n+1)]`
-/

namespace A278110.P16438906438056106818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P16438906438056106818

namespace A278110

/-- `∏[A007947(n+1)/A055231(n+1)]` -/
def P16438906438056106818.Spec : Prop :=
  ∀ n, P16438906438056106818.a n = (A278110 (n + 1) : ℚ)

end A278110

/-! ## A278110.P1289874146398364934

`∏[gcd(A003557(n+1), A336965(n+1))]`
-/

namespace A278110.P1289874146398364934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A336965 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P1289874146398364934

namespace A278110

/-- `∏[gcd(A003557(n+1), A336965(n+1))]` -/
def P1289874146398364934.Spec : Prop :=
  ∀ n, (P1289874146398364934.a n : ℤ) = A278110 (n + 1)

end A278110

/-! ## A278110.P581238006379253971

`∏[A336643(A336644(n+1)+A336643(n+1))]`
-/

namespace A278110.P581238006379253971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A336644 (n + 1) + A336643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P581238006379253971

namespace A278110

/-- `∏[A336643(A336644(n+1)+A336643(n+1))]` -/
def P581238006379253971.Spec : Prop :=
  ∀ n, P581238006379253971.a n = A278110 (n + 1)

end A278110

/-! ## A278110.P12571976453233496571

`∏[A055231(A007947(n+1)*A055231(n+1))]`
-/

namespace A278110.P12571976453233496571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A007947 (n + 1) * A055231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278110.P12571976453233496571

namespace A278110

/-- `∏[A055231(A007947(n+1)*A055231(n+1))]` -/
def P12571976453233496571.Spec : Prop :=
  ∀ n, P12571976453233496571.a n = A278110 (n + 1)

end A278110

/-!
# A278112: Triangle T(n,k) = floor(n sqrt(2/k)) for 1 <= k <= 2n^2, read by rows.

The programs for A278112, there is no canonical definition to state claims against.
-/

/-! ## A278112.P13185567601734419318

`A000196(A278111(n+1))`
-/

namespace A278112.P13185567601734419318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A278111 (n + 1)).toNat

end

end A278112.P13185567601734419318

/-!
# A278113: Triangle T(n,k) = A278112(n,A000040(k)) for 1 <= k <= A278114(n), read by rows.

The programs for A278113, there is no canonical definition to state claims against.
-/

/-! ## A278113.P14351597752783125975

`A000188(A278115(n+1))`
-/

namespace A278113.P14351597752783125975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A278115 (n + 1)).toNat

end

end A278113.P14351597752783125975

/-! ## A278113.P982955992981588910

`A337101(2*A278115(n+1))`
-/

namespace A278113.P982955992981588910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A278115 (n + 1)).toNat

end

end A278113.P982955992981588910

/-! ## A278113.P5208880523329134035

`A329888(A278115(n+1)%A004771(n))`
-/

namespace A278113.P5208880523329134035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (Int.tmod (A278115 (n + 1)) (A004771 n)).toNat

end

end A278113.P5208880523329134035

/-! ## A278113.P9895202169042850744

`A329888(A278115(n+1))%A004767(n)`
-/

namespace A278113.P9895202169042850744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329888 (A278115 (n + 1)).toNat) (A004767 n)

end

end A278113.P9895202169042850744

/-! ## A278113.P16804687510612499526

`A329888(lcm(A033999(n), A278115(n+1)))`
-/

namespace A278113.P16804687510612499526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (Int.lcm (A033999 n) (A278115 (n + 1)))

end

end A278113.P16804687510612499526

/-! ## A278113.P579971923169921754

`or(A000007(n), A329888(A278115(n+1)))`
-/

namespace A278113.P579971923169921754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A329888 (A278115 (n + 1)).toNat)

end

end A278113.P579971923169921754

/-!
# A278114: Number of primes <= 2n^2.

The programs for A278114, the canonical program `A278114.P18402708392266180151` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278114 has offset 1).

The definition of A278114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278114.P18402708392266180151

`A000720(A001105(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A278114

/-- `A000720(A001105(n+1))` -/
def P18402708392266180151.Spec : Prop :=
  ∀ n, P18402708392266180151.a n = A278114 (n + 1)

theorem P18402708392266180151.correct : P18402708392266180151.Spec := by
  intro n
  simp only [A278114, Nat.add_sub_cancel]

end A278114

/-! ## A278114.P10539254984587999959

`∑[A285269(n)]+1`
-/

namespace A278114.P10539254984587999959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278114.P10539254984587999959

namespace A278114

/-- `∑[A285269(n)]+1` -/
def P10539254984587999959.Spec : Prop :=
  ∀ n, P10539254984587999959.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P15893817650590931383

`∑[A285786(n+1)]`
-/

namespace A278114.P15893817650590931383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278114.P15893817650590931383

namespace A278114

/-- `∑[A285786(n+1)]` -/
def P15893817650590931383.Spec : Prop :=
  ∀ n, P15893817650590931383.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P4815215309698988538

`A139328(n+1)+1`
-/

namespace A278114.P4815215309698988538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139328 (n + 1) + 1

end

end A278114.P4815215309698988538

namespace A278114

/-- `A139328(n+1)+1` -/
def P4815215309698988538.Spec : Prop :=
  ∀ n, P4815215309698988538.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P14168994538029149619

`(n+1)²-∑[A289279(n+1)]`
-/

namespace A278114.P14168994538029149619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278114.P14168994538029149619

namespace A278114

/-- `(n+1)²-∑[A289279(n+1)]` -/
def P14168994538029149619.Spec : Prop :=
  ∀ n, P14168994538029149619.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P7012923860378949984

`a(n-1)+A285786(n+1)%A000056(n+1)` with `a(0)=1`
-/

namespace A278114.P7012923860378949984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A285786 (n + 1)) (A000056 (n + 1))

end

end A278114.P7012923860378949984

namespace A278114

/-- `a(n-1)+A285786(n+1)%A000056(n+1)` -/
def P7012923860378949984.Spec : Prop :=
  ∀ n, P7012923860378949984.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P18284453329078907458

`∑[A105149(2*n+1)+A105149(2*n)]`
-/

namespace A278114.P18284453329078907458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (2 * n + 1) + A105149 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278114.P18284453329078907458

namespace A278114

/-- `∑[A105149(2*n+1)+A105149(2*n)]` -/
def P18284453329078907458.Spec : Prop :=
  ∀ n, P18284453329078907458.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P7500980992031167799

`a(n-1)+and(A118883(n+1), A285786(n+1))` with `a(0)=1`
-/

namespace A278114.P7500980992031167799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (A118883 (n + 1)) (A285786 (n + 1))

end

end A278114.P7500980992031167799

namespace A278114

/-- `a(n-1)+and(A118883(n+1), A285786(n+1))` -/
def P7500980992031167799.Spec : Prop :=
  ∀ n, P7500980992031167799.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P1717022865187603047

`a(n-1)+and(A087323(n), A285786(n+1))` with `a(0)=1`
-/

namespace A278114.P1717022865187603047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (A087323 n) (A285786 (n + 1))

end

end A278114.P1717022865187603047

namespace A278114

/-- `a(n-1)+and(A087323(n), A285786(n+1))` -/
def P1717022865187603047.Spec : Prop :=
  ∀ n, P1717022865187603047.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P12307070974091707248

`A000720(2*(n+1)²)`
-/

namespace A278114.P12307070974091707248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1) ^ 2)

end

end A278114.P12307070974091707248

namespace A278114

/-- `A000720(2*(n+1)²)` -/
def P12307070974091707248.Spec : Prop :=
  ∀ n, P12307070974091707248.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P6101063425477870887

`A099802((n+1)²)`
-/

namespace A278114.P6101063425477870887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 ((n + 1) ^ 2)

end

end A278114.P6101063425477870887

namespace A278114

/-- `A099802((n+1)²)` -/
def P6101063425477870887.Spec : Prop :=
  ∀ n, P6101063425477870887.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P931600549500495964

`(n+1)²-A210469((n+1)²)`
-/

namespace A278114.P931600549500495964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A210469 ((n + 1) ^ 2)

end

end A278114.P931600549500495964

namespace A278114

/-- `(n+1)²-A210469((n+1)²)` -/
def P931600549500495964.Spec : Prop :=
  ∀ n, P931600549500495964.a n = A278114 (n + 1)

end A278114

/-! ## A278114.P7227116015184067965

`record[A000720(2*(n+1))*A010052(n+1)]`
-/

namespace A278114.P7227116015184067965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) * A010052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278114.P7227116015184067965

namespace A278114

/-- `record[A000720(2*(n+1))*A010052(n+1)]` -/
def P7227116015184067965.Spec : Prop :=
  ∀ n, P7227116015184067965.a n = A278114 (n + 1)

end A278114

/-!
# A278116: a(n) is the largest j such that A278115(n,k) strictly decreases for k=1..j.

The programs for A278116, there is no canonical definition to state claims against.
-/

/-! ## A278116.P12449687532077814624

`Δ[record[A278118(n+1)+n]-(n+1)]`
-/

namespace A278116.P12449687532077814624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278118 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278116.P12449687532077814624

/-! ## A278116.P2633717417844657859

`A052018(Δ[record[A278118(n+1)+n]])`
-/

namespace A278116.P2633717417844657859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278118 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (f1 (n + 1) - f1 n).toNat

end

end A278116.P2633717417844657859

/-! ## A278116.P13406386111867717930

`A323048(Δ[record[A278118(n+1)+n]])`
-/

namespace A278116.P13406386111867717930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278118 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (f1 (n + 1) - f1 n).toNat

end

end A278116.P13406386111867717930

/-! ## A278116.P14521670522544915337

`A259361(Δ[record[A278118(n+1)+n]]²)`
-/

namespace A278116.P14521670522544915337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278118 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A278116.P14521670522544915337

/-! ## A278116.P2046093492706673487

`Δ[A001489(n)+record[A278118(n+1)+n]]`
-/

namespace A278116.P2046093492706673487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278118 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278116.P2046093492706673487

/-! ## A278116.P11662641510836992689

`Δ[A022971(n)+record[A278118(n+1)+n]]`
-/

namespace A278116.P11662641510836992689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278118 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022971 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278116.P11662641510836992689

/-!
# A278118: Irregular triangle T(n,k) = A278113(n,k) for 1 <= k <= A278116(n), read by rows.

The programs for A278118, there is no canonical definition to state claims against.
-/

/-! ## A278118.P9674417717628102030

`A329888(A278117(n+1))`
-/

namespace A278118.P9674417717628102030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A278117 (n + 1)).toNat

end

end A278118.P9674417717628102030

/-! ## A278118.P15371514939717821993

`A337101(2*A278117(n+1))`
-/

namespace A278118.P15371514939717821993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A278117 (n + 1)).toNat

end

end A278118.P15371514939717821993

/-! ## A278118.P10448620451300290674

`A057918(A278117(C(n+1, n)))+1`
-/

namespace A278118.P10448620451300290674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278117 (Nat.choose (n + 1) n)).toNat + 1

end

end A278118.P10448620451300290674

/-! ## A278118.P7422733900723564470

`A057918(A278117(2*n+1-n))+1`
-/

namespace A278118.P7422733900723564470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278117 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat + 1

end

end A278118.P7422733900723564470

/-! ## A278118.P6940538578472103054

`A057427(n)*A057918(A278117(n+1))+1`
-/

namespace A278118.P6940538578472103054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A057918 (A278117 (n + 1)).toNat + 1

end

end A278118.P6940538578472103054

/-! ## A278118.P4505606557267205008

`A000188(2*A278117(n+1)-A278117(n+1))`
-/

namespace A278118.P4505606557267205008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A278117 (n + 1) - A278117 (n + 1)).toNat

end

end A278118.P4505606557267205008

/-!
# A278119: a(n) is the index of the first occurrence of n in A278116.

The programs for A278119, there is no canonical definition to state claims against.
-/

/-! ## A278119.P3442483539670966806

`A007306((n+1)²/∏{p}[n+1, #]*A082938(n))`
-/

namespace A278119.P3442483539670966806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A082938 n : ℚ))).toNat

end

end A278119.P3442483539670966806

/-! ## A278119.P5996871466068559622

`A326848(A071062(n+1)-A040039(n))`
-/

namespace A278119.P5996871466068559622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (A071062 (n + 1) - A040039 n).toNat

end

end A278119.P5996871466068559622

/-!
# A278120: a(n) is numerator of rational z(n) associated with the non-orientable map asymptotics constant p((n+1)/2).

The programs for A278120, there is no canonical definition to state claims against.
-/

/-! ## A278120.P7947085768695236513

`A317558(A327038(n)+A022171(n))`
-/

namespace A278120.P7947085768695236513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317558 (A327038 n + A022171 n).toNat

end

end A278120.P7947085768695236513

/-!
# A278121: a(n) is denominator of rational z(n) associated with the non-orientable map asymptotics constant p((n+1)/2).

The programs for A278121, there is no canonical definition to state claims against.
-/

/-! ## A278121.P14601387999610159328

`A000203(A280992(n+1))*A282022(n)`
-/

namespace A278121.P14601387999610159328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A280992 (n + 1)).toNat * A282022 n

end

end A278121.P14601387999610159328

/-!
# A278122: a(n) = 204*2^n - 248.

The programs for A278122, the canonical program `A278122.P2623048855376779723` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278122 has offset 1).

The definition of A278122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `204*2^(n+1)-248` (program `A278122.P2623048855376779723`, by `A278122.P2623048855376779723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278122.P2623048855376779723

`204*2^(n+1)-248`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278122

/-- `204*2^(n+1)-248` -/
def P2623048855376779723.Spec : Prop :=
  ∀ n, P2623048855376779723.a n = A278122 (n + 1)

theorem P2623048855376779723.correct : P2623048855376779723.Spec := by
  intro n
  simp only [A278122, Nat.add_sub_cancel]

end A278122

/-! ## A278122.P1386841115639271539

`4*(A305159(n)+16)`
-/

namespace A278122.P1386841115639271539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A305159 n + 16)

end

end A278122.P1386841115639271539

namespace A278122

/-- `4*(A305159(n)+16)` -/
def P1386841115639271539.Spec : Prop :=
  ∀ n, P1386841115639271539.a n = A278122 (n + 1)

theorem P1386841115639271539.correct : P1386841115639271539.Spec := by
  intro n
  simp only [A278122, Nat.add_sub_cancel, A278122.P1386841115639271539.a, A278122.P2623048855376779723.a, A305159, A305159.P9334831846603204424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278122

/-! ## A278122.P608877184452429962

`2*(A304377(n+1)-28)`
-/

namespace A278122.P608877184452429962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A304377 (n + 1) - 28)

end

end A278122.P608877184452429962

namespace A278122

/-- `2*(A304377(n+1)-28)` -/
def P608877184452429962.Spec : Prop :=
  ∀ n, P608877184452429962.a n = A278122 (n + 1)

theorem P608877184452429962.correct : P608877184452429962.Spec := by
  intro n
  simp only [A278122, Nat.add_sub_cancel, A278122.P608877184452429962.a, A278122.P2623048855376779723.a, A304377, A304377.P596650209759994536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278122

/-!
# A278123: a(n) = 247*2^n - 300.

The programs for A278123, the canonical program `A278123.P10981615654457953070` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278123 has offset 1).

The definition of A278123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `247*2^(n+1)-300` (program `A278123.P10981615654457953070`, by `A278123.P10981615654457953070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278123.P10981615654457953070

`247*2^(n+1)-300`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278123

/-- `247*2^(n+1)-300` -/
def P10981615654457953070.Spec : Prop :=
  ∀ n, P10981615654457953070.a n = A278123 (n + 1)

theorem P10981615654457953070.correct : P10981615654457953070.Spec := by
  intro n
  simp only [A278123, Nat.add_sub_cancel]

end A278123

/-!
# A278124: a(n) = 172*2^n - 176.

The programs for A278124, the canonical program `A278124.P9819966435772509039` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278124 has offset 0).

The definition of A278124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `172*2^n-176` (program `A278124.P9819966435772509039`, by `A278124.P9819966435772509039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278124.P9819966435772509039

`172*2^n-176`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278124

/-- `172*2^n-176` -/
def P9819966435772509039.Spec : Prop :=
  ∀ n, P9819966435772509039.a n = A278124 n

theorem P9819966435772509039.correct : P9819966435772509039.Spec := by
  intro n
  simp only [A278124]

end A278124

/-! ## A278124.P10921813849600687369

`4*(43*A000225(n)-1)`
-/

namespace A278124.P10921813849600687369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (43 * A000225 n - 1)

end

end A278124.P10921813849600687369

namespace A278124

/-- `4*(43*A000225(n)-1)` -/
def P10921813849600687369.Spec : Prop :=
  ∀ n, P10921813849600687369.a n = A278124 n

theorem P10921813849600687369.correct : P10921813849600687369.Spec := by
  intro n
  simp only [A278124, Nat.add_sub_cancel, A278124.P10921813849600687369.a, A278124.P9819966435772509039.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278124

/-!
# A278125: a(n) = 225*2^n - 235.

The programs for A278125, the canonical program `A278125.P6840228949812682664` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278125 has offset 0).

The definition of A278125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*2^n-235` (program `A278125.P6840228949812682664`, by `A278125.P6840228949812682664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278125.P6840228949812682664

`225*2^n-235`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278125

/-- `225*2^n-235` -/
def P6840228949812682664.Spec : Prop :=
  ∀ n, P6840228949812682664.a n = A278125 n

theorem P6840228949812682664.correct : P6840228949812682664.Spec := by
  intro n
  simp only [A278125]

end A278125

/-!
# A278126: a(n) = 78*n + 66.

The programs for A278126, the canonical program `A278126.P3720219630348338549` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278126 has offset 0).

The definition of A278126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `78*n+66` (program `A278126.P3720219630348338549`, by `A278126.P3720219630348338549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278126.P3720219630348338549

`78*n+66`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278126

/-- `78*n+66` -/
def P3720219630348338549.Spec : Prop :=
  ∀ n, (P3720219630348338549.a n : ℤ) = A278126 n

theorem P3720219630348338549.correct : P3720219630348338549.Spec := by
  intro n
  simp only [A278126]

end A278126

/-!
# A278127: a(n) = 99*n + 71.

The programs for A278127, the canonical program `A278127.P15813718755869893645` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278127 has offset 0).

The definition of A278127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `99*n+71` (program `A278127.P15813718755869893645`, by `A278127.P15813718755869893645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278127.P15813718755869893645

`99*n+71`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278127

/-- `99*n+71` -/
def P15813718755869893645.Spec : Prop :=
  ∀ n, (P15813718755869893645.a n : ℤ) = A278127 n

theorem P15813718755869893645.correct : P15813718755869893645.Spec := by
  intro n
  simp only [A278127]

end A278127

/-!
# A278128: a(n) = 288*2^n - 156.

The programs for A278128, the canonical program `A278128.P14829179894391088561` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278128 has offset 0).

The definition of A278128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `288*2^n-156` (program `A278128.P14829179894391088561`, by `A278128.P14829179894391088561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278128.P14829179894391088561

`288*2^n-156`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278128

/-- `288*2^n-156` -/
def P14829179894391088561.Spec : Prop :=
  ∀ n, P14829179894391088561.a n = A278128 n

theorem P14829179894391088561.correct : P14829179894391088561.Spec := by
  intro n
  simp only [A278128]

end A278128

/-! ## A278128.P18428494942952982905

`6*(A305065(n)-2)`
-/

namespace A278128.P18428494942952982905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A305065 n - 2)

end

end A278128.P18428494942952982905

namespace A278128

/-- `6*(A305065(n)-2)` -/
def P18428494942952982905.Spec : Prop :=
  ∀ n, P18428494942952982905.a n = A278128 n

theorem P18428494942952982905.correct : P18428494942952982905.Spec := by
  intro n
  simp only [A278128, Nat.add_sub_cancel, A278128.P18428494942952982905.a, A278128.P14829179894391088561.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278128

/-! ## A278128.P11119190785594314721

`6*(A182466(n)-10)`
-/

namespace A278128.P11119190785594314721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A182466 n - 10)

end

end A278128.P11119190785594314721

namespace A278128

/-- `6*(A182466(n)-10)` -/
def P11119190785594314721.Spec : Prop :=
  ∀ n, P11119190785594314721.a n = A278128 n

end A278128

/-! ## A278128.P13349575435264939827

`12*(A182461(n)-5)`
-/

namespace A278128.P13349575435264939827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A182461 n - 5)

end

end A278128.P13349575435264939827

namespace A278128

/-- `12*(A182461(n)-5)` -/
def P13349575435264939827.Spec : Prop :=
  ∀ n, P13349575435264939827.a n = A278128 n

end A278128

/-! ## A278128.P7363261935287932201

`6*(A248877(n+1)-1)`
-/

namespace A278128.P7363261935287932201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A248877 (n + 1) - 1)

end

end A278128.P7363261935287932201

namespace A278128

/-- `6*(A248877(n+1)-1)` -/
def P7363261935287932201.Spec : Prop :=
  ∀ n, P7363261935287932201.a n = A278128 n

end A278128

/-! ## A278128.P11121115556141580533

`3*(2*(∑[8*Δ[A033484(n)]]-3)+2)`
-/

namespace A278128.P11121115556141580533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * (∑ j ∈ Finset.range (n + 1), f1 j - 3) + 2)

end

end A278128.P11121115556141580533

namespace A278128

/-- `3*(2*(∑[8*Δ[A033484(n)]]-3)+2)` -/
def P11121115556141580533.Spec : Prop :=
  ∀ n, P11121115556141580533.a n = A278128 n

end A278128

/-!
# A278129: a(n) = 348*2^n - 188.

The programs for A278129, the canonical program `A278129.P745235431532634455` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278129 has offset 0).

The definition of A278129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `348*2^n-188` (program `A278129.P745235431532634455`, by `A278129.P745235431532634455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278129.P745235431532634455

`348*2^n-188`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278129

/-- `348*2^n-188` -/
def P745235431532634455.Spec : Prop :=
  ∀ n, P745235431532634455.a n = A278129 n

theorem P745235431532634455.correct : P745235431532634455.Spec := by
  intro n
  simp only [A278129]

end A278129

/-! ## A278129.P17143911757572753945

`4*∑[2*a(n-1)]` with `a(0)=40, a(1)=87`
-/

namespace A278129.P17143911757572753945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [40, 87] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278129.P17143911757572753945

namespace A278129

/-- `4*∑[2*a(n-1)]` -/
def P17143911757572753945.Spec : Prop :=
  ∀ n, (P17143911757572753945.a n : ℤ) = A278129 n

end A278129

/-! ## A278129.P2852804619894729488

`abs(∑[a(n-1)+a(n-1)+1]+n+1)` with `a(0)=159, a(1)=347`
-/

namespace A278129.P2852804619894729488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [159, 347] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A278129.P2852804619894729488

namespace A278129

/-- `abs(∑[a(n-1)+a(n-1)+1]+n+1)` -/
def P2852804619894729488.Spec : Prop :=
  ∀ n, (P2852804619894729488.a n : ℤ) = A278129 n

end A278129

/-! ## A278129.P319820641559309124

`4*(A304613(n)-2)`
-/

namespace A278129.P319820641559309124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A304613 n - 2)

end

end A278129.P319820641559309124

namespace A278129

/-- `4*(A304613(n)-2)` -/
def P319820641559309124.Spec : Prop :=
  ∀ n, P319820641559309124.a n = A278129 n

theorem P319820641559309124.correct : P319820641559309124.Spec := by
  intro n
  simp only [A278129, Nat.add_sub_cancel, A278129.P319820641559309124.a, A278129.P745235431532634455.a, A304613, A304613.P12481074168801310373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278129

/-! ## A278129.P2832720314961456784

`4*(A304171(n)-9)`
-/

namespace A278129.P2832720314961456784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A304171 n - 9)

end

end A278129.P2832720314961456784

namespace A278129

/-- `4*(A304171(n)-9)` -/
def P2832720314961456784.Spec : Prop :=
  ∀ n, P2832720314961456784.a n = A278129 n

theorem P2832720314961456784.correct : P2832720314961456784.Spec := by
  intro n
  simp only [A278129, Nat.add_sub_cancel, A278129.P2832720314961456784.a, A278129.P745235431532634455.a, A304171, A304171.P15913547196741165118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278129

/-!
# A278130: a(n) = 492*2^n - 222.

The programs for A278130, the canonical program `A278130.P15978207197530667854` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278130 has offset 0).

The definition of A278130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `492*2^n-222` (program `A278130.P15978207197530667854`, by `A278130.P15978207197530667854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278130.P15978207197530667854

`492*2^n-222`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278130

/-- `492*2^n-222` -/
def P15978207197530667854.Spec : Prop :=
  ∀ n, P15978207197530667854.a n = A278130 n

theorem P15978207197530667854.correct : P15978207197530667854.Spec := by
  intro n
  simp only [A278130]

end A278130

/-! ## A278130.P1741871618802597062

`3*(A305157(n)+25)`
-/

namespace A278130.P1741871618802597062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A305157 n + 25)

end

end A278130.P1741871618802597062

namespace A278130

/-- `3*(A305157(n)+25)` -/
def P1741871618802597062.Spec : Prop :=
  ∀ n, P1741871618802597062.a n = A278130 n

theorem P1741871618802597062.correct : P1741871618802597062.Spec := by
  intro n
  simp only [A278130, Nat.add_sub_cancel, A278130.P1741871618802597062.a, A278130.P15978207197530667854.a, A305157, A305157.P2673244396792364241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278130

/-! ## A278130.P15186450833803709463

`3*(A305166(n)+66)`
-/

namespace A278130.P15186450833803709463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A305166 n + 66)

end

end A278130.P15186450833803709463

namespace A278130

/-- `3*(A305166(n)+66)` -/
def P15186450833803709463.Spec : Prop :=
  ∀ n, P15186450833803709463.a n = A278130 n

theorem P15186450833803709463.correct : P15186450833803709463.Spec := by
  intro n
  simp only [A278130, Nat.add_sub_cancel, A278130.P15186450833803709463.a, A278130.P15978207197530667854.a, A305166, A305166.P6974367253787718976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278130

/-! ## A278130.P9635535425327104150

`2*(A305160(n+1)-12)`
-/

namespace A278130.P9635535425327104150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305160 (n + 1) - 12)

end

end A278130.P9635535425327104150

namespace A278130

/-- `2*(A305160(n+1)-12)` -/
def P9635535425327104150.Spec : Prop :=
  ∀ n, P9635535425327104150.a n = A278130 n

theorem P9635535425327104150.correct : P9635535425327104150.Spec := by
  intro n
  simp only [A278130, Nat.add_sub_cancel, A278130.P9635535425327104150.a, A278130.P15978207197530667854.a, A305160, A305160.P729559538405547331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278130

/-! ## A278130.P1914339120812417298

`2*(A304831(n+1)+24)`
-/

namespace A278130.P1914339120812417298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A304831 (n + 1) + 24)

end

end A278130.P1914339120812417298

namespace A278130

/-- `2*(A304831(n+1)+24)` -/
def P1914339120812417298.Spec : Prop :=
  ∀ n, P1914339120812417298.a n = A278130 n

theorem P1914339120812417298.correct : P1914339120812417298.Spec := by
  intro n
  simp only [A278130, Nat.add_sub_cancel, A278130.P1914339120812417298.a, A278130.P15978207197530667854.a, A304831, A304831.P15050182671750320375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278130

/-!
# A278131: a(n) = 591*2^n - 273.

The programs for A278131, the canonical program `A278131.P15510299594731152740` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278131 has offset 0).

The definition of A278131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `591*2^n-273` (program `A278131.P15510299594731152740`, by `A278131.P15510299594731152740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278131.P15510299594731152740

`591*2^n-273`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278131

/-- `591*2^n-273` -/
def P15510299594731152740.Spec : Prop :=
  ∀ n, P15510299594731152740.a n = A278131 n

theorem P15510299594731152740.correct : P15510299594731152740.Spec := by
  intro n
  simp only [A278131]

end A278131

/-!
# A278132: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having height k (n>=2, 1<=k<=n-1).

The programs for A278132, there is no canonical definition to state claims against.
-/

/-! ## A278132.P13063092856809702977

`A048266(A228275(n)+A009998(n))`
-/

namespace A278132.P13063092856809702977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A228275 n + A009998 n).toNat

end

end A278132.P13063092856809702977

/-! ## A278132.P14270504746729789597

`A262995(A330964(n)^A128227(n))`
-/

namespace A278132.P14270504746729789597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262995 (SequenceMachineLib.roundAway ((A330964 n : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A278132.P14270504746729789597

/-! ## A278132.P1988021085021060155

`gcd(A008683(A173585(n)), A102035(n))`
-/

namespace A278132.P1988021085021060155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A173585 n).toNat) (A102035 n)

end

end A278132.P1988021085021060155

/-! ## A278132.P2240475839893369592

`or(A118344(n), A328003(A112500(n)))`
-/

namespace A278132.P2240475839893369592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118344 n) (A328003 (A112500 n).toNat)

end

end A278132.P2240475839893369592

/-! ## A278132.P17717073124841488996

`A370174(n)+A010060(A090318(n+1))`
-/

namespace A278132.P17717073124841488996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370174 n + A010060 (A090318 (n + 1)).toNat

end

end A278132.P17717073124841488996

/-!
# A278133: The sum of the heights of all bargraphs of semiperimeter n (n>=2).

The programs for A278133, there is no canonical definition to state claims against.
-/

/-! ## A278133.P13245427401651876112

`A005229(∑[A017936(n+1)])`
-/

namespace A278133.P13245427401651876112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278133.P13245427401651876112

/-! ## A278133.P11389254517029568062

`A023443(A000930(3*n+1)+A000108(n))`
-/

namespace A278133.P11389254517029568062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000930 (3 * n + 1) + A000108 n).toNat

end

end A278133.P11389254517029568062

/-! ## A278133.P14900038993864592660

`A110655(A020915(20*a(n-1)-n))` with `a(0)=1`
-/

namespace A278133.P14900038993864592660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110655 (A020915 (20 * a (n - 1) - (n : ℤ)).toNat).toNat

end

end A278133.P14900038993864592660

/-!
# A278135: Number of horizontal steps in the valleys of all bargraphs having semiperimeter n (n >=2).

The programs for A278135, there is no canonical definition to state claims against.
-/

/-! ## A278135.P6872190375969560474

`∑[∑[A273722(n+2)]]`
-/

namespace A278135.P6872190375969560474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273722 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278135.P6872190375969560474

/-! ## A278135.P12875030221016979817

`∑[A271941(n+2)-Δ[A105633(n)]]`
-/

namespace A278135.P12875030221016979817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278135.P12875030221016979817

/-! ## A278135.P18312946924663369335

`∑[A271941(n+2)-A086581(n+1)]`
-/

namespace A278135.P18312946924663369335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 2) - A086581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278135.P18312946924663369335

/-! ## A278135.P2345136305681423940

`∑[A271941(n+2)-A082582(n+2)]`
-/

namespace A278135.P2345136305681423940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 2) - A082582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278135.P2345136305681423940

/-! ## A278135.P1483909736603853227

`A273720(n+2)-∑[A082582(n+2)]`
-/

namespace A278135.P1483909736603853227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273720 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278135.P1483909736603853227

/-!
# A278136: Triangle read by rows: T(n,k) is the maximum number of disjoint subgraphs of the Fibonacci cube Gamma(n) that are isomorphic to the hypercube of dimension k.

The programs for A278136, there is no canonical definition to state claims against.
-/

/-! ## A278136.P7757391085707289394

`A087845(A248112(n+2))`
-/

namespace A278136.P7757391085707289394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A248112 (n + 2)).toNat

end

end A278136.P7757391085707289394

/-!
# A278137: Maximum number of disjoint subgraphs of the Fibonacci cube Gamma(n) that are isomorphic to the hypercube of dimension k, summed over all k.

The programs for A278137, the canonical program `A278137.P5646626363958040557` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278137 has offset 0).

The definition of A278137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278137.P5646626363958040557

`a(n-1)+2*a(n-2)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=8, a(4)=13`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278137

/-- `a(n-1)+2*a(n-2)-2*a(n-4)-a(n-5)` -/
def P5646626363958040557.Spec : Prop :=
  ∀ n, P5646626363958040557.a n = A278137 n

theorem P5646626363958040557.correct : P5646626363958040557.Spec := by
  intro n
  simp only [A278137]

end A278137

/-! ## A278137.P8248396831642126807

`2*A000045(n+2)-A000931(n+6)`
-/

namespace A278137.P8248396831642126807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) - A000931 (n + 6)

end

end A278137.P8248396831642126807

namespace A278137

/-- `2*A000045(n+2)-A000931(n+6)` -/
def P8248396831642126807.Spec : Prop :=
  ∀ n, P8248396831642126807.a n = A278137 n

end A278137

/-! ## A278137.P9977144470051645524

`A131298(n+2)-A000045(n+1)`
-/

namespace A278137.P9977144470051645524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131298 (n + 2) - A000045 (n + 1)

end

end A278137.P9977144470051645524

namespace A278137

/-- `A131298(n+2)-A000045(n+1)` -/
def P9977144470051645524.Spec : Prop :=
  ∀ n, P9977144470051645524.a n = A278137 n

end A278137

/-! ## A278137.P12417510391456139000

`A129973(n+3)+A000045(n+2)`
-/

namespace A278137.P12417510391456139000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129973 (n + 3) + A000045 (n + 2)

end

end A278137.P12417510391456139000

namespace A278137

/-- `A129973(n+3)+A000045(n+2)` -/
def P12417510391456139000.Spec : Prop :=
  ∀ n, P12417510391456139000.a n = A278137 n

end A278137

/-! ## A278137.P18343871362395912855

`A129973(n+3)+A053602(2*n+1)`
-/

namespace A278137.P18343871362395912855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129973 (n + 3) + A053602 (2 * n + 1)

end

end A278137.P18343871362395912855

namespace A278137

/-- `A129973(n+3)+A053602(2*n+1)` -/
def P18343871362395912855.Spec : Prop :=
  ∀ n, P18343871362395912855.a n = A278137 n

end A278137

/-! ## A278137.P17561530139748197576

`∑[A006355(n+1)-A000931(n+1)]+1`
-/

namespace A278137.P17561530139748197576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278137.P17561530139748197576

namespace A278137

/-- `∑[A006355(n+1)-A000931(n+1)]+1` -/
def P17561530139748197576.Spec : Prop :=
  ∀ n, P17561530139748197576.a n = A278137 n

end A278137

/-! ## A278137.P12880857146103752723

`A000045(n)+∑[A000045(n+1)-A000931(n+1)]`
-/

namespace A278137.P12880857146103752723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278137.P12880857146103752723

namespace A278137

/-- `A000045(n)+∑[A000045(n+1)-A000931(n+1)]` -/
def P12880857146103752723.Spec : Prop :=
  ∀ n, P12880857146103752723.a n = A278137 n

end A278137

/-! ## A278137.P3626014350786425035

`A000045(n+1)+A000032(n+1)-A134816(n+2)`
-/

namespace A278137.P3626014350786425035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000032 (n + 1) - A134816 (n + 2))

end

end A278137.P3626014350786425035

namespace A278137

/-- `A000045(n+1)+A000032(n+1)-A134816(n+2)` -/
def P3626014350786425035.Spec : Prop :=
  ∀ n, P3626014350786425035.a n = A278137 n

end A278137

/-! ## A278137.P5007854793119937141

`A000032(n+1)+A000071(n+1)-∑[A000931(n+1)]`
-/

namespace A278137.P5007854793119937141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A000071 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278137.P5007854793119937141

namespace A278137

/-- `A000032(n+1)+A000071(n+1)-∑[A000931(n+1)]` -/
def P5007854793119937141.Spec : Prop :=
  ∀ n, P5007854793119937141.a n = A278137 n

end A278137

/-! ## A278137.P12932477091256887730

`A038360(n+3)-A167821(n+1)`
-/

namespace A278137.P12932477091256887730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038360 (n + 3) - A167821 (n + 1)

end

end A278137.P12932477091256887730

namespace A278137

/-- `A038360(n+3)-A167821(n+1)` -/
def P12932477091256887730.Spec : Prop :=
  ∀ n, P12932477091256887730.a n = A278137 n

end A278137

/-!
# A278138: Primes p such that p+2, 3*p+2 and 3*p+8 are also primes.

The programs for A278138, there is no canonical definition to state claims against.
-/

/-! ## A278138.P4693090662028832150

`∩[A023210(n+1), A174913(n+1)]`
-/

namespace A278138.P4693090662028832150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P4693090662028832150

/-! ## A278138.P16735703307475398826

`∩[A023208(n+1)-2, A023208(n+1)]`
-/

namespace A278138.P16735703307475398826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P16735703307475398826

/-! ## A278138.P4881088048654648266

`∩[A162338(n+1)-2, A162338(n+1)]`
-/

namespace A278138.P4881088048654648266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P4881088048654648266

/-! ## A278138.P4420691657189241218

`∩[A023208(n+1), A058026(A023208(n+1))]`
-/

namespace A278138.P4420691657189241218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (A023208 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P4420691657189241218

/-! ## A278138.P15128659281449193994

`∩[A023208(n+1), A109606(A023208(n+2))]`
-/

namespace A278138.P15128659281449193994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A023208 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P15128659281449193994

/-!
# A278139: Primes, starting with a(1)=2, whose successive differences are increasing triangular numbers.

The programs for A278139, there is no canonical definition to state claims against.
-/

/-! ## A278139.P1082069625880464670

`A145236(A295964(n))`
-/

namespace A278139.P1082069625880464670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145236 (A295964 n).toNat

end

end A278139.P1082069625880464670

/-! ## A278139.P15585020254258071020

`A145236(A277643(n)+n)`
-/

namespace A278139.P15585020254258071020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145236 (A277643 n + (n : ℤ)).toNat

end

end A278139.P15585020254258071020

/-!
# A278142: Denominators of partial sums of a Ramanujan series converging to 2^(3/2)/(sqrt(Pi)*Gamma(3/4)^2) given in A278146.

The programs for A278142, there is no canonical definition to state claims against.
-/

/-! ## A278142.P10351499790077036499

`∏[gcd(4*n, 4^n)]^4`
-/

namespace A278142.P10351499790077036499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * n) (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A278142.P10351499790077036499

/-! ## A278142.P10159441525512474203

`A130036(n)²`
-/

namespace A278142.P10159441525512474203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130036 n ^ 2

end

end A278142.P10159441525512474203

/-! ## A278142.P432835756302340111

`A088802(n)^4`
-/

namespace A278142.P432835756302340111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088802 n ^ 4

end

end A278142.P432835756302340111

/-! ## A278142.P10855459548472010401

`16^A004134(n)`
-/

namespace A278142.P10855459548472010401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 : ℚ) ^ (A004134 n : ℤ)

end

end A278142.P10855459548472010401

/-! ## A278142.P12233631266876732683

`(4^n*A056982(n))²`
-/

namespace A278142.P12233631266876732683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) * A056982 n) ^ 2

end

end A278142.P12233631266876732683

/-!
# A278145: Denominator of partial sums of the m=1 member of an m-family of series considered by Hardy with value 4/Pi (see A088538).

The programs for A278145, there is no canonical definition to state claims against.
-/

/-! ## A278145.P15249984828615526358

`4^n*∏[gcd(2^n, ∑[2*n])]`
-/

namespace A278145.P15249984828615526358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A278145.P15249984828615526358

/-! ## A278145.P9557198490027590588

`A161737(n+2)/2`
-/

namespace A278145.P9557198490027590588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161737 (n + 2) : ℚ) / 2

end

end A278145.P9557198490027590588

/-! ## A278145.P4518260526718726647

`4^n*A001901(n)`
-/

namespace A278145.P4518260526718726647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001901 n

end

end A278145.P4518260526718726647

/-! ## A278145.P5336185984549055812

`A001901(Δ[n²])/2`
-/

namespace A278145.P5336185984549055812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001901 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A278145.P5336185984549055812

/-! ## A278145.P4121395663799528286

`∏[gcd(8^n, A033996(n))]`
-/

namespace A278145.P4121395663799528286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 ^ n : ℤ) (A033996 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A278145.P4121395663799528286

/-! ## A278145.P5769238728676997579

`A380950(2*(n+1))/2`
-/

namespace A278145.P5769238728676997579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380950 (2 * (n + 1)) : ℚ) / 2

end

end A278145.P5769238728676997579

/-! ## A278145.P12190238364123529065

`A113479(2*n+1)/4`
-/

namespace A278145.P12190238364123529065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113479 (2 * n + 1) : ℚ) / 4

end

end A278145.P12190238364123529065

/-! ## A278145.P13808911897973404949

`A046161(n)*A120777(n)`
-/

namespace A278145.P13808911897973404949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A120777 n

end

end A278145.P13808911897973404949

/-! ## A278145.P220136260059969871

`A004735(2*n+1)*A046161(n)`
-/

namespace A278145.P220136260059969871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004735 (2 * n + 1) * A046161 n

end

end A278145.P220136260059969871

/-! ## A278145.P8639994684607820373

`A006519(n+1)*A046161(n)*A046161(n)`
-/

namespace A278145.P8639994684607820373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A046161 n * A046161 n

end

end A278145.P8639994684607820373

/-!
# A278148: Triangle T(n, m) giving in row n the numerators of the fractions for the Farey dissection of order n.

The programs for A278148, there is no canonical definition to state claims against.
-/

/-! ## A278148.P3613314238114443670

`A001222(ceil(sqrt(A027743(n+1))))`
-/

namespace A278148.P3613314238114443670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈Real.sqrt (A027743 (n + 1) : ℝ)⌉.toNat

end

end A278148.P3613314238114443670

/-! ## A278148.P12924961471866764106

`A360998(∑[A047010(n)]+2)-1`
-/

namespace A278148.P12924961471866764106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360998 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 1

end

end A278148.P12924961471866764106

/-! ## A278148.P12397594801430551220

`A001221(A119137(n+1)+∑[char[1]+n]+1)`
-/

namespace A278148.P12397594801430551220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A119137 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A278148.P12397594801430551220

/-! ## A278148.P5159137320575686022

`A124762(A357183(n))+A124736(n)`
-/

namespace A278148.P5159137320575686022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A357183 n).toNat + A124736 n

end

end A278148.P5159137320575686022

/-! ## A278148.P15550521272036811531

`A053645(n+1)+A013595(A290114(n))`
-/

namespace A278148.P15550521272036811531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + A013595 (A290114 n).toNat

end

end A278148.P15550521272036811531

/-!
# A278149: Triangle T(n, m) giving in row n the denominators of the fractions for the Farey dissection of order n.

The programs for A278149, there is no canonical definition to state claims against.
-/

/-! ## A278149.P16926043057877510876

`A283297(n+1)+A055642(p?[A181338(n+1)])`
-/

namespace A278149.P16926043057877510876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (n + 1) + A055642 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A278149.P16926043057877510876

/-! ## A278149.P910366922712351521

`A001222(A081115(n+3)*A324886(n+1))`
-/

namespace A278149.P910366922712351521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A081115 (n + 3) * A324886 (n + 1)).toNat

end

end A278149.P910366922712351521

/-! ## A278149.P7652110854072557126

`A348367(A092945(n+1)*A280250(n+1))`
-/

namespace A278149.P7652110854072557126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348367 (A092945 (n + 1) * A280250 (n + 1)).toNat

end

end A278149.P7652110854072557126

/-!
# A278150: Number of n X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278150, there is no canonical definition to state claims against.
-/

/-! ## A278150.P12536963787902829566

`A278157(∑[4*n]+1)`
-/

namespace A278150.P12536963787902829566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278150.P12536963787902829566

/-! ## A278150.P14568701610949277216

`lcm(2, A278157(A001844(n)))`
-/

namespace A278150.P14568701610949277216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278157 (A001844 n).toNat)

end

end A278150.P14568701610949277216

/-! ## A278150.P16776706040073507259

`record[A003982(n)*A278157(n+1)]`
-/

namespace A278150.P16776706040073507259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A278157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278150.P16776706040073507259

/-! ## A278150.P5105400247254595271

`and(A057428(n), A278157(A001844(n)))`
-/

namespace A278150.P5105400247254595271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A278157 (A001844 n).toNat)

end

end A278150.P5105400247254595271

/-! ## A278150.P3127896640165998801

`A014963(15*(n+1))*A278157(A001844(n))`
-/

namespace A278150.P3127896640165998801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A278157 (A001844 n).toNat

end

end A278150.P3127896640165998801

/-!
# A278151: Number of n X 2 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278151, the canonical program `A278151.P14180582102302559336` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278151 has offset 1).

The definition of A278151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278151.P3846612923047233291

`ogf((-2x-x^2+x^3)/(-1+3x+x^2+x^3))`
-/

namespace A278151.P3846612923047233291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1] [1, -3, -1, -1] n

end

end A278151.P3846612923047233291

namespace A278151

/-- `ogf((-2x-x^2+x^3)/(-1+3x+x^2+x^3))` -/
def P3846612923047233291.Spec : Prop :=
  ∀ n, P3846612923047233291.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P14180582102302559336

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=22`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278151

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P14180582102302559336.Spec : Prop :=
  ∀ n, (P14180582102302559336.a n : ℤ) = A278151 (n + 1)

theorem P14180582102302559336.correct : P14180582102302559336.Spec := by
  intro n
  simp only [A278151, Nat.add_sub_cancel]

end A278151

/-! ## A278151.P14712068980081639704

`record[and((-1)^n, A100683(n+1))]`
-/

namespace A278151.P14712068980081639704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A100683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278151.P14712068980081639704

namespace A278151

/-- `record[and((-1)^n, A100683(n+1))]` -/
def P14712068980081639704.Spec : Prop :=
  ∀ n, P14712068980081639704.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P14869578304788248002

`A100683(2*n)+A000007(n)`
-/

namespace A278151.P14869578304788248002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + A000007 n

end

end A278151.P14869578304788248002

namespace A278151

/-- `A100683(2*n)+A000007(n)` -/
def P14869578304788248002.Spec : Prop :=
  ∀ n, P14869578304788248002.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P255356800728592183

`record[A000035(n)*A100683(n+1)]`
-/

namespace A278151.P255356800728592183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A100683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278151.P255356800728592183

namespace A278151

/-- `record[A000035(n)*A100683(n+1)]` -/
def P255356800728592183.Spec : Prop :=
  ∀ n, P255356800728592183.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P13097644090900763827

`A100683(2*n)+A141044(n+1)-1`
-/

namespace A278151.P13097644090900763827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + (A141044 (n + 1) - 1)

end

end A278151.P13097644090900763827

namespace A278151

/-- `A100683(2*n)+A141044(n+1)-1` -/
def P13097644090900763827.Spec : Prop :=
  ∀ n, P13097644090900763827.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P13917400032064946990

`A100683(2*n)+2-A036453(n+1)`
-/

namespace A278151.P13917400032064946990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + (2 - A036453 (n + 1))

end

end A278151.P13917400032064946990

namespace A278151

/-- `A100683(2*n)+2-A036453(n+1)` -/
def P13917400032064946990.Spec : Prop :=
  ∀ n, P13917400032064946990.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P13429161573383599836

`A100683(2*n)-(1-A141044(2*n))`
-/

namespace A278151.P13429161573383599836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) - (1 - A141044 (2 * n))

end

end A278151.P13429161573383599836

namespace A278151

/-- `A100683(2*n)-(1-A141044(2*n))` -/
def P13429161573383599836.Spec : Prop :=
  ∀ n, P13429161573383599836.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P9740452792157526797

`(1-A000007(2*n))*A100683(2*n)`
-/

namespace A278151.P9740452792157526797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 (2 * n)) * A100683 (2 * n)

end

end A278151.P9740452792157526797

namespace A278151

/-- `(1-A000007(2*n))*A100683(2*n)` -/
def P9740452792157526797.Spec : Prop :=
  ∀ n, P9740452792157526797.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P10312859397998825592

`A100683(2*n)%A000213(2*n+1)`
-/

namespace A278151.P10312859397998825592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100683 (2 * n)) (A000213 (2 * n + 1))

end

end A278151.P10312859397998825592

namespace A278151

/-- `A100683(2*n)%A000213(2*n+1)` -/
def P10312859397998825592.Spec : Prop :=
  ∀ n, P10312859397998825592.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P10000153261988176460

`A100683(2*n)+and(1, A000010(n+2))`
-/

namespace A278151.P10000153261988176460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + Int.land 1 (A000010 (n + 2))

end

end A278151.P10000153261988176460

namespace A278151

/-- `A100683(2*n)+and(1, A000010(n+2))` -/
def P10000153261988176460.Spec : Prop :=
  ∀ n, P10000153261988176460.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P17411615199716492738

`A100683(2*n)+1-A000045(ceil(n/(n+1)))`
-/

namespace A278151.P17411615199716492738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + (1 - A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat)

end

end A278151.P17411615199716492738

namespace A278151

/-- `A100683(2*n)+1-A000045(ceil(n/(n+1)))` -/
def P17411615199716492738.Spec : Prop :=
  ∀ n, P17411615199716492738.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P10652257252144949503

`char[A114112(n+1)]*A100683(A005843(n))`
-/

namespace A278151.P10652257252144949503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A100683 (A005843 n).toNat

end

end A278151.P10652257252144949503

namespace A278151

/-- `char[A114112(n+1)]*A100683(A005843(n))` -/
def P10652257252144949503.Spec : Prop :=
  ∀ n, P10652257252144949503.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P12291205571034308020

`A054251(A020639(n+1))*A100683(2*n)`
-/

namespace A278151.P12291205571034308020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 (A020639 (n + 1)).toNat * A100683 (2 * n)

end

end A278151.P12291205571034308020

namespace A278151

/-- `A054251(A020639(n+1))*A100683(2*n)` -/
def P12291205571034308020.Spec : Prop :=
  ∀ n, P12291205571034308020.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P9292041245880030278

`A100683(2*n)+A005843(n+1)-A114112(2*n+1)`
-/

namespace A278151.P9292041245880030278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + (A005843 (n + 1) - A114112 (2 * n + 1))

end

end A278151.P9292041245880030278

namespace A278151

/-- `A100683(2*n)+A005843(n+1)-A114112(2*n+1)` -/
def P9292041245880030278.Spec : Prop :=
  ∀ n, P9292041245880030278.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P12894314415954641409

`A196700(2*n+1)-A081172(2*n+1)`
-/

namespace A278151.P12894314415954641409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (2 * n + 1) - A081172 (2 * n + 1)

end

end A278151.P12894314415954641409

namespace A278151

/-- `A196700(2*n+1)-A081172(2*n+1)` -/
def P12894314415954641409.Spec : Prop :=
  ∀ n, P12894314415954641409.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P11187523949655135528

`A100683(2*n)+val(A100683(n+1), A100683(2*n+1))`
-/

namespace A278151.P11187523949655135528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (2 * n) + (SequenceMachineLib.valuation (A100683 (n + 1)).toNat (A100683 (2 * n + 1)).toNat : ℤ)

end

end A278151.P11187523949655135528

namespace A278151

/-- `A100683(2*n)+val(A100683(n+1), A100683(2*n+1))` -/
def P11187523949655135528.Spec : Prop :=
  ∀ n, P11187523949655135528.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P7406066233999554991

`A196700(2*n+1)-(A001590(2*n+1)+A000073(2*n))`
-/

namespace A278151.P7406066233999554991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (2 * n + 1) - (A001590 (2 * n + 1) + A000073 (2 * n))

end

end A278151.P7406066233999554991

namespace A278151

/-- `A196700(2*n+1)-(A001590(2*n+1)+A000073(2*n))` -/
def P7406066233999554991.Spec : Prop :=
  ∀ n, P7406066233999554991.a n = A278151 (n + 1)

end A278151

/-! ## A278151.P9983897347791600348

`A135491(2*n+1)-(A135491(2*n)+A081172(2*n+1))`
-/

namespace A278151.P9983897347791600348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (2 * n + 1) - (A135491 (2 * n) + A081172 (2 * n + 1))

end

end A278151.P9983897347791600348

namespace A278151

/-- `A135491(2*n+1)-(A135491(2*n)+A081172(2*n+1))` -/
def P9983897347791600348.Spec : Prop :=
  ∀ n, P9983897347791600348.a n = A278151 (n + 1)

end A278151

/-!
# A278152: Number of nX3 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278152, there is no canonical definition to state claims against.
-/

/-! ## A278152.P9297832296804380494

`A278157(∑[n+2]+4)`
-/

namespace A278152.P9297832296804380494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278152.P9297832296804380494

/-! ## A278152.P15292234441489004657

`A278157(A167614(n+1))%(11^n)`
-/

namespace A278152.P15292234441489004657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278157 (A167614 (n + 1)).toNat) (11 ^ n : ℤ)

end

end A278152.P15292234441489004657

/-! ## A278152.P12941823824045137946

`record[A278157(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A278152.P12941823824045137946
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278152.P12941823824045137946

/-! ## A278152.P14084897675732904886

`A057427(n)*A278157(A167614(n+1))`
-/

namespace A278152.P14084897675732904886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278157 (A167614 (n + 1)).toNat

end

end A278152.P14084897675732904886

/-! ## A278152.P7211084406738071486

`lcm(A160357(n), A278157(A167614(n+1)))`
-/

namespace A278152.P7211084406738071486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160357 n) (A278157 (A167614 (n + 1)).toNat)

end

end A278152.P7211084406738071486

/-!
# A278153: Number of nX4 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278153, there is no canonical definition to state claims against.
-/

/-! ## A278153.P9359066149041675904

`A278157(A141214(n)+7)`
-/

namespace A278153.P9359066149041675904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A141214 n + 7).toNat

end

end A278153.P9359066149041675904

/-! ## A278153.P7073725518966329457

`A278157(A052905(n)+9)`
-/

namespace A278153.P7073725518966329457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A052905 n + 9).toNat

end

end A278153.P7073725518966329457

/-! ## A278153.P15337559572052125162

`A278157(A055999(n)+10)`
-/

namespace A278153.P15337559572052125162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A055999 n + 10).toNat

end

end A278153.P15337559572052125162

/-! ## A278153.P11691943674153610728

`A278157(A167614(n+2)+1)`
-/

namespace A278153.P11691943674153610728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A167614 (n + 2) + 1).toNat

end

end A278153.P11691943674153610728

/-! ## A278153.P3142922067410006169

`A278157(A166136(n+2)-2)`
-/

namespace A278153.P3142922067410006169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A166136 (n + 2) - 2).toNat

end

end A278153.P3142922067410006169

/-!
# A278154: Number of nX5 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278154, there is no canonical definition to state claims against.
-/

/-! ## A278154.P10420130635785323362

`A278157(A167499(n+3))`
-/

namespace A278154.P10420130635785323362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A167499 (n + 3)).toNat

end

end A278154.P10420130635785323362

/-! ## A278154.P8474242902174979534

`A278157(Δ[A264443(n)])`
-/

namespace A278154.P8474242902174979534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (f1 (n + 1) - f1 n).toNat

end

end A278154.P8474242902174979534

/-! ## A278154.P10492409091491778768

`A278157(A374005(n+1))`
-/

namespace A278154.P10492409091491778768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A374005 (n + 1)).toNat

end

end A278154.P10492409091491778768

/-! ## A278154.P2542520698053035688

`A278157(eq[4, A193592(n)])`
-/

namespace A278154.P2542520698053035688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278154.P2542520698053035688

/-! ## A278154.P15529094494969357807

`A278157(Δ[A023545(n+1)])`
-/

namespace A278154.P15529094494969357807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (f1 (n + 1) - f1 n).toNat

end

end A278154.P15529094494969357807

/-!
# A278155: Number of nX6 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278155, there is no canonical definition to state claims against.
-/

/-! ## A278155.P3930958472556173539

`A278157(A166136(n+4))`
-/

namespace A278155.P3930958472556173539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A166136 (n + 4)).toNat

end

end A278155.P3930958472556173539

/-! ## A278155.P14180487539918408962

`A278157(A167499(n+4)+1)`
-/

namespace A278155.P14180487539918408962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A167499 (n + 4) + 1).toNat

end

end A278155.P14180487539918408962

/-! ## A278155.P8694211775233146989

`A278157(eq[7, A131818(n+1)])`
-/

namespace A278155.P8694211775233146989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278155.P8694211775233146989

/-! ## A278155.P8340550925336074154

`A278157(A374007(n+1))`
-/

namespace A278155.P8340550925336074154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A374007 (n + 1)).toNat

end

end A278155.P8340550925336074154

/-! ## A278155.P14881109391205103293

`A278157(A052905(n+3))`
-/

namespace A278155.P14881109391205103293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A052905 (n + 3)).toNat

end

end A278155.P14881109391205103293

/-!
# A278156: Number of nX7 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278156, there is no canonical definition to state claims against.
-/

/-! ## A278156.P1189389883564845273

`A278157(A374008(n+1))`
-/

namespace A278156.P1189389883564845273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A374008 (n + 1)).toNat

end

end A278156.P1189389883564845273

/-! ## A278156.P16601569835608410728

`A278157(A055999(n+4))`
-/

namespace A278156.P16601569835608410728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (A055999 (n + 4)).toNat

end

end A278156.P16601569835608410728

/-! ## A278156.P288054093917746477

`A278157(eq[4, A219347(n)])`
-/

namespace A278156.P288054093917746477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278156.P288054093917746477

/-! ## A278156.P17300773000615122494

`A278157(eq[6, A193592(n)])`
-/

namespace A278156.P17300773000615122494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278156.P17300773000615122494

/-! ## A278156.P5123816217088820235

`A278157(eq[7, A200370(n+1)])`
-/

namespace A278156.P5123816217088820235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278156.P5123816217088820235

/-!
# A278157: T(n,k)=Number of nXk 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278157, there is no canonical definition to state claims against.
-/

/-! ## A278157.P10956925844206715269

`A002264(A142596(n+1)^A305297(n))`
-/

namespace A278157.P10956925844206715269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A142596 (n + 1) : ℚ) ^ (A305297 n : ℤ))).toNat

end

end A278157.P10956925844206715269

/-! ## A278157.P15379479145273016105

`A002264(A142596(n+1)%A130969(n))`
-/

namespace A278157.P15379479145273016105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A142596 (n + 1)) (A130969 n)).toNat

end

end A278157.P15379479145273016105

/-! ## A278157.P10983788100552162081

`A074258(A286675(n))%A008292(n+1)`
-/

namespace A278157.P10983788100552162081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074258 (A286675 n).toNat) (A008292 (n + 1))

end

end A278157.P10983788100552162081

/-! ## A278157.P3527446544502860

`A177787(A088053(n+1))%A157211(n)`
-/

namespace A278157.P3527446544502860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177787 (A088053 (n + 1)).toNat) (A157211 n)

end

end A278157.P3527446544502860

/-!
# A278159: Run length transform of primorials, A002110.

The programs for A278159, the canonical program `A278159.P1523932836907847359` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278159 has offset 0).

The definition of A278159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A124859, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278159.P1523932836907847359

`A124859(A005940(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278159

/-- `A124859(A005940(1+n))` -/
def P1523932836907847359.Spec : Prop :=
  ∀ n, P1523932836907847359.a n = A278159 n

theorem P1523932836907847359.correct : P1523932836907847359.Spec := by
  intro n
  simp only [A278159]

end A278159

/-! ## A278159.P11742128363660291537

`∏{e}[A278222(n), A002110(#)]`
-/

namespace A278159.P11742128363660291537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A278159.P11742128363660291537

namespace A278159

/-- `∏{e}[A278222(n), A002110(#)]` -/
def P11742128363660291537.Spec : Prop :=
  ∀ n, P11742128363660291537.a n = A278159 n

end A278159

/-! ## A278159.P12684615765536279121

`A108951(A246029(n))`
-/

namespace A278159.P12684615765536279121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A246029 n).toNat

end

end A278159.P12684615765536279121

namespace A278159

/-- `A108951(A246029(n))` -/
def P12684615765536279121.Spec : Prop :=
  ∀ n, P12684615765536279121.a n = A278159 n

end A278159

/-! ## A278159.P3224884262421127727

`A124859(A278222(n))`
-/

namespace A278159.P3224884262421127727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A278222 n).toNat

end

end A278159.P3224884262421127727

namespace A278159

/-- `A124859(A278222(n))` -/
def P3224884262421127727.Spec : Prop :=
  ∀ n, P3224884262421127727.a n = A278159 n

end A278159

/-! ## A278159.P10077444557399613435

`A124859(A286598(A153141(n)))`
-/

namespace A278159.P10077444557399613435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A286598 (A153141 n).toNat).toNat

end

end A278159.P10077444557399613435

namespace A278159

/-- `A124859(A286598(A153141(n)))` -/
def P10077444557399613435.Spec : Prop :=
  ∀ n, P10077444557399613435.a n = A278159 n

end A278159

/-! ## A278159.P8827702848249041760

`A124859(A286596(A153142(n)))`
-/

namespace A278159.P8827702848249041760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A286596 (A153142 n).toNat).toNat

end

end A278159.P8827702848249041760

namespace A278159

/-- `A124859(A286596(A153142(n)))` -/
def P8827702848249041760.Spec : Prop :=
  ∀ n, P8827702848249041760.a n = A278159 n

end A278159

/-! ## A278159.P8592638762363595447

`a(A004526(n))*A279352(A006519(n+1))` with `a(0)=1`
-/

namespace A278159.P8592638762363595447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A279352 (A006519 (n + 1)).toNat

end

end A278159.P8592638762363595447

namespace A278159

/-- `a(A004526(n))*A279352(A006519(n+1))` -/
def P8592638762363595447.Spec : Prop :=
  ∀ n, P8592638762363595447.a n = A278159 n

end A278159

/-! ## A278159.P11653274704988441948

`∏{e}[A005940(n+1), A002110(#)]`
-/

namespace A278159.P11653274704988441948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A278159.P11653274704988441948

namespace A278159

/-- `∏{e}[A005940(n+1), A002110(#)]` -/
def P11653274704988441948.Spec : Prop :=
  ∀ n, P11653274704988441948.a n = A278159 n

end A278159

/-! ## A278159.P3997951169427451863

`∏{e}[A005940(n+1), A034386(A000040(#))]`
-/

namespace A278159.P3997951169427451863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034386 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278159.P3997951169427451863

namespace A278159

/-- `∏{e}[A005940(n+1), A034386(A000040(#))]` -/
def P3997951169427451863.Spec : Prop :=
  ∀ n, P3997951169427451863.a n = A278159 n

end A278159

/-! ## A278159.P17496821763764742018

`A108951(∏{e}[A005940(n+1), A000040(#)])`
-/

namespace A278159.P17496821763764742018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278159.P17496821763764742018

namespace A278159

/-- `A108951(∏{e}[A005940(n+1), A000040(#)])` -/
def P17496821763764742018.Spec : Prop :=
  ∀ n, P17496821763764742018.a n = A278159 n

end A278159

/-! ## A278159.P17122518142600797148

`∏{e}[A005940(n+1), A243353(A037481(#))]`
-/

namespace A278159.P17122518142600797148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A243353 (A037481 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278159.P17122518142600797148

namespace A278159

/-- `∏{e}[A005940(n+1), A243353(A037481(#))]` -/
def P17122518142600797148.Spec : Prop :=
  ∀ n, P17122518142600797148.a n = A278159 n

end A278159

/-! ## A278159.P1410439948391556638

`A124859(A332815(n))`
-/

namespace A278159.P1410439948391556638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A332815 n).toNat

end

end A278159.P1410439948391556638

namespace A278159

/-- `A124859(A332815(n))` -/
def P1410439948391556638.Spec : Prop :=
  ∀ n, P1410439948391556638.a n = A278159 n

end A278159

/-! ## A278159.P4000279614983944001

`A124859(A329886(2*n)/A329886(n))`
-/

namespace A278159.P4000279614983944001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (SequenceMachineLib.roundAway ((A329886 (2 * n) : ℚ) / (A329886 n : ℚ))).toNat

end

end A278159.P4000279614983944001

namespace A278159

/-- `A124859(A329886(2*n)/A329886(n))` -/
def P4000279614983944001.Spec : Prop :=
  ∀ n, P4000279614983944001.a n = A278159 n

end A278159

/-!
# A278160: Least number with the prime signature of ((n+1)^2 - 1).

The programs for A278160, the canonical program `A278160.P14324889269387418104` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278160 has offset 1).

The definition of A278160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278160.P14324889269387418104

`A046523((n+2)²-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278160

/-- `A046523((n+2)²-1)` -/
def P14324889269387418104.Spec : Prop :=
  ∀ n, P14324889269387418104.a n = A278160 (n + 1)

theorem P14324889269387418104.correct : P14324889269387418104.Spec := by
  intro n
  simp only [A278160, Nat.add_sub_cancel]

end A278160

/-! ## A278160.P7393076744963311803

`A025487(A101296((n+2)²-1))`
-/

namespace A278160.P7393076744963311803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 ((n + 2) ^ 2 - 1)).toNat

end

end A278160.P7393076744963311803

namespace A278160

/-- `A025487(A101296((n+2)²-1))` -/
def P7393076744963311803.Spec : Prop :=
  ∀ n, P7393076744963311803.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P14613921496231069497

`A278497(A260733(n+2))`
-/

namespace A278160.P14613921496231069497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278497 (A260733 (n + 2)).toNat

end

end A278160.P14613921496231069497

namespace A278160

/-- `A278497(A260733(n+2))` -/
def P14613921496231069497.Spec : Prop :=
  ∀ n, P14613921496231069497.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P11066993607108079133

`A278497(∑[A260734(n+1)])`
-/

namespace A278160.P11066993607108079133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278160.P11066993607108079133

namespace A278160

/-- `A278497(∑[A260734(n+1)])` -/
def P11066993607108079133.Spec : Prop :=
  ∀ n, P11066993607108079133.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P10162146127954716095

`A278497(A260732(n+2)-1)`
-/

namespace A278160.P10162146127954716095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278497 (A260732 (n + 2) - 1).toNat

end

end A278160.P10162146127954716095

namespace A278160

/-- `A278497(A260732(n+2)-1)` -/
def P10162146127954716095.Spec : Prop :=
  ∀ n, P10162146127954716095.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P10449367787235942563

`A278497(∑[A277891(n+1)+A277890(n+1)])`
-/

namespace A278160.P10449367787235942563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277891 (n + 1) + A277890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278160.P10449367787235942563

namespace A278160

/-- `A278497(∑[A277891(n+1)+A277890(n+1)])` -/
def P10449367787235942563.Spec : Prop :=
  ∀ n, P10449367787235942563.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P540070203295137416

`A089247(A071364(∑[2*n+3]))`
-/

namespace A278160.P540070203295137416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278160.P540070203295137416

namespace A278160

/-- `A089247(A071364(∑[2*n+3]))` -/
def P540070203295137416.Spec : Prop :=
  ∀ n, P540070203295137416.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P12554606114495542361

`2*A246277(A097272((n+3)*(n+1)))`
-/

namespace A278160.P12554606114495542361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246277 (A097272 ((n + 3) * (n + 1))).toNat

end

end A278160.P12554606114495542361

namespace A278160

/-- `2*A246277(A097272((n+3)*(n+1)))` -/
def P12554606114495542361.Spec : Prop :=
  ∀ n, P12554606114495542361.a n = A278160 (n + 1)

end A278160

/-! ## A278160.P4249608320825935945

`sqrt(A278254((n+2)²-1))`
-/

namespace A278160.P4249608320825935945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 ((n + 2) ^ 2 - 1) : ℝ)

end

end A278160.P4249608320825935945

namespace A278160

/-- `sqrt(A278254((n+2)²-1))` -/
def P4249608320825935945.Spec : Prop :=
  ∀ n, P4249608320825935945.a n = (A278160 (n + 1) : ℝ)

end A278160

/-! ## A278160.P13197234999747565721

`A278497(A260731(A255131((n+2)²)))`
-/

namespace A278160.P13197234999747565721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278497 (A260731 (A255131 ((n + 2) ^ 2)).toNat).toNat

end

end A278160.P13197234999747565721

namespace A278160

/-- `A278497(A260731(A255131((n+2)²)))` -/
def P13197234999747565721.Spec : Prop :=
  ∀ n, P13197234999747565721.a n = A278160 (n + 1)

end A278160

/-!
# A278161: Run length transform of A008619 (floor(n/2)+1).

The programs for A278161, the canonical program `A278161.P11501400355849923107` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278161 has offset 0).

The definition of A278161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278161.P11501400355849923107

`A046951(A005940(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278161

/-- `A046951(A005940(1+n))` -/
def P11501400355849923107.Spec : Prop :=
  ∀ n, P11501400355849923107.a n = A278161 n

theorem P11501400355849923107.correct : P11501400355849923107.Spec := by
  intro n
  simp only [A278161]

end A278161

/-! ## A278161.P14205342742515332850

`∑{d}[A278222(n), A000035(A000005(#))]`
-/

namespace A278161.P14205342742515332850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A000005 d).toNat

end

end A278161.P14205342742515332850

namespace A278161

/-- `∑{d}[A278222(n), A000035(A000005(#))]` -/
def P14205342742515332850.Spec : Prop :=
  ∀ n, P14205342742515332850.a n = A278161 n

end A278161

/-! ## A278161.P13832356643139868709

`A046951(A278222(n))`
-/

namespace A278161.P13832356643139868709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A278222 n).toNat

end

end A278161.P13832356643139868709

namespace A278161

/-- `A046951(A278222(n))` -/
def P13832356643139868709.Spec : Prop :=
  ∀ n, P13832356643139868709.a n = A278161 n

end A278161

/-! ## A278161.P5018447663934039247

`∑{d}[A278222(n), A010052(#)]`
-/

namespace A278161.P5018447663934039247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010052 d

end

end A278161.P5018447663934039247

namespace A278161

/-- `∑{d}[A278222(n), A010052(#)]` -/
def P5018447663934039247.Spec : Prop :=
  ∀ n, P5018447663934039247.a n = A278161 n

end A278161

/-! ## A278161.P18315462437306377329

`A071325(A278222(2*n))+1`
-/

namespace A278161.P18315462437306377329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A278222 (2 * n)).toNat + 1

end

end A278161.P18315462437306377329

namespace A278161

/-- `A071325(A278222(2*n))+1` -/
def P18315462437306377329.Spec : Prop :=
  ∀ n, P18315462437306377329.a n = A278161 n

end A278161

/-! ## A278161.P2159406336291874198

`∏{e}[A005940(n+1), A163352(A285084(#+1))-1]`
-/

namespace A278161.P2159406336291874198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A163352 (A285084 (Nat.factorization (f1 n).natAbs p + 1)).toNat - 1)

end

end A278161.P2159406336291874198

namespace A278161

/-- `∏{e}[A005940(n+1), A163352(A285084(#+1))-1]` -/
def P2159406336291874198.Spec : Prop :=
  ∀ n, P2159406336291874198.a n = A278161 n

end A278161

/-! ## A278161.P15633625834473098861

`∏{e}[A332815(n), A004526(#)+1]`
-/

namespace A278161.P15633625834473098861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004526 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A278161.P15633625834473098861

namespace A278161

/-- `∏{e}[A332815(n), A004526(#)+1]` -/
def P15633625834473098861.Spec : Prop :=
  ∀ n, P15633625834473098861.a n = A278161 n

end A278161

/-! ## A278161.P7534426791761411610

`∏{e}[A332815(n), A332815(A004526(#))]`
-/

namespace A278161.P7534426791761411610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332815 (A004526 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278161.P7534426791761411610

namespace A278161

/-- `∏{e}[A332815(n), A332815(A004526(#))]` -/
def P7534426791761411610.Spec : Prop :=
  ∀ n, P7534426791761411610.a n = A278161 n

end A278161

/-! ## A278161.P1492545927638101460

`∑{d}[A005940(n+1), A000005(#)%2]`
-/

namespace A278161.P1492545927638101460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000005 d) 2

end

end A278161.P1492545927638101460

namespace A278161

/-- `∑{d}[A005940(n+1), A000005(#)%2]` -/
def P1492545927638101460.Spec : Prop :=
  ∀ n, P1492545927638101460.a n = A278161 n

end A278161

/-! ## A278161.P895165224944430669

`A005940(A046951(A005940(A008619(2*n))))`
-/

namespace A278161.P895165224944430669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A046951 (A005940 (A008619 (2 * n)).toNat).toNat).toNat

end

end A278161.P895165224944430669

namespace A278161

/-- `A005940(A046951(A005940(A008619(2*n))))` -/
def P895165224944430669.Spec : Prop :=
  ∀ n, P895165224944430669.a n = A278161 n

end A278161

/-! ## A278161.P2045868139585636822

`A046951(A332815(n))`
-/

namespace A278161.P2045868139585636822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A332815 n).toNat

end

end A278161.P2045868139585636822

namespace A278161

/-- `A046951(A332815(n))` -/
def P2045868139585636822.Spec : Prop :=
  ∀ n, P2045868139585636822.a n = A278161 n

end A278161

/-!
# A278162: Least number with the prime signature of n^2 + 1.

The programs for A278162, the canonical program `A278162.P15268031024243594181` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278162 has offset 0).

The definition of A278162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278162.P15268031024243594181

`A046523(n²+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278162

/-- `A046523(n²+1)` -/
def P15268031024243594181.Spec : Prop :=
  ∀ n, P15268031024243594181.a n = A278162 n

theorem P15268031024243594181.correct : P15268031024243594181.Spec := by
  intro n
  simp only [A278162]

end A278162

/-! ## A278162.P15214242252612011182

`A278260(A004277(n))`
-/

namespace A278162.P15214242252612011182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A004277 n).toNat

end

end A278162.P15214242252612011182

namespace A278162

/-- `A278260(A004277(n))` -/
def P15214242252612011182.Spec : Prop :=
  ∀ n, P15214242252612011182.a n = A278162 n

end A278162

/-! ## A278162.P15217515935286467496

`A278260(A004275(n+1))`
-/

namespace A278162.P15217515935286467496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A004275 (n + 1)).toNat

end

end A278162.P15217515935286467496

namespace A278162

/-- `A278260(A004275(n+1))` -/
def P15217515935286467496.Spec : Prop :=
  ∀ n, P15217515935286467496.a n = A278162 n

end A278162

/-! ## A278162.P18164293268699479733

`A278260(A092535(n+1))`
-/

namespace A278162.P18164293268699479733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A092535 (n + 1)).toNat

end

end A278162.P18164293268699479733

namespace A278162

/-- `A278260(A092535(n+1))` -/
def P18164293268699479733.Spec : Prop :=
  ∀ n, P18164293268699479733.a n = A278162 n

end A278162

/-! ## A278162.P11256578501916737338

`A278260(A316571(n+1))`
-/

namespace A278162.P11256578501916737338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A316571 (n + 1)).toNat

end

end A278162.P11256578501916737338

namespace A278162

/-- `A278260(A316571(n+1))` -/
def P11256578501916737338.Spec : Prop :=
  ∀ n, P11256578501916737338.a n = A278162 n

end A278162

/-! ## A278162.P16777892689497913033

`A278260(A058992(n+2))`
-/

namespace A278162.P16777892689497913033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A058992 (n + 2)).toNat

end

end A278162.P16777892689497913033

namespace A278162

/-- `A278260(A058992(n+2))` -/
def P16777892689497913033.Spec : Prop :=
  ∀ n, P16777892689497913033.a n = A278162 n

end A278162

/-! ## A278162.P13895494208311561176

`A278260(A004280(n+2)-1)`
-/

namespace A278162.P13895494208311561176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A004280 (n + 2) - 1).toNat

end

end A278162.P13895494208311561176

namespace A278162

/-- `A278260(A004280(n+2)-1)` -/
def P13895494208311561176.Spec : Prop :=
  ∀ n, P13895494208311561176.a n = A278162 n

end A278162

/-! ## A278162.P10616651591536180722

`A278260(A123108(2*n)+n)`
-/

namespace A278162.P10616651591536180722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A123108 (2 * n) + (n : ℤ)).toNat

end

end A278162.P10616651591536180722

namespace A278162

/-- `A278260(A123108(2*n)+n)` -/
def P10616651591536180722.Spec : Prop :=
  ∀ n, P10616651591536180722.a n = A278162 n

end A278162

/-! ## A278162.P3868669749856779437

`A278260(A123108(4*n))`
-/

namespace A278162.P3868669749856779437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A123108 (4 * n)).toNat

end

end A278162.P3868669749856779437

namespace A278162

/-- `A278260(A123108(4*n))` -/
def P3868669749856779437.Spec : Prop :=
  ∀ n, P3868669749856779437.a n = A278162 n

end A278162

/-! ## A278162.P9021871190505427299

`A025487(A101296(n²+1))`
-/

namespace A278162.P9021871190505427299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (n ^ 2 + 1)).toNat

end

end A278162.P9021871190505427299

namespace A278162

/-- `A025487(A101296(n²+1))` -/
def P9021871190505427299.Spec : Prop :=
  ∀ n, P9021871190505427299.a n = A278162 n

end A278162

/-! ## A278162.P18014194185708096377

`A089247(A071364(4*(n/2)²+1))`
-/

namespace A278162.P18014194185708096377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 2) ^ 2 + 1)).toNat).toNat

end

end A278162.P18014194185708096377

namespace A278162

/-- `A089247(A071364(4*(n/2)²+1))` -/
def P18014194185708096377.Spec : Prop :=
  ∀ n, P18014194185708096377.a n = A278162 n

end A278162

/-! ## A278162.P5769039495314296405

`A089247(A320389(n²+1))`
-/

namespace A278162.P5769039495314296405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A320389 (n ^ 2 + 1)).toNat

end

end A278162.P5769039495314296405

namespace A278162

/-- `A089247(A320389(n²+1))` -/
def P5769039495314296405.Spec : Prop :=
  ∀ n, P5769039495314296405.a n = A278162 n

end A278162

/-! ## A278162.P14420159557839496885

`A336158(A253885(n²)+1)`
-/

namespace A278162.P14420159557839496885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A253885 (n ^ 2) + 1).toNat

end

end A278162.P14420159557839496885

namespace A278162

/-- `A336158(A253885(n²)+1)` -/
def P14420159557839496885.Spec : Prop :=
  ∀ n, P14420159557839496885.a n = A278162 n

end A278162

/-! ## A278162.P1887148859035242018

`A278540(n²+1)`
-/

namespace A278162.P1887148859035242018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (n ^ 2 + 1)

end

end A278162.P1887148859035242018

namespace A278162

/-- `A278540(n²+1)` -/
def P1887148859035242018.Spec : Prop :=
  ∀ n, P1887148859035242018.a n = A278162 n

end A278162

/-! ## A278162.P13134967461676770221

`sqrt(A278254(n²+1))`
-/

namespace A278162.P13134967461676770221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (n ^ 2 + 1) : ℝ)

end

end A278162.P13134967461676770221

namespace A278162

/-- `sqrt(A278254(n²+1))` -/
def P13134967461676770221.Spec : Prop :=
  ∀ n, P13134967461676770221.a n = (A278162 n : ℝ)

end A278162

/-! ## A278162.P17985390231347352661

`A016017(A018892(n²+1))`
-/

namespace A278162.P17985390231347352661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (A018892 (n ^ 2 + 1)).toNat

end

end A278162.P17985390231347352661

namespace A278162

/-- `A016017(A018892(n²+1))` -/
def P17985390231347352661.Spec : Prop :=
  ∀ n, P17985390231347352661.a n = A278162 n

end A278162

/-! ## A278162.P4971080669396334663

`A069877(A037916(n²+1))`
-/

namespace A278162.P4971080669396334663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A037916 (n ^ 2 + 1)).toNat

end

end A278162.P4971080669396334663

namespace A278162

/-- `A069877(A037916(n²+1))` -/
def P4971080669396334663.Spec : Prop :=
  ∀ n, P4971080669396334663.a n = A278162 n

end A278162

/-! ## A278162.P14726527053823132142

`A051444(A083262(n²+1))`
-/

namespace A278162.P14726527053823132142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A083262 (n ^ 2 + 1)).toNat

end

end A278162.P14726527053823132142

namespace A278162

/-- `A051444(A083262(n²+1))` -/
def P14726527053823132142.Spec : Prop :=
  ∀ n, P14726527053823132142.a n = A278162 n

end A278162

/-! ## A278162.P13088158579782310286

`A124859(A124859(n²+1))`
-/

namespace A278162.P13088158579782310286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A124859 (n ^ 2 + 1)).toNat

end

end A278162.P13088158579782310286

namespace A278162

/-- `A124859(A124859(n²+1))` -/
def P13088158579782310286.Spec : Prop :=
  ∀ n, P13088158579782310286.a n = A278162 n

end A278162

/-!
# A278163: a(n) = the least k such that A131205(1+k) >= n; each n occurs A000123(n) times.

The programs for A278163, the canonical program `A278163.P11334405189652933682` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278163 has offset 1).

The definition of A278163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278163.P11334405189652933682

`∑[char[∑[a(n-1)+a(floor(n/2))]]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278163

/-- `∑[char[∑[a(n-1)+a(floor(n/2))]]]` -/
def P11334405189652933682.Spec : Prop :=
  ∀ n, (P11334405189652933682.a n : ℤ) = A278163 (n + 1)

theorem P11334405189652933682.correct : P11334405189652933682.Spec := by
  intro n
  simp only [A278163, Nat.add_sub_cancel]

end A278163

/-! ## A278163.P16656224051467348220

`∑[char[∑[A000123(n)]]]`
-/

namespace A278163.P16656224051467348220
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278163.P16656224051467348220

namespace A278163

/-- `∑[char[∑[A000123(n)]]]` -/
def P16656224051467348220.Spec : Prop :=
  ∀ n, (P16656224051467348220.a n : ℤ) = A278163 (n + 1)

end A278163

/-! ## A278163.P11875821686223300937

`∑[char[record[A042951(n)]]]`
-/

namespace A278163.P11875821686223300937
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278163.P11875821686223300937

namespace A278163

/-- `∑[char[record[A042951(n)]]]` -/
def P11875821686223300937.Spec : Prop :=
  ∀ n, (P11875821686223300937.a n : ℤ) = A278163 (n + 1)

end A278163

/-! ## A278163.P11093293548330090914

`∑[char[A131205(n+1)]]`
-/

namespace A278163.P11093293548330090914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131205 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278163.P11093293548330090914

namespace A278163

/-- `∑[char[A131205(n+1)]]` -/
def P11093293548330090914.Spec : Prop :=
  ∀ n, (P11093293548330090914.a n : ℤ) = A278163 (n + 1)

end A278163

/-! ## A278163.P15172674740056299717

`∑[char[A042951(n+2)]]`
-/

namespace A278163.P15172674740056299717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278163.P15172674740056299717

namespace A278163

/-- `∑[char[A042951(n+2)]]` -/
def P15172674740056299717.Spec : Prop :=
  ∀ n, (P15172674740056299717.a n : ℤ) = A278163 (n + 1)

end A278163

/-! ## A278163.P10612498527888657420

`∑[char[∑[∑[A018819(n)]]]]`
-/

namespace A278163.P10612498527888657420
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278163.P10612498527888657420

namespace A278163

/-- `∑[char[∑[∑[A018819(n)]]]]` -/
def P10612498527888657420.Spec : Prop :=
  ∀ n, (P10612498527888657420.a n : ℤ) = A278163 (n + 1)

end A278163

/-! ## A278163.P11095025394265436669

`∑[char[A033485(2*n+1)]]`
-/

namespace A278163.P11095025394265436669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278163.P11095025394265436669

namespace A278163

/-- `∑[char[A033485(2*n+1)]]` -/
def P11095025394265436669.Spec : Prop :=
  ∀ n, (P11095025394265436669.a n : ℤ) = A278163 (n + 1)

end A278163

/-! ## A278163.P946456820401262570

`ceil(∑[char[A033485(n+1)]/2])`
-/

namespace A278163.P946456820401262570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A278163.P946456820401262570

namespace A278163

/-- `ceil(∑[char[A033485(n+1)]/2])` -/
def P946456820401262570.Spec : Prop :=
  ∀ n, P946456820401262570.a n = A278163 (n + 1)

end A278163

/-! ## A278163.P2275058498875007189

`floor(A277903(2*n+1)/2)`
-/

namespace A278163.P2275058498875007189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277903 (2 * n + 1) : ℚ) / 2⌋

end

end A278163.P2275058498875007189

namespace A278163

/-- `floor(A277903(2*n+1)/2)` -/
def P2275058498875007189.Spec : Prop :=
  ∀ n, P2275058498875007189.a n = A278163 (n + 1)

end A278163

/-! ## A278163.P7312703572436558247

`A277903(A018819(A277903(2*(n+1))))`
-/

namespace A278163.P7312703572436558247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A018819 (A277903 (2 * (n + 1))).toNat).toNat

end

end A278163.P7312703572436558247

namespace A278163

/-- `A277903(A018819(A277903(2*(n+1))))` -/
def P7312703572436558247.Spec : Prop :=
  ∀ n, P7312703572436558247.a n = A278163 (n + 1)

end A278163

/-!
# A278164: Irregular triangle read by rows: row n (n >= 0) is obtained by listing numbers 0 .. A000123(n)-1.

The programs for A278164, the canonical program `A278164.P857982996237124715` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278164 has offset 1).

The definition of A278164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278164.P857982996237124715

`A277904(2*n-a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278164

/-- `A277904(2*n-a(n-1))` -/
def P857982996237124715.Spec : Prop :=
  ∀ n, P857982996237124715.a n = A278164 (n + 1)

theorem P857982996237124715.correct : P857982996237124715.Spec := by
  intro n
  simp only [A278164, Nat.add_sub_cancel]

end A278164

/-! ## A278164.P3655716488694918523

`A168265(n+1)-A028920(A035008(n))`
-/

namespace A278164.P3655716488694918523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168265 (n + 1) - A028920 (A035008 n).toNat

end

end A278164.P3655716488694918523

namespace A278164

/-- `A168265(n+1)-A028920(A035008(n))` -/
def P3655716488694918523.Spec : Prop :=
  ∀ n, P3655716488694918523.a n = A278164 (n + 1)

end A278164

/-! ## A278164.P12214008654491562174

`A168265(n+1)-A276330(A031397(n+1))`
-/

namespace A278164.P12214008654491562174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168265 (n + 1) - A276330 (A031397 (n + 1)).toNat

end

end A278164.P12214008654491562174

namespace A278164

/-- `A168265(n+1)-A276330(A031397(n+1))` -/
def P12214008654491562174.Spec : Prop :=
  ∀ n, P12214008654491562174.a n = A278164 (n + 1)

end A278164

/-! ## A278164.P18235805095073226996

`A168265(n+1)%A164368(A224850(n+2)+3)-1`
-/

namespace A278164.P18235805095073226996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168265 (n + 1)) (A164368 (A224850 (n + 2) + 3).toNat) - 1

end

end A278164.P18235805095073226996

namespace A278164

/-- `A168265(n+1)%A164368(A224850(n+2)+3)-1` -/
def P18235805095073226996.Spec : Prop :=
  ∀ n, P18235805095073226996.a n = A278164 (n + 1)

end A278164

/-!
# A278165: Least number with the prime signature of the n-th Jacobsthal number.

The programs for A278165, the canonical program `A278165.P15944007002161230060` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278165 has offset 1).

The definition of A278165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278165.P15944007002161230060

`A046523(A001045(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278165

/-- `A046523(A001045(n+1))` -/
def P15944007002161230060.Spec : Prop :=
  ∀ n, P15944007002161230060.a n = A278165 (n + 1)

theorem P15944007002161230060.correct : P15944007002161230060.Spec := by
  intro n
  simp only [A278165, Nat.add_sub_cancel]

end A278165

/-! ## A278165.P17162400107620371058

`A181821(∏{e}[∑[(-2)^n], #+1])`
-/

namespace A278165.P17162400107620371058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A278165.P17162400107620371058

namespace A278165

/-- `A181821(∏{e}[∑[(-2)^n], #+1])` -/
def P17162400107620371058.Spec : Prop :=
  ∀ n, P17162400107620371058.a n = A278165 (n + 1)

end A278165

/-!
# A278166: a(n) = number of integers one more than a prime encountered before reaching 0 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A278166, there is no canonical definition to state claims against.
-/

/-! ## A278166.P14754083944400253206

`A277486(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A278166.P14754083944400253206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277486 (n + 1) + a (n - 1)

end

end A278166.P14754083944400253206

/-! ## A278166.P11090129128991998936

`∑[A277486(n+1)]`
-/

namespace A278166.P11090129128991998936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278166.P11090129128991998936

/-! ## A278166.P17504065942784296230

`A105096(A281104(n+1))`
-/

namespace A278166.P17504065942784296230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105096 (A281104 (n + 1)).toNat

end

end A278166.P17504065942784296230

/-!
# A278167: a(n) = number of primes encountered before reaching 0 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A278167, there is no canonical definition to state claims against.
-/

/-! ## A278167.P3909247176724821339

`A277487(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A278167.P3909247176724821339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A277487 (n + 1) + a (n - 1)

end

end A278167.P3909247176724821339

/-! ## A278167.P17077283351560759682

`∑[A277487(n+1)]`
-/

namespace A278167.P17077283351560759682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278167.P17077283351560759682

/-!
# A278168: a(n) = number of integers one less than a prime encountered before reaching 0 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A278168, there is no canonical definition to state claims against.
-/

/-! ## A278168.P16282851321099087388

`A277488(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A278168.P16282851321099087388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A277488 (n + 1) + a (n - 1)

end

end A278168.P16282851321099087388

/-! ## A278168.P4474259282397466762

`∑[A277488(n+1)]`
-/

namespace A278168.P4474259282397466762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278168.P4474259282397466762

/-! ## A278168.P14197014311400774932

`∑[A004216(A059268(n)*A213059(n+1))]`
-/

namespace A278168.P14197014311400774932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A059268 n * A213059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278168.P14197014311400774932

/-! ## A278168.P9609326768797011107

`A181132(∑[A266832(n+1)!])`
-/

namespace A278168.P9609326768797011107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A266832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278168.P9609326768797011107

/-!
# A278169: Characteristic function for A000960.

The programs for A278169, there is no canonical definition to state claims against.
-/

/-! ## A278169.P6534102532146619792

`char[A278484(n)]`
-/

namespace A278169.P6534102532146619792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A278169.P6534102532146619792

/-! ## A278169.P13354010686229318112

`floor(1/A100002(n+1))`
-/

namespace A278169.P13354010686229318112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A100002 (n + 1) : ℚ)⌋

end

end A278169.P13354010686229318112

/-! ## A278169.P1491688458317280981

`floor(1/A278539(n+1))`
-/

namespace A278169.P1491688458317280981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A278539 (n + 1) : ℚ)⌋

end

end A278169.P1491688458317280981

/-! ## A278169.P872976615609405084

`char[A000960(n+1)-1]`
-/

namespace A278169.P872976615609405084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A278169.P872976615609405084

/-! ## A278169.P10803675757323199494

`char[eq[0, A278528(n+1)]]`
-/

namespace A278169.P10803675757323199494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A278169.P10803675757323199494

/-! ## A278169.P8443901185759468575

`∏{d}[A278529(n+1), log(#)]`
-/

namespace A278169.P8443901185759468575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A278169.P8443901185759468575

/-! ## A278169.P2755876126136249439

`char[A278503(C(n+1, 2)+1)%(n+2)²-1]`
-/

namespace A278169.P2755876126136249439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278503 (Nat.choose (n + 1) 2 + 1)) ((n + 2) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A278169.P2755876126136249439

/-! ## A278169.P15877561585404275503

`A000007(A278528(n+1))`
-/

namespace A278169.P15877561585404275503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278528 (n + 1)).toNat

end

end A278169.P15877561585404275503

/-! ## A278169.P12433259708123833840

`A000007(A278529(n+1))`
-/

namespace A278169.P12433259708123833840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278529 (n + 1)).toNat

end

end A278169.P12433259708123833840

/-! ## A278169.P8359386044362193240

`A008683(A100002(n+1)²)`
-/

namespace A278169.P8359386044362193240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A100002 (n + 1) ^ 2).toNat

end

end A278169.P8359386044362193240

/-! ## A278169.P2256662222554288048

`∏{d}[A278528(n+1), A278528(#)]`
-/

namespace A278169.P2256662222554288048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A278528 d

end

end A278169.P2256662222554288048

/-! ## A278169.P9632595909455480386

`∏{d}[A278529(n+1), A278529(#)]²`
-/

namespace A278169.P9632595909455480386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A278529 d) ^ 2

end

end A278169.P9632595909455480386

/-! ## A278169.P17422352981517373295

`2-A040001(2*A278529(n+1))`
-/

namespace A278169.P17422352981517373295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 (2 * A278529 (n + 1)).toNat

end

end A278169.P17422352981517373295

/-! ## A278169.P7410715435270926295

`1-A278528(n+1)/A278538(n+1)`
-/

namespace A278169.P7410715435270926295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A278528 (n + 1) : ℚ) / (A278538 (n + 1) : ℚ)

end

end A278169.P7410715435270926295

/-! ## A278169.P4109620958851521040

`floor(root(A278539(n+1), 2-A000203(n+1)))`
-/

namespace A278169.P4109620958851521040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) ^ (1 / (2 - A000203 (n + 1) : ℝ))⌋

end

end A278169.P4109620958851521040

/-! ## A278169.P10766629576958223751

`floor(root(A278539(n+1), 2-A288695(n+1)))`
-/

namespace A278169.P10766629576958223751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) ^ (1 / (2 - A288695 (n + 1) : ℝ))⌋

end

end A278169.P10766629576958223751

/-! ## A278169.P179003485442942390

`floor(root(A278539(n+1), n-A097046(n+1)))`
-/

namespace A278169.P179003485442942390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) ^ (1 / ((n : ℤ) - A097046 (n + 1) : ℝ))⌋

end

end A278169.P179003485442942390

/-! ## A278169.P16217672231632654810

`C(A001221(A100008(n+1)), A100002(n+1))`
-/

namespace A278169.P16217672231632654810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A100008 (n + 1)).toNat).toNat (A100002 (n + 1)).toNat

end

end A278169.P16217672231632654810

/-! ## A278169.P3173111588189384232

`C(A278536(n+1), A277816(A278528(n+1)))`
-/

namespace A278169.P3173111588189384232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A278536 (n + 1)).toNat (A277816 (A278528 (n + 1)).toNat).toNat

end

end A278169.P3173111588189384232

/-! ## A278169.P6025369835049669482

`char[A004442(A000960(n+1))]`
-/

namespace A278169.P6025369835049669482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A000960 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A278169.P6025369835049669482

/-!
# A278170: Number of n X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278170, there is no canonical definition to state claims against.
-/

/-! ## A278170.P10740403148918659360

`A278177(∑[4*n]+1)`
-/

namespace A278170.P10740403148918659360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278170.P10740403148918659360

/-! ## A278170.P2467911109916005463

`lcm(2, A278177(A001844(n)))`
-/

namespace A278170.P2467911109916005463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278177 (A001844 n).toNat)

end

end A278170.P2467911109916005463

/-! ## A278170.P5690264626482284145

`A278177(A001844(n))*A278657(n)`
-/

namespace A278170.P5690264626482284145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A001844 n).toNat * A278657 n

end

end A278170.P5690264626482284145

/-! ## A278170.P3454027339824403224

`A278177(A001844(n))+A000007(n+3)`
-/

namespace A278170.P3454027339824403224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A001844 n).toNat + A000007 (n + 3)

end

end A278170.P3454027339824403224

/-! ## A278170.P16799059432167722654

`A064284(n+1)*A278177(A001844(n))`
-/

namespace A278170.P16799059432167722654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A278177 (A001844 n).toNat

end

end A278170.P16799059432167722654

/-!
# A278171: Number of n X 2 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278171, the canonical program `A278171.P2509687179800297295` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278171 has offset 1).

The definition of A278171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278171.P2509687179800297295

`3*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=13, a(4)=43, a(5)=137, a(6)=436`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278171

/-- `3*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` -/
def P2509687179800297295.Spec : Prop :=
  ∀ n, P2509687179800297295.a n = A278171 (n + 1)

theorem P2509687179800297295.correct : P2509687179800297295.Spec := by
  intro n
  simp only [A278171, Nat.add_sub_cancel]

end A278171

/-! ## A278171.P16864520084213264044

`A278177(∑[n+1]+2)`
-/

namespace A278171.P16864520084213264044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278171.P16864520084213264044

namespace A278171

/-- `A278177(∑[n+1]+2)` -/
def P16864520084213264044.Spec : Prop :=
  ∀ n, P16864520084213264044.a n = A278171 (n + 1)

end A278171

/-! ## A278171.P16956212173519995998

`record[A278177(A252460(n+1))]`
-/

namespace A278171.P16956212173519995998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278171.P16956212173519995998

namespace A278171

/-- `record[A278177(A252460(n+1))]` -/
def P16956212173519995998.Spec : Prop :=
  ∀ n, P16956212173519995998.a n = A278171 (n + 1)

end A278171

/-! ## A278171.P1700643694851764847

`record[A278177(A252752(n+1))]`
-/

namespace A278171.P1700643694851764847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A252752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278171.P1700643694851764847

namespace A278171

/-- `record[A278177(A252752(n+1))]` -/
def P1700643694851764847.Spec : Prop :=
  ∀ n, P1700643694851764847.a n = A278171 (n + 1)

end A278171

/-! ## A278171.P16839906054020639826

`record[gcd(A225413(n), A278177(n+1))]`
-/

namespace A278171.P16839906054020639826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225413 n) (A278177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278171.P16839906054020639826

namespace A278171

/-- `record[gcd(A225413(n), A278177(n+1))]` -/
def P16839906054020639826.Spec : Prop :=
  ∀ n, (P16839906054020639826.a n : ℤ) = A278171 (n + 1)

end A278171

/-!
# A278172: Number of nX3 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278172, there is no canonical definition to state claims against.
-/

/-! ## A278172.P2399169688941418675

`A278177(∑[n+2]+4)`
-/

namespace A278172.P2399169688941418675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278172.P2399169688941418675

/-! ## A278172.P15162616947841527075

`record[A278177(A252460(2*n+1)+2)]`
-/

namespace A278172.P15162616947841527075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A252460 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278172.P15162616947841527075

/-! ## A278172.P7770801071229578232

`A057427(n)*A278177(A167614(n+1))`
-/

namespace A278172.P7770801071229578232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278177 (A167614 (n + 1)).toNat

end

end A278172.P7770801071229578232

/-! ## A278172.P2166231667622453739

`A278177(A167614(n+1))%A004982(n)`
-/

namespace A278172.P2166231667622453739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278177 (A167614 (n + 1)).toNat) (A004982 n)

end

end A278172.P2166231667622453739

/-! ## A278172.P11593068638649180550

`lcm(A087960(n), A278177(A167614(n+1)))`
-/

namespace A278172.P11593068638649180550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A278177 (A167614 (n + 1)).toNat)

end

end A278172.P11593068638649180550

/-!
# A278173: Number of nX4 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278173, there is no canonical definition to state claims against.
-/

/-! ## A278173.P9293341327179048530

`A278177(A141214(n)+7)`
-/

namespace A278173.P9293341327179048530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A141214 n + 7).toNat

end

end A278173.P9293341327179048530

/-! ## A278173.P5947706323940852130

`A278177(A055999(n)+10)`
-/

namespace A278173.P5947706323940852130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A055999 n + 10).toNat

end

end A278173.P5947706323940852130

/-! ## A278173.P11200216968417931353

`A278177(A167614(n+2)+1)`
-/

namespace A278173.P11200216968417931353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A167614 (n + 2) + 1).toNat

end

end A278173.P11200216968417931353

/-! ## A278173.P8678223223018739749

`A278177(A027379(n+1)+7)`
-/

namespace A278173.P8678223223018739749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A027379 (n + 1) + 7).toNat

end

end A278173.P8678223223018739749

/-! ## A278173.P7328206498999414602

`A278177(Δ[A264443(n)-n²])`
-/

namespace A278173.P7328206498999414602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (f1 (n + 1) - f1 n).toNat

end

end A278173.P7328206498999414602

/-!
# A278174: Number of n X 5 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278174, there is no canonical definition to state claims against.
-/

/-! ## A278174.P13731078203632374826

`A278177(A167499(n+3))`
-/

namespace A278174.P13731078203632374826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A167499 (n + 3)).toNat

end

end A278174.P13731078203632374826

/-! ## A278174.P10008727213625172714

`A278177(A167614(n+3)+2)`
-/

namespace A278174.P10008727213625172714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A167614 (n + 3) + 2).toNat

end

end A278174.P10008727213625172714

/-! ## A278174.P18283444419335007553

`A278177(A141214(n+1)+8)`
-/

namespace A278174.P18283444419335007553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A141214 (n + 1) + 8).toNat

end

end A278174.P18283444419335007553

/-! ## A278174.P3398122620137213077

`A278177(A027379(n+2)+8)`
-/

namespace A278174.P3398122620137213077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A027379 (n + 2) + 8).toNat

end

end A278174.P3398122620137213077

/-! ## A278174.P17070585413773537499

`A278177(Δ[A264443(n)])`
-/

namespace A278174.P17070585413773537499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (f1 (n + 1) - f1 n).toNat

end

end A278174.P17070585413773537499

/-!
# A278175: Number of nX6 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278175, there is no canonical definition to state claims against.
-/

/-! ## A278175.P12919851086690597041

`A278177(A141214(n+2)+9)`
-/

namespace A278175.P12919851086690597041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A141214 (n + 2) + 9).toNat

end

end A278175.P12919851086690597041

/-! ## A278175.P13608131165269467376

`A278177(eq[7, A131818(n+1)])`
-/

namespace A278175.P13608131165269467376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278175.P13608131165269467376

/-! ## A278175.P710792267635442695

`A278177(A374007(n+1))`
-/

namespace A278175.P710792267635442695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A374007 (n + 1)).toNat

end

end A278175.P710792267635442695

/-! ## A278175.P11290177799591077278

`A278177(A052905(n+3))`
-/

namespace A278175.P11290177799591077278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A052905 (n + 3)).toNat

end

end A278175.P11290177799591077278

/-! ## A278175.P16479909609310733261

`A278177(eq[3, A219347(n)])`
-/

namespace A278175.P16479909609310733261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278175.P16479909609310733261

/-!
# A278176: Number of nX7 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278176, there is no canonical definition to state claims against.
-/

/-! ## A278176.P15572572402373510015

`A278177(eq[8, A131818(n+1)])`
-/

namespace A278176.P15572572402373510015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278176.P15572572402373510015

/-! ## A278176.P18353316485468945497

`A278177(A374008(n+1))`
-/

namespace A278176.P18353316485468945497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (A374008 (n + 1)).toNat

end

end A278176.P18353316485468945497

/-! ## A278176.P10522591372206913214

`A278177(eq[4, A219347(n)])`
-/

namespace A278176.P10522591372206913214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278176.P10522591372206913214

/-! ## A278176.P7436184082254869387

`A278177(eq[6, A193592(n)])`
-/

namespace A278176.P7436184082254869387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278176.P7436184082254869387

/-! ## A278176.P6352510451929280331

`A278177(eq[3, A316074(n+1)])`
-/

namespace A278176.P6352510451929280331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278176.P6352510451929280331

/-!
# A278177: T(n,k)=Number of nXk 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278177, there is no canonical definition to state claims against.
-/

/-! ## A278177.P16312002490180583320

`A321993(A296405(n+1))-A007318(n)`
-/

namespace A278177.P16312002490180583320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A296405 (n + 1)).toNat - A007318 n

end

end A278177.P16312002490180583320

/-! ## A278177.P3336233788741231175

`A321993(A296405(n+1))-Δ[A102363(n)]`
-/

namespace A278177.P3336233788741231175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A296405 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A278177.P3336233788741231175

/-! ## A278177.P3666092725537601597

`A321993(A296405(n+1))-A028326(n)/2`
-/

namespace A278177.P3666092725537601597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321993 (A296405 (n + 1)).toNat : ℚ) - (A028326 n : ℚ) / 2

end

end A278177.P3666092725537601597

/-! ## A278177.P16380555642974236095

`A321993(A296405(n+1))-A008619(A109128(n))`
-/

namespace A278177.P16380555642974236095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A296405 (n + 1)).toNat - A008619 (A109128 n).toNat

end

end A278177.P16380555642974236095

/-! ## A278177.P3539391599811648537

`A321993(A296405(n+1))-A080098(A107105(n))`
-/

namespace A278177.P3539391599811648537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A296405 (n + 1)).toNat - A080098 (A107105 n).toNat

end

end A278177.P3539391599811648537

/-!
# A278182: Number of dots in Maya numeral representation of n.

The programs for A278182, the canonical program `A278182.P17843751515131127620` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278182 has offset 0).

The definition of A278182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278182.P17843751515131127620

`n%5+floor(n%100/20)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278182

/-- `n%5+floor(n%100/20)` -/
def P17843751515131127620.Spec : Prop :=
  ∀ n, P17843751515131127620.a n = A278182 n

theorem P17843751515131127620.correct : P17843751515131127620.Spec := by
  intro n
  simp only [A278182]

end A278182

/-! ## A278182.P2201081200051731489

`floor(n%5+n/20)`
-/

namespace A278182.P2201081200051731489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 5 : ℕ) : ℚ) + (n : ℚ) / 20⌋

end

end A278182.P2201081200051731489

namespace A278182

/-- `floor(n%5+n/20)` -/
def P2201081200051731489.Spec : Prop :=
  ∀ n, P2201081200051731489.a n = A278182 n

end A278182

/-! ## A278182.P3254951459999013471

`floor(A076312(2*n)/4)`
-/

namespace A278182.P3254951459999013471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076312 (2 * n) : ℚ) / 4⌋

end

end A278182.P3254951459999013471

namespace A278182

/-- `floor(A076312(2*n)/4)` -/
def P3254951459999013471.Spec : Prop :=
  ∀ n, P3254951459999013471.a n = A278182 n

end A278182

/-! ## A278182.P8616192497329172844

`A010874(n)+floor(floor(n/10)/2)`
-/

namespace A278182.P8616192497329172844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n + ⌊(⌊(n : ℚ) / 10⌋ : ℚ) / 2⌋

end

end A278182.P8616192497329172844

namespace A278182

/-- `A010874(n)+floor(floor(n/10)/2)` -/
def P8616192497329172844.Spec : Prop :=
  ∀ n, P8616192497329172844.a n = A278182 n

end A278182

/-! ## A278182.P3264675392340242440

`A059995(floor(n/4)+floor((n+1)/4))+n-5*floor(n/5)`
-/

namespace A278182.P3264675392340242440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (⌊(n : ℚ) / 4⌋ + ⌊(n + 1 : ℚ) / 4⌋).toNat + ((n : ℤ) - 5 * ⌊(n : ℚ) / 5⌋)

end

end A278182.P3264675392340242440

namespace A278182

/-- `A059995(floor(n/4)+floor((n+1)/4))+n-5*floor(n/5)` -/
def P3264675392340242440.Spec : Prop :=
  ∀ n, P3264675392340242440.a n = A278182 n

end A278182

/-! ## A278182.P6590049766062960491

`dr(A106747(A133311(n)))`
-/

namespace A278182.P6590049766062960491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A106747 (A133311 n).toNat)

end

end A278182.P6590049766062960491

namespace A278182

/-- `dr(A106747(A133311(n)))` -/
def P6590049766062960491.Spec : Prop :=
  ∀ n, (P6590049766062960491.a n : ℤ) = A278182 n

end A278182

/-! ## A278182.P15560890041556971062

`A002265(A076312(2*n))`
-/

namespace A278182.P15560890041556971062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A076312 (2 * n)).toNat

end

end A278182.P15560890041556971062

namespace A278182

/-- `A002265(A076312(2*n))` -/
def P15560890041556971062.Spec : Prop :=
  ∀ n, P15560890041556971062.a n = A278182 n

end A278182

/-! ## A278182.P10404642087611845795

`∑{digits}[A133311(n), A004526(#)]`
-/

namespace A278182.P10404642087611845795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004526 x).sum

end

end A278182.P10404642087611845795

namespace A278182

/-- `∑{digits}[A133311(n), A004526(#)]` -/
def P10404642087611845795.Spec : Prop :=
  ∀ n, P10404642087611845795.a n = A278182 n

end A278182

/-! ## A278182.P11295729285709303784

`A002266(A002265(n))+n%5`
-/

namespace A278182.P11295729285709303784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A002265 n).toNat + ((n % 5 : ℕ) : ℤ)

end

end A278182.P11295729285709303784

namespace A278182

/-- `A002266(A002265(n))+n%5` -/
def P11295729285709303784.Spec : Prop :=
  ∀ n, P11295729285709303784.a n = A278182 n

end A278182

/-!
# A278183: Number of n X 2 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278183, there is no canonical definition to state claims against.
-/

/-! ## A278183.P16380332727701486239

`A278188(∑[n+2])`
-/

namespace A278183.P16380332727701486239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278183.P16380332727701486239

/-! ## A278183.P6510062240125984232

`record[A278188(∑[A152271(n)])]`
-/

namespace A278183.P6510062240125984232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278183.P6510062240125984232

/-! ## A278183.P7966240286565301672

`record[A278188(∑[A158821(n)])]`
-/

namespace A278183.P7966240286565301672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278183.P7966240286565301672

/-! ## A278183.P4974685570071812505

`record[A278188(record[A158821(n)+n])]`
-/

namespace A278183.P4974685570071812505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278183.P4974685570071812505

/-! ## A278183.P15678111025492973914

`record[A097806(n)*A278188(n+1)]`
-/

namespace A278183.P15678111025492973914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A278188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278183.P15678111025492973914

/-!
# A278184: Number of nX3 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278184, there is no canonical definition to state claims against.
-/

/-! ## A278184.P9671962574565230591

`A278188(∑[n+3]+1)`
-/

namespace A278184.P9671962574565230591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278184.P9671962574565230591

/-! ## A278184.P12969545319114665225

`record[A278188(A130297(n+1))]`
-/

namespace A278184.P12969545319114665225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278184.P12969545319114665225

/-! ## A278184.P11418317610478566454

`A278188(A034856(n+2))+char[16]`
-/

namespace A278184.P11418317610478566454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A278184.P11418317610478566454

/-! ## A278184.P9827363245246872826

`A057427(n)*A278188(A034856(n+2))`
-/

namespace A278184.P9827363245246872826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278188 (A034856 (n + 2)).toNat

end

end A278184.P9827363245246872826

/-! ## A278184.P10794799444935062972

`abs(A033999(n))*A278188(A034856(n+2))`
-/

namespace A278184.P10794799444935062972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A278188 (A034856 (n + 2)).toNat

end

end A278184.P10794799444935062972

/-!
# A278185: Number of nX4 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278185, there is no canonical definition to state claims against.
-/

/-! ## A278185.P4157173981093194617

`A278188(A141214(n+1))`
-/

namespace A278185.P4157173981093194617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A141214 (n + 1)).toNat

end

end A278185.P4157173981093194617

/-! ## A278185.P13769131534722733034

`A278188(A055998(n+2))`
-/

namespace A278185.P13769131534722733034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A055998 (n + 2)).toNat

end

end A278185.P13769131534722733034

/-! ## A278185.P10929875711551816720

`A278188(A155212(n)+5)`
-/

namespace A278185.P10929875711551816720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A155212 n + 5).toNat

end

end A278185.P10929875711551816720

/-! ## A278185.P13440202080277632488

`A278188(A056000(n)+7)`
-/

namespace A278185.P13440202080277632488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A056000 n + 7).toNat

end

end A278185.P13440202080277632488

/-! ## A278185.P17493314160161724602

`A278188(eq[2, A152157(n)])`
-/

namespace A278185.P17493314160161724602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278185.P17493314160161724602

/-!
# A278186: Number of nX5 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278186, there is no canonical definition to state claims against.
-/

/-! ## A278186.P15656382988814024348

`A278188(∑[n+5]+6)`
-/

namespace A278186.P15656382988814024348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A278186.P15656382988814024348

/-!
# A278187: Number of nX6 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278187, there is no canonical definition to state claims against.
-/

/-! ## A278187.P4054426622994704540

`A278188(Δ[Δ[A006504(n+1)]])`
-/

namespace A278187.P4054426622994704540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (f1 (n + 1) - f1 n).toNat

end

end A278187.P4054426622994704540

/-! ## A278187.P12927915222051396682

`A278188(Δ[A264443(n+1)]-1)`
-/

namespace A278187.P12927915222051396682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (f1 (n + 1) - f1 n - 1).toNat

end

end A278187.P12927915222051396682

/-!
# A278188: T(n,k)=Number of nXk 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278188, there is no canonical definition to state claims against.
-/

/-! ## A278188.P11737335434647706390

`A168343(2*n+5)%A168343(A168291(n))`
-/

namespace A278188.P11737335434647706390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168343 (2 * n + 5)) (A168343 (A168291 n).toNat)

end

end A278188.P11737335434647706390

/-!
# A278189: Number of 2 X n 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278189, there is no canonical definition to state claims against.
-/

/-! ## A278189.P13605352454152207570

`A278188(∑[n+1]+2)`
-/

namespace A278189.P13605352454152207570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278189.P13605352454152207570

/-! ## A278189.P316440782974529926

`record[A278188(A252460(n+1))]`
-/

namespace A278189.P316440782974529926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278189.P316440782974529926

/-! ## A278189.P14079846773626481250

`record[A010054(n)*A278188(n+2)]`
-/

namespace A278189.P14079846773626481250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A278188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278189.P14079846773626481250

/-! ## A278189.P674476672920791722

`record[gcd(A278188(n+1), A351357(n+1))]`
-/

namespace A278189.P674476672920791722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278188 (n + 1)) (A351357 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278189.P674476672920791722

/-! ## A278189.P2878352551407997732

`record[gcd(A278188(n+2), A281563(n+1))]`
-/

namespace A278189.P2878352551407997732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278188 (n + 2)) (A281563 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278189.P2878352551407997732

/-!
# A278190: Number of 3Xn 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278190, there is no canonical definition to state claims against.
-/

/-! ## A278190.P6672068931381413150

`A278188(∑[n+2]+4)`
-/

namespace A278190.P6672068931381413150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278190.P6672068931381413150

/-! ## A278190.P17758359354797763455

`record[A278188(A252460(2*n+1)+2)]`
-/

namespace A278190.P17758359354797763455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A252460 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278190.P17758359354797763455

/-! ## A278190.P12560893203498864652

`C(2, val(n^n, 11))*A278188(A167614(n+1))`
-/

namespace A278190.P12560893203498864652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (SequenceMachineLib.valuation (n ^ n) 11) : ℤ) * A278188 (A167614 (n + 1)).toNat

end

end A278190.P12560893203498864652

/-! ## A278190.P4642152998863029647

`A278188(A167614(n+1))+A025439(n)`
-/

namespace A278190.P4642152998863029647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A167614 (n + 1)).toNat + A025439 n

end

end A278190.P4642152998863029647

/-! ## A278190.P6726217377083542794

`A278188(A167614(n+1))+A178798(n)`
-/

namespace A278190.P6726217377083542794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A167614 (n + 1)).toNat + A178798 n

end

end A278190.P6726217377083542794

/-!
# A278191: Number of 4Xn 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278191, there is no canonical definition to state claims against.
-/

/-! ## A278191.P8700075319232146407

`A278188(A141214(n)+7)`
-/

namespace A278191.P8700075319232146407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A141214 n + 7).toNat

end

end A278191.P8700075319232146407

/-! ## A278191.P13711672805450095613

`A278188(A052905(n)+9)`
-/

namespace A278191.P13711672805450095613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A052905 n + 9).toNat

end

end A278191.P13711672805450095613

/-! ## A278191.P10861692287255672689

`A278188(A055999(n)+10)`
-/

namespace A278191.P10861692287255672689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A055999 n + 10).toNat

end

end A278191.P10861692287255672689

/-! ## A278191.P15278454723874354972

`A278188(A167614(n+2)+1)`
-/

namespace A278191.P15278454723874354972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A167614 (n + 2) + 1).toNat

end

end A278191.P15278454723874354972

/-! ## A278191.P8723034511535280076

`A278188(A167499(n+2)-1)`
-/

namespace A278191.P8723034511535280076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A167499 (n + 2) - 1).toNat

end

end A278191.P8723034511535280076

/-!
# A278192: Number of 5Xn 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278192, there is no canonical definition to state claims against.
-/

/-! ## A278192.P2874805804071470816

`A278188(A167499(n+3))`
-/

namespace A278192.P2874805804071470816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A167499 (n + 3)).toNat

end

end A278192.P2874805804071470816

/-! ## A278192.P3423055003235593971

`A278188(A155212(n)+13)`
-/

namespace A278192.P3423055003235593971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A155212 n + 13).toNat

end

end A278192.P3423055003235593971

/-! ## A278192.P730297404912704157

`A278188(eq[6, A131818(n+1)])`
-/

namespace A278192.P730297404912704157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278192.P730297404912704157

/-! ## A278192.P2413363823176336394

`A278188(eq[6, A135223(n+1)])`
-/

namespace A278192.P2413363823176336394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278192.P2413363823176336394

/-! ## A278192.P12324872883098242110

`A278188(A167614(n+2)+n+6)`
-/

namespace A278192.P12324872883098242110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A278192.P12324872883098242110

/-!
# A278193: Number of 6Xn 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278193, there is no canonical definition to state claims against.
-/

/-! ## A278193.P18375814902675202771

`A278188(eq[7, A131818(n+1)])`
-/

namespace A278193.P18375814902675202771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278193.P18375814902675202771

/-! ## A278193.P12000233440640967765

`A278188(A051936(n+4)+A045918(n)+10)`
-/

namespace A278193.P12000233440640967765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A051936 (n + 4) + A045918 n + 10).toNat

end

end A278193.P12000233440640967765

/-!
# A278194: E.g.f. (1/5!)*sin^5(x)/cos(x) (coefficients of odd powers only).

The programs for A278194, there is no canonical definition to state claims against.
-/

/-! ## A278194.P15708216570276776781

`A001057(A092552(n)-n)`
-/

namespace A278194.P15708216570276776781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A092552 n - (n : ℤ)).toNat

end

end A278194.P15708216570276776781

/-!
# A278196: Partition numbers (A000041) of the form 2^2 * k for odd k.

The programs for A278196, there is no canonical definition to state claims against.
-/

/-! ## A278196.P10627804501572243867

`A000041(A278779(n+1))`
-/

namespace A278196.P10627804501572243867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A278779 (n + 1)).toNat

end

end A278196.P10627804501572243867

/-! ## A278196.P5359969157708422901

`A000041(eq[2, A278478(n)])`
-/

namespace A278196.P5359969157708422901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278196.P5359969157708422901

/-! ## A278196.P10704297886683831124

`A000041(eq[2, val(A000041(n), 2)])`
-/

namespace A278196.P10704297886683831124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278196.P10704297886683831124

/-! ## A278196.P14229907668010400527

`∑{d}[A278779(n+1), A000837(#)]`
-/

namespace A278196.P14229907668010400527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A278196.P14229907668010400527

/-! ## A278196.P10470263946726781111

`A000065(A278779(A000027(n+1)))+1`
-/

namespace A278196.P10470263946726781111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A278779 (A000027 (n + 1)).toNat).toNat + 1

end

end A278196.P10470263946726781111

/-! ## A278196.P7265538043183915853

`A035363(2*A278779(n+1))`
-/

namespace A278196.P7265538043183915853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A278779 (n + 1)).toNat

end

end A278196.P7265538043183915853

/-! ## A278196.P13119924451945656355

`A035444(4*A278779(n+1))`
-/

namespace A278196.P13119924451945656355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A278779 (n + 1)).toNat

end

end A278196.P13119924451945656355

/-!
# A278197: Partition numbers (A000041) of the form 2^3 * k for odd k.

The programs for A278197, there is no canonical definition to state claims against.
-/

/-! ## A278197.P11194332473100664597

`A000041(A278780(n+1))`
-/

namespace A278197.P11194332473100664597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A278780 (n + 1)).toNat

end

end A278197.P11194332473100664597

/-! ## A278197.P10254747747381877298

`A000041(eq[3, A278478(n)])`
-/

namespace A278197.P10254747747381877298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278197.P10254747747381877298

/-! ## A278197.P10647839996199540405

`A000065(A278780(A000027(n+1)))+1`
-/

namespace A278197.P10647839996199540405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A278780 (A000027 (n + 1)).toNat).toNat + 1

end

end A278197.P10647839996199540405

/-! ## A278197.P7486724180689918628

`A035363(2*A278780(n+1))`
-/

namespace A278197.P7486724180689918628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A278780 (n + 1)).toNat

end

end A278197.P7486724180689918628

/-! ## A278197.P779282358931834217

`A035444(4*A278780(n+1))`
-/

namespace A278197.P779282358931834217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A278780 (n + 1)).toNat

end

end A278197.P779282358931834217

/-!
# A278198: Partition numbers (A000041) of the form 2^4 * k for odd k.

The programs for A278198, there is no canonical definition to state claims against.
-/

/-! ## A278198.P989217027843677031

`A000041(A278781(n+1))`
-/

namespace A278198.P989217027843677031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A278781 (n + 1)).toNat

end

end A278198.P989217027843677031

/-! ## A278198.P4878296222903651763

`A000041(eq[4, A278478(n)])`
-/

namespace A278198.P4878296222903651763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278198.P4878296222903651763

/-! ## A278198.P12225168170956153787

`∑{d}[A278781(n+1), A000837(#)]`
-/

namespace A278198.P12225168170956153787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A278198.P12225168170956153787

/-! ## A278198.P14306383028725412728

`A035363(2*A278781(n+1))`
-/

namespace A278198.P14306383028725412728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A278781 (n + 1)).toNat

end

end A278198.P14306383028725412728

/-! ## A278198.P1237165797886673015

`A035444(4*A278781(n+1))`
-/

namespace A278198.P1237165797886673015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A278781 (n + 1)).toNat

end

end A278198.P1237165797886673015

/-! ## A278198.P4225866440061089192

`A114099(9*A278781(n+1))`
-/

namespace A278198.P4225866440061089192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (9 * A278781 (n + 1)).toNat

end

end A278198.P4225866440061089192

/-!
# A278199: 

The programs for A278199, there is no canonical definition to state claims against.
-/

/-! ## A278199.P969811877052557186

`A000041(A278782(n+1))`
-/

namespace A278199.P969811877052557186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A278782 (n + 1)).toNat

end

end A278199.P969811877052557186

