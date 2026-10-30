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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B005.C000
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A320600: Let w = (w_1, w_2, ..., w_n) be a permutation of the integers {1, 2, ..., n}, and let f(k, w) be the length of the longest monotone subsequence of (w_k, w_{k+1}, ..., w_n) starting with w_k. Then a(n) is the number of permutations w in S_n such that Sum_{k=1..n} f(k,w) is minimized.

The programs for A320600, there is no canonical definition to state claims against.
-/

/-! ## A320600.P8836680337512426247

`ceil(sqrt((A023651(n+1)+1)/ϕ))`
-/

namespace A320600.P8836680337512426247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A023651 (n + 1) + 1 : ℝ) / Real.goldenRatio)⌉

end

end A320600.P8836680337512426247

/-! ## A320600.P2086606923568383802

`A201161(A238496(n+1))`
-/

namespace A320600.P2086606923568383802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201161 (A238496 (n + 1)).toNat

end

end A320600.P2086606923568383802

/-!
# A320601: Exponents of powers of two having a digit zero in decimal.

The programs for A320601, there is no canonical definition to state claims against.
-/

/-! ## A320601.P9265107290193982086

`eq[A014257(n), A033683(n)]`
-/

namespace A320601.P9265107290193982086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320601.P9265107290193982086

/-! ## A320601.P6421758061398422124

`eq[A014257(n), A098108(n)]`
-/

namespace A320601.P6421758061398422124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320601.P6421758061398422124

/-! ## A320601.P4959574218618095980

`eq[A014257(n), A302048(n)]`
-/

namespace A320601.P4959574218618095980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320601.P4959574218618095980

/-! ## A320601.P13637686202352959012

`eq[A014257(n), A302049(n+1)]`
-/

namespace A320601.P13637686202352959012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320601.P13637686202352959012

/-! ## A320601.P7232381903341407385

`eq[A014257(n), A165111(A165111(n))]`
-/

namespace A320601.P7232381903341407385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 (A165111 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320601.P7232381903341407385

/-! ## A320601.P11420836095872180693

`comp[A007377(n+1)]`
-/

namespace A320601.P11420836095872180693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320601.P11420836095872180693

/-! ## A320601.P16011770759545891304

`comp[eq[0, A027870(n)]]`
-/

namespace A320601.P16011770759545891304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A320601.P16011770759545891304

/-! ## A320601.P3775085227867353511

`comp[eq[0, A224782(n)]]`
-/

namespace A320601.P3775085227867353511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A320601.P3775085227867353511

/-! ## A320601.P3327850118778311899

`comp[eq[0, A330024(n)]]`
-/

namespace A320601.P3327850118778311899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330024 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A320601.P3327850118778311899

/-! ## A320601.P7201252404230171335

`comp[eq[2, A103663(n)]]`
-/

namespace A320601.P7201252404230171335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103663 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A320601.P7201252404230171335

/-!
# A320602: Irregular table read by rows: T(n,k) = (k+s)^(k+s) mod n, s = lcm(n, A002322(n)) = A174824(n), 0 <= k <= s - 1.

The programs for A320602, there is no canonical definition to state claims against.
-/

/-! ## A320602.P12155803734894158306

`A083890(record[A303648(n)])`
-/

namespace A320602.P12155803734894158306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320602.P12155803734894158306

/-! ## A320602.P12175987760222972646

`and(A078136(n+1), A084097(n))`
-/

namespace A320602.P12175987760222972646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078136 (n + 1)) (A084097 n)

end

end A320602.P12175987760222972646

/-! ## A320602.P12694348257807007873

`and(A078136(n+1), A288638(n))`
-/

namespace A320602.P12694348257807007873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078136 (n + 1)) (A288638 n)

end

end A320602.P12694348257807007873

/-! ## A320602.P7614758764037432042

`A078136(n+1)%(A007318(n)+1)`
-/

namespace A320602.P7614758764037432042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078136 (n + 1)) (A007318 n + 1)

end

end A320602.P7614758764037432042

/-! ## A320602.P3135322380265193009

`A097805(gcd(n, A167560(3*n+1)))`
-/

namespace A320602.P3135322380265193009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Int.gcd (n : ℤ) (A167560 (3 * n + 1)))

end

end A320602.P3135322380265193009

/-!
# A320604: Chromatic number of the n-polygon diagonal intersection graph.

The programs for A320604, the canonical program `A320604.P3693299543244141107` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320604 has offset 1).

The definition of A320604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320604.P3693299543244141107

`a(n-6)` with `a(0)=4, a(1)=3, a(2)=3, a(3)=3, a(4)=4, a(5)=3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320604

/-- `a(n-6)` -/
def P3693299543244141107.Spec : Prop :=
  ∀ n, (P3693299543244141107.a n : ℤ) = A320604 (n + 1)

theorem P3693299543244141107.correct : P3693299543244141107.Spec := by
  intro n
  simp only [A320604, Nat.add_sub_cancel]

end A320604

/-!
# A320606: Regular triangle read by rows where T(n,k) is the number of k-uniform hypergraphs spanning n labeled vertices where every two vertices appear together in some edge, n >= 0, 0 <= k <= n.

The programs for A320606, there is no canonical definition to state claims against.
-/

/-! ## A320606.P8589141099978865535

`A240500(A265373(n+1)+4)`
-/

namespace A320606.P8589141099978865535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240500 (A265373 (n + 1) + 4).toNat

end

end A320606.P8589141099978865535

/-! ## A320606.P12470642981695738631

`A269129(n)^(floor(n²/12)-n)²`
-/

namespace A320606.P12470642981695738631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269129 n : ℚ) ^ ((⌊(n ^ 2 : ℚ) / 12⌋ - (n : ℤ)) ^ 2 : ℤ)

end

end A320606.P12470642981695738631

/-! ## A320606.P13367429832867222241

`A097576(A182797(n+1))`
-/

namespace A320606.P13367429832867222241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 (A182797 (n + 1)).toNat

end

end A320606.P13367429832867222241

/-! ## A320606.P7630850898135892644

`A174204(A144207(n+1))`
-/

namespace A320606.P7630850898135892644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174204 (A144207 (n + 1)).toNat

end

end A320606.P7630850898135892644

/-! ## A320606.P12006201738259903488

`A151962(A212163(n+1))`
-/

namespace A320606.P12006201738259903488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A212163 (n + 1)).toNat

end

end A320606.P12006201738259903488

/-!
# A320608: Number of parts in all partitions of n in which no part occurs more than five times.

The programs for A320608, there is no canonical definition to state claims against.
-/

/-! ## A320608.P12559614332434470254

`A210485(∑[n+3]-A004281(n))`
-/

namespace A320608.P12559614332434470254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004281 n).toNat

end

end A320608.P12559614332434470254

/-! ## A320608.P18289364918978283020

`∑[A115104(n+1)%A198277(A092110(n+1))]-n`
-/

namespace A320608.P18289364918978283020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115104 (n + 1)) (A198277 (A092110 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A320608.P18289364918978283020

/-!
# A320611: Number of parts in all partitions of n in which no part occurs more than eight times.

The programs for A320611, there is no canonical definition to state claims against.
-/

/-! ## A320611.P394991761039097269

`A006128(n+1)-A327198(A324088(n+1))`
-/

namespace A320611.P394991761039097269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A327198 (A324088 (n + 1)).toNat

end

end A320611.P394991761039097269

/-! ## A320611.P16144649082039186000

`∪[A006128(n+1), A047201(A337597(3*n))]`
-/

namespace A320611.P16144649082039186000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A337597 (3 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320611.P16144649082039186000

/-! ## A320611.P6455533548174449331

`A006128(n+1)-(n+1)*A102683(A114551(n))`
-/

namespace A320611.P6455533548174449331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (n + 1 : ℤ) * A102683 (A114551 n).toNat

end

end A320611.P6455533548174449331

/-!
# A320612: Number of parts in all partitions of n in which no part occurs more than nine times.

The programs for A320612, there is no canonical definition to state claims against.
-/

/-! ## A320612.P10312432693022589039

`record[A006128(n+1)%A228653(3*(n+1))]`
-/

namespace A320612.P10312432693022589039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006128 (n + 1)) (A228653 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320612.P10312432693022589039

/-! ## A320612.P6390929170343168693

`A320613(n+1)-A185255(A261776(n))`
-/

namespace A320612.P6390929170343168693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320613 (n + 1) - A185255 (A261776 n).toNat

end

end A320612.P6390929170343168693

/-! ## A320612.P10774566632934614758

`A320613(n+1)-A262227(A184974(n))`
-/

namespace A320612.P10774566632934614758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320613 (n + 1) - A262227 (A184974 n).toNat

end

end A320612.P10774566632934614758

/-! ## A320612.P2354955011697786063

`A320613(n+1)-A185255(A139544(n+1))`
-/

namespace A320612.P2354955011697786063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320613 (n + 1) - A185255 (A139544 (n + 1)).toNat

end

end A320612.P2354955011697786063

/-! ## A320612.P967843888167085151

`Δ[A124920(n+1)]-A185255(A139544(n+1))`
-/

namespace A320612.P967843888167085151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A185255 (A139544 (n + 1)).toNat

end

end A320612.P967843888167085151

/-!
# A320613: Number of parts in all partitions of n in which no part occurs more than ten times.

The programs for A320613, there is no canonical definition to state claims against.
-/

/-! ## A320613.P14106193154172116294

`record[lcm(A137163(n), A181187(n+1))]`
-/

namespace A320613.P14106193154172116294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137163 n) (A181187 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320613.P14106193154172116294

/-! ## A320613.P16179532355077722193

`A212010(∑[n+1])`
-/

namespace A320613.P16179532355077722193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320613.P16179532355077722193

/-! ## A320613.P16836290035482017315

`∑[A212000(∑[n+1])]`
-/

namespace A320613.P16836290035482017315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212000 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320613.P16836290035482017315

/-! ## A320613.P14343625969389999006

`A006128(∑[(n-∑{digits}[n, #])!])`
-/

namespace A320613.P14343625969389999006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320613.P14343625969389999006

/-! ## A320613.P9258720775365199767

`A006128(∑[n!/∏{digits}[n, #!]])`
-/

namespace A320613.P9258720775365199767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A320613.P9258720775365199767

/-!
# A320614: Expansion of (1 + x^5) / ((1 - x^2) * (1 - x^3) * (1 - x^7)) in powers of x.

The programs for A320614, the canonical program `A320614.P8344460769650114693` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320614 has offset 0).

The definition of A320614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-x^2-x^3+x^5-x^7+x^9+x^10-x^12))` (program `A320614.P8344460769650114693`, by `A320614.P8344460769650114693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320614.P8344460769650114693

`ogf((1+x^5)/(1-x^2-x^3+x^5-x^7+x^9+x^10-x^12))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320614

/-- `ogf((1+x^5)/(1-x^2-x^3+x^5-x^7+x^9+x^10-x^12))` -/
def P8344460769650114693.Spec : Prop :=
  ∀ n, P8344460769650114693.a n = A320614 n

theorem P8344460769650114693.correct : P8344460769650114693.Spec := by
  intro n
  simp only [A320614]

end A320614

/-! ## A320614.P3148838070888627648

`A008748(n)-A036405(n)`
-/

namespace A320614.P3148838070888627648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A036405 n

end

end A320614.P3148838070888627648

namespace A320614

/-- `A008748(n)-A036405(n)` -/
def P3148838070888627648.Spec : Prop :=
  ∀ n, P3148838070888627648.a n = A320614 n

end A320614

/-! ## A320614.P13690933262156292364

`A025829(2*n)`
-/

namespace A320614.P13690933262156292364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 (2 * n)

end

end A320614.P13690933262156292364

namespace A320614

/-- `A025829(2*n)` -/
def P13690933262156292364.Spec : Prop :=
  ∀ n, P13690933262156292364.a n = A320614 n

end A320614

/-! ## A320614.P14846619310721601248

`A025829(A004277(n))+A000007(n)`
-/

namespace A320614.P14846619310721601248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 (A004277 n).toNat + A000007 n

end

end A320614.P14846619310721601248

namespace A320614

/-- `A025829(A004277(n))+A000007(n)` -/
def P14846619310721601248.Spec : Prop :=
  ∀ n, P14846619310721601248.a n = A320614 n

end A320614

/-! ## A320614.P169676512398016577

`A008671(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A320614.P169676512398016577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008671 (2 * n) - a (n - 1)

end

end A320614.P169676512398016577

namespace A320614

/-- `A008671(2*n)-a(n-1)` -/
def P169676512398016577.Spec : Prop :=
  ∀ n, P169676512398016577.a n = A320614 n

end A320614

/-! ## A320614.P1152173830864878294

`A008671(n)+A008614(A020742(n+2))`
-/

namespace A320614.P1152173830864878294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008671 n + A008614 (A020742 (n + 2)).toNat

end

end A320614.P1152173830864878294

namespace A320614

/-- `A008671(n)+A008614(A020742(n+2))` -/
def P1152173830864878294.Spec : Prop :=
  ∀ n, P1152173830864878294.a n = A320614 n

end A320614

/-! ## A320614.P16629970370821125378

`A008614(2*n)+A008614(A020742(n+2))`
-/

namespace A320614.P16629970370821125378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (2 * n) + A008614 (A020742 (n + 2)).toNat

end

end A320614.P16629970370821125378

namespace A320614

/-- `A008614(2*n)+A008614(A020742(n+2))` -/
def P16629970370821125378.Spec : Prop :=
  ∀ n, P16629970370821125378.a n = A320614 n

end A320614

/-! ## A320614.P6748441480796780892

`A130518(2*(n+2))-(A011867(3*n+4)+A002264(2*(n+2)))`
-/

namespace A320614.P6748441480796780892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (2 * (n + 2)) - (A011867 (3 * n + 4) + A002264 (2 * (n + 2)))

end

end A320614.P6748441480796780892

namespace A320614

/-- `A130518(2*(n+2))-(A011867(3*n+4)+A002264(2*(n+2)))` -/
def P6748441480796780892.Spec : Prop :=
  ∀ n, P6748441480796780892.a n = A320614 n

end A320614

/-! ## A320614.P11055439222272541454

`A025897(4*n)`
-/

namespace A320614.P11055439222272541454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (4 * n)

end

end A320614.P11055439222272541454

namespace A320614

/-- `A025897(4*n)` -/
def P11055439222272541454.Spec : Prop :=
  ∀ n, P11055439222272541454.a n = A320614 n

end A320614

/-! ## A320614.P9730596918168132900

`∑[A002264(4*(n+1))]-A011867(3*n+4)`
-/

namespace A320614.P9730596918168132900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011867 (3 * n + 4)

end

end A320614.P9730596918168132900

namespace A320614

/-- `∑[A002264(4*(n+1))]-A011867(3*n+4)` -/
def P9730596918168132900.Spec : Prop :=
  ∀ n, P9730596918168132900.a n = A320614 n

end A320614

/-! ## A320614.P698497760514501640

`A029214(4*n)-A029214(A005818(2*n+1))`
-/

namespace A320614.P698497760514501640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (4 * n) - A029214 (A005818 (2 * n + 1)).toNat

end

end A320614.P698497760514501640

namespace A320614

/-- `A029214(4*n)-A029214(A005818(2*n+1))` -/
def P698497760514501640.Spec : Prop :=
  ∀ n, P698497760514501640.a n = A320614 n

end A320614

/-! ## A320614.P13346692484813650036

`∑[A242062(5*n+1)-A004396(n)]`
-/

namespace A320614.P13346692484813650036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (5 * n + 1) - A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320614.P13346692484813650036

namespace A320614

/-- `∑[A242062(5*n+1)-A004396(n)]` -/
def P13346692484813650036.Spec : Prop :=
  ∀ n, P13346692484813650036.a n = A320614 n

end A320614

/-! ## A320614.P2526938194255777772

`A025914(6*n)`
-/

namespace A320614.P2526938194255777772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 (6 * n)

end

end A320614.P2526938194255777772

namespace A320614

/-- `A025914(6*n)` -/
def P2526938194255777772.Spec : Prop :=
  ∀ n, P2526938194255777772.a n = A320614 n

end A320614

/-! ## A320614.P15702928131638170092

`A008748(n)-A242062(A117950(n))`
-/

namespace A320614.P15702928131638170092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A242062 (A117950 n).toNat

end

end A320614.P15702928131638170092

namespace A320614

/-- `A008748(n)-A242062(A117950(n))` -/
def P15702928131638170092.Spec : Prop :=
  ∀ n, P15702928131638170092.a n = A320614 n

end A320614

/-!
# A320615: Number of ordered set partitions of [n] where k = two is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320615, the canonical program `A320615.P3300920209058844588` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320615 has offset 2).

The definition of A320615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320615.P3300920209058844588

`A240172(n+2)-(n+2)!`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320615

/-- `A240172(n+2)-(n+2)!` -/
def P3300920209058844588.Spec : Prop :=
  ∀ n, P3300920209058844588.a n = A320615 (n + 2)

theorem P3300920209058844588.correct : P3300920209058844588.Spec := by
  intro n
  simp only [A320615, Nat.add_sub_cancel]

end A320615

/-! ## A320615.P16702394242655355014

`A276891(∑[n+2]+3)`
-/

namespace A320615.P16702394242655355014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320615.P16702394242655355014

namespace A320615

/-- `A276891(∑[n+2]+3)` -/
def P16702394242655355014.Spec : Prop :=
  ∀ n, P16702394242655355014.a n = A320615 (n + 2)

end A320615

/-! ## A320615.P7569269673576347723

`record[A276891(A000124(n)+1)]`
-/

namespace A320615.P7569269673576347723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320615.P7569269673576347723

namespace A320615

/-- `record[A276891(A000124(n)+1)]` -/
def P7569269673576347723.Spec : Prop :=
  ∀ n, P7569269673576347723.a n = A320615 (n + 2)

end A320615

/-! ## A320615.P9450910942605592123

`record[A276891(Δ[A180415(n+1)])]`
-/

namespace A320615.P9450910942605592123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320615.P9450910942605592123

namespace A320615

/-- `record[A276891(Δ[A180415(n+1)])]` -/
def P9450910942605592123.Spec : Prop :=
  ∀ n, P9450910942605592123.a n = A320615 (n + 2)

end A320615

/-! ## A320615.P11518887403882821394

`record[gcd(A276890(n), A276891(n+3))]`
-/

namespace A320615.P11518887403882821394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276890 n) (A276891 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320615.P11518887403882821394

namespace A320615

/-- `record[gcd(A276890(n), A276891(n+3))]` -/
def P11518887403882821394.Spec : Prop :=
  ∀ n, (P11518887403882821394.a n : ℤ) = A320615 (n + 2)

end A320615

/-!
# A320616: Number of ordered set partitions of [n] where k = three is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320616, there is no canonical definition to state claims against.
-/

/-! ## A320616.P12585370658215892106

`A276893(n+3)-A240172(n+3)`
-/

namespace A320616.P12585370658215892106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276893 (n + 3) - A240172 (n + 3)

end

end A320616.P12585370658215892106

/-! ## A320616.P10628070745356212861

`A276891(A167614(n+2))`
-/

namespace A320616.P10628070745356212861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A167614 (n + 2)).toNat

end

end A320616.P10628070745356212861

/-! ## A320616.P11429024790059612033

`A276891(A141214(n)+6)`
-/

namespace A320616.P11429024790059612033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A141214 n + 6).toNat

end

end A320616.P11429024790059612033

/-! ## A320616.P10563633925795473467

`A276891(A052905(n)+8)`
-/

namespace A320616.P10563633925795473467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A052905 n + 8).toNat

end

end A320616.P10563633925795473467

/-! ## A320616.P4777852862449813035

`A276891(A055999(n)+9)`
-/

namespace A320616.P4777852862449813035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A055999 n + 9).toNat

end

end A320616.P4777852862449813035

/-!
# A320617: Number of ordered set partitions of [n] where k = four is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320617, there is no canonical definition to state claims against.
-/

/-! ## A320617.P3663484487066151695

`A276891(eq[3, A141169(n)])`
-/

namespace A320617.P3663484487066151695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320617.P3663484487066151695

/-! ## A320617.P11897105179245472253

`A276891(eq[4, A002262(n)])`
-/

namespace A320617.P11897105179245472253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320617.P11897105179245472253

/-! ## A320617.P6195177159927724381

`A276891(eq[5, A002260(n+1)])`
-/

namespace A320617.P6195177159927724381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320617.P6195177159927724381

/-! ## A320617.P501880938234789230

`A276891(eq[5, A134868(n+1)])`
-/

namespace A320617.P501880938234789230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320617.P501880938234789230

/-! ## A320617.P17182346443643729453

`A276891(eq[2, A025682(n+1)-2])`
-/

namespace A320617.P17182346443643729453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320617.P17182346443643729453

/-!
# A320618: Number of ordered set partitions of [n] where k = five is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320618, there is no canonical definition to state claims against.
-/

/-! ## A320618.P17927860767106329069

`A276891(A167499(n+4))`
-/

namespace A320618.P17927860767106329069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A167499 (n + 4)).toNat

end

end A320618.P17927860767106329069

/-! ## A320618.P9520324348939746163

`A276891(eq[5, A002262(n)])`
-/

namespace A320618.P9520324348939746163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320618.P9520324348939746163

/-! ## A320618.P4547084170626121829

`A276891(eq[5, A141169(n)])`
-/

namespace A320618.P4547084170626121829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320618.P4547084170626121829

/-! ## A320618.P17548544288295721433

`A276891(eq[5, A025682(n+1)])`
-/

namespace A320618.P17548544288295721433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320618.P17548544288295721433

/-! ## A320618.P10971388559483330592

`A276891(eq[6, A002260(n+1)])`
-/

namespace A320618.P10971388559483330592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320618.P10971388559483330592

/-!
# A320619: Number of ordered set partitions of [n] where k = six is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320619, there is no canonical definition to state claims against.
-/

/-! ## A320619.P8488739933421486549

`A276891(A166136(n+5))`
-/

namespace A320619.P8488739933421486549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A166136 (n + 5)).toNat

end

end A320619.P8488739933421486549

/-! ## A320619.P3133298955624654393

`A276891(eq[6, A002262(n)])`
-/

namespace A320619.P3133298955624654393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320619.P3133298955624654393

/-! ## A320619.P16850200074690470953

`A276891(eq[8, A141169(n)])`
-/

namespace A320619.P16850200074690470953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320619.P16850200074690470953

/-! ## A320619.P797709832684310070

`A276891(A000217(n+6)+6)`
-/

namespace A320619.P797709832684310070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (A000217 (n + 6) + 6).toNat

end

end A320619.P797709832684310070

/-! ## A320619.P12332713999579439018

`A276891(eq[6, A025682(n+1)])`
-/

namespace A320619.P12332713999579439018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320619.P12332713999579439018

/-!
# A320620: Number of ordered set partitions of [n] where k = seven is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320620, there is no canonical definition to state claims against.
-/

/-! ## A320620.P11882420218364187068

`A276891(eq[7, A002262(n)])`
-/

namespace A320620.P11882420218364187068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320620.P11882420218364187068

/-! ## A320620.P6368054624878293524

`A276891(eq[7, A025682(n+1)])`
-/

namespace A320620.P6368054624878293524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320620.P6368054624878293524

/-! ## A320620.P17212651873081821310

`A276891(eq[7, A144328(n+1)])`
-/

namespace A320620.P17212651873081821310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320620.P17212651873081821310

/-! ## A320620.P5202339097348114092

`A276891(eq[8, A002260(n+1)])`
-/

namespace A320620.P5202339097348114092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320620.P5202339097348114092

/-! ## A320620.P7325989344905357068

`A276891(eq[8, A134868(n+1)])`
-/

namespace A320620.P7325989344905357068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320620.P7325989344905357068

/-!
# A320621: Number of ordered set partitions of [n] where k = eight is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320621, there is no canonical definition to state claims against.
-/

/-! ## A320621.P10923337180584747060

`A276891(eq[8, A002262(n)])`
-/

namespace A320621.P10923337180584747060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320621.P10923337180584747060

/-! ## A320621.P12893763076316704418

`A276891(eq[8, A025682(n+1)])`
-/

namespace A320621.P12893763076316704418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320621.P12893763076316704418

/-! ## A320621.P11891163114878971698

`A276891(eq[8, A144328(n+1)])`
-/

namespace A320621.P11891163114878971698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320621.P11891163114878971698

/-! ## A320621.P10343743257684799407

`A276891(eq[9, A002260(n+1)])`
-/

namespace A320621.P10343743257684799407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320621.P10343743257684799407

/-! ## A320621.P17580945364378359946

`A276891(eq[9, A134868(n+1)])`
-/

namespace A320621.P17580945364378359946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320621.P17580945364378359946

/-!
# A320622: Number of ordered set partitions of [n] where k = nine is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320622, there is no canonical definition to state claims against.
-/

/-! ## A320622.P12292525404313874

`A276891(eq[9, A002262(n)])`
-/

namespace A320622.P12292525404313874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320622.P12292525404313874

/-! ## A320622.P17481126933001033353

`A276891(eq[9, A025682(n+1)])`
-/

namespace A320622.P17481126933001033353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320622.P17481126933001033353

/-! ## A320622.P1571669834578434140

`A276891(eq[9, A144328(n+1)])`
-/

namespace A320622.P1571669834578434140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320622.P1571669834578434140

/-! ## A320622.P3911576534924813174

`A276891(eq[10, A002260(n+1)])`
-/

namespace A320622.P3911576534924813174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320622.P3911576534924813174

/-! ## A320622.P5864005254342080963

`A276891(eq[10, A134868(n+1)])`
-/

namespace A320622.P5864005254342080963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320622.P5864005254342080963

/-!
# A320623: Number of ordered set partitions of [n] where k = ten is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A320623, there is no canonical definition to state claims against.
-/

/-! ## A320623.P16512309955554368522

`A276891(eq[10, A002262(n)])`
-/

namespace A320623.P16512309955554368522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320623.P16512309955554368522

/-! ## A320623.P8898104879935661679

`A276891(eq[10, A025682(n+1)])`
-/

namespace A320623.P8898104879935661679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320623.P8898104879935661679

/-! ## A320623.P8928073908378760277

`A276891(eq[10, A144328(n+1)])`
-/

namespace A320623.P8928073908378760277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320623.P8928073908378760277

/-! ## A320623.P11995889138813494144

`A276891(eq[11, A002260(n+1)])`
-/

namespace A320623.P11995889138813494144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320623.P11995889138813494144

/-! ## A320623.P9154474128029571716

`A276891(eq[11, A134868(n+1)])`
-/

namespace A320623.P9154474128029571716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320623.P9154474128029571716

/-!
# A320624: a(n) = (A006134((prime(n)-1)/2) - Legendre(prime(n), 3))/prime(n).

The programs for A320624, there is no canonical definition to state claims against.
-/

/-! ## A320624.P14971720725766846197

`A320194(n)+A160124(C(ceil(3*n/2), n))`
-/

namespace A320624.P14971720725766846197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320194 n + A160124 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat n)

end

end A320624.P14971720725766846197

/-! ## A320624.P6303608452682282867

`A324382(A039734(n+2)+A030853(n+1))`
-/

namespace A320624.P6303608452682282867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324382 (A039734 (n + 2) + A030853 (n + 1)).toNat

end

end A320624.P6303608452682282867

/-!
# A320625: a(n) = A006134((3^n-1)/2)/3^n.

The programs for A320625, there is no canonical definition to state claims against.
-/

/-! ## A320625.P6537249387304386452

`A006134((3^n-1)/2)/3^n`
-/

namespace A320625.P6537249387304386452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 (SequenceMachineLib.roundAway (((3 ^ n : ℤ) - 1 : ℚ) / 2)).toNat : ℚ) / (3 ^ n : ℚ)

end

end A320625.P6537249387304386452

/-!
# A320626: a(n) = (A006134(prime(n)-1) - Legendre(prime(n), 3))/prime(n)^2.

The programs for A320626, there is no canonical definition to state claims against.
-/

/-! ## A320626.P5413715063523507193

`A048680(∑{d}[A221535(n), #])`
-/

namespace A320626.P5413715063523507193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A320626.P5413715063523507193

/-!
# A320627: a(n) = A006134(A038754(n) - 1)/3^n.

The programs for A320627, the canonical program `A320627.P6502014669296269449` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320627 has offset 0).

The definition of A320627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320627.P6502014669296269449

`A006134(A038754(n)-1)/3^n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A320627

/-- `A006134(A038754(n)-1)/3^n` -/
def P6502014669296269449.Spec : Prop :=
  ∀ n, P6502014669296269449.a n = (A320627 n : ℚ)

end A320627

/-!
# A320628: Products of primes of nonprime index.

The programs for A320628, the canonical program `A320628.P4089143697387148501` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320628 has offset 1).

The definition of A320628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6921 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320628.P2219595178657872042

`lt[A322027(n+1), 2]+1`
-/

namespace A320628.P2219595178657872042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320628.P2219595178657872042

namespace A320628

/-- `lt[A322027(n+1), 2]+1` -/
def P2219595178657872042.Spec : Prop :=
  ∀ n, (P2219595178657872042.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P11241836814371775022

`eq[1, A322027(2*(n+1))]+1`
-/

namespace A320628.P11241836814371775022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P11241836814371775022

namespace A320628

/-- `eq[1, A322027(2*(n+1))]+1` -/
def P11241836814371775022.Spec : Prop :=
  ∀ n, (P11241836814371775022.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P2422447874724324082

`eq[1, A322028(2*(n+1))]+1`
-/

namespace A320628.P2422447874724324082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P2422447874724324082

namespace A320628

/-- `eq[1, A322028(2*(n+1))]+1` -/
def P2422447874724324082.Spec : Prop :=
  ∀ n, (P2422447874724324082.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P4089143697387148501

`eq[0, A257994(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A320628

/-- `eq[0, A257994(n+1)]+1` -/
def P4089143697387148501.Spec : Prop :=
  ∀ n, (P4089143697387148501.a n : ℤ) = A320628 (n + 1)

theorem P4089143697387148501.correct : P4089143697387148501.Spec := by
  intro n
  simp only [A320628, Nat.add_sub_cancel]

end A320628

/-! ## A320628.P15796213680245025688

`record[n/a(A257994(n))]` with `a(0)=1, a(1)=2`
-/

namespace A320628.P15796213680245025688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℚ) / f1 (A257994 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320628.P15796213680245025688

namespace A320628

/-- `record[n/a(A257994(n))]` -/
def P15796213680245025688.Spec : Prop :=
  ∀ n, P15796213680245025688.a n = (A320628 (n + 1) : ℚ)

end A320628

/-! ## A320628.P2413594200144446220

`record[A360329(1+n)]`
-/

namespace A320628.P2413594200144446220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320628.P2413594200144446220

namespace A320628

/-- `record[A360329(1+n)]` -/
def P2413594200144446220.Spec : Prop :=
  ∀ n, P2413594200144446220.a n = A320628 (n + 1)

end A320628

/-! ## A320628.P1390627796465392274

`eq[1, A295665(n+1)]+1`
-/

namespace A320628.P1390627796465392274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P1390627796465392274

namespace A320628

/-- `eq[1, A295665(n+1)]+1` -/
def P1390627796465392274.Spec : Prop :=
  ∀ n, (P1390627796465392274.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P17906574439634166425

`eq[1, A360325(1+n)]+1`
-/

namespace A320628.P17906574439634166425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P17906574439634166425

namespace A320628

/-- `eq[1, A360325(1+n)]+1` -/
def P17906574439634166425.Spec : Prop :=
  ∀ n, (P17906574439634166425.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P13341329179501296859

`eq[1, A360326(n+1)]+1`
-/

namespace A320628.P13341329179501296859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P13341329179501296859

namespace A320628

/-- `eq[1, A360326(n+1)]+1` -/
def P13341329179501296859.Spec : Prop :=
  ∀ n, (P13341329179501296859.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P24093535904290173

`eq[1, A360327(n+1)]+1`
-/

namespace A320628.P24093535904290173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P24093535904290173

namespace A320628

/-- `eq[1, A360327(n+1)]+1` -/
def P24093535904290173.Spec : Prop :=
  ∀ n, (P24093535904290173.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P15999405884793087893

`lt[A279952(n+1), 1]+1`
-/

namespace A320628.P15999405884793087893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320628.P15999405884793087893

namespace A320628

/-- `lt[A279952(n+1), 1]+1` -/
def P15999405884793087893.Spec : Prop :=
  ∀ n, (P15999405884793087893.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P651709479261815351

`lt[n, A360331(n+1)]+1`
-/

namespace A320628.P651709479261815351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A320628.P651709479261815351

namespace A320628

/-- `lt[n, A360331(n+1)]+1` -/
def P651709479261815351.Spec : Prop :=
  ∀ n, (P651709479261815351.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P8245131371522120234

`eq[1, A257994(A008486(n))]`
-/

namespace A320628.P8245131371522120234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P8245131371522120234

namespace A320628

/-- `eq[1, A257994(A008486(n))]` -/
def P8245131371522120234.Spec : Prop :=
  ∀ n, (P8245131371522120234.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P12169635965452763676

`eq[1, A257994(A004277(n)+n)]`
-/

namespace A320628.P12169635965452763676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A004277 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P12169635965452763676

namespace A320628

/-- `eq[1, A257994(A004277(n)+n)]` -/
def P12169635965452763676.Spec : Prop :=
  ∀ n, (P12169635965452763676.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P161780166563939913

`eq[1, A257994(A008574(n)-n)]`
-/

namespace A320628.P161780166563939913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P161780166563939913

namespace A320628

/-- `eq[1, A257994(A008574(n)-n)]` -/
def P161780166563939913.Spec : Prop :=
  ∀ n, (P161780166563939913.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P8499834253283911377

`eq[1, A322028(A257088(2*n))]`
-/

namespace A320628.P8499834253283911377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (A257088 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P8499834253283911377

namespace A320628

/-- `eq[1, A322028(A257088(2*n))]` -/
def P8499834253283911377.Spec : Prop :=
  ∀ n, (P8499834253283911377.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P4556975665545736661

`record[A032742(n+1)/A295665(n+1)]`
-/

namespace A320628.P4556975665545736661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A295665 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320628.P4556975665545736661

namespace A320628

/-- `record[A032742(n+1)/A295665(n+1)]` -/
def P4556975665545736661.Spec : Prop :=
  ∀ n, P4556975665545736661.a n = (A320628 (n + 1) : ℚ)

end A320628

/-! ## A320628.P17851637621579846840

`eq[1, A257994(A008706(n))]`
-/

namespace A320628.P17851637621579846840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P17851637621579846840

namespace A320628

/-- `eq[1, A257994(A008706(n))]` -/
def P17851637621579846840.Spec : Prop :=
  ∀ n, (P17851637621579846840.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P10966087942640534739

`eq[1, A257994(A008458(n))]`
-/

namespace A320628.P10966087942640534739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P10966087942640534739

namespace A320628

/-- `eq[1, A257994(A008458(n))]` -/
def P10966087942640534739.Spec : Prop :=
  ∀ n, (P10966087942640534739.a n : ℤ) = A320628 (n + 1)

end A320628

/-! ## A320628.P13907746615144610871

`eq[1, A257994(A298028(n))]`
-/

namespace A320628.P13907746615144610871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A298028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320628.P13907746615144610871

namespace A320628

/-- `eq[1, A257994(A298028(n))]` -/
def P13907746615144610871.Spec : Prop :=
  ∀ n, (P13907746615144610871.a n : ℤ) = A320628 (n + 1)

end A320628

/-!
# A320629: Products of odd primes of nonprime index.

The programs for A320629, the canonical program `A320629.P3731624852528716769` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320629 has offset 1).

The definition of A320629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320629.P7366076005555448160

`∩[2*n+1, A320628(n+1)]`
-/

namespace A320629.P7366076005555448160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320629.P7366076005555448160

namespace A320629

/-- `∩[2*n+1, A320628(n+1)]` -/
def P7366076005555448160.Spec : Prop :=
  ∀ n, (P7366076005555448160.a n : ℤ) = A320629 (n + 1)

end A320629

/-! ## A320629.P3731624852528716769

`record[A000265(A320628(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A320629

/-- `record[A000265(A320628(n+1))]` -/
def P3731624852528716769.Spec : Prop :=
  ∀ n, P3731624852528716769.a n = A320629 (n + 1)

theorem P3731624852528716769.correct : P3731624852528716769.Spec := by
  intro n
  simp only [A320629, Nat.add_sub_cancel]

end A320629

/-! ## A320629.P15411288163445802880

`filter[A320628(n+1), A093719(#)]`
-/

namespace A320629.P15411288163445802880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A320629.P15411288163445802880

namespace A320629

/-- `filter[A320628(n+1), A093719(#)]` -/
def P15411288163445802880.Spec : Prop :=
  ∀ n, P15411288163445802880.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P15923443316152421515

`filter[A320628(n+1), A162289(#)]`
-/

namespace A320629.P15923443316152421515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A320629.P15923443316152421515

namespace A320629

/-- `filter[A320628(n+1), A162289(#)]` -/
def P15923443316152421515.Spec : Prop :=
  ∀ n, P15923443316152421515.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P525493350559708250

`filter[A320628(n+1), A320106(#)]`
-/

namespace A320629.P525493350559708250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A320629.P525493350559708250

namespace A320629

/-- `filter[A320628(n+1), A320106(#)]` -/
def P525493350559708250.Spec : Prop :=
  ∀ n, P525493350559708250.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P15795312656355861109

`filter[A320628(n+1), A354354(#)]`
-/

namespace A320629.P15795312656355861109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A320629.P15795312656355861109

namespace A320629

/-- `filter[A320628(n+1), A354354(#)]` -/
def P15795312656355861109.Spec : Prop :=
  ∀ n, P15795312656355861109.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P17647363212863070211

`filter[A320628(n+1), A373156(#)]`
-/

namespace A320629.P17647363212863070211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A320629.P17647363212863070211

namespace A320629

/-- `filter[A320628(n+1), A373156(#)]` -/
def P17647363212863070211.Spec : Prop :=
  ∀ n, P17647363212863070211.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P16442570593730230951

`filter[A320628(n+1), A374134(#)]`
-/

namespace A320629.P16442570593730230951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A320629.P16442570593730230951

namespace A320629

/-- `filter[A320628(n+1), A374134(#)]` -/
def P16442570593730230951.Spec : Prop :=
  ∀ n, P16442570593730230951.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P1787720796642015962

`A320628(eq[1, and(1, A320628(n+1))]+1)`
-/

namespace A320629.P1787720796642015962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A320628 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A320629.P1787720796642015962

namespace A320629

/-- `A320628(eq[1, and(1, A320628(n+1))]+1)` -/
def P1787720796642015962.Spec : Prop :=
  ∀ n, P1787720796642015962.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P3541813644455544366

`∩[A320628(n+1), A366251(n+1)]`
-/

namespace A320629.P3541813644455544366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320629.P3541813644455544366

namespace A320629

/-- `∩[A320628(n+1), A366251(n+1)]` -/
def P3541813644455544366.Spec : Prop :=
  ∀ n, (P3541813644455544366.a n : ℤ) = A320629 (n + 1)

end A320629

/-! ## A320629.P12174883920890720756

`record[A360329(1+2*n)]`
-/

namespace A320629.P12174883920890720756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (1 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320629.P12174883920890720756

namespace A320629

/-- `record[A360329(1+2*n)]` -/
def P12174883920890720756.Spec : Prop :=
  ∀ n, P12174883920890720756.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P14304188129207049648

`filter[2*n+1, A295665(#)]`
-/

namespace A320629.P14304188129207049648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295665 (f1 j) = 1) n)

end

end A320629.P14304188129207049648

namespace A320629

/-- `filter[2*n+1, A295665(#)]` -/
def P14304188129207049648.Spec : Prop :=
  ∀ n, (P14304188129207049648.a n : ℤ) = A320629 (n + 1)

end A320629

/-! ## A320629.P17812163097750627782

`filter[2*n+1, A360325(#)]`
-/

namespace A320629.P17812163097750627782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360325 (f1 j) = 1) n)

end

end A320629.P17812163097750627782

namespace A320629

/-- `filter[2*n+1, A360325(#)]` -/
def P17812163097750627782.Spec : Prop :=
  ∀ n, (P17812163097750627782.a n : ℤ) = A320629 (n + 1)

end A320629

/-! ## A320629.P7022474979741953031

`filter[2*n+1, A360326(#)]`
-/

namespace A320629.P7022474979741953031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360326 (f1 j) = 1) n)

end

end A320629.P7022474979741953031

namespace A320629

/-- `filter[2*n+1, A360326(#)]` -/
def P7022474979741953031.Spec : Prop :=
  ∀ n, (P7022474979741953031.a n : ℤ) = A320629 (n + 1)

end A320629

/-! ## A320629.P3802228436455027972

`filter[2*n+1, A360327(#)]`
-/

namespace A320629.P3802228436455027972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360327 (f1 j) = 1) n)

end

end A320629.P3802228436455027972

namespace A320629

/-- `filter[2*n+1, A360327(#)]` -/
def P3802228436455027972.Spec : Prop :=
  ∀ n, (P3802228436455027972.a n : ℤ) = A320629 (n + 1)

end A320629

/-! ## A320629.P10689829537847356117

`filter[A320628(n+1), A000035(#)]`
-/

namespace A320629.P10689829537847356117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A320629.P10689829537847356117

namespace A320629

/-- `filter[A320628(n+1), A000035(#)]` -/
def P10689829537847356117.Spec : Prop :=
  ∀ n, P10689829537847356117.a n = A320629 (n + 1)

end A320629

/-! ## A320629.P9331426877252124943

`filter[A320628(n+1), A260390(#)]`
-/

namespace A320629.P9331426877252124943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A320629.P9331426877252124943

namespace A320629

/-- `filter[A320628(n+1), A260390(#)]` -/
def P9331426877252124943.Spec : Prop :=
  ∀ n, P9331426877252124943.a n = A320629 (n + 1)

end A320629

/-!
# A320630: Products of primes of nonprime squarefree index.

The programs for A320630, there is no canonical definition to state claims against.
-/

/-! ## A320630.P7360671377022789938

`∩[A302478(n+1), A320628(n+2)]`
-/

namespace A320630.P7360671377022789938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320630.P7360671377022789938

/-!
# A320631: Products of odd primes of nonprime squarefree index.

The programs for A320631, there is no canonical definition to state claims against.
-/

/-! ## A320631.P5623471128922293557

`∩[A302478(n+1), A320629(n+2)]`
-/

namespace A320631.P5623471128922293557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320631.P5623471128922293557

/-! ## A320631.P6154579549737323601

`∩[2*n+1, A320630(n+1)]`
-/

namespace A320631.P6154579549737323601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320631.P6154579549737323601

/-! ## A320631.P5081740783639298453

`record[A000265(A320630(n+4))]`
-/

namespace A320631.P5081740783639298453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A320630 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320631.P5081740783639298453

/-! ## A320631.P17737740660721565184

`filter[A320630(n+1), A000035(#)]`
-/

namespace A320631.P17737740660721565184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A320631.P17737740660721565184

/-! ## A320631.P9130639719300698922

`filter[A320630(n+1), A093719(#)]`
-/

namespace A320631.P9130639719300698922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A320631.P9130639719300698922

/-!
# A320632: Numbers k such that there exists a pair of factorizations of k into factors > 1 where no factor of one divides any factor of the other.

The programs for A320632, the canonical program `A320632.P12850052149328175340` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320632 has offset 1).

The definition of A320632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320632.P12850052149328175340

`eq[1, A379958(n+1)]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320632

/-- `eq[1, A379958(n+1)]+1` -/
def P12850052149328175340.Spec : Prop :=
  ∀ n, (P12850052149328175340.a n : ℤ) = A320632 (n + 1)

theorem P12850052149328175340.correct : P12850052149328175340.Spec := by
  intro n
  simp only [A320632, Nat.add_sub_cancel]

end A320632

/-! ## A320632.P5501787937840359463

`filter[A344180(n), A379958(#)]`
-/

namespace A320632.P5501787937840359463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P5501787937840359463

namespace A320632

/-- `filter[A344180(n), A379958(#)]` -/
def P5501787937840359463.Spec : Prop :=
  ∀ n, P5501787937840359463.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P11982001192236281548

`filter[A273943(n+1), A379958(#)]`
-/

namespace A320632.P11982001192236281548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P11982001192236281548

namespace A320632

/-- `filter[A273943(n+1), A379958(#)]` -/
def P11982001192236281548.Spec : Prop :=
  ∀ n, P11982001192236281548.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P16896960679987236124

`filter[A305901(n+1), A379958(#)]`
-/

namespace A320632.P16896960679987236124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P16896960679987236124

namespace A320632

/-- `filter[A305901(n+1), A379958(#)]` -/
def P16896960679987236124.Spec : Prop :=
  ∀ n, P16896960679987236124.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P10136362050574505440

`filter[A305980(n+1), A379958(#)]`
-/

namespace A320632.P10136362050574505440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P10136362050574505440

namespace A320632

/-- `filter[A305980(n+1), A379958(#)]` -/
def P10136362050574505440.Spec : Prop :=
  ∀ n, P10136362050574505440.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P392222259560150483

`filter[A319701(n+1), A379958(#)]`
-/

namespace A320632.P392222259560150483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P392222259560150483

namespace A320632

/-- `filter[A319701(n+1), A379958(#)]` -/
def P392222259560150483.Spec : Prop :=
  ∀ n, P392222259560150483.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P5412400132909667547

`filter[A319702(n+1), A379958(#)]`
-/

namespace A320632.P5412400132909667547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P5412400132909667547

namespace A320632

/-- `filter[A319702(n+1), A379958(#)]` -/
def P5412400132909667547.Spec : Prop :=
  ∀ n, P5412400132909667547.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P4563072057990318076

`filter[A322810(n+1), A379958(#)]`
-/

namespace A320632.P4563072057990318076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P4563072057990318076

namespace A320632

/-- `filter[A322810(n+1), A379958(#)]` -/
def P4563072057990318076.Spec : Prop :=
  ∀ n, P4563072057990318076.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P3329471631113621234

`filter[A326139(n+1), A379958(#)]`
-/

namespace A320632.P3329471631113621234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P3329471631113621234

namespace A320632

/-- `filter[A326139(n+1), A379958(#)]` -/
def P3329471631113621234.Spec : Prop :=
  ∀ n, P3329471631113621234.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P12018067892595502703

`filter[A326201(n+1), A379958(#)]`
-/

namespace A320632.P12018067892595502703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P12018067892595502703

namespace A320632

/-- `filter[A326201(n+1), A379958(#)]` -/
def P12018067892595502703.Spec : Prop :=
  ∀ n, P12018067892595502703.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P5910708810270817299

`filter[A326202(n+1), A379958(#)]`
-/

namespace A320632.P5910708810270817299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P5910708810270817299

namespace A320632

/-- `filter[A326202(n+1), A379958(#)]` -/
def P5910708810270817299.Spec : Prop :=
  ∀ n, P5910708810270817299.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P13900626826697688457

`filter[A326203(n+1), A379958(#)]`
-/

namespace A320632.P13900626826697688457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P13900626826697688457

namespace A320632

/-- `filter[A326203(n+1), A379958(#)]` -/
def P13900626826697688457.Spec : Prop :=
  ∀ n, P13900626826697688457.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P11617865980215805687

`filter[A346488(n+1), A379958(#)]`
-/

namespace A320632.P11617865980215805687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P11617865980215805687

namespace A320632

/-- `filter[A346488(n+1), A379958(#)]` -/
def P11617865980215805687.Spec : Prop :=
  ∀ n, P11617865980215805687.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P9071700584324271065

`filter[A289554(n+1), A379958(#)]`
-/

namespace A320632.P9071700584324271065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P9071700584324271065

namespace A320632

/-- `filter[A289554(n+1), A379958(#)]` -/
def P9071700584324271065.Spec : Prop :=
  ∀ n, P9071700584324271065.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P14580982810858346217

`filter[A033987(n+1), A379958(#)]`
-/

namespace A320632.P14580982810858346217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P14580982810858346217

namespace A320632

/-- `filter[A033987(n+1), A379958(#)]` -/
def P14580982810858346217.Spec : Prop :=
  ∀ n, P14580982810858346217.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P3369214705662503248

`filter[A376834(n+1), A379958(#)]`
-/

namespace A320632.P3369214705662503248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P3369214705662503248

namespace A320632

/-- `filter[A376834(n+1), A379958(#)]` -/
def P3369214705662503248.Spec : Prop :=
  ∀ n, P3369214705662503248.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P12019446303801703897

`lt[1, A322452(n+1)]+1`
-/

namespace A320632.P12019446303801703897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A320632.P12019446303801703897

namespace A320632

/-- `lt[1, A322452(n+1)]+1` -/
def P12019446303801703897.Spec : Prop :=
  ∀ n, (P12019446303801703897.a n : ℤ) = A320632 (n + 1)

end A320632

/-! ## A320632.P5783049408209129459

`filter[A002808(n+1), A379958(#)]`
-/

namespace A320632.P5783049408209129459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P5783049408209129459

namespace A320632

/-- `filter[A002808(n+1), A379958(#)]` -/
def P5783049408209129459.Spec : Prop :=
  ∀ n, P5783049408209129459.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P17381768157249526995

`filter[A122181(n+1), A379958(#)]`
-/

namespace A320632.P17381768157249526995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P17381768157249526995

namespace A320632

/-- `filter[A122181(n+1), A379958(#)]` -/
def P17381768157249526995.Spec : Prop :=
  ∀ n, P17381768157249526995.a n = A320632 (n + 1)

end A320632

/-! ## A320632.P2176315279823750987

`filter[A376384(n+1), A379958(#)]`
-/

namespace A320632.P2176315279823750987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A320632.P2176315279823750987

namespace A320632

/-- `filter[A376384(n+1), A379958(#)]` -/
def P2176315279823750987.Spec : Prop :=
  ∀ n, P2176315279823750987.a n = A320632 (n + 1)

end A320632

/-!
# A320633: Composite numbers whose prime indices are also composite.

The programs for A320633, the canonical program `A320633.P2840693626555454014` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320633 has offset 1).

The definition of A320633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320633.P2840693626555454014

`filter[A320629(n+1), A066247(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A320633

/-- `filter[A320629(n+1), A066247(#)]` -/
def P2840693626555454014.Spec : Prop :=
  ∀ n, P2840693626555454014.a n = A320633 (n + 1)

theorem P2840693626555454014.correct : P2840693626555454014.Spec := by
  intro n
  simp only [A320633, Nat.add_sub_cancel]

end A320633

/-! ## A320633.P2223687957792357322

`filter[A320629(1+n), A202238(#)]`
-/

namespace A320633.P2223687957792357322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A320633.P2223687957792357322

namespace A320633

/-- `filter[A320629(1+n), A202238(#)]` -/
def P2223687957792357322.Spec : Prop :=
  ∀ n, P2223687957792357322.a n = A320633 (n + 1)

end A320633

/-! ## A320633.P10125141571286963491

`filter[A320629(n+1), A323162(#)]`
-/

namespace A320633.P10125141571286963491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A320633.P10125141571286963491

namespace A320633

/-- `filter[A320629(n+1), A323162(#)]` -/
def P10125141571286963491.Spec : Prop :=
  ∀ n, P10125141571286963491.a n = A320633 (n + 1)

end A320633

/-! ## A320633.P16670575489472462987

`filter[A320629(n+2), A005171(#)]`
-/

namespace A320633.P16670575489472462987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A320633.P16670575489472462987

namespace A320633

/-- `filter[A320629(n+2), A005171(#)]` -/
def P16670575489472462987.Spec : Prop :=
  ∀ n, P16670575489472462987.a n = A320633 (n + 1)

end A320633

/-! ## A320633.P17813008091539294164

`filter[A320629(n+2), A292438(#)]`
-/

namespace A320633.P17813008091539294164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A320633.P17813008091539294164

namespace A320633

/-- `filter[A320629(n+2), A292438(#)]` -/
def P17813008091539294164.Spec : Prop :=
  ∀ n, P17813008091539294164.a n = A320633 (n + 1)

end A320633

/-! ## A320633.P16994915359371043197

`∩[A002808(n+1), A320629(n+1)]`
-/

namespace A320633.P16994915359371043197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P16994915359371043197

namespace A320633

/-- `∩[A002808(n+1), A320629(n+1)]` -/
def P16994915359371043197.Spec : Prop :=
  ∀ n, (P16994915359371043197.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P14353858035540889989

`∩[A038509(n+1), A320628(n+1)]`
-/

namespace A320633.P14353858035540889989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P14353858035540889989

namespace A320633

/-- `∩[A038509(n+1), A320628(n+1)]` -/
def P14353858035540889989.Spec : Prop :=
  ∀ n, (P14353858035540889989.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P2935344425663151792

`∩[A038509(n+1), A320629(n+1)]`
-/

namespace A320633.P2935344425663151792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P2935344425663151792

namespace A320633

/-- `∩[A038509(n+1), A320629(n+1)]` -/
def P2935344425663151792.Spec : Prop :=
  ∀ n, (P2935344425663151792.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P7441198207411738409

`∩[A038510(n+1), A320628(n+1)]`
-/

namespace A320633.P7441198207411738409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P7441198207411738409

namespace A320633

/-- `∩[A038510(n+1), A320628(n+1)]` -/
def P7441198207411738409.Spec : Prop :=
  ∀ n, (P7441198207411738409.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P16256318910331725134

`∩[A038510(n+1), A320629(n+1)]`
-/

namespace A320633.P16256318910331725134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P16256318910331725134

namespace A320633

/-- `∩[A038510(n+1), A320629(n+1)]` -/
def P16256318910331725134.Spec : Prop :=
  ∀ n, (P16256318910331725134.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P422854024376178484

`∩[A039769(n+1), A320629(n+1)]`
-/

namespace A320633.P422854024376178484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P422854024376178484

namespace A320633

/-- `∩[A039769(n+1), A320629(n+1)]` -/
def P422854024376178484.Spec : Prop :=
  ∀ n, (P422854024376178484.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P5236662309656265327

`∩[A053795(n+1), A320628(n+1)]`
-/

namespace A320633.P5236662309656265327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P5236662309656265327

namespace A320633

/-- `∩[A053795(n+1), A320628(n+1)]` -/
def P5236662309656265327.Spec : Prop :=
  ∀ n, (P5236662309656265327.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P648159262139201893

`∩[A053795(n+1), A320629(n+1)]`
-/

namespace A320633.P648159262139201893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P648159262139201893

namespace A320633

/-- `∩[A053795(n+1), A320629(n+1)]` -/
def P648159262139201893.Spec : Prop :=
  ∀ n, (P648159262139201893.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P773245384509475487

`∩[A058957(n+1), A320629(n+1)]`
-/

namespace A320633.P773245384509475487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P773245384509475487

namespace A320633

/-- `∩[A058957(n+1), A320629(n+1)]` -/
def P773245384509475487.Spec : Prop :=
  ∀ n, (P773245384509475487.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P9830868066309839500

`∩[A067887(n+1), A320629(n+1)]`
-/

namespace A320633.P9830868066309839500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P9830868066309839500

namespace A320633

/-- `∩[A067887(n+1), A320629(n+1)]` -/
def P9830868066309839500.Spec : Prop :=
  ∀ n, (P9830868066309839500.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P2848841235985846000

`∩[A069063(n+1), A320628(n+1)]`
-/

namespace A320633.P2848841235985846000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P2848841235985846000

namespace A320633

/-- `∩[A069063(n+1), A320628(n+1)]` -/
def P2848841235985846000.Spec : Prop :=
  ∀ n, (P2848841235985846000.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P10655845527791928009

`∩[A069063(n+1), A320629(n+1)]`
-/

namespace A320633.P10655845527791928009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P10655845527791928009

namespace A320633

/-- `∩[A069063(n+1), A320629(n+1)]` -/
def P10655845527791928009.Spec : Prop :=
  ∀ n, (P10655845527791928009.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P4724668114203270000

`∩[A071904(n+1), A320628(n+1)]`
-/

namespace A320633.P4724668114203270000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P4724668114203270000

namespace A320633

/-- `∩[A071904(n+1), A320628(n+1)]` -/
def P4724668114203270000.Spec : Prop :=
  ∀ n, (P4724668114203270000.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P13243223181725330127

`∩[A071904(n+1), A320629(n+1)]`
-/

namespace A320633.P13243223181725330127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P13243223181725330127

namespace A320633

/-- `∩[A071904(n+1), A320629(n+1)]` -/
def P13243223181725330127.Spec : Prop :=
  ∀ n, (P13243223181725330127.a n : ℤ) = A320633 (n + 1)

end A320633

/-! ## A320633.P12134706275218080032

`∩[A078505(n+1), A320629(n+1)]`
-/

namespace A320633.P12134706275218080032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320633.P12134706275218080032

namespace A320633

/-- `∩[A078505(n+1), A320629(n+1)]` -/
def P12134706275218080032.Spec : Prop :=
  ∀ n, (P12134706275218080032.a n : ℤ) = A320633 (n + 1)

end A320633

/-!
# A320634: Odd numbers whose multiset multisystem is a multiset partition spanning an initial interval of positive integers (odd = no empty sets).

The programs for A320634, there is no canonical definition to state claims against.
-/

/-! ## A320634.P1101855085287819728

`eq[(-1)^n, A079068(A003963(n+1))]+1`
-/

namespace A320634.P1101855085287819728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320634.P1101855085287819728

/-! ## A320634.P9430531430781140763

`2*eq[1, A079068(A003963(2*n+1))]+1`
-/

namespace A320634.P9430531430781140763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A003963 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320634.P9430531430781140763

/-! ## A320634.P6101716839329949063

`record[A000265(n+1)/A079068(A003963(n+1))]`
-/

namespace A320634.P6101716839329949063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320634.P6101716839329949063

/-! ## A320634.P3009163536962760914

`record[A026741(n+1)/A079068(A003963(n+1))]`
-/

namespace A320634.P3009163536962760914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320634.P3009163536962760914

/-! ## A320634.P10551192838339808561

`record[A028234(n+1)/A079068(A003963(n+1))]`
-/

namespace A320634.P10551192838339808561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320634.P10551192838339808561

/-! ## A320634.P7921841531307017380

`record[A060819(n+1)/A079068(A003963(n+1))]`
-/

namespace A320634.P7921841531307017380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060819 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320634.P7921841531307017380

/-! ## A320634.P10075427015965828275

`record[A193356(n+1)/A079068(A003963(n+1))]`
-/

namespace A320634.P10075427015965828275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193356 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320634.P10075427015965828275

/-! ## A320634.P781319486711967199

`record[A000027(2*n+1)/A079068(A003963(2*n+1))]`
-/

namespace A320634.P781319486711967199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * n + 1) : ℚ) / (A079068 (A003963 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320634.P781319486711967199

/-!
# A320635: MM-numbers of simple labeled connected graphs spanning an initial interval of positive integers.

The programs for A320635, there is no canonical definition to state claims against.
-/

/-! ## A320635.P6799337267572575640

`A320458(record[A320504(n+1)+1])`
-/

namespace A320635.P6799337267572575640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320504 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320635.P6799337267572575640

/-! ## A320635.P10347040627598267642

`A320458(∏[A022167(n)]+n+1)`
-/

namespace A320635.P10347040627598267642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320458 (∏ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat

end

end A320635.P10347040627598267642

/-!
# A320636: Negative numbers in base -3.

The programs for A320636, there is no canonical definition to state claims against.
-/

/-! ## A320636.P16390621896698026777

`A073785(3*(n+1))/10`
-/

namespace A320636.P16390621896698026777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073785 (3 * (n + 1)) : ℚ) / 10

end

end A320636.P16390621896698026777

/-! ## A320636.P16922163869978844233

`floor(A073785(A008585(n+1))/10)`
-/

namespace A320636.P16922163869978844233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073785 (A008585 (n + 1)).toNat : ℚ) / 10⌋

end

end A320636.P16922163869978844233

/-!
# A320637: Regular triangle read by rows: T(n,k) = Lcm_{m=k..n} d(n,k) where d(n,k) is the denominator of the unsigned Stirling1(n,k)*k!/n! for 0 <= k <= n.

The programs for A320637, there is no canonical definition to state claims against.
-/

/-! ## A320637.P10507053642133603186

`A284002(A189280(n+1)-A008284(n+1))`
-/

namespace A320637.P10507053642133603186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 (A189280 (n + 1) - A008284 (n + 1)).toNat

end

end A320637.P10507053642133603186

/-!
# A320638: Triangle T(n,k) read by rows: the number of partitions of n into k parts which are divisors of n.

The programs for A320638, there is no canonical definition to state claims against.
-/

/-! ## A320638.P14367709324790035292

`A325225(A248809(A187596(n))²)`
-/

namespace A320638.P14367709324790035292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A248809 (A187596 n).toNat ^ 2).toNat

end

end A320638.P14367709324790035292

/-! ## A320638.P1638694048263785943

`A141686(n+1)%A325533(A141689(n+1))`
-/

namespace A320638.P1638694048263785943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141686 (n + 1)) (A325533 (A141689 (n + 1)).toNat)

end

end A320638.P1638694048263785943

/-! ## A320638.P5694619823141428405

`A357070(A299581(n+1)+A067138(n))`
-/

namespace A320638.P5694619823141428405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 (A299581 (n + 1) + A067138 n).toNat

end

end A320638.P5694619823141428405

/-! ## A320638.P9978868733147689847

`and(A051031(n+1), A184005(A152613(n)))`
-/

namespace A320638.P9978868733147689847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051031 (n + 1)) (A184005 (A152613 n).toNat)

end

end A320638.P9978868733147689847

/-! ## A320638.P13518117676811840934

`and(A060187(n+1), A213731(A341847(n)))`
-/

namespace A320638.P13518117676811840934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060187 (n + 1)) (A213731 (A341847 n).toNat)

end

end A320638.P13518117676811840934

/-!
# A320641: Numbers that require a record number of iterations of the sum of odd divisors function (A000593) to reach 1.

The programs for A320641, there is no canonical definition to state claims against.
-/

/-! ## A320641.P16886679835896793781

`A007306(lcm(n!, dr(n))+1)`
-/

namespace A320641.P16886679835896793781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ)) + 1)

end

end A320641.P16886679835896793781

/-! ## A320641.P13376472221873765088

`A007306(ceil(n/63)+n!)`
-/

namespace A320641.P13376472221873765088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (⌈(n : ℚ) / 63⌉ + (Nat.factorial n : ℤ)).toNat

end

end A320641.P13376472221873765088

/-! ## A320641.P6452134857308362881

`A301977(n!)+ceil(sin(n)²)`
-/

namespace A320641.P6452134857308362881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301977 (Nat.factorial n) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A320641.P6452134857308362881

/-! ## A320641.P2436638599982660974

`A007306(n!-(floor(acot(n))-1))`
-/

namespace A320641.P2436638599982660974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 ((Nat.factorial n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A320641.P2436638599982660974

/-!
# A320642: Number of 1's in the base-(-2) expansion of -n.

The programs for A320642, the canonical program `A320642.P10974864268536120065` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320642 has offset 1).

The definition of A320642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005352, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320642.P10974864268536120065

`A000120(A005352(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320642

/-- `A000120(A005352(n+1))` -/
def P10974864268536120065.Spec : Prop :=
  ∀ n, P10974864268536120065.a n = A320642 (n + 1)

theorem P10974864268536120065.correct : P10974864268536120065.Spec := by
  intro n
  simp only [A320642, Nat.add_sub_cancel]

end A320642

/-! ## A320642.P1632056869547791597

`A027615(A337909(n+2))`
-/

namespace A320642.P1632056869547791597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A337909 (n + 2)).toNat

end

end A320642.P1632056869547791597

namespace A320642

/-- `A027615(A337909(n+2))` -/
def P1632056869547791597.Spec : Prop :=
  ∀ n, P1632056869547791597.a n = A320642 (n + 1)

end A320642

/-! ## A320642.P10918948129568292867

`A027615(2*(n+1))`
-/

namespace A320642.P10918948129568292867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (2 * (n + 1))

end

end A320642.P10918948129568292867

namespace A320642

/-- `A027615(2*(n+1))` -/
def P10918948129568292867.Spec : Prop :=
  ∀ n, P10918948129568292867.a n = A320642 (n + 1)

end A320642

/-! ## A320642.P11367994182222401177

`A027615(n+3+n)-1`
-/

namespace A320642.P11367994182222401177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (n + 3 + n) - 1

end

end A320642.P11367994182222401177

namespace A320642

/-- `A027615(n+3+n)-1` -/
def P11367994182222401177.Spec : Prop :=
  ∀ n, P11367994182222401177.a n = A320642 (n + 1)

end A320642

/-! ## A320642.P14019138425239305628

`A000120(A005351(2*(n+1)))`
-/

namespace A320642.P14019138425239305628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005351 (2 * (n + 1))).toNat

end

end A320642.P14019138425239305628

namespace A320642

/-- `A000120(A005351(2*(n+1)))` -/
def P14019138425239305628.Spec : Prop :=
  ∀ n, P14019138425239305628.a n = A320642 (n + 1)

end A320642

/-! ## A320642.P11437157705705381722

`A048881(A005351(2*n+2))`
-/

namespace A320642.P11437157705705381722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A005351 (2 * n + 2)).toNat

end

end A320642.P11437157705705381722

namespace A320642

/-- `A048881(A005351(2*n+2))` -/
def P11437157705705381722.Spec : Prop :=
  ∀ n, P11437157705705381722.a n = A320642 (n + 1)

end A320642

/-! ## A320642.P11853141377813604910

`∑{digits}[A212529(n+1), #]`
-/

namespace A320642.P11853141377813604910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A320642.P11853141377813604910

namespace A320642

/-- `∑{digits}[A212529(n+1), #]` -/
def P11853141377813604910.Spec : Prop :=
  ∀ n, (P11853141377813604910.a n : ℤ) = A320642 (n + 1)

end A320642

/-! ## A320642.P6267113064575022283

`A000120(A182182(3*n+2))`
-/

namespace A320642.P6267113064575022283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A182182 (3 * n + 2)).toNat

end

end A320642.P6267113064575022283

namespace A320642

/-- `A000120(A182182(3*n+2))` -/
def P6267113064575022283.Spec : Prop :=
  ∀ n, P6267113064575022283.a n = A320642 (n + 1)

end A320642

/-!
# A320643: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using exactly 3 colors (subsets).

The programs for A320643, there is no canonical definition to state claims against.
-/

/-! ## A320643.P16640670318890765225

`A056296(n+1)-A056358(n+1)`
-/

namespace A320643.P16640670318890765225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056296 (n + 1) - A056358 (n + 1)

end

end A320643.P16640670318890765225

/-! ## A320643.P7655008577565277052

`A056358(n+1)-A304973(n+1)`
-/

namespace A320643.P7655008577565277052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056358 (n + 1) - A304973 (n + 1)

end

end A320643.P7655008577565277052

/-! ## A320643.P1629699366392989836

`(A056296(n+1)-A304973(n+1))/2`
-/

namespace A320643.P1629699366392989836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056296 (n + 1) - A304973 (n + 1) : ℚ) / 2

end

end A320643.P1629699366392989836

/-! ## A320643.P15761983093857801028

`A320743(n+1)-A059053(n+1)`
-/

namespace A320643.P15761983093857801028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320743 (n + 1) - A059053 (n + 1)

end

end A320643.P15761983093857801028

/-! ## A320643.P6447730838743896821

`A002076(n+1)-(A059053(n+1)+A056353(n+1))`
-/

namespace A320643.P6447730838743896821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002076 (n + 1) - (A059053 (n + 1) + A056353 (n + 1))

end

end A320643.P6447730838743896821

/-! ## A320643.P10929224259751211853

`A056353(n+1)-(A182522(n+1)+A059053(n+1))`
-/

namespace A320643.P10929224259751211853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056353 (n + 1) - (A182522 (n + 1) + A059053 (n + 1))

end

end A320643.P10929224259751211853

/-! ## A320643.P16151945483725017073

`A320744(n+1)-(A320644(n+1)+A059053(n+1))`
-/

namespace A320643.P16151945483725017073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (n + 1) - (A320644 (n + 1) + A059053 (n + 1))

end

end A320643.P16151945483725017073

/-! ## A320643.P3514514191846058694

`A320647(∑[n]+3)`
-/

namespace A320643.P3514514191846058694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320643.P3514514191846058694

/-!
# A320644: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using exactly 4 colors (subsets).

The programs for A320644, there is no canonical definition to state claims against.
-/

/-! ## A320644.P1947868453122061250

`A056297(n+1)-A056359(n+1)`
-/

namespace A320644.P1947868453122061250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056297 (n + 1) - A056359 (n + 1)

end

end A320644.P1947868453122061250

/-! ## A320644.P13775153856608688221

`A056359(n+1)-A304974(n+1)`
-/

namespace A320644.P13775153856608688221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056359 (n + 1) - A304974 (n + 1)

end

end A320644.P13775153856608688221

/-! ## A320644.P14789988282003723896

`(A056297(n+1)-A304974(n+1))/2`
-/

namespace A320644.P14789988282003723896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056297 (n + 1) - A304974 (n + 1) : ℚ) / 2

end

end A320644.P14789988282003723896

/-! ## A320644.P7304752472107728036

`A320744(n+1)-A320743(n+1)`
-/

namespace A320644.P7304752472107728036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (n + 1) - A320743 (n + 1)

end

end A320644.P7304752472107728036

/-! ## A320644.P13339574215018389535

`A320744(n+1)-(A320643(n+1)+A059053(n+1))`
-/

namespace A320644.P13339574215018389535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (n + 1) - (A320643 (n + 1) + A059053 (n + 1))

end

end A320644.P13339574215018389535

/-! ## A320644.P17930569164080953262

`A320647(∑[n]+4)`
-/

namespace A320644.P17930569164080953262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A320644.P17930569164080953262

/-!
# A320645: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using exactly 5 colors (subsets).

The programs for A320645, there is no canonical definition to state claims against.
-/

/-! ## A320645.P16859487465457753410

`A056298(n+1)-A056360(n+1)`
-/

namespace A320645.P16859487465457753410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056298 (n + 1) - A056360 (n + 1)

end

end A320645.P16859487465457753410

/-! ## A320645.P12847273232527036445

`A056360(n+1)-A304975(n+1)`
-/

namespace A320645.P12847273232527036445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056360 (n + 1) - A304975 (n + 1)

end

end A320645.P12847273232527036445

/-! ## A320645.P10233098542308808944

`(A056298(n+1)-A304975(n+1))/2`
-/

namespace A320645.P10233098542308808944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056298 (n + 1) - A304975 (n + 1) : ℚ) / 2

end

end A320645.P10233098542308808944

/-! ## A320645.P9166776318895495479

`A320745(n+1)-A320744(n+1)`
-/

namespace A320645.P9166776318895495479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320745 (n + 1) - A320744 (n + 1)

end

end A320645.P9166776318895495479

/-! ## A320645.P10594951120093064416

`A056298(n+1)-∑{d}[n+1, A056369(#)]`
-/

namespace A320645.P10594951120093064416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056298 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056369 d

end

end A320645.P10594951120093064416

/-! ## A320645.P16168361880453318582

`A056293(n+1)-A056292(n+1)-∑{d}[n+1, A056369(#)]`
-/

namespace A320645.P16168361880453318582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056293 (n + 1) - A056292 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056369 d

end

end A320645.P16168361880453318582

/-! ## A320645.P1582748013620440526

`A320647(∑[n]+5)`
-/

namespace A320645.P1582748013620440526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A320645.P1582748013620440526

/-! ## A320645.P3264524157446787286

`A320647(A077169(n+1))%A048876(n)`
-/

namespace A320645.P3264524157446787286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320647 (A077169 (n + 1)).toNat) (A048876 n)

end

end A320645.P3264524157446787286

/-! ## A320645.P12759985870485535418

`char[A163357(n+1)]*A320647(A077169(n+1))`
-/

namespace A320645.P12759985870485535418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A320647 (A077169 (n + 1)).toNat

end

end A320645.P12759985870485535418

/-!
# A320646: Number of chiral pairs of color patterns (set partitions) in a cycle of length n using exactly 6 colors (subsets).

The programs for A320646, there is no canonical definition to state claims against.
-/

/-! ## A320646.P1487346167588207139

`A056361(n+1)-A304976(n+1)`
-/

namespace A320646.P1487346167588207139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (n + 1) - A304976 (n + 1)

end

end A320646.P1487346167588207139

/-! ## A320646.P17744054786631455448

`A056299(n+1)-A056361(n+1)`
-/

namespace A320646.P17744054786631455448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056299 (n + 1) - A056361 (n + 1)

end

end A320646.P17744054786631455448

/-! ## A320646.P10703639123173188662

`(A056299(n+1)-A304976(n+1))/2`
-/

namespace A320646.P10703639123173188662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056299 (n + 1) - A304976 (n + 1) : ℚ) / 2

end

end A320646.P10703639123173188662

/-! ## A320646.P13614653905194194955

`A320746(n+1)-A320745(n+1)`
-/

namespace A320646.P13614653905194194955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320746 (n + 1) - A320745 (n + 1)

end

end A320646.P13614653905194194955

/-! ## A320646.P4367743185414650457

`A056294(n+1)-(A056361(n+1)+A056293(n+1))`
-/

namespace A320646.P4367743185414650457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056294 (n + 1) - (A056361 (n + 1) + A056293 (n + 1))

end

end A320646.P4367743185414650457

/-! ## A320646.P8028825782941796050

`A320647(∑[n]+6)`
-/

namespace A320646.P8028825782941796050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A320646.P8028825782941796050

/-!
# A320647: Triangle read by rows: T(n,k) is the number of chiral pairs of cycles of length n (1) with a color pattern of exactly k colors or equivalently (2) partitioned into k nonempty subsets.

The programs for A320647, there is no canonical definition to state claims against.
-/

/-! ## A320647.P13214783964814601133

`A152175(C(row(n)+1, 2)+col(n)+1)-A152176(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A320647.P13214783964814601133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) - A152176 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A320647.P13214783964814601133

/-! ## A320647.P10257883393318120282

`A152176(C(row(n)+1, 2)+col(n)+1)-A304972(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A320647.P10257883393318120282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152176 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) - A304972 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A320647.P10257883393318120282

/-! ## A320647.P15353656778779405650

`(A152175(C(row(n)+1, 2)+col(n)+1)-A304972(C(row(n)+1, 2)+col(n)+1))/2`
-/

namespace A320647.P15353656778779405650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152175 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) - A304972 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) : ℚ) / 2

end

end A320647.P15353656778779405650

/-! ## A320647.P12974705108480448157

`A152175(n+1)-A152176(n+1)`
-/

namespace A320647.P12974705108480448157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (n + 1) - A152176 (n + 1)

end

end A320647.P12974705108480448157

/-! ## A320647.P1837871994785753454

`A152176(n+1)-A304972(n+1)`
-/

namespace A320647.P1837871994785753454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152176 (n + 1) - A304972 (n + 1)

end

end A320647.P1837871994785753454

/-! ## A320647.P13529691933372313034

`(A152175(n+1)-A304972(n+1))/2`
-/

namespace A320647.P13529691933372313034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152175 (n + 1) - A304972 (n + 1) : ℚ) / 2

end

end A320647.P13529691933372313034

/-! ## A320647.P18254898452626482456

`A152175(A000027(n+1))%A152176(n+1)`
-/

namespace A320647.P18254898452626482456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152175 (A000027 (n + 1)).toNat) (A152176 (n + 1))

end

end A320647.P18254898452626482456

/-! ## A320647.P11835295023401531904

`(A152176(n+1)+A008277(n+1))%A284949(n+1)`
-/

namespace A320647.P11835295023401531904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152176 (n + 1) + A008277 (n + 1)) (A284949 (n + 1))

end

end A320647.P11835295023401531904

/-! ## A320647.P15579104399537472679

`(A152175(n+1)%A008277(n+1))%A152176(n+1)`
-/

namespace A320647.P15579104399537472679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A152175 (n + 1)) (A008277 (n + 1))) (A152176 (n + 1))

end

end A320647.P15579104399537472679

/-! ## A320647.P12246784963335283542

`A014682(A152175(n+1)-A304972(n+1))`
-/

namespace A320647.P12246784963335283542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152175 (n + 1) - A304972 (n + 1)).toNat

end

end A320647.P12246784963335283542

/-!
# A320648: a(n) is the number of connected Veblen hypergraphs (i.e., k-uniform hypergraphs where the degree of each vertex is divisible by k) with n edges up to isomorphism.

The programs for A320648, there is no canonical definition to state claims against.
-/

/-! ## A320648.P15544643957631127614

`A104379(A103687(n+1))`
-/

namespace A320648.P15544643957631127614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104379 (A103687 (n + 1)).toNat

end

end A320648.P15544643957631127614

/-! ## A320648.P4707880728368958468

`A065712(A071356(n)+A046800(n))`
-/

namespace A320648.P4707880728368958468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (A071356 n + A046800 n).toNat

end

end A320648.P4707880728368958468

/-! ## A320648.P3712331594626870265

`A126205(A186290(n+1)+A054881(n))`
-/

namespace A320648.P3712331594626870265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A186290 (n + 1) + A054881 n).toNat

end

end A320648.P3712331594626870265

/-! ## A320648.P3401399104615581813

`A232463(A295809(n)+A042942(n+1))`
-/

namespace A320648.P3401399104615581813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232463 (A295809 n + A042942 (n + 1)).toNat

end

end A320648.P3401399104615581813

/-!
# A320649: Expansion of 1/(1 - Sum_{k>=1} k^2*x^k/(1 - x^k)).

The programs for A320649, there is no canonical definition to state claims against.
-/

/-! ## A320649.P14512496973769285537

`A345911(A151408(n))`
-/

namespace A320649.P14512496973769285537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345911 (A151408 n).toNat

end

end A320649.P14512496973769285537

/-! ## A320649.P14923108993094244661

`A154443(A189728(n!))`
-/

namespace A320649.P14923108993094244661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A189728 (Nat.factorial n)).toNat

end

end A320649.P14923108993094244661

/-!
# A320650: Expansion of 1/(1 - Sum_{k>=1} x^k/(1 - x^(2*k))).

The programs for A320650, there is no canonical definition to state claims against.
-/

/-! ## A320650.P9104213633449139214

`A024417(A255630(n)-n)`
-/

namespace A320650.P9104213633449139214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A255630 n - (n : ℤ)).toNat

end

end A320650.P9104213633449139214

/-! ## A320650.P10424595662969159021

`A006054(n)+A000196(A176956(n))`
-/

namespace A320650.P10424595662969159021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n + A000196 (A176956 n).toNat

end

end A320650.P10424595662969159021

/-! ## A320650.P1033778309995552155

`A364914(n)+A000161(A014417(n))`
-/

namespace A320650.P1033778309995552155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 n + A000161 (A014417 n).toNat

end

end A320650.P1033778309995552155

/-! ## A320650.P17118832015160273738

`A262689(A150651(n)+A023531(n))`
-/

namespace A320650.P17118832015160273738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A150651 n + A023531 n).toNat

end

end A320650.P17118832015160273738

/-! ## A320650.P6174532225158139716

`A262689(A150651(n)+A025892(n))`
-/

namespace A320650.P6174532225158139716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A150651 n + A025892 n).toNat

end

end A320650.P6174532225158139716

/-!
# A320652: Expansion of 1/(2 - Product_{k>=1} 1/(1 - k*x^k)).

The programs for A320652, there is no canonical definition to state claims against.
-/

/-! ## A320652.P9718613830494754402

`A258632(A263851(n))`
-/

namespace A320652.P9718613830494754402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258632 (A263851 n).toNat

end

end A320652.P9718613830494754402

/-! ## A320652.P10474990818727496129

`A217038(A118352(n)+1)`
-/

namespace A320652.P10474990818727496129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A118352 n + 1).toNat

end

end A320652.P10474990818727496129

/-!
# A320654: Expansion of 1/(2 - Product_{k>=1} (1 + x^k)/(1 - x^k)).

The programs for A320654, there is no canonical definition to state claims against.
-/

/-! ## A320654.P5474011380995538623

`A028310(2*A001592(2*(n+2)))`
-/

namespace A320654.P5474011380995538623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A001592 (2 * (n + 2))).toNat

end

end A320654.P5474011380995538623

/-! ## A320654.P14656285817416437781

`A166079(A172317(2*n+1)/2)`
-/

namespace A320654.P14656285817416437781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (SequenceMachineLib.roundAway ((A172317 (2 * n + 1) : ℚ) / 2)).toNat

end

end A320654.P14656285817416437781

/-! ## A320654.P3463490337736539431

`A005843(A001592(2*(n+2)))+A000007(n)`
-/

namespace A320654.P3463490337736539431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001592 (2 * (n + 2))).toNat + A000007 n

end

end A320654.P3463490337736539431

/-! ## A320654.P13340929188760139367

`A066178(2*n)-A053646(A066178(2*n))`
-/

namespace A320654.P13340929188760139367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 (2 * n) - A053646 (A066178 (2 * n)).toNat

end

end A320654.P13340929188760139367

/-!
# A320655: Number of factorizations of n into semiprimes. Number of multiset partitions of the multiset of prime factors of n, into pairs.

The programs for A320655, there is no canonical definition to state claims against.
-/

/-! ## A320655.P10214337581839483279

`abs(A359786(n+1))`
-/

namespace A320655.P10214337581839483279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359786 (n + 1)|

end

end A320655.P10214337581839483279

/-! ## A320655.P6792499451751034219

`gcd(A000038(n), A359786(n+1))`
-/

namespace A320655.P6792499451751034219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A359786 (n + 1))

end

end A320655.P6792499451751034219

/-! ## A320655.P1285977281154563296

`∑{d}[A359786(n+1), A000010(#)]`
-/

namespace A320655.P1285977281154563296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A320655.P1285977281154563296

/-! ## A320655.P15410365762594519784

`lcm(2-A109007(n), A359786(n+1))`
-/

namespace A320655.P15410365762594519784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A109007 n) (A359786 (n + 1))

end

end A320655.P15410365762594519784

/-! ## A320655.P17853829896324827563

`∑{d}[n+1, A008683(#)*A320732((n+1)/#)]`
-/

namespace A320655.P17853829896324827563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A320732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320655.P17853829896324827563

/-! ## A320655.P7262215918197745756

`A320658(A181819(n+1))`
-/

namespace A320655.P7262215918197745756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320658 (A181819 (n + 1)).toNat

end

end A320655.P7262215918197745756

/-! ## A320655.P16943798678996940007

`lcm(A109007(A128470(n)), A359786(n+1))`
-/

namespace A320655.P16943798678996940007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109007 (A128470 n).toNat) (A359786 (n + 1))

end

end A320655.P16943798678996940007

/-! ## A320655.P14214746648133725249

`A008616(A055396(A146564(n+1)²))`
-/

namespace A320655.P14214746648133725249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A055396 (A146564 (n + 1) ^ 2).toNat).toNat

end

end A320655.P14214746648133725249

/-! ## A320655.P17926878691815136759

`A090368(A076078(n+1))%3`
-/

namespace A320655.P17926878691815136759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090368 (A076078 (n + 1)).toNat) 3

end

end A320655.P17926878691815136759

/-! ## A320655.P13495182027190706761

`val(A327109(A048691(n+1)), 4)`
-/

namespace A320655.P13495182027190706761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327109 (A048691 (n + 1)).toNat).toNat 4

end

end A320655.P13495182027190706761

/-! ## A320655.P8868816039314338301

`A034178(A056924((n+1)²)²+1)`
-/

namespace A320655.P8868816039314338301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A056924 ((n + 1) ^ 2) ^ 2 + 1).toNat

end

end A320655.P8868816039314338301

/-!
# A320656: Number of factorizations of n into squarefree semiprimes. Number of multiset partitions of the multiset of prime factors of n, into strict pairs.

The programs for A320656, there is no canonical definition to state claims against.
-/

/-! ## A320656.P13918276447435117561

`∑{d}[n+1, A271102(#)*A320655((n+1)/#)]`
-/

namespace A320656.P13918276447435117561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A320655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320656.P13918276447435117561

/-! ## A320656.P8768177304012894413

`∑{d}[n+1, A307445(#)*A320732((n+1)/#)]`
-/

namespace A320656.P8768177304012894413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A320732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320656.P8768177304012894413

/-! ## A320656.P12640477808190149072

`A320659(A181819(n+1))`
-/

namespace A320656.P12640477808190149072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320659 (A181819 (n + 1)).toNat

end

end A320656.P12640477808190149072

/-! ## A320656.P6399147846981313677

`A115359(A000217(n+2)-A096826(n+1))`
-/

namespace A320656.P6399147846981313677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (A000217 (n + 2) - A096826 (n + 1)).toNat

end

end A320656.P6399147846981313677

/-! ## A320656.P12184099213632437573

`A001221(A007421(n+1)^A335452(n+1))`
-/

namespace A320656.P12184099213632437573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A007421 (n + 1) : ℚ) ^ (A335452 (n + 1) : ℤ))).toNat

end

end A320656.P12184099213632437573

/-! ## A320656.P8543358036119468709

`ceil(A355817(n+1)/A065460(3*n+2))`
-/

namespace A320656.P8543358036119468709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A355817 (n + 1) : ℚ) / (A065460 (3 * n + 2) : ℚ)⌉

end

end A320656.P8543358036119468709

/-! ## A320656.P51054554129242074

`A304820(A096826(n+1)%A110835(3*n+1))`
-/

namespace A320656.P51054554129242074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304820 (Int.tmod (A096826 (n + 1)) (A110835 (3 * n + 1))).toNat

end

end A320656.P51054554129242074

/-! ## A320656.P372546393778973896

`A010051(2^A096826(n+1))`
-/

namespace A320656.P372546393778973896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A096826 (n + 1) : ℤ))).toNat

end

end A320656.P372546393778973896

/-! ## A320656.P17167230990756907466

`A080116(2^A096826(n+1))`
-/

namespace A320656.P17167230990756907466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A096826 (n + 1) : ℤ))).toNat

end

end A320656.P17167230990756907466

/-! ## A320656.P6826257374075324854

`A008683(A096826(n+1)²²)`
-/

namespace A320656.P6826257374075324854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((A096826 (n + 1) ^ 2) ^ 2).toNat

end

end A320656.P6826257374075324854

/-! ## A320656.P3991235782031711430

`A302050(A096826(n+1)²²)`
-/

namespace A320656.P3991235782031711430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 ((A096826 (n + 1) ^ 2) ^ 2).toNat

end

end A320656.P3991235782031711430

/-! ## A320656.P6722798760942715235

`C(A067029(A210758(n+1)), A096826(n+1))`
-/

namespace A320656.P6722798760942715235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067029 (A210758 (n + 1)).toNat).toNat (A096826 (n + 1)).toNat

end

end A320656.P6722798760942715235

/-! ## A320656.P2456353411955344389

`C(A096825(A096787(3*n+5)), A096826(n+1))`
-/

namespace A320656.P2456353411955344389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096825 (A096787 (3 * n + 5)).toNat).toNat (A096826 (n + 1)).toNat

end

end A320656.P2456353411955344389

/-! ## A320656.P10798672682673700934

`C(A304118(A096827(n+1)), A096826(n+1))`
-/

namespace A320656.P10798672682673700934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A304118 (A096827 (n + 1)).toNat).toNat (A096826 (n + 1)).toNat

end

end A320656.P10798672682673700934

/-! ## A320656.P15626567336990171805

`C(A096810(n), A096844(A096826(n+1)))`
-/

namespace A320656.P15626567336990171805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096810 n).toNat (A096844 (A096826 (n + 1)).toNat).toNat

end

end A320656.P15626567336990171805

/-! ## A320656.P2299419674026592064

`C(A096831(n+1), A096837(A096826(n+1)))`
-/

namespace A320656.P2299419674026592064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096831 (n + 1)).toNat (A096837 (A096826 (n + 1)).toNat).toNat

end

end A320656.P2299419674026592064

/-! ## A320656.P14278079369891193202

`C(A096835(n+1), A096844(A096826(n+1)))`
-/

namespace A320656.P14278079369891193202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096835 (n + 1)).toNat (A096844 (A096826 (n + 1)).toNat).toNat

end

end A320656.P14278079369891193202

/-! ## A320656.P15526519165540582928

`C(A096837(n+1), A096844(A096826(n+1)))`
-/

namespace A320656.P15526519165540582928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096837 (n + 1)).toNat (A096844 (A096826 (n + 1)).toNat).toNat

end

end A320656.P15526519165540582928

/-! ## A320656.P12726514504936054489

`C(A096838(n+1), A096844(A096826(n+1)))`
-/

namespace A320656.P12726514504936054489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096838 (n + 1)).toNat (A096844 (A096826 (n + 1)).toNat).toNat

end

end A320656.P12726514504936054489

/-!
# A320658: Number of factorizations of A181821(n) into semiprimes. Number of multiset partitions, of a multiset whose multiplicities are the prime indices of n, into pairs.

The programs for A320658, there is no canonical definition to state claims against.
-/

/-! ## A320658.P4373250886950294938

`A320655(A181821(n+1)%A046391(n+1))`
-/

namespace A320658.P4373250886950294938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (Int.tmod (A181821 (n + 1)) (A046391 (n + 1))).toNat

end

end A320658.P4373250886950294938

/-! ## A320658.P15351616848470071754

`A320655(A181821(n+1))`
-/

namespace A320658.P15351616848470071754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A181821 (n + 1)).toNat

end

end A320658.P15351616848470071754

/-! ## A320658.P18374758311792181171

`A320655(A304660(n+1))`
-/

namespace A320658.P18374758311792181171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A304660 (n + 1)).toNat

end

end A320658.P18374758311792181171

/-! ## A320658.P10064361531640340137

`A051903(A216898(n)^A300060(n+1))`
-/

namespace A320658.P10064361531640340137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A216898 n : ℚ) ^ (A300060 (n + 1) : ℤ))).toNat

end

end A320658.P10064361531640340137

/-! ## A320658.P9867027521611894418

`A001221(A153643(n))*A137893(n+1)`
-/

namespace A320658.P9867027521611894418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A153643 n).toNat * A137893 (n + 1)

end

end A320658.P9867027521611894418

/-!
# A320659: Number of factorizations of A181821(n) into squarefree semiprimes. Number of multiset partitions, of a multiset whose multiplicities are the prime indices of n, into strict pairs.

The programs for A320659, there is no canonical definition to state claims against.
-/

/-! ## A320659.P3557466697867106624

`A320656(A181821(n+1)%A181821(2*n+3))`
-/

namespace A320659.P3557466697867106624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (Int.tmod (A181821 (n + 1)) (A181821 (2 * n + 3))).toNat

end

end A320659.P3557466697867106624

/-! ## A320659.P10329727307983925372

`A320656(A181821(n+1))`
-/

namespace A320659.P10329727307983925372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A181821 (n + 1)).toNat

end

end A320659.P10329727307983925372

/-! ## A320659.P17066855749946979684

`A320656(A304660(n+1))`
-/

namespace A320659.P17066855749946979684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A304660 (n + 1)).toNat

end

end A320659.P17066855749946979684

/-! ## A320659.P6638163825491657381

`A320656(6*A181821(Δ[n²]-n))`
-/

namespace A320659.P6638163825491657381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (6 * A181821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A320659.P6638163825491657381

/-! ## A320659.P6184906229897580242

`A000045(and(A242864(n+1), A322076(n+1)))`
-/

namespace A320659.P6184906229897580242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A242864 (n + 1)) (A322076 (n + 1))).toNat

end

end A320659.P6184906229897580242

/-!
# A320660: Number of business cards required to build an origami level n Jerusalem cube.

The programs for A320660, the canonical program `A320660.P311254634174233026` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320660 has offset 0).

The definition of A320660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320660.P12456577954040678130

`ogf((12-72x+96x^3)/(1-12x+16x^2+80x^3+48x^4))`
-/

namespace A320660.P12456577954040678130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -72, 0, 96] [1, -12, 16, 80, 48] n

end

end A320660.P12456577954040678130

namespace A320660

/-- `ogf((12-72x+96x^3)/(1-12x+16x^2+80x^3+48x^4))` -/
def P12456577954040678130.Spec : Prop :=
  ∀ n, P12456577954040678130.a n = A320660 n

end A320660

/-! ## A320660.P311254634174233026

`3*(A084128(n)-2*A239549(n)+3*A239549(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320660

/-- `3*(A084128(n)-2*A239549(n)+3*A239549(n+1))` -/
def P311254634174233026.Spec : Prop :=
  ∀ n, P311254634174233026.a n = A320660 n

theorem P311254634174233026.correct : P311254634174233026.Spec := by
  intro n
  simp only [A320660]

end A320660

/-!
# A320661: a(n) = 2^(n+3) - 6*n - 7.

The programs for A320661, the canonical program `A320661.P10572897147368588178` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320661 has offset 0).

The definition of A320661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+3)-6*n-7` (program `A320661.P10572897147368588178`, by `A320661.P10572897147368588178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320661.P6642772589406438185

`ogf((1-x+6x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A320661.P6642772589406438185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -4, 5, -2] n

end

end A320661.P6642772589406438185

namespace A320661

/-- `ogf((1-x+6x^2)/(1-4x+5x^2-2x^3))` -/
def P6642772589406438185.Spec : Prop :=
  ∀ n, P6642772589406438185.a n = A320661 n

end A320661

/-! ## A320661.P10572897147368588178

`2^(n+3)-6*n-7`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320661

/-- `2^(n+3)-6*n-7` -/
def P10572897147368588178.Spec : Prop :=
  ∀ n, P10572897147368588178.a n = A320661 n

theorem P10572897147368588178.correct : P10572897147368588178.Spec := by
  intro n
  simp only [A320661]

end A320661

/-! ## A320661.P14901775437895370706

`∑[ogf((1-x+6x^2)/(1-3x+2x^2))]`
-/

namespace A320661.P14901775437895370706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P14901775437895370706

namespace A320661

/-- `∑[ogf((1-x+6x^2)/(1-3x+2x^2))]` -/
def P14901775437895370706.Spec : Prop :=
  ∀ n, P14901775437895370706.a n = A320661 n

end A320661

/-! ## A320661.P3276469640921409860

`∑[∑[ceil(acot(acot(n)))^(n+1)]]`
-/

namespace A320661.P3276469640921409860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉ ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P3276469640921409860

namespace A320661

/-- `∑[∑[ceil(acot(acot(n)))^(n+1)]]` -/
def P3276469640921409860.Spec : Prop :=
  ∀ n, P3276469640921409860.a n = A320661 n

end A320661

/-! ## A320661.P9117872785554293689

`∑[2*(a(n-1)+3)]` with `a(0)=1, a(1)=2`
-/

namespace A320661.P9117872785554293689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P9117872785554293689

namespace A320661

/-- `∑[2*(a(n-1)+3)]` -/
def P9117872785554293689.Spec : Prop :=
  ∀ n, (P9117872785554293689.a n : ℤ) = A320661 n

end A320661

/-! ## A320661.P10616547563963205071

`∑[lcm(2, a(n-1)+3)]` with `a(0)=1, a(1)=2`
-/

namespace A320661.P10616547563963205071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P10616547563963205071

namespace A320661

/-- `∑[lcm(2, a(n-1)+3)]` -/
def P10616547563963205071.Spec : Prop :=
  ∀ n, (P10616547563963205071.a n : ℤ) = A320661 n

end A320661

/-! ## A320661.P8858262689909048359

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A320661.P8858262689909048359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P8858262689909048359

namespace A320661

/-- `∑[∑[2*a(n-1)]]` -/
def P8858262689909048359.Spec : Prop :=
  ∀ n, (P8858262689909048359.a n : ℤ) = A320661 n

end A320661

/-! ## A320661.P2535843279098870673

`∑[∑[(2%(n+1))!^(n+1)]]`
-/

namespace A320661.P2535843279098870673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (n + 1)) ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P2535843279098870673

namespace A320661

/-- `∑[∑[(2%(n+1))!^(n+1)]]` -/
def P2535843279098870673.Spec : Prop :=
  ∀ n, (P2535843279098870673.a n : ℤ) = A320661 n

end A320661

/-! ## A320661.P5304040757190475016

`∑[∑[round(atan(n+1)²)^(n+1)]]`
-/

namespace A320661.P5304040757190475016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (n + 1 : ℝ) ^ 2) ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P5304040757190475016

namespace A320661

/-- `∑[∑[round(atan(n+1)²)^(n+1)]]` -/
def P5304040757190475016.Spec : Prop :=
  ∀ n, P5304040757190475016.a n = A320661 n

end A320661

/-! ## A320661.P12994431331681664822

`∑[a(n-1)+2^(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A320661.P12994431331681664822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P12994431331681664822

namespace A320661

/-- `∑[a(n-1)+2^(n+1)]` -/
def P12994431331681664822.Spec : Prop :=
  ∀ n, (P12994431331681664822.a n : ℤ) = A320661 n

end A320661

/-! ## A320661.P10502133615388142995

`∑[a(n-1)+a(n-1)+6]` with `a(0)=1, a(1)=2`
-/

namespace A320661.P10502133615388142995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P10502133615388142995

namespace A320661

/-- `∑[a(n-1)+a(n-1)+6]` -/
def P10502133615388142995.Spec : Prop :=
  ∀ n, (P10502133615388142995.a n : ℤ) = A320661 n

end A320661

/-! ## A320661.P8824658075848915403

`∑[A131130(n)]`
-/

namespace A320661.P8824658075848915403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P8824658075848915403

namespace A320661

/-- `∑[A131130(n)]` -/
def P8824658075848915403.Spec : Prop :=
  ∀ n, P8824658075848915403.a n = A320661 n

end A320661

/-! ## A320661.P12723861939847955050

`∑[A027383(2*n+1)-A040000(n)²]`
-/

namespace A320661.P12723861939847955050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n + 1) - A040000 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P12723861939847955050

namespace A320661

/-- `∑[A027383(2*n+1)-A040000(n)²]` -/
def P12723861939847955050.Spec : Prop :=
  ∀ n, P12723861939847955050.a n = A320661 n

end A320661

/-! ## A320661.P3761486281717590511

`∑[∑[A000079(n+1)]-A113311(2*n)]`
-/

namespace A320661.P3761486281717590511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A113311 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P3761486281717590511

namespace A320661

/-- `∑[∑[A000079(n+1)]-A113311(2*n)]` -/
def P3761486281717590511.Spec : Prop :=
  ∀ n, P3761486281717590511.a n = A320661 n

end A320661

/-! ## A320661.P14067499884952785531

`∑[∑[A020639(A000010(n+1))^(n+1)]]`
-/

namespace A320661.P14067499884952785531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P14067499884952785531

namespace A320661

/-- `∑[∑[A020639(A000010(n+1))^(n+1)]]` -/
def P14067499884952785531.Spec : Prop :=
  ∀ n, P14067499884952785531.a n = A320661 n

end A320661

/-! ## A320661.P14305669391368343113

`∑[∑[2^((n+1)%A000108(n+1))]]`
-/

namespace A320661.P14305669391368343113
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (n + 1 : ℤ) (A000108 (n + 1)) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320661.P14305669391368343113

namespace A320661

/-- `∑[∑[2^((n+1)%A000108(n+1))]]` -/
def P14305669391368343113.Spec : Prop :=
  ∀ n, P14305669391368343113.a n = (A320661 n : ℚ)

end A320661

/-!
# A320663: Number of non-isomorphic multiset partitions of weight n using singletons or pairs.

The programs for A320663, there is no canonical definition to state claims against.
-/

/-! ## A320663.P8838288829594107414

`A345918(A026003(n))`
-/

namespace A320663.P8838288829594107414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (A026003 n).toNat

end

end A320663.P8838288829594107414

/-! ## A320663.P776603196932734182

`A345918(A026720(n))`
-/

namespace A320663.P776603196932734182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (A026720 n).toNat

end

end A320663.P776603196932734182

/-! ## A320663.P713685076225562383

`A108497(A319565(n))+A006130(n)`
-/

namespace A320663.P713685076225562383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108497 (A319565 n).toNat + A006130 n

end

end A320663.P713685076225562383

/-!
# A320664: Number of non-isomorphic multiset partitions of weight n with all parts of odd size.

The programs for A320664, there is no canonical definition to state claims against.
-/

/-! ## A320664.P13531223501056580738

`A307068(n)-A137510(A336139(n))`
-/

namespace A320664.P13531223501056580738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307068 n - A137510 (A336139 n).toNat

end

end A320664.P13531223501056580738

/-!
# A320666: a(n) is the maximum number of liberties a single group can have on an otherwise empty n X n Go board.

The programs for A320666, the canonical program `A320666.P11173397200045065094` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320666 has offset 1).

The definition of A320666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320666.P10548648679472885741

`ogf((2x+4x^2+3x^3+x^4+x^6+x^7+x^8-x^9)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A320666.P10548648679472885741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 3, 1, 0, 1, 1, 1, -1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A320666.P10548648679472885741

namespace A320666

/-- `ogf((2x+4x^2+3x^3+x^4+x^6+x^7+x^8-x^9)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P10548648679472885741.Spec : Prop :=
  ∀ n, P10548648679472885741.a n = A320666 (n + 1)

end A320666

/-! ## A320666.P11173397200045065094

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=9, a(4)=14, a(5)=22, a(6)=29, a(7)=38, a(8)=51, a(9)=61`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320666

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P11173397200045065094.Spec : Prop :=
  ∀ n, P11173397200045065094.a n = A320666 (n + 1)

theorem P11173397200045065094.correct : P11173397200045065094.Spec := by
  intro n
  simp only [A320666, Nat.add_sub_cancel]

end A320666

/-! ## A320666.P11756320707824837617

`(n+1)²-A369692(n+1)`
-/

namespace A320666.P11756320707824837617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A369692 (n + 1)

end

end A320666.P11756320707824837617

namespace A320666

/-- `(n+1)²-A369692(n+1)` -/
def P11756320707824837617.Spec : Prop :=
  ∀ n, P11756320707824837617.a n = A320666 (n + 1)

end A320666

/-! ## A320666.P17305630878521304320

`(n+1)²-A381475((n+1)²+n²)`
-/

namespace A320666.P17305630878521304320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A381475 ((n + 1) ^ 2 + n ^ 2)

end

end A320666.P17305630878521304320

namespace A320666

/-- `(n+1)²-A381475((n+1)²+n²)` -/
def P17305630878521304320.Spec : Prop :=
  ∀ n, P17305630878521304320.a n = A320666 (n + 1)

end A320666

/-!
# A320667: First differences of A066194.

The programs for A320667, the canonical program `A320667.P12312987098822007039` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320667 has offset 1).

The definition of A320667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320667.P12312987098822007039

`A066194(n+2)-A066194(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320667

/-- `A066194(n+2)-A066194(n+1)` -/
def P12312987098822007039.Spec : Prop :=
  ∀ n, P12312987098822007039.a n = A320667 (n + 1)

theorem P12312987098822007039.correct : P12312987098822007039.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel]

end A320667

/-! ## A320667.P5713409238608191670

`Δ[xor(n, a(floor(n/2)))]` with `a(0)=0`
-/

namespace A320667.P5713409238608191670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor n (f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A320667.P5713409238608191670

namespace A320667

/-- `Δ[xor(n, a(floor(n/2)))]` -/
def P5713409238608191670.Spec : Prop :=
  ∀ n, P5713409238608191670.a n = A320667 (n + 1)

theorem P5713409238608191670.correct : P5713409238608191670.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel, A320667.P5713409238608191670.f1, A320667.P5713409238608191670.a, A320667.P12312987098822007039.a, A066194, A066194.P15313669370463354763.a, A006068, A006068.P433290056721054414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320667

/-! ## A320667.P9144066700205970207

`Δ[A286546(n)]+1`
-/

namespace A320667.P9144066700205970207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A320667.P9144066700205970207

namespace A320667

/-- `Δ[A286546(n)]+1` -/
def P9144066700205970207.Spec : Prop :=
  ∀ n, P9144066700205970207.a n = A320667 (n + 1)

theorem P9144066700205970207.correct : P9144066700205970207.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel, A320667.P9144066700205970207.f1, A320667.P9144066700205970207.a, A320667.P12312987098822007039.a, A066194, A066194.P15313669370463354763.a, A286546, A286546.P17363262112593177841.a, A006068, A006068.P433290056721054414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320667

/-! ## A320667.P12113280386114744062

`Δ[xor(n, A292600(n))]`
-/

namespace A320667.P12113280386114744062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P12113280386114744062

namespace A320667

/-- `Δ[xor(n, A292600(n))]` -/
def P12113280386114744062.Spec : Prop :=
  ∀ n, P12113280386114744062.a n = A320667 (n + 1)

end A320667

/-! ## A320667.P1727183313751458556

`∑{d}[n+1, A029883(#)*A099894((n+1)/#-1)]`
-/

namespace A320667.P1727183313751458556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029883 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320667.P1727183313751458556

namespace A320667

/-- `∑{d}[n+1, A029883(#)*A099894((n+1)/#-1)]` -/
def P1727183313751458556.Spec : Prop :=
  ∀ n, P1727183313751458556.a n = A320667 (n + 1)

end A320667

/-! ## A320667.P8483477529414943182

`Δ[A006068(n)]`
-/

namespace A320667.P8483477529414943182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P8483477529414943182

namespace A320667

/-- `Δ[A006068(n)]` -/
def P8483477529414943182.Spec : Prop :=
  ∀ n, P8483477529414943182.a n = A320667 (n + 1)

theorem P8483477529414943182.correct : P8483477529414943182.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel, A320667.P8483477529414943182.f1, A320667.P8483477529414943182.a, A320667.P12312987098822007039.a, A006068, A006068.P433290056721054414.a, A066194, A066194.P15313669370463354763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320667

/-! ## A320667.P15985326434456215895

`Δ[A066194(1+n)]`
-/

namespace A320667.P15985326434456215895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P15985326434456215895

namespace A320667

/-- `Δ[A066194(1+n)]` -/
def P15985326434456215895.Spec : Prop :=
  ∀ n, P15985326434456215895.a n = A320667 (n + 1)

theorem P15985326434456215895.correct : P15985326434456215895.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel, A320667.P15985326434456215895.f1, A320667.P15985326434456215895.a, A320667.P12312987098822007039.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A320667

/-! ## A320667.P1498111309268129989

`Δ[A268716(n)/2]`
-/

namespace A320667.P1498111309268129989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P1498111309268129989

namespace A320667

/-- `Δ[A268716(n)/2]` -/
def P1498111309268129989.Spec : Prop :=
  ∀ n, P1498111309268129989.a n = (A320667 (n + 1) : ℚ)

theorem P1498111309268129989.correct : P1498111309268129989.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel, A320667.P1498111309268129989.f1, A320667.P1498111309268129989.a, A320667.P12312987098822007039.a, A066194, A066194.P15313669370463354763.a, A268716, A268716.P9381113325776133009.a, A006068, A006068.P433290056721054414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320667

/-! ## A320667.P7633679328569021753

`A006068(n+1)-A006068(n)`
-/

namespace A320667.P7633679328569021753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (n + 1) - A006068 n

end

end A320667.P7633679328569021753

namespace A320667

/-- `A006068(n+1)-A006068(n)` -/
def P7633679328569021753.Spec : Prop :=
  ∀ n, P7633679328569021753.a n = A320667 (n + 1)

theorem P7633679328569021753.correct : P7633679328569021753.Spec := by
  intro n
  simp only [A320667, Nat.add_sub_cancel, A320667.P7633679328569021753.a, A320667.P12312987098822007039.a, A006068, A006068.P433290056721054414.a, A066194, A066194.P15313669370463354763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320667

/-! ## A320667.P2821833504445824418

`Δ[A292600(2*n)]`
-/

namespace A320667.P2821833504445824418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P2821833504445824418

namespace A320667

/-- `Δ[A292600(2*n)]` -/
def P2821833504445824418.Spec : Prop :=
  ∀ n, P2821833504445824418.a n = A320667 (n + 1)

end A320667

/-! ## A320667.P13329923967903162212

`2-Δ[A292601(2*n)]`
-/

namespace A320667.P13329923967903162212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A320667.P13329923967903162212

namespace A320667

/-- `2-Δ[A292601(2*n)]` -/
def P13329923967903162212.Spec : Prop :=
  ∀ n, P13329923967903162212.a n = A320667 (n + 1)

end A320667

/-! ## A320667.P2936289853143564185

`A292600(A004277(n+1))-A292600(2*n)`
-/

namespace A320667.P2936289853143564185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A004277 (n + 1)).toNat - A292600 (2 * n)

end

end A320667.P2936289853143564185

namespace A320667

/-- `A292600(A004277(n+1))-A292600(2*n)` -/
def P2936289853143564185.Spec : Prop :=
  ∀ n, P2936289853143564185.a n = A320667 (n + 1)

end A320667

/-! ## A320667.P9085464164741327186

`A292600(A005843(n+1))-A292600(2*n)`
-/

namespace A320667.P9085464164741327186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A005843 (n + 1)).toNat - A292600 (2 * n)

end

end A320667.P9085464164741327186

namespace A320667

/-- `A292600(A005843(n+1))-A292600(2*n)` -/
def P9085464164741327186.Spec : Prop :=
  ∀ n, P9085464164741327186.a n = A320667 (n + 1)

end A320667

/-! ## A320667.P5015009828787309589

`Δ[A105670(2*(n+1))/2]`
-/

namespace A320667.P5015009828787309589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105670 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P5015009828787309589

namespace A320667

/-- `Δ[A105670(2*(n+1))/2]` -/
def P5015009828787309589.Spec : Prop :=
  ∀ n, P5015009828787309589.a n = (A320667 (n + 1) : ℚ)

end A320667

/-! ## A320667.P9201205649615953644

`Δ[A268714(∑[n])]`
-/

namespace A320667.P9201205649615953644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268714 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320667.P9201205649615953644

namespace A320667

/-- `Δ[A268714(∑[n])]` -/
def P9201205649615953644.Spec : Prop :=
  ∀ n, P9201205649615953644.a n = A320667 (n + 1)

end A320667

/-!
# A320668: O.g.f. A(x) satisfies: [x^n] exp(-n^3*A(x)) / (1 - n*x)^(n^2) = 0, for n > 0.

The programs for A320668, there is no canonical definition to state claims against.
-/

/-! ## A320668.P11224330138679861176

`A051176((3*(n+1))^abs(1-n))`
-/

namespace A320668.P11224330138679861176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((3 * (n + 1) : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat

end

end A320668.P11224330138679861176

/-!
# A320672: a(n) is the smallest divisor of (n+2)*(n+3) not yet in the sequence.

The programs for A320672, there is no canonical definition to state claims against.
-/

/-! ## A320672.P10789199732942681542

`A356224(2*n+5)+A153152(n)`
-/

namespace A320672.P10789199732942681542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (2 * n + 5) + A153152 n

end

end A320672.P10789199732942681542

/-! ## A320672.P17837620634338216514

`A153152(n)-(A243310(2*(n+2))-1)`
-/

namespace A320672.P17837620634338216514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n - (A243310 (2 * (n + 2)) - 1)

end

end A320672.P17837620634338216514

/-! ## A320672.P11090041786698261954

`A153152(n)+A057427(A239835(n))`
-/

namespace A320672.P11090041786698261954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n + A057427 (A239835 n).toNat

end

end A320672.P11090041786698261954

/-! ## A320672.P14057268161671255405

`A153152(n)+A000035(A057876(n+1))`
-/

namespace A320672.P14057268161671255405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n + A000035 (A057876 (n + 1)).toNat

end

end A320672.P14057268161671255405

/-! ## A320672.P11425976842437437912

`A153152(n)+A052409(A090686(n+1))`
-/

namespace A320672.P11425976842437437912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n + A052409 (A090686 (n + 1)).toNat

end

end A320672.P11425976842437437912

/-!
# A320673: Positive integers m with binary expansion (b_1, ..., b_k) (where k = A070939(m)) such that b_i = [m == 0 (mod i)] for i = 1..k (where [] is an Iverson bracket).

The programs for A320673, there is no canonical definition to state claims against.
-/

/-! ## A320673.P5040117044328230471

`xor(A175400(11*n+4), A326738(n+1))`
-/

namespace A320673.P5040117044328230471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175400 (11 * n + 4)) (A326738 (n + 1))

end

end A320673.P5040117044328230471

/-!
# A320674: Positive integers m with binary expansion (b_1, ..., b_k) (where k = A070939(m)) such that b_i = [m == 0 (mod prime(i))] for i = 1..k (where prime(i) denotes the i-th prime number and [] is an Iverson bracket).

The programs for A320674, the canonical program `A320674.P12053016088387841254` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320674 has offset 1).

The definition of A320674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320674.P12053016088387841254

`2*a(n-3)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8, a(4)=10`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320674

/-- `2*a(n-3)` -/
def P12053016088387841254.Spec : Prop :=
  ∀ n, (P12053016088387841254.a n : ℤ) = A320674 (n + 1)

theorem P12053016088387841254.correct : P12053016088387841254.Spec := by
  intro n
  simp only [A320674, Nat.add_sub_cancel]

end A320674

/-! ## A320674.P11559203066974352301

`∑[lcm(2, ∏[abs((1-n)%3)!])]`
-/

namespace A320674.P11559203066974352301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |Int.tmod (1 - (n : ℤ)) 3|.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320674.P11559203066974352301

namespace A320674

/-- `∑[lcm(2, ∏[abs((1-n)%3)!])]` -/
def P11559203066974352301.Spec : Prop :=
  ∀ n, (P11559203066974352301.a n : ℤ) = A320674 (n + 1)

end A320674

/-! ## A320674.P12232479978145975717

`∑[2^∑[char[3*(n-char[1])]]]`
-/

namespace A320674.P12232479978145975717
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320674.P12232479978145975717

namespace A320674

/-- `∑[2^∑[char[3*(n-char[1])]]]` -/
def P12232479978145975717.Spec : Prop :=
  ∀ n, (P12232479978145975717.a n : ℤ) = A320674 (n + 1)

end A320674

/-! ## A320674.P16947469313646806471

`∑[2^floor(n/3)]+ceil(atan(n))+1`
-/

namespace A320674.P16947469313646806471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (⌈Real.arctan (n : ℝ)⌉ + 1 : ℚ)

end

end A320674.P16947469313646806471

namespace A320674

/-- `∑[2^floor(n/3)]+ceil(atan(n))+1` -/
def P16947469313646806471.Spec : Prop :=
  ∀ n, P16947469313646806471.a n = (A320674 (n + 1) : ℚ)

end A320674

/-! ## A320674.P11124442927162197690

`2*A029747(n+1)`
-/

namespace A320674.P11124442927162197690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029747 (n + 1)

end

end A320674.P11124442927162197690

namespace A320674

/-- `2*A029747(n+1)` -/
def P11124442927162197690.Spec : Prop :=
  ∀ n, P11124442927162197690.a n = A320674 (n + 1)

end A320674

/-! ## A320674.P17130468809283966653

`A246074(2*(n+1))`
-/

namespace A320674.P17130468809283966653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (2 * (n + 1))

end

end A320674.P17130468809283966653

namespace A320674

/-- `A246074(2*(n+1))` -/
def P17130468809283966653.Spec : Prop :=
  ∀ n, P17130468809283966653.a n = A320674 (n + 1)

end A320674

/-! ## A320674.P2003401822373091257

`2*A246074(A004279(n))`
-/

namespace A320674.P2003401822373091257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246074 (A004279 n).toNat

end

end A320674.P2003401822373091257

namespace A320674

/-- `2*A246074(A004279(n))` -/
def P2003401822373091257.Spec : Prop :=
  ∀ n, P2003401822373091257.a n = A320674 (n + 1)

end A320674

/-! ## A320674.P14608443417773158579

`A200672(n+1)+A158799(n)`
-/

namespace A320674.P14608443417773158579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200672 (n + 1) + A158799 n

end

end A320674.P14608443417773158579

namespace A320674

/-- `A200672(n+1)+A158799(n)` -/
def P14608443417773158579.Spec : Prop :=
  ∀ n, P14608443417773158579.a n = A320674 (n + 1)

end A320674

/-! ## A320674.P3134267377924712030

`2*∪[A094958(n+1), A063759(n)]`
-/

namespace A320674.P3134267377924712030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320674.P3134267377924712030

namespace A320674

/-- `2*∪[A094958(n+1), A063759(n)]` -/
def P3134267377924712030.Spec : Prop :=
  ∀ n, (P3134267377924712030.a n : ℤ) = A320674 (n + 1)

end A320674

/-! ## A320674.P6355680077775830654

`2*∩[A003401(n+1), A029750(n+1)]`
-/

namespace A320674.P6355680077775830654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320674.P6355680077775830654

namespace A320674

/-- `2*∩[A003401(n+1), A029750(n+1)]` -/
def P6355680077775830654.Spec : Prop :=
  ∀ n, (P6355680077775830654.a n : ℤ) = A320674 (n + 1)

end A320674

/-! ## A320674.P8257249965831756065

`2*∩[A003401(n+1), A246075(n+1)]`
-/

namespace A320674.P8257249965831756065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320674.P8257249965831756065

namespace A320674

/-- `2*∩[A003401(n+1), A246075(n+1)]` -/
def P8257249965831756065.Spec : Prop :=
  ∀ n, (P8257249965831756065.a n : ℤ) = A320674 (n + 1)

end A320674

/-! ## A320674.P7590190849825555727

`2*∩[A029750(n+1), A064390(n+1)]`
-/

namespace A320674.P7590190849825555727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320674.P7590190849825555727

namespace A320674

/-- `2*∩[A029750(n+1), A064390(n+1)]` -/
def P7590190849825555727.Spec : Prop :=
  ∀ n, (P7590190849825555727.a n : ℤ) = A320674 (n + 1)

end A320674

/-! ## A320674.P13854207496575962187

`∩[A029747(n+1), A085125(n+1)]`
-/

namespace A320674.P13854207496575962187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320674.P13854207496575962187

namespace A320674

/-- `∩[A029747(n+1), A085125(n+1)]` -/
def P13854207496575962187.Spec : Prop :=
  ∀ n, (P13854207496575962187.a n : ℤ) = A320674 (n + 1)

end A320674

/-!
# A320675: Positive integers m with binary expansion (b_1, ..., b_k) (where k = A070939(m)) such that b_i = [gcd(m, i)=1] for i = 1..k (where [] is an Iverson bracket).

The programs for A320675, there is no canonical definition to state claims against.
-/

/-! ## A320675.P18005606055651604398

`record[A100293(3*n+2)%A198453(n+1)]`
-/

namespace A320675.P18005606055651604398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100293 (3 * n + 2)) (A198453 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320675.P18005606055651604398

/-!
# A320676: Expansion of (r(q) * s(q))^3 where r(), s() are cubic AGM theta functions.

The programs for A320676, there is no canonical definition to state claims against.
-/

/-! ## A320676.P6350295228834426716

`(A341305(n)+A008657(n))/2`
-/

namespace A320676.P6350295228834426716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341305 n + A008657 n : ℚ) / 2

end

end A320676.P6350295228834426716

/-!
# A320677: Expansion of s(q)^6 where s() is cubic AGM theta functions.

The programs for A320677, there is no canonical definition to state claims against.
-/

/-! ## A320677.P11723454394230016373

`∑{#}[n, A109041(#)*A109041(n-#)]`
-/

namespace A320677.P11723454394230016373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A109041 k * A109041 (n - k)

end

end A320677.P11723454394230016373

/-!
# A320678: Number of 3-element subsets of [n] having a prime element sum.

The programs for A320678, there is no canonical definition to state claims against.
-/

/-! ## A320678.P10325517174185166300

`A282516(A167614(n+2))`
-/

namespace A320678.P10325517174185166300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167614 (n + 2)).toNat

end

end A320678.P10325517174185166300

/-! ## A320678.P1855554735458118917

`A282516(A152950(n+4))`
-/

namespace A320678.P1855554735458118917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A152950 (n + 4)).toNat

end

end A320678.P1855554735458118917

/-! ## A320678.P13107947153766351496

`A282516(A052905(n)+8)`
-/

namespace A320678.P13107947153766351496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A052905 n + 8).toNat

end

end A320678.P13107947153766351496

/-! ## A320678.P506732772573805992

`record[A282516(A133263(n)+1)]`
-/

namespace A320678.P506732772573805992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320678.P506732772573805992

/-! ## A320678.P299453474292906424

`record[A282516(A000217(n)+3)]`
-/

namespace A320678.P299453474292906424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320678.P299453474292906424

/-! ## A320678.P18342594927455633708

`A282516(A000096(n+2)+4)`
-/

namespace A320678.P18342594927455633708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000096 (n + 2) + 4).toNat

end

end A320678.P18342594927455633708

/-! ## A320678.P6896934029053606787

`A282516(A020744(n)+A000217(n+1))`
-/

namespace A320678.P6896934029053606787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A020744 n + A000217 (n + 1)).toNat

end

end A320678.P6896934029053606787

/-! ## A320678.P11851484261719773336

`A282516(eq[2, A002260(n+1)-2])`
-/

namespace A320678.P11851484261719773336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320678.P11851484261719773336

/-! ## A320678.P12170207302466404236

`A282516(eq[2, A002260(n+1)/2])`
-/

namespace A320678.P12170207302466404236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320678.P12170207302466404236

/-! ## A320678.P15404019259656190898

`A282516(eq[3, A002262(n)])`
-/

namespace A320678.P15404019259656190898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320678.P15404019259656190898

/-!
# A320679: Number of 4-element subsets of [n] having a prime element sum.

The programs for A320679, there is no canonical definition to state claims against.
-/

/-! ## A320679.P4561880514670601091

`A282516(A056000(n)+14)`
-/

namespace A320679.P4561880514670601091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A056000 n + 14).toNat

end

end A320679.P4561880514670601091

/-! ## A320679.P11179865127863119600

`A282516(A167499(n+3)-1)`
-/

namespace A320679.P11179865127863119600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 (n + 3) - 1).toNat

end

end A320679.P11179865127863119600

/-! ## A320679.P2081516325701741739

`A282516(A000096(n+3)+5)`
-/

namespace A320679.P2081516325701741739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000096 (n + 3) + 5).toNat

end

end A320679.P2081516325701741739

/-! ## A320679.P690271308283532263

`A282516(A000217(n+4)+4)`
-/

namespace A320679.P690271308283532263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000217 (n + 4) + 4).toNat

end

end A320679.P690271308283532263

/-! ## A320679.P13649605833437370730

`A282516(n+7+A152947(n+5))`
-/

namespace A320679.P13649605833437370730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 ((n + 7 : ℤ) + A152947 (n + 5)).toNat

end

end A320679.P13649605833437370730

/-! ## A320679.P10691360576376064308

`A282516((n+4)²-A046691(n+1))`
-/

namespace A320679.P10691360576376064308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (((n + 4) ^ 2 : ℤ) - A046691 (n + 1)).toNat

end

end A320679.P10691360576376064308

/-! ## A320679.P2866879316869584168

`A282516(A027379(n)+A005843(n+7))`
-/

namespace A320679.P2866879316869584168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A027379 n + A005843 (n + 7)).toNat

end

end A320679.P2866879316869584168

/-! ## A320679.P9280828491186667313

`A282516(eq[4, A002262(n)])`
-/

namespace A320679.P9280828491186667313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320679.P9280828491186667313

/-!
# A320680: Number of 5-element subsets of [n] having a prime element sum.

The programs for A320680, there is no canonical definition to state claims against.
-/

/-! ## A320680.P5003083923768910380

`record[A282516(A167499(n))]`
-/

namespace A320680.P5003083923768910380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320680.P5003083923768910380

/-! ## A320680.P16838721688319318020

`A282516(A167499(n+4))`
-/

namespace A320680.P16838721688319318020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 (n + 4)).toNat

end

end A320680.P16838721688319318020

/-! ## A320680.P255114703711467600

`record[A282516(A152950(n+2)+2)]`
-/

namespace A320680.P255114703711467600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A152950 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320680.P255114703711467600

/-! ## A320680.P10493881394446269143

`record[A282516(A167614(n+1)-n)]`
-/

namespace A320680.P10493881394446269143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167614 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320680.P10493881394446269143

/-! ## A320680.P7707363514557798517

`A282516(eq[5, A002262(n)])`
-/

namespace A320680.P7707363514557798517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320680.P7707363514557798517

/-!
# A320681: Number of 6-element subsets of [n] having a prime element sum.

The programs for A320681, there is no canonical definition to state claims against.
-/

/-! ## A320681.P7976594732083496152

`A282516(A167499(n+5)+1)`
-/

namespace A320681.P7976594732083496152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 (n + 5) + 1).toNat

end

end A320681.P7976594732083496152

/-! ## A320681.P15069746657614690718

`A282516(A000096(n+5)+7)`
-/

namespace A320681.P15069746657614690718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000096 (n + 5) + 7).toNat

end

end A320681.P15069746657614690718

/-! ## A320681.P4640019823584246629

`A282516(n+11+A152947(n+7))`
-/

namespace A320681.P4640019823584246629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 ((n + 11 : ℤ) + A152947 (n + 7)).toNat

end

end A320681.P4640019823584246629

/-! ## A320681.P12250708862904444526

`A282516(A046691(n+7)-A016789(n+4))`
-/

namespace A320681.P12250708862904444526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A046691 (n + 7) - A016789 (n + 4)).toNat

end

end A320681.P12250708862904444526

/-! ## A320681.P2872187297281886722

`A282516(eq[7, A002260(n+1)])`
-/

namespace A320681.P2872187297281886722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320681.P2872187297281886722

/-! ## A320681.P14301255060712145196

`A282516(eq[6, A002262(n)])`
-/

namespace A320681.P14301255060712145196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320681.P14301255060712145196

/-!
# A320682: Number of 7-element subsets of [n] having a prime element sum.

The programs for A320682, there is no canonical definition to state claims against.
-/

/-! ## A320682.P13328067029069883029

`A282516(A167499(n+6)+2)`
-/

namespace A320682.P13328067029069883029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 (n + 6) + 2).toNat

end

end A320682.P13328067029069883029

/-! ## A320682.P13518911736431796232

`A282516(A000096(n+6)+8)`
-/

namespace A320682.P13518911736431796232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000096 (n + 6) + 8).toNat

end

end A320682.P13518911736431796232

/-! ## A320682.P17785857800853180637

`A282516(A020744(n+6)+A000217(n+5))`
-/

namespace A320682.P17785857800853180637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A020744 (n + 6) + A000217 (n + 5)).toNat

end

end A320682.P17785857800853180637

/-! ## A320682.P17731913708709419989

`A282516(A046691(n+2)+A016789(n+9))`
-/

namespace A320682.P17731913708709419989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A046691 (n + 2) + A016789 (n + 9)).toNat

end

end A320682.P17731913708709419989

/-! ## A320682.P14705649633580750281

`A282516(A326178(n+12)+A152947(n+8))`
-/

namespace A320682.P14705649633580750281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A326178 (n + 12) + A152947 (n + 8)).toNat

end

end A320682.P14705649633580750281

/-!
# A320683: Number of 8-element subsets of [n] having a prime element sum.

The programs for A320683, there is no canonical definition to state claims against.
-/

/-! ## A320683.P42328968488552177

`A282516(A167499(n+7)+3)`
-/

namespace A320683.P42328968488552177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 (n + 7) + 3).toNat

end

end A320683.P42328968488552177

/-! ## A320683.P4321837627414299636

`A282516(A145018(n+9)+4)`
-/

namespace A320683.P4321837627414299636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A145018 (n + 9) + 4).toNat

end

end A320683.P4321837627414299636

/-! ## A320683.P17476731582242670705

`A282516(A000124(n+8)+7)`
-/

namespace A320683.P17476731582242670705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000124 (n + 8) + 7).toNat

end

end A320683.P17476731582242670705

/-! ## A320683.P9842584628104454970

`A282516(A000096(n+7)+9)`
-/

namespace A320683.P9842584628104454970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000096 (n + 7) + 9).toNat

end

end A320683.P9842584628104454970

/-! ## A320683.P15166102782947010833

`A282516(A000217(n+8)+8)`
-/

namespace A320683.P15166102782947010833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A000217 (n + 8) + 8).toNat

end

end A320683.P15166102782947010833

/-! ## A320683.P16384571523871890719

`A282516(A326178(n+14)+A152947(n+9))`
-/

namespace A320683.P16384571523871890719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A326178 (n + 14) + A152947 (n + 9)).toNat

end

end A320683.P16384571523871890719

/-!
# A320684: Number of 9-element subsets of [n] having a prime element sum.

The programs for A320684, there is no canonical definition to state claims against.
-/

/-! ## A320684.P9236956707648098583

`A282516(A167499(n+8)+4)`
-/

namespace A320684.P9236956707648098583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167499 (n + 8) + 4).toNat

end

end A320684.P9236956707648098583

/-! ## A320684.P2292095209967814850

`A282516(A027379(n+8)-(n-2))`
-/

namespace A320684.P2292095209967814850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A027379 (n + 8) - ((n : ℤ) - 2)).toNat

end

end A320684.P2292095209967814850

/-! ## A320684.P11264788796757683863

`A282516(A020744(n+9)+A000217(n+7))`
-/

namespace A320684.P11264788796757683863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A020744 (n + 9) + A000217 (n + 7)).toNat

end

end A320684.P11264788796757683863

/-! ## A320684.P10571673301577883431

`A282516(eq[10, A002260(n+1)])`
-/

namespace A320684.P10571673301577883431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320684.P10571673301577883431

/-! ## A320684.P1463362475016159686

`A282516(eq[9, A002262(n)])`
-/

namespace A320684.P1463362475016159686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320684.P1463362475016159686

/-!
# A320685: Number of 10-element subsets of [n] having a prime element sum.

The programs for A320685, there is no canonical definition to state claims against.
-/

/-! ## A320685.P5676520961053598167

`A282516(A167614(n+9)+7)`
-/

namespace A320685.P5676520961053598167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A167614 (n + 9) + 7).toNat

end

end A320685.P5676520961053598167

/-! ## A320685.P16991937718886849701

`A282516(A046691(n+8)+14)`
-/

namespace A320685.P16991937718886849701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A046691 (n + 8) + 14).toNat

end

end A320685.P16991937718886849701

/-! ## A320685.P17074979246077620990

`A282516(A034856(n+10)-(n-1))`
-/

namespace A320685.P17074979246077620990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A034856 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A320685.P17074979246077620990

/-! ## A320685.P11529815353905174455

`A282516(eq[11, A002260(n+1)])`
-/

namespace A320685.P11529815353905174455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320685.P11529815353905174455

/-! ## A320685.P7906834262924876988

`A282516(eq[10, A002262(n)])`
-/

namespace A320685.P7906834262924876988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320685.P7906834262924876988

/-!
# A320687: Sum of differences of the larger square and primes between two squares.

The programs for A320687, there is no canonical definition to state claims against.
-/

/-! ## A320687.P5047486764394310116

`A014085(n+1)*A000290(n+2)-A108314(n+1)`
-/

namespace A320687.P5047486764394310116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1) * A000290 (n + 2) - A108314 (n + 1)

end

end A320687.P5047486764394310116

/-! ## A320687.P8334667259838407001

`A014085(n+1)*(n+2)²-A108314(n+1)`
-/

namespace A320687.P8334667259838407001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1) * ((n + 2) ^ 2 : ℤ) - A108314 (n + 1)

end

end A320687.P8334667259838407001

/-!
# A320688: Sum of the square excess A056892 of the primes between two squares.

The programs for A320688, there is no canonical definition to state claims against.
-/

/-! ## A320688.P11392500574186651903

`A108314(n+1)-A014085(n+1)*A000290(n+1)`
-/

namespace A320688.P11392500574186651903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108314 (n + 1) - A014085 (n + 1) * A000290 (n + 1)

end

end A320688.P11392500574186651903

/-! ## A320688.P16277037936757731646

`A108314(n+1)-(n+1)²*A014085(n+1)`
-/

namespace A320688.P16277037936757731646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108314 (n + 1) - ((n + 1) ^ 2 : ℤ) * A014085 (n + 1)

end

end A320688.P16277037936757731646

/-!
# A320689: Number of partitions of n with up to two distinct kinds of 1.

The programs for A320689, there is no canonical definition to state claims against.
-/

/-! ## A320689.P10761132759419796906

`A085811(n+2)+A027337(n)`
-/

namespace A320689.P10761132759419796906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) + A027337 n

end

end A320689.P10761132759419796906

/-! ## A320689.P1020906629999312837

`2*A027336(n)-A008483(n)`
-/

namespace A320689.P1020906629999312837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027336 n - A008483 n

end

end A320689.P1020906629999312837

/-! ## A320689.P18357413852422500311

`∑[A026796(n+2)+A008483(n)]`
-/

namespace A320689.P18357413852422500311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 2) + A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320689.P18357413852422500311

/-! ## A320689.P14948103424207840226

`A027338(n+1)-A008483(n+1)`
-/

namespace A320689.P14948103424207840226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A008483 (n + 1)

end

end A320689.P14948103424207840226

/-! ## A320689.P4413395470951166021

`∑[∑[A008484(n)]-A026796(n+1)]`
-/

namespace A320689.P4413395470951166021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320689.P4413395470951166021

/-! ## A320689.P5625295550600421856

`∑[A026796(n+2)+A026796(n+3)]`
-/

namespace A320689.P5625295550600421856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 2) + A026796 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320689.P5625295550600421856

/-! ## A320689.P9282056180730580374

`A027336(n)+A027337(n)-A002865(n)`
-/

namespace A320689.P9282056180730580374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n + (A027337 n - A002865 n)

end

end A320689.P9282056180730580374

/-! ## A320689.P15629666875595051115

`A002865(n+1)+A027337(n)-A008483(n+1)`
-/

namespace A320689.P15629666875595051115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A027337 n - A008483 (n + 1))

end

end A320689.P15629666875595051115

/-! ## A320689.P3751724775887267844

`A027337(n+1)+A027337(n)-A027336(n+1)`
-/

namespace A320689.P3751724775887267844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A027337 n - A027336 (n + 1))

end

end A320689.P3751724775887267844

/-! ## A320689.P2581373078556997189

`A027338(n+1)+A027336(n)-A027336(n+1)`
-/

namespace A320689.P2581373078556997189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A027336 n - A027336 (n + 1))

end

end A320689.P2581373078556997189

/-! ## A320689.P8434117780617469844

`A320690(n)-a(n-1)` with `a(0)=1`
-/

namespace A320689.P8434117780617469844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320690 n - a (n - 1)

end

end A320689.P8434117780617469844

/-! ## A320689.P13161738173880566700

`A320690(n+1)-(A027336(n+1)+A027336(n))`
-/

namespace A320689.P13161738173880566700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320690 (n + 1) - (A027336 (n + 1) + A027336 n)

end

end A320689.P13161738173880566700

/-! ## A320689.P9744598386426802425

`A292622(∑[n+3])`
-/

namespace A320689.P9744598386426802425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320689.P9744598386426802425

/-!
# A320690: Number of partitions of n with up to three distinct kinds of 1.

The programs for A320690, there is no canonical definition to state claims against.
-/

/-! ## A320690.P14859510481865696169

`∑[A026796(n+2)+∑[A008484(n)]]`
-/

namespace A320690.P14859510481865696169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320690.P14859510481865696169

/-! ## A320690.P13271886717482568509

`∑[A026796(n+2)+∑[A026797(n+4)]]`
-/

namespace A320690.P13271886717482568509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320690.P13271886717482568509

/-! ## A320690.P13911342092893033426

`A027338(n)+A320689(n)-A008483(n)`
-/

namespace A320690.P13911342092893033426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 n + (A320689 n - A008483 n)

end

end A320690.P13911342092893033426

/-! ## A320690.P2171445241575782200

`A320691(n)-a(n-1)` with `a(0)=1`
-/

namespace A320690.P2171445241575782200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320691 n - a (n - 1)

end

end A320690.P2171445241575782200

/-! ## A320690.P3236346487736118867

`A320691(n+1)-(A320689(n+1)+A320689(n))`
-/

namespace A320690.P3236346487736118867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320691 (n + 1) - (A320689 (n + 1) + A320689 n)

end

end A320690.P3236346487736118867

/-! ## A320690.P8699356489470127470

`A292622(∑[n+4]+2)`
-/

namespace A320690.P8699356489470127470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A320690.P8699356489470127470

/-! ## A320690.P6959624605064305441

`record[A292622(abs(A046691(n)))]`
-/

namespace A320690.P6959624605064305441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320690.P6959624605064305441

/-!
# A320691: Number of partitions of n with up to four distinct kinds of 1.

The programs for A320691, there is no canonical definition to state claims against.
-/

/-! ## A320691.P13817239103122403454

`A320692(n)-a(n-1)` with `a(0)=1`
-/

namespace A320691.P13817239103122403454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320692 n - a (n - 1)

end

end A320691.P13817239103122403454

/-! ## A320691.P9560206230628473522

`A292622(∑[n+5]+5)`
-/

namespace A320691.P9560206230628473522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A320691.P9560206230628473522

/-! ## A320691.P7527674388551156607

`record[A292622(A052905(A008611(n)))]`
-/

namespace A320691.P7527674388551156607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320691.P7527674388551156607

/-! ## A320691.P16449181402092540466

`record[A292622(A052905(A008612(n)))]`
-/

namespace A320691.P16449181402092540466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320691.P16449181402092540466

/-! ## A320691.P6357828466833282727

`record[A292622(A052905(A028242(n)))]`
-/

namespace A320691.P6357828466833282727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320691.P6357828466833282727

/-! ## A320691.P11893470744446243371

`record[A292622(A052905(A028920(n)))]`
-/

namespace A320691.P11893470744446243371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320691.P11893470744446243371

/-!
# A320692: Number of partitions of n with up to five distinct kinds of 1.

The programs for A320692, there is no canonical definition to state claims against.
-/

/-! ## A320692.P11970791899611437689

`A320693(n)-a(n-1)` with `a(0)=1`
-/

namespace A320692.P11970791899611437689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320693 n - a (n - 1)

end

end A320692.P11970791899611437689

/-! ## A320692.P6530340544195474787

`A292622((n+4)²-∑[n+1])`
-/

namespace A320692.P6530340544195474787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320692.P6530340544195474787

/-! ## A320692.P4221283757526148020

`record[A292622(A055999(A008611(n)))]`
-/

namespace A320692.P4221283757526148020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A055999 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320692.P4221283757526148020

/-! ## A320692.P15205404682441356138

`record[A292622(A055999(A008612(n)))]`
-/

namespace A320692.P15205404682441356138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A055999 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320692.P15205404682441356138

/-! ## A320692.P4634683723807576691

`A124625(2*n)*A292622(Δ[A023551(n+1)])`
-/

namespace A320692.P4634683723807576691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (2 * n) * A292622 (f1 (n + 1) - f1 n).toNat

end

end A320692.P4634683723807576691

/-!
# A320693: Number of partitions of n with up to six distinct kinds of 1.

The programs for A320693, there is no canonical definition to state claims against.
-/

/-! ## A320693.P11024639683362857980

`A320694(n)-a(n-1)` with `a(0)=1`
-/

namespace A320693.P11024639683362857980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320694 n - a (n - 1)

end

end A320693.P11024639683362857980

/-! ## A320693.P10712791529416595459

`A292622(A056000(n+3)+3)`
-/

namespace A320693.P10712791529416595459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A056000 (n + 3) + 3).toNat

end

end A320693.P10712791529416595459

/-! ## A320693.P10275388979900316706

`A292622(A052905(n+4)-2)`
-/

namespace A320693.P10275388979900316706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (n + 4) - 2).toNat

end

end A320693.P10275388979900316706

/-! ## A320693.P8666989329576693827

`A292622(A000217(n+7)-7)`
-/

namespace A320693.P8666989329576693827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A000217 (n + 7) - 7).toNat

end

end A320693.P8666989329576693827

/-! ## A320693.P2554018654489305575

`A292622(Δ[A023551(n+2)]-1)`
-/

namespace A320693.P2554018654489305575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (f1 (n + 1) - f1 n - 1).toNat

end

end A320693.P2554018654489305575

/-! ## A320693.P16266731140453924549

`A292622(Δ[A026054(n+4)]-1)`
-/

namespace A320693.P16266731140453924549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (f1 (n + 1) - f1 n - 1).toNat

end

end A320693.P16266731140453924549

/-! ## A320693.P5386730057444121798

`A292622((n+5)²-A000124(n+2))`
-/

namespace A320693.P5386730057444121798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (((n + 5) ^ 2 : ℤ) - A000124 (n + 2)).toNat

end

end A320693.P5386730057444121798

/-! ## A320693.P1632199100089773336

`A292622(A247328(n+5)+A055998(n+3))`
-/

namespace A320693.P1632199100089773336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A247328 (n + 5) + A055998 (n + 3)).toNat

end

end A320693.P1632199100089773336

/-!
# A320694: Number of partitions of n with up to seven distinct kinds of 1.

The programs for A320694, there is no canonical definition to state claims against.
-/

/-! ## A320694.P7014682040049971693

`A320695(n)-a(n-1)` with `a(0)=1`
-/

namespace A320694.P7014682040049971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320695 n - a (n - 1)

end

end A320694.P7014682040049971693

/-! ## A320694.P16027126246715487736

`A292622(A056000(n+4)+2)`
-/

namespace A320694.P16027126246715487736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A056000 (n + 4) + 2).toNat

end

end A320694.P16027126246715487736

/-! ## A320694.P5818442965951253402

`A292622(A052905(n+5)-3)`
-/

namespace A320694.P5818442965951253402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (n + 5) - 3).toNat

end

end A320694.P5818442965951253402

/-! ## A320694.P16364479853264123384

`A292622(A000217(n+8)-8)`
-/

namespace A320694.P16364479853264123384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A000217 (n + 8) - 8).toNat

end

end A320694.P16364479853264123384

/-! ## A320694.P7281162518025120358

`A292622(A005843(n+3)+A000124(n+6))`
-/

namespace A320694.P7281162518025120358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A005843 (n + 3) + A000124 (n + 6)).toNat

end

end A320694.P7281162518025120358

/-! ## A320694.P14084259965507135168

`A292622(A247328(n+6)+A046691(n+4))`
-/

namespace A320694.P14084259965507135168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A247328 (n + 6) + A046691 (n + 4)).toNat

end

end A320694.P14084259965507135168

/-!
# A320695: Number of partitions of n with up to eight distinct kinds of 1.

The programs for A320695, there is no canonical definition to state claims against.
-/

/-! ## A320695.P13609625901281919624

`A320696(n)-a(n-1)` with `a(0)=1`
-/

namespace A320695.P13609625901281919624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320696 n - a (n - 1)

end

end A320695.P13609625901281919624

/-! ## A320695.P7942422959358524717

`A320696(n+1)-(A320694(n+1)+A320694(n))`
-/

namespace A320695.P7942422959358524717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320696 (n + 1) - (A320694 (n + 1) + A320694 n)

end

end A320695.P7942422959358524717

/-! ## A320695.P5647833831449724726

`A292622(A056000(n+5)+1)`
-/

namespace A320695.P5647833831449724726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A056000 (n + 5) + 1).toNat

end

end A320695.P5647833831449724726

/-! ## A320695.P16836964299623239795

`A292622(A052905(n+6)-4)`
-/

namespace A320695.P16836964299623239795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (n + 6) - 4).toNat

end

end A320695.P16836964299623239795

/-! ## A320695.P8260344408727484310

`A292622(A000217(n+9)-9)`
-/

namespace A320695.P8260344408727484310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A000217 (n + 9) - 9).toNat

end

end A320695.P8260344408727484310

/-! ## A320695.P18446278117119498370

`A292622(A027379(n+3)+A008574(n+6))`
-/

namespace A320695.P18446278117119498370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A027379 (n + 3) + A008574 (n + 6)).toNat

end

end A320695.P18446278117119498370

/-! ## A320695.P4142600605644299345

`A292622(A167614(n+5)+A008585(n+4))`
-/

namespace A320695.P4142600605644299345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A167614 (n + 5) + A008585 (n + 4)).toNat

end

end A320695.P4142600605644299345

/-! ## A320695.P8418870810039733398

`A292622(A247328(n+6)+A055998(n+5))`
-/

namespace A320695.P8418870810039733398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A247328 (n + 6) + A055998 (n + 5)).toNat

end

end A320695.P8418870810039733398

/-!
# A320696: Number of partitions of n with up to nine distinct kinds of 1.

The programs for A320696, there is no canonical definition to state claims against.
-/

/-! ## A320696.P4595339321234062972

`A320697(n)-a(n-1)` with `a(0)=1`
-/

namespace A320696.P4595339321234062972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320697 n - a (n - 1)

end

end A320696.P4595339321234062972

/-! ## A320696.P11106416665159746945

`A292622(A056000(n+6))`
-/

namespace A320696.P11106416665159746945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A056000 (n + 6)).toNat

end

end A320696.P11106416665159746945

/-! ## A320696.P7622053612281266407

`A292622(A052905(n+7)-5)`
-/

namespace A320696.P7622053612281266407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A052905 (n + 7) - 5).toNat

end

end A320696.P7622053612281266407

/-! ## A320696.P17372079766701931559

`A292622(A000217(n+10)-10)`
-/

namespace A320696.P17372079766701931559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A000217 (n + 10) - 10).toNat

end

end A320696.P17372079766701931559

/-! ## A320696.P9227163176807598942

`A292622(A005843(n+4)+A000124(n+8))`
-/

namespace A320696.P9227163176807598942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A005843 (n + 4) + A000124 (n + 8)).toNat

end

end A320696.P9227163176807598942

/-! ## A320696.P14286889887401568463

`A292622(A167614(n+7)+A004279(n+5))`
-/

namespace A320696.P14286889887401568463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A167614 (n + 7) + A004279 (n + 5)).toNat

end

end A320696.P14286889887401568463

/-! ## A320696.P16759351670455888857

`A292622(A051755(n+7)+A027379(n+6))`
-/

namespace A320696.P16759351670455888857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A051755 (n + 7) + A027379 (n + 6)).toNat

end

end A320696.P16759351670455888857

/-! ## A320696.P16236528266110617539

`A292622(A247328(n+7)+A046691(n+6))`
-/

namespace A320696.P16236528266110617539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A247328 (n + 7) + A046691 (n + 6)).toNat

end

end A320696.P16236528266110617539

/-!
# A320697: Number of partitions of n with up to ten distinct kinds of 1.

The programs for A320697, there is no canonical definition to state claims against.
-/

/-! ## A320697.P18009737964558843690

`A292622(A056000(n+7)-1)`
-/

namespace A320697.P18009737964558843690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A056000 (n + 7) - 1).toNat

end

end A320697.P18009737964558843690

/-! ## A320697.P11952709575915383302

`A292622(A000096(n+9)+n+1)`
-/

namespace A320697.P11952709575915383302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A320697.P11952709575915383302

/-! ## A320697.P5037159885116849230

`A292622(n+10+A056000(n+6))`
-/

namespace A320697.P5037159885116849230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 ((n + 10 : ℤ) + A056000 (n + 6)).toNat

end

end A320697.P5037159885116849230

/-! ## A320697.P5201448945917902206

`A292622(A046691(n+7)+A005843(n+7))`
-/

namespace A320697.P5201448945917902206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A046691 (n + 7) + A005843 (n + 7)).toNat

end

end A320697.P5201448945917902206

/-! ## A320697.P7960169798266540440

`A292622(A247328(n+8)+A052905(n+6))`
-/

namespace A320697.P7960169798266540440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A247328 (n + 8) + A052905 (n + 6)).toNat

end

end A320697.P7960169798266540440

/-!
# A320698: Numbers whose product of prime indices is a prime power (A246655).

The programs for A320698, there is no canonical definition to state claims against.
-/

/-! ## A320698.P4540463649166362543

`eq[1, A303975(1+n)]+1`
-/

namespace A320698.P4540463649166362543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320698.P4540463649166362543

/-! ## A320698.P17824903755499704573

`eq[1, A303975(A004277(n))]`
-/

namespace A320698.P17824903755499704573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320698.P17824903755499704573

/-! ## A320698.P3159054687420629363

`eq[1, A303975(A008574(n))]`
-/

namespace A320698.P3159054687420629363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320698.P3159054687420629363

/-! ## A320698.P13784773625910717277

`eq[1, A303975(A022144(n))]`
-/

namespace A320698.P13784773625910717277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320698.P13784773625910717277

/-! ## A320698.P13105778436259369288

`eq[1, A303975(A028310(n))]`
-/

namespace A320698.P13105778436259369288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320698.P13105778436259369288

/-! ## A320698.P8380059369462776550

`A020725(eq[1, A303975(n+1)])`
-/

namespace A320698.P8380059369462776550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320698.P8380059369462776550

/-! ## A320698.P15524528829422214627

`filter[A302593(n+1), A347523(#)]`
-/

namespace A320698.P15524528829422214627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A320698.P15524528829422214627

/-! ## A320698.P7141553847523618507

`filter[A302593(n+2), A267579(#)]`
-/

namespace A320698.P7141553847523618507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A320698.P7141553847523618507

/-! ## A320698.P17668116365885787026

`∩[A302593(n+1), A057716(n)]`
-/

namespace A320698.P17668116365885787026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320698.P17668116365885787026

/-! ## A320698.P4289663937985546914

`eq[1, A001221(∏{p}[n, A000720(#)])]`
-/

namespace A320698.P4289663937985546914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f3 n), A000720 p).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320698.P4289663937985546914

/-!
# A320699: Numbers whose product of prime indices is a nonprime prime power (A246547).

The programs for A320699, there is no canonical definition to state claims against.
-/

/-! ## A320699.P13016992071148084944

`eq[1, A056674(A003963(n+1))]+1`
-/

namespace A320699.P13016992071148084944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320699.P13016992071148084944

/-! ## A320699.P7479892388667480572

`eq[2, A323014(A003963(2*(n+1)))]+1`
-/

namespace A320699.P7479892388667480572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A003963 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320699.P7479892388667480572

/-! ## A320699.P1662278204517080694

`∪[2*A320325(n+1), A320700(n+1)]`
-/

namespace A320699.P1662278204517080694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320699.P1662278204517080694

/-! ## A320699.P17151976826475518533

`∩[A302593(n+1), A320325(n+1)]`
-/

namespace A320699.P17151976826475518533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320699.P17151976826475518533

/-! ## A320699.P2098424083943751182

`A320325(lt[A000700(n), A375305(n+1)])`
-/

namespace A320699.P2098424083943751182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320699.P2098424083943751182

