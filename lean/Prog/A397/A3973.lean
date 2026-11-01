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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
# A397302: Number of ways to tile a strip of length n with three types of tiles.

The programs for A397302, the canonical program `A397302.P13928652229525492294` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397302 has offset 0).

The definition of A397302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397302.P64837090122082069

`ogf((1-x)/(1-3x-4x^2-2x^3))`
-/

namespace A397302.P64837090122082069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -4, -2] n

end

end A397302.P64837090122082069

namespace A397302

/-- `ogf((1-x)/(1-3x-4x^2-2x^3))` -/
def P64837090122082069.Spec : Prop :=
  ∀ n, P64837090122082069.a n = A397302 n

end A397302

/-! ## A397302.P13928652229525492294

`3*a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397302

/-- `3*a(n-1)+4*a(n-2)+2*a(n-3)` -/
def P13928652229525492294.Spec : Prop :=
  ∀ n, (P13928652229525492294.a n : ℤ) = A397302 n

theorem P13928652229525492294.correct : P13928652229525492294.Spec := by
  intro n
  simp only [A397302]

end A397302

/-!
# A397303: Triangle read by rows: T(n,k) is the number of cyclic permutations of [n] whose longest ascending run is length k, n >= k >= 1.

The programs for A397303, there is no canonical definition to state claims against.
-/

/-! ## A397303.P3398893783093228042

`A106442(A111106(n))`
-/

namespace A397303.P3398893783093228042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (A111106 n).toNat

end

end A397303.P3398893783093228042

/-! ## A397303.P2455662264479919900

`A305383(A355282(n))`
-/

namespace A397303.P2455662264479919900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305383 (A355282 n).toNat

end

end A397303.P2455662264479919900

/-! ## A397303.P15333987766227322246

`A372592(A370419(n))`
-/

namespace A397303.P15333987766227322246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372592 (A370419 n).toNat

end

end A397303.P15333987766227322246

/-!
# A397305: Positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

The programs for A397305, there is no canonical definition to state claims against.
-/

/-! ## A397305.P14691435666515911013

`lt[5, A072627(A071044(n)²)]+1`
-/

namespace A397305.P14691435666515911013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A071044 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A397305.P14691435666515911013

/-! ## A397305.P16726801978749518536

`A398389(n+1)%A225982(A398389(n+1))`
-/

namespace A397305.P16726801978749518536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398389 (n + 1)) (A225982 (A398389 (n + 1)).toNat)

end

end A397305.P16726801978749518536

/-! ## A397305.P11153740364593610721

`A091247(∑[A308053(n+1)])*A398389(n+1)`
-/

namespace A397305.P11153740364593610721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A398389 (n + 1)

end

end A397305.P11153740364593610721

/-! ## A397305.P12939766134439612395

`A057427(A291118(n))*A398389(n+1)`
-/

namespace A397305.P12939766134439612395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A291118 n).toNat * A398389 (n + 1)

end

end A397305.P12939766134439612395

/-! ## A397305.P16893527843280861493

`A398389(n+1)+A000007(A214782(n+1))`
-/

namespace A397305.P16893527843280861493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398389 (n + 1) + A000007 (A214782 (n + 1)).toNat

end

end A397305.P16893527843280861493

/-! ## A397305.P3861291626163234501

`A373151(A078851(n+1))+A177712(n+1)`
-/

namespace A397305.P3861291626163234501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373151 (A078851 (n + 1)).toNat + A177712 (n + 1)

end

end A397305.P3861291626163234501

/-! ## A397305.P15784842695923198057

`A091247(A108373(n+1))*A398389(n+1)`
-/

namespace A397305.P15784842695923198057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A108373 (n + 1)).toNat * A398389 (n + 1)

end

end A397305.P15784842695923198057

/-! ## A397305.P10138948919318926793

`A010051(A251964(n+1))*A398389(n+1)`
-/

namespace A397305.P10138948919318926793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A251964 (n + 1)).toNat * A398389 (n + 1)

end

end A397305.P10138948919318926793

/-! ## A397305.P2776797757364653928

`A398389(n+1)+A000007(A053263(2*n+1))`
-/

namespace A397305.P2776797757364653928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398389 (n + 1) + A000007 (A053263 (2 * n + 1)).toNat

end

end A397305.P2776797757364653928

/-! ## A397305.P11193092193871619174

`A398389(n+1)%A185210(n+1)²`
-/

namespace A397305.P11193092193871619174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398389 (n + 1)) (A185210 (n + 1) ^ 2)

end

end A397305.P11193092193871619174

/-!
# A397306: Positive numbers m such that m - 2^k is a prime for exactly one value of k > 0 with 2^k < m.

The programs for A397306, there is no canonical definition to state claims against.
-/

/-! ## A397306.P4955969209205470145

`eq[1, A397307(n+1)]+1`
-/

namespace A397306.P4955969209205470145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A397306.P4955969209205470145

/-!
# A397307: Number of primes of the form n - 2^k, where k >= 1.

The programs for A397307, there is no canonical definition to state claims against.
-/

/-! ## A397307.P3699079037536976175

`A109925(n+1)-char[A000040(n+1)]`
-/

namespace A397307.P3699079037536976175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A397307.P3699079037536976175

/-! ## A397307.P12676311363400735839

`A109925(n+1)-char[A267101(n+1)]`
-/

namespace A397307.P12676311363400735839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A397307.P12676311363400735839

/-! ## A397307.P5487492734052413994

`A109925(n+1)-char[A006530(2*(n+1))]`
-/

namespace A397307.P5487492734052413994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A397307.P5487492734052413994

/-! ## A397307.P16482093903077797441

`A109925(n+1)-A000007(A051699(n))`
-/

namespace A397307.P16482093903077797441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) - A000007 (A051699 n).toNat

end

end A397307.P16482093903077797441

/-! ## A397307.P17708694322277030597

`A109925(n+1)+A253238(n+1)-A196228(n+1)`
-/

namespace A397307.P17708694322277030597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) + (A253238 (n + 1) - A196228 (n + 1))

end

end A397307.P17708694322277030597

/-!
# A397308: Positive numbers m such that m - 2^k is a prime for exactly two values of k > 0.

The programs for A397308, there is no canonical definition to state claims against.
-/

/-! ## A397308.P4185419352292673488

`eq[2, A397307(n+1)]+1`
-/

namespace A397308.P4185419352292673488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A397308.P4185419352292673488

/-! ## A397308.P17904270080985089913

`eq[2, A109925(A093178(n))]`
-/

namespace A397308.P17904270080985089913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A397308.P17904270080985089913

/-! ## A397308.P14081523375450792883

`A005408(eq[2, A109925(2*n+1)])`
-/

namespace A397308.P14081523375450792883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397308.P14081523375450792883

/-! ## A397308.P12133021573246100644

`eq[A020639(n+4), A109925(n+1)]+1`
-/

namespace A397308.P12133021573246100644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397308.P12133021573246100644

/-! ## A397308.P9039952582289724722

`lt[xor(A020639(n+2), A109925(n+1)), 1]+1`
-/

namespace A397308.P9039952582289724722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (n + 2)) (A109925 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A397308.P9039952582289724722

/-! ## A397308.P7820922947322762200

`eq[A040000(n), A397307(A093178(n))]`
-/

namespace A397308.P7820922947322762200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397308.P7820922947322762200

/-! ## A397308.P5737183538277759167

`eq[A055396(n+1)²+1, A109925(A028310(n))]`
-/

namespace A397308.P5737183538277759167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397308.P5737183538277759167

/-! ## A397308.P4417301879433110242

`eq[A006519(2*(n+1)), A109925(n+1)]+1`
-/

namespace A397308.P4417301879433110242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397308.P4417301879433110242

/-!
# A397309: Number of perfect matchings of the 5 X 2n grid graph embedded on the Klein bottle.

The programs for A397309, there is no canonical definition to state claims against.
-/

/-! ## A397309.P4052110608126860234

`row(A231485(A005408(n)+1))+1`
-/

namespace A397309.P4052110608126860234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A231485 (A005408 n + 1).toNat).toNat + 1

end

end A397309.P4052110608126860234

/-!
# A397311: a(1) = 0; for n > 1, a(n) is the least integer > a(n-1) such that distinct multisets of 10 terms from a(1),...,a(n) have distinct sums.

The programs for A397311, there is no canonical definition to state claims against.
-/

/-! ## A397311.P4590137963681435383

`A365515(eq[8, A219347(n)])`
-/

namespace A397311.P4590137963681435383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397311.P4590137963681435383

/-!
# A397312: Index of prime(n) in A397219.

The programs for A397312, there is no canonical definition to state claims against.
-/

/-! ## A397312.P17526709617616620030

`A397297(Δ[A007504(n)])`
-/

namespace A397312.P17526709617616620030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (f1 (n + 1) - f1 n).toNat

end

end A397312.P17526709617616620030

/-! ## A397312.P13842862878391167726

`A397297(A000040(n+1))`
-/

namespace A397312.P13842862878391167726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A000040 (n + 1)).toNat

end

end A397312.P13842862878391167726

/-! ## A397312.P12930559082032130444

`A397297(A008578(2+n))`
-/

namespace A397312.P12930559082032130444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A008578 (2 + n)).toNat

end

end A397312.P12930559082032130444

/-! ## A397312.P5126965658118940642

`A397297(A182986(2+n))`
-/

namespace A397312.P5126965658118940642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A182986 (2 + n)).toNat

end

end A397312.P5126965658118940642

/-! ## A397312.P6027810181916955909

`A397297(sqrt(A001248(n+1)))`
-/

namespace A397312.P6027810181916955909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A397312.P6027810181916955909

/-! ## A397312.P15708267977274025813

`A397297(A006093(n+1)+1)`
-/

namespace A397312.P15708267977274025813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A006093 (n + 1) + 1).toNat

end

end A397312.P15708267977274025813

/-! ## A397312.P8560605445105713122

`A397297(eq[1, A022559(n+1)-A022559(n)]+1)`
-/

namespace A397312.P8560605445105713122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A397312.P8560605445105713122

/-!
# A397314: Index of prime(n) in A396013.

The programs for A397314, there is no canonical definition to state claims against.
-/

/-! ## A397314.P17374970284362162734

`A397313(Δ[A007504(n)])`
-/

namespace A397314.P17374970284362162734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (f1 (n + 1) - f1 n).toNat

end

end A397314.P17374970284362162734

/-! ## A397314.P3985735797325109013

`A397313(A000040(1+n))`
-/

namespace A397314.P3985735797325109013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A000040 (1 + n)).toNat

end

end A397314.P3985735797325109013

/-! ## A397314.P12981702633596325991

`A397313(A216886(1+n))`
-/

namespace A397314.P12981702633596325991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A216886 (1 + n)).toNat

end

end A397314.P12981702633596325991

/-! ## A397314.P16017305095199833929

`A397313(A008578(2+n))`
-/

namespace A397314.P16017305095199833929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A008578 (2 + n)).toNat

end

end A397314.P16017305095199833929

/-! ## A397314.P8807989734308801969

`A397313(A182986(n+2))`
-/

namespace A397314.P8807989734308801969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A182986 (n + 2)).toNat

end

end A397314.P8807989734308801969

/-! ## A397314.P14852824210880569566

`A397313(A324050(n+2))`
-/

namespace A397314.P14852824210880569566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A324050 (n + 2)).toNat

end

end A397314.P14852824210880569566

/-! ## A397314.P7587850751394664159

`A397313(A238853(n+1))`
-/

namespace A397314.P7587850751394664159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A238853 (n + 1)).toNat

end

end A397314.P7587850751394664159

/-!
# A397317: Index of prime(n) in A397218.

The programs for A397317, there is no canonical definition to state claims against.
-/

/-! ## A397317.P13154024772337727768

`A397316(A000040(1+n))`
-/

namespace A397317.P13154024772337727768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A000040 (1 + n)).toNat

end

end A397317.P13154024772337727768

/-! ## A397317.P2937973712192130900

`A397316(A008578(2+n))`
-/

namespace A397317.P2937973712192130900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A008578 (2 + n)).toNat

end

end A397317.P2937973712192130900

/-! ## A397317.P12267692739425339281

`A397316(A182986(2+n))`
-/

namespace A397317.P12267692739425339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A182986 (2 + n)).toNat

end

end A397317.P12267692739425339281

/-! ## A397317.P2979477115717272785

`A397316(eq[1, A003415(n)])`
-/

namespace A397317.P2979477115717272785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397317.P2979477115717272785

/-! ## A397317.P10045591837255130397

`A397316(sqrt(A001248(1+n)))`
-/

namespace A397317.P10045591837255130397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (1 + n) : ℝ))).toNat

end

end A397317.P10045591837255130397

/-! ## A397317.P4279313445895217008

`A397316(eq[1, A245715(n+1)])`
-/

namespace A397317.P4279313445895217008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397317.P4279313445895217008

/-! ## A397317.P9416187692575617156

`A397316(eq[2, A000005(n+1)]+1)`
-/

namespace A397317.P9416187692575617156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A397317.P9416187692575617156

/-! ## A397317.P11946920651861650957

`A397316(A216886(n+1)%A259180(2*(n+1)))`
-/

namespace A397317.P11946920651861650957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (Int.tmod (A216886 (n + 1)) (A259180 (2 * (n + 1)))).toNat

end

end A397317.P11946920651861650957

/-!
# A397318: a(n) is the number of positive integers that are less than or equal to and relatively prime to exactly two divisors of n.

The programs for A397318, there is no canonical definition to state claims against.
-/

/-! ## A397318.P8140186357430119896

`A397786(A350102(1+n))`
-/

namespace A397318.P8140186357430119896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397786 (A350102 (1 + n)).toNat

end

end A397318.P8140186357430119896

/-! ## A397318.P16560442203128149678

`A102677(A326749(3*(n+1))+A136228(n))`
-/

namespace A397318.P16560442203128149678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A326749 (3 * (n + 1)) + A136228 n).toNat

end

end A397318.P16560442203128149678

/-! ## A397318.P4320076554369023513

`A067850(A281145(n+1))%A302037(3*(n+1))`
-/

namespace A397318.P4320076554369023513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067850 (A281145 (n + 1)).toNat) (A302037 (3 * (n + 1)))

end

end A397318.P4320076554369023513

/-! ## A397318.P3665122242495630427

`gcd(A097465(n+1), A353069(n+1))%A097465(n+1)`
-/

namespace A397318.P3665122242495630427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A097465 (n + 1)) (A353069 (n + 1)) : ℤ) (A097465 (n + 1))

end

end A397318.P3665122242495630427

/-! ## A397318.P9154382560360986126

`A327051(A008574(n)-A053120(n))`
-/

namespace A397318.P9154382560360986126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A008574 n - A053120 n).toNat

end

end A397318.P9154382560360986126

/-!
# A397321: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x^4) - 1)) ).

The programs for A397321, there is no canonical definition to state claims against.
-/

/-! ## A397321.P15916270983423650269

`A397322(n)/A163100(A196912(n+1))`
-/

namespace A397321.P15916270983423650269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397322 n : ℚ) / (A163100 (A196912 (n + 1)).toNat : ℚ)

end

end A397321.P15916270983423650269

/-! ## A397321.P12260934361224094861

`A397322(A089839(∑[n]))`
-/

namespace A397321.P12260934361224094861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397322 (A089839 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A397321.P12260934361224094861

/-! ## A397321.P9583832516155484553

`A397322(n^A341850(n))`
-/

namespace A397321.P9583832516155484553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397322 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A341850 n : ℤ))).toNat

end

end A397321.P9583832516155484553

/-! ## A397321.P11318866202529214090

`A397322(n^A375082(n+1))`
-/

namespace A397321.P11318866202529214090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397322 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A375082 (n + 1) : ℤ))).toNat

end

end A397321.P11318866202529214090

/-! ## A397321.P11288555752089500209

`A397322(n^A167274(3*n))`
-/

namespace A397321.P11288555752089500209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397322 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A167274 (3 * n) : ℤ))).toNat

end

end A397321.P11288555752089500209

/-!
# A397322: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x^4)) ).

The programs for A397322, there is no canonical definition to state claims against.
-/

/-! ## A397322.P15242544022701550941

`A368104(A036650(n))*A397321(n)`
-/

namespace A397322.P15242544022701550941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368104 (A036650 n).toNat * A397321 n

end

end A397322.P15242544022701550941

/-! ## A397322.P5198438417020317592

`A261675(A214676(n+1))*A397321(n)`
-/

namespace A397322.P5198438417020317592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A214676 (n + 1)).toNat * A397321 n

end

end A397322.P5198438417020317592

/-!
# A397324: a(n) = Sum_{j=0..n} Stirling1(n, j) * binomial(n + j, n) * n^j.

The programs for A397324, there is no canonical definition to state claims against.
-/

/-! ## A397324.P12336499476576795026

`A397400(∑[4*n])`
-/

namespace A397324.P12336499476576795026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397324.P12336499476576795026

/-! ## A397324.P13471671319538897423

`A397420(∑[4*n])`
-/

namespace A397324.P13471671319538897423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397324.P13471671319538897423

/-! ## A397324.P8713700733957839605

`record[A003982(n)*A397420(n)]`
-/

namespace A397324.P8713700733957839605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A397420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397324.P8713700733957839605

/-! ## A397324.P4909671289482174621

`A397420(A046092(n))+A025469(n)`
-/

namespace A397324.P4909671289482174621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (A046092 n).toNat + A025469 n

end

end A397324.P4909671289482174621

/-! ## A397324.P14217318661275320630

`A397420(A046092(n))+A000007(n+4)`
-/

namespace A397324.P14217318661275320630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (A046092 n).toNat + A000007 (n + 4)

end

end A397324.P14217318661275320630

/-!
# A397326: a(n) = Sum_{j=0..n} (-1)^j*binomial(n, j) * A001006(2*n - j)^2.

The programs for A397326, the canonical program `A397326.P3276265740757930615` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397326 has offset 0).

The definition of A397326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397326.P165729684686657942

`A396585(C(2*n+1, 2)+n)`
-/

namespace A397326.P165729684686657942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396585 (Nat.choose (2 * n + 1) 2 + n)

end

end A397326.P165729684686657942

namespace A397326

/-- `A396585(C(2*n+1, 2)+n)` -/
def P165729684686657942.Spec : Prop :=
  ∀ n, P165729684686657942.a n = A397326 n

end A397326

/-! ## A397326.P3276265740757930615

`∑{#}[n, (-1)^#*C(n, #)*A001006(2*n-#)²]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397326

/-- `∑{#}[n, (-1)^#*C(n, #)*A001006(2*n-#)²]` -/
def P3276265740757930615.Spec : Prop :=
  ∀ n, P3276265740757930615.a n = A397326 n

theorem P3276265740757930615.correct : P3276265740757930615.Spec := by
  intro n
  simp only [A397326]

end A397326

/-! ## A397326.P13971541093527613811

`A396585(∑[4*n])`
-/

namespace A397326.P13971541093527613811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396585 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397326.P13971541093527613811

namespace A397326

/-- `A396585(∑[4*n])` -/
def P13971541093527613811.Spec : Prop :=
  ∀ n, P13971541093527613811.a n = A397326 n

end A397326

/-!
# A397330: Row sums of A397331.

The programs for A397330, there is no canonical definition to state claims against.
-/

/-! ## A397330.P10868169593121011885

`A363429(comp[∑[(2*(n+1))%4]])`
-/

namespace A397330.P10868169593121011885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A397330.P10868169593121011885

/-! ## A397330.P13359943930814101474

`A363429(A004273(n))`
-/

namespace A397330.P13359943930814101474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (A004273 n).toNat

end

end A397330.P13359943930814101474

/-! ## A397330.P9390780149556307378

`A363429(comp[2*A108087(n)])`
-/

namespace A397330.P9390780149556307378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108087 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397330.P9390780149556307378

/-! ## A397330.P13026866807642803661

`A363429(comp[2*A246694(n)])`
-/

namespace A397330.P13026866807642803661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246694 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397330.P13026866807642803661

/-! ## A397330.P12972172024530548262

`A363429(comp[2*A271608(n)])`
-/

namespace A397330.P12972172024530548262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271608 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397330.P12972172024530548262

/-! ## A397330.P2173293243470752719

`A363429(lt[Δ[A385435(n)], 2])`
-/

namespace A397330.P2173293243470752719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385435 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A397330.P2173293243470752719

/-! ## A397330.P4373120143718376584

`A363429(lt[A014987(n+1), 2])`
-/

namespace A397330.P4373120143718376584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014987 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A397330.P4373120143718376584

/-! ## A397330.P18097138226503298520

`A363429(lt[n, A174221(n+2)])`
-/

namespace A397330.P18097138226503298520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A397330.P18097138226503298520

/-! ## A397330.P4474195316203139273

`A363429(comp[2*A337136(n+1)])`
-/

namespace A397330.P4474195316203139273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337136 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397330.P4474195316203139273

/-! ## A397330.P5137978287533102485

`A363429(comp[A001651(2*(n+1))-n])`
-/

namespace A397330.P5137978287533102485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (2 * (n + 1)) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397330.P5137978287533102485

/-!
# A397331: Triangle read by rows: T(n, k) = P(n, k, -1) where P(n, k, x) = (1/k!) * Sum_{j=0..k}((-1)^(k - j) * binomial(k, j) * (n + x + j)^n).

The programs for A397331, the canonical program `A397331.P14098152171182667396` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397331 has offset 0).

The definition of A397331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397331.P14098152171182667396

`T(n-1,k-1)+(row(n)+2*col(n)-1)*T(n-1,k)+(row(n)+col(n)-1)*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397331

/-- `T(n-1,k-1)+(row(n)+2*col(n)-1)*T(n-1,k)+(row(n)+col(n)-1)*(col(n)+1)*T(n-1,k+1)` -/
def P14098152171182667396.Spec : Prop :=
  ∀ n, P14098152171182667396.a n = A397331 n

theorem P14098152171182667396.correct : P14098152171182667396.Spec := by
  intro n
  simp only [A397331]

end A397331

/-!
# A397332: Row sums of A397333.

The programs for A397332, there is no canonical definition to state claims against.
-/

/-! ## A397332.P1655105558961235824

`A395288(n+1)/(n+1)`
-/

namespace A397332.P1655105558961235824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395288 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A397332.P1655105558961235824

/-! ## A397332.P12036560689573093691

`A363430(Δ[n²])`
-/

namespace A397332.P12036560689573093691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397332.P12036560689573093691

/-! ## A397332.P13499834458990621933

`record[A363430(xor(1, n))]`
-/

namespace A397332.P13499834458990621933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397332.P13499834458990621933

/-! ## A397332.P13222039592081360682

`record[A363430(2*col(n)+1)]`
-/

namespace A397332.P13222039592081360682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (2 * SequenceMachineLib.triCol n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397332.P13222039592081360682

/-! ## A397332.P176078219426279535

`A363430(2*n+1)%(5*A395288(n))`
-/

namespace A397332.P176078219426279535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363430 (2 * n + 1)) (5 * A395288 n)

end

end A397332.P176078219426279535

/-! ## A397332.P9815755487285493342

`max(A363430(2*n), A363430(2*n+1))`
-/

namespace A397332.P9815755487285493342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A363430 (2 * n)) (A363430 (2 * n + 1))

end

end A397332.P9815755487285493342

/-! ## A397332.P15432016605351853390

`A363430(2*n+1)+A393016(n+1)%2`
-/

namespace A397332.P15432016605351853390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (2 * n + 1) + Int.tmod (A393016 (n + 1)) 2

end

end A397332.P15432016605351853390

/-! ## A397332.P5072219676140287552

`A363430(2*n+1)+A387139(n+4)%2`
-/

namespace A397332.P5072219676140287552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (2 * n + 1) + Int.tmod (A387139 (n + 4)) 2

end

end A397332.P5072219676140287552

/-! ## A397332.P9274018607715479667

`A363430(2*n+1)+A385435(3*n+2)%2`
-/

namespace A397332.P9274018607715479667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (2 * n + 1) + Int.tmod (A385435 (3 * n + 2)) 2

end

end A397332.P9274018607715479667

/-! ## A397332.P11950987652464677685

`A393139(2*n+1)%2*A363430(2*n+1)`
-/

namespace A397332.P11950987652464677685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393139 (2 * n + 1)) 2 * A363430 (2 * n + 1)

end

end A397332.P11950987652464677685

/-!
# A397333: Triangle read by rows: T(n, k) = P(n, k, 1) where P(n, k, x) = (1/k!) * Sum_{j=0..k}((-1)^(k - j) * binomial(k, j) * (n + x + j)^n).

The programs for A397333, the canonical program `A397333.P1220039132598529868` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397333 has offset 0).

The definition of A397333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397333.P1220039132598529868

`T(n-1,k-1)+(row(n)+2*col(n)+1)*T(n-1,k)+(row(n)+col(n)+1)*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397333

/-- `T(n-1,k-1)+(row(n)+2*col(n)+1)*T(n-1,k)+(row(n)+col(n)+1)*(col(n)+1)*T(n-1,k+1)` -/
def P1220039132598529868.Spec : Prop :=
  ∀ n, (P1220039132598529868.a n : ℤ) = A397333 n

theorem P1220039132598529868.correct : P1220039132598529868.Spec := by
  intro n
  simp only [A397333]

end A397333

/-! ## A397333.P11500704318773140420

`T(n-1,k-1)+(row(n)+1+2*col(n))*T(n-1,k)+(row(n)+1+col(n))*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A397333.P11500704318773140420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 1 + 2 * SequenceMachineLib.triCol n) * SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUpRight a n

end

end A397333.P11500704318773140420

namespace A397333

/-- `T(n-1,k-1)+(row(n)+1+2*col(n))*T(n-1,k)+(row(n)+1+col(n))*(col(n)+1)*T(n-1,k+1)` -/
def P11500704318773140420.Spec : Prop :=
  ∀ n, (P11500704318773140420.a n : ℤ) = A397333 n

theorem P11500704318773140420.correct : P11500704318773140420.Spec := by
  intro n
  simp only [A397333, Nat.add_sub_cancel, A397333.P11500704318773140420.a, A397333.P1220039132598529868.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A397333

/-!
# A397335: Number of distinct final products of the prefix-constrained binary words counted by A394165.

The programs for A397335, there is no canonical definition to state claims against.
-/

/-! ## A397335.P13868797431290031915

`A122313(A048817(n+1))`
-/

namespace A397335.P13868797431290031915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A048817 (n + 1)).toNat

end

end A397335.P13868797431290031915

/-! ## A397335.P4373457252720839113

`∑[∑[A090048(A027457(n+1))]]`
-/

namespace A397335.P4373457252720839113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 (A027457 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397335.P4373457252720839113

/-! ## A397335.P17169150814087555662

`A000196(A083198(2*n+9)-A327869(3*n+1))`
-/

namespace A397335.P17169150814087555662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A083198 (2 * n + 9) - A327869 (3 * n + 1)).toNat

end

end A397335.P17169150814087555662

/-! ## A397335.P15333810379236254067

`∑[A159632((n+1)²)+1]`
-/

namespace A397335.P15333810379236254067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159632 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397335.P15333810379236254067

/-! ## A397335.P5754975201763823650

`A113321(A028445(n))`
-/

namespace A397335.P5754975201763823650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (A028445 n).toNat

end

end A397335.P5754975201763823650

/-!
# A397339: Number of distinct triples (i,p,f) arising from a simple graph with n edges, where i, p and f count the edges having 0, 1, and 2 endpoints of degree greater than 1, respectively.

The programs for A397339, the canonical program `A397339.P368990297149327062` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397339 has offset 1).

The definition of A397339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397339.P368990297149327062

`ogf((1-x+2x^2-x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397339

/-- `ogf((1-x+2x^2-x^4)/(1-3x+3x^2-x^3))` -/
def P368990297149327062.Spec : Prop :=
  ∀ n, P368990297149327062.a n = A397339 (n + 1)

theorem P368990297149327062.correct : P368990297149327062.Spec := by
  intro n
  simp only [A397339, Nat.add_sub_cancel]

end A397339

/-! ## A397339.P3847760237968797072

`a(n-1)+n+1+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A397339.P3847760237968797072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (n + 1) + 1

end

end A397339.P3847760237968797072

namespace A397339

/-- `a(n-1)+n+1+1` -/
def P3847760237968797072.Spec : Prop :=
  ∀ n, (P3847760237968797072.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P2865916836967309939

`∑[2-C(2, n)+n]`
-/

namespace A397339.P2865916836967309939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P2865916836967309939

namespace A397339

/-- `∑[2-C(2, n)+n]` -/
def P2865916836967309939.Spec : Prop :=
  ∀ n, P2865916836967309939.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P1412566227523673504

`∑[2-(C(2, n)-n)]`
-/

namespace A397339.P1412566227523673504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P1412566227523673504

namespace A397339

/-- `∑[2-(C(2, n)-n)]` -/
def P1412566227523673504.Spec : Prop :=
  ∀ n, P1412566227523673504.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P5245078922307584820

`∑[xor(1, 3%(n+1))+n]`
-/

namespace A397339.P5245078922307584820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P5245078922307584820

namespace A397339

/-- `∑[xor(1, 3%(n+1))+n]` -/
def P5245078922307584820.Spec : Prop :=
  ∀ n, (P5245078922307584820.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P12630558809970207643

`∑[xor(n+1, C(2, n))+1]`
-/

namespace A397339.P12630558809970207643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.choose 2 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P12630558809970207643

namespace A397339

/-- `∑[xor(n+1, C(2, n))+1]` -/
def P12630558809970207643.Spec : Prop :=
  ∀ n, (P12630558809970207643.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P3228208520485031818

`∑[a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397339.P3228208520485031818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P3228208520485031818

namespace A397339

/-- `∑[a(n-1)+1]` -/
def P3228208520485031818.Spec : Prop :=
  ∀ n, (P3228208520485031818.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P14135761489011884807

`a(n-1)+n+2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A397339.P14135761489011884807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (n + 2)

end

end A397339.P14135761489011884807

namespace A397339

/-- `a(n-1)+n+2` -/
def P14135761489011884807.Spec : Prop :=
  ∀ n, (P14135761489011884807.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P789469491172406545

`∑[2*a(n-1)-n]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397339.P789469491172406545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P789469491172406545

namespace A397339

/-- `∑[2*a(n-1)-n]` -/
def P789469491172406545.Spec : Prop :=
  ∀ n, P789469491172406545.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P2343408767620138822

`∑[floor(a(n-1)²/n)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397339.P2343408767620138822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P2343408767620138822

namespace A397339

/-- `∑[floor(a(n-1)²/n)]` -/
def P2343408767620138822.Spec : Prop :=
  ∀ n, P2343408767620138822.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P9424904542439405045

`4-∑[floor(a(n-1)-4/n)]` with `a(0)=3`
-/

namespace A397339.P9424904542439405045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) - 4 / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P9424904542439405045

namespace A397339

/-- `4-∑[floor(a(n-1)-4/n)]` -/
def P9424904542439405045.Spec : Prop :=
  ∀ n, P9424904542439405045.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P18353336519351717552

`2-floor(floor(2/n-n)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A397339.P18353336519351717552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (⌊2 / (n : ℚ) - (n : ℚ)⌋ - a (n - 1))

end

end A397339.P18353336519351717552

namespace A397339

/-- `2-floor(floor(2/n-n)-a(n-1))` -/
def P18353336519351717552.Spec : Prop :=
  ∀ n, P18353336519351717552.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P531474505625705032

`∑[n+2-floor((n+1)/∑[(n-1)²])]`
-/

namespace A397339.P531474505625705032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P531474505625705032

namespace A397339

/-- `∑[n+2-floor((n+1)/∑[(n-1)²])]` -/
def P531474505625705032.Spec : Prop :=
  ∀ n, P531474505625705032.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P14949017895780929645

`A212342(n)+A004273(n)`
-/

namespace A397339.P14949017895780929645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n + A004273 n

end

end A397339.P14949017895780929645

namespace A397339

/-- `A212342(n)+A004273(n)` -/
def P14949017895780929645.Spec : Prop :=
  ∀ n, P14949017895780929645.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P15284745776481647372

`A027379(n)-A130130(n)`
-/

namespace A397339.P15284745776481647372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A130130 n

end

end A397339.P15284745776481647372

namespace A397339

/-- `A027379(n)-A130130(n)` -/
def P15284745776481647372.Spec : Prop :=
  ∀ n, P15284745776481647372.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P12087370449744002238

`A267874(n)-A161680(n)`
-/

namespace A397339.P12087370449744002238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n - A161680 n

end

end A397339.P12087370449744002238

namespace A397339

/-- `A267874(n)-A161680(n)` -/
def P12087370449744002238.Spec : Prop :=
  ∀ n, P12087370449744002238.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P11725129999952751572

`A265284(n)-A267530(n)`
-/

namespace A397339.P11725129999952751572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n - A267530 n

end

end A397339.P11725129999952751572

namespace A397339

/-- `A265284(n)-A267530(n)` -/
def P11725129999952751572.Spec : Prop :=
  ∀ n, P11725129999952751572.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P12482456229402234322

`A179865(n+1)+A004275(n)`
-/

namespace A397339.P12482456229402234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) + A004275 n

end

end A397339.P12482456229402234322

namespace A397339

/-- `A179865(n+1)+A004275(n)` -/
def P12482456229402234322.Spec : Prop :=
  ∀ n, P12482456229402234322.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P9438547013447795648

`A161680(n)+A033627(n+1)`
-/

namespace A397339.P9438547013447795648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A033627 (n + 1)

end

end A397339.P9438547013447795648

namespace A397339

/-- `A161680(n)+A033627(n+1)` -/
def P9438547013447795648.Spec : Prop :=
  ∀ n, P9438547013447795648.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P10898093545456250052

`A186783(n+1)+A092535(n)`
-/

namespace A397339.P10898093545456250052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1) + A092535 n

end

end A397339.P10898093545456250052

namespace A397339

/-- `A186783(n+1)+A092535(n)` -/
def P10898093545456250052.Spec : Prop :=
  ∀ n, P10898093545456250052.a n = A397339 (n + 1)

end A397339

/-!
# A397341: a(1) = 1; for n > 1, a(n) is the concatenation of a(n-1) and the smallest prime p such that the concatenation a(n-1) | p is prime.

The programs for A397341, there is no canonical definition to state claims against.
-/

/-! ## A397341.P12082848265943523112

`A089777(a(n-1))` with `a(0)=1`
-/

namespace A397341.P12082848265943523112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089777 (a (n - 1)).toNat

end

end A397341.P12082848265943523112

/-!
# A397344: a(n) is the first prime p such that A091633(n) is the concatenation of the last digits of consecutive primes starting with p.

The programs for A397344, there is no canonical definition to state claims against.
-/

/-! ## A397344.P1026672546669720437

`A397425(∑[1+n])`
-/

namespace A397344.P1026672546669720437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397425 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397344.P1026672546669720437

/-!
# A397346: O.g.f. satisfies A(x) = exp( x + Sum_{n>=2} (2*n^2-1) * a(n)*x^n / (2*n^2) ).

The programs for A397346, there is no canonical definition to state claims against.
-/

/-! ## A397346.P12833186901233893038

`A039315(A032984(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A397346.P12833186901233893038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A039315 (A032984 (a (n - 1)).toNat).toNat

end

end A397346.P12833186901233893038

/-!
# A397351: Central terms of triangle A397350.

The programs for A397351, there is no canonical definition to state claims against.
-/

/-! ## A397351.P3356063096406125083

`A397350((n+1)²+n²)`
-/

namespace A397351.P3356063096406125083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397350 ((n + 1) ^ 2 + n ^ 2)

end

end A397351.P3356063096406125083

/-! ## A397351.P10383943002366201356

`abs(A397350(A001844(n)))`
-/

namespace A397351.P10383943002366201356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A397350 (A001844 n).toNat|

end

end A397351.P10383943002366201356

/-! ## A397351.P3191775129347009844

`record[gcd(A204016(n+1), A397350(n+1))]`
-/

namespace A397351.P3191775129347009844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A397350 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397351.P3191775129347009844

/-! ## A397351.P15298341866700009438

`A397350(A001844(n))+A025469(n)`
-/

namespace A397351.P15298341866700009438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397350 (A001844 n).toNat + A025469 n

end

end A397351.P15298341866700009438

/-!
# A397352: E.g.f. A(x) satisfies Sum_{n>=0} 2^n * (A(x)^n - x)^n / n! = 1.

The programs for A397352, there is no canonical definition to state claims against.
-/

/-! ## A397352.P2777304155023015837

`∑{#}[n, 2^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397352.P2777304155023015837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397352.P2777304155023015837

/-!
# A397353: E.g.f. A(x) satisfies Sum_{n>=0} 3^n * (A(x)^n - x)^n / n! = 1.

The programs for A397353, there is no canonical definition to state claims against.
-/

/-! ## A397353.P13227128854174122863

`∑{#}[n, 3^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397353.P13227128854174122863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397353.P13227128854174122863

/-!
# A397354: E.g.f. A(x) satisfies Sum_{n>=0} 4^n * (A(x)^n - x)^n / n! = 1.

The programs for A397354, there is no canonical definition to state claims against.
-/

/-! ## A397354.P2336510548650215097

`∑{#}[n, 4^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397354.P2336510548650215097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397354.P2336510548650215097

/-!
# A397355: E.g.f. A(x) satisfies Sum_{n>=0} 5^n * (A(x)^n - x)^n / n! = 1.

The programs for A397355, there is no canonical definition to state claims against.
-/

/-! ## A397355.P11989142913677952607

`∑{#}[n, 5^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397355.P11989142913677952607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397355.P11989142913677952607

/-!
# A397357: Number of permutations p of [n] such that |p(i)-i| >= 8 for all i in [n].

The programs for A397357, there is no canonical definition to state claims against.
-/

/-! ## A397357.P10127616929586809651

`A170905(A088155(n)^8)`
-/

namespace A397357.P10127616929586809651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (A088155 n ^ 8).toNat

end

end A397357.P10127616929586809651

/-! ## A397357.P5432039996567731525

`A158780(C(A003114(n), n+1))`
-/

namespace A397357.P5432039996567731525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (Nat.choose (A003114 n).toNat (n + 1))

end

end A397357.P5432039996567731525

/-! ## A397357.P18049193823291355203

`A297244(n+1)^(2*A079315(n))`
-/

namespace A397357.P18049193823291355203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297244 (n + 1) : ℚ) ^ (2 * A079315 n : ℤ)

end

end A397357.P18049193823291355203

/-! ## A397357.P12186960741229248379

`A088155(n)^floor((A037276(n+2)-col(n))/2)`
-/

namespace A397357.P12186960741229248379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088155 n : ℚ) ^ (⌊(A037276 (n + 2) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋ : ℤ)

end

end A397357.P12186960741229248379

/-! ## A397357.P1800921786325006200

`A088155(n)^A000069(A110333(n))`
-/

namespace A397357.P1800921786325006200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088155 n : ℚ) ^ (A000069 (A110333 n).toNat : ℤ)

end

end A397357.P1800921786325006200

/-!
# A397358: a(n) is the unique k >= 1 such that A400792(k) = n, or -1 if no such k exists.

The programs for A397358, there is no canonical definition to state claims against.
-/

/-! ## A397358.P11625821789020292351

`fo[A400792(n+1)-1]+1`
-/

namespace A397358.P11625821789020292351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400792 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A397358.P11625821789020292351

/-!
# A397359: Number of permutations p of [n] such that min_{i=1..n} |p(i)-i| = 2.

The programs for A397359, there is no canonical definition to state claims against.
-/

/-! ## A397359.P6138343741058259004

`A001883(n)-A075851(n)`
-/

namespace A397359.P6138343741058259004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001883 n - A075851 n

end

end A397359.P6138343741058259004

/-! ## A397359.P14067294118566427897

`A068106(∑[n])-A296050(n)-A075851(n)`
-/

namespace A397359.P14067294118566427897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A296050 n - A075851 n

end

end A397359.P14067294118566427897

/-! ## A397359.P7320241271213003266

`A060475(A000096(n))-A296050(n)-A075851(n)`
-/

namespace A397359.P7320241271213003266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat - A296050 n - A075851 n

end

end A397359.P7320241271213003266

/-! ## A397359.P4955073671446766329

`A047920(A000096(n))-A296050(n)-A075851(n)`
-/

namespace A397359.P4955073671446766329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000096 n).toNat - A296050 n - A075851 n

end

end A397359.P4955073671446766329

/-! ## A397359.P9592356441355337188

`A000142(n)-(A296050(n)+A002467(n))-A075851(n)`
-/

namespace A397359.P9592356441355337188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A296050 n + A002467 n) - A075851 n

end

end A397359.P9592356441355337188

/-!
# A397360: Number of permutations p of [n] such that min_{i=1..n} |p(i)-i| = 3.

The programs for A397360, there is no canonical definition to state claims against.
-/

/-! ## A397360.P11733824586461258914

`A075851(n)-A075852(n)`
-/

namespace A397360.P11733824586461258914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075851 n - A075852 n

end

end A397360.P11733824586461258914

/-! ## A397360.P937734558573212286

`A029494(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=8`
-/

namespace A397360.P937734558573212286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 1, 8] fun n a =>
  A029494 (a (n - 1)).toNat

end

end A397360.P937734558573212286

/-! ## A397360.P13863750926806242440

`A241062(A130581(n))`
-/

namespace A397360.P13863750926806242440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241062 (A130581 n).toNat

end

end A397360.P13863750926806242440

/-! ## A397360.P7583733942499987133

`A036861(A373080(n))`
-/

namespace A397360.P7583733942499987133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (A373080 n).toNat

end

end A397360.P7583733942499987133

/-! ## A397360.P11594294087083605521

`A352493(A178964(n))`
-/

namespace A397360.P11594294087083605521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A178964 n).toNat

end

end A397360.P11594294087083605521

/-!
# A397361: Number of compositions of n^2 into n parts such that every initial segment has an integer average.

The programs for A397361, there is no canonical definition to state claims against.
-/

/-! ## A397361.P17414516629271928040

`A192740(A108555(n))`
-/

namespace A397361.P17414516629271928040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192740 (A108555 n).toNat

end

end A397361.P17414516629271928040

/-!
# A397362: Triangle read by rows: T(n,k) is the number of words of length n over an infinite alphabet with c(1) = k, such that all prefixes satisfy c(i) >= c(j) if f(i) < f(j) where c(i) is the number of occurrences of the letter i and f(i) = floor(sqrt(2*i) + 1/2).

The programs for A397362, there is no canonical definition to state claims against.
-/

/-! ## A397362.P9031518218246096552

`lcm(A083902(A188646(n)), A084938(n))`
-/

namespace A397362.P9031518218246096552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083902 (A188646 n).toNat) (A084938 n)

end

end A397362.P9031518218246096552

/-! ## A397362.P5292667088874238877

`A055205(A000005(n+2)^A084938(n))`
-/

namespace A397362.P5292667088874238877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (SequenceMachineLib.roundAway ((A000005 (n + 2) : ℚ) ^ (A084938 n : ℤ))).toNat

end

end A397362.P5292667088874238877

/-! ## A397362.P222068675636463828

`A084938(n)*A262618(A005126(n))`
-/

namespace A397362.P222068675636463828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A262618 (A005126 n).toNat

end

end A397362.P222068675636463828

/-! ## A397362.P6064932936097990093

`A084938(n)*A124766(A347577(n))`
-/

namespace A397362.P6064932936097990093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A124766 (A347577 (n + 55)).toNat

end

end A397362.P6064932936097990093

/-! ## A397362.P14016194159413589366

`A084938(n)*A384877(A353834(n+1))`
-/

namespace A397362.P14016194159413589366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A384877 (A353834 (n + 1)).toNat

end

end A397362.P14016194159413589366

/-!
# A397371: a(n) = n times the square root of the smallest square number greater than n.

The programs for A397371, the canonical program `A397371.P7818601092111456214` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397371 has offset 0).

The definition of A397371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397371.P7818601092111456214

`n+n*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397371

/-- `n+n*floor(sqrt(n))` -/
def P7818601092111456214.Spec : Prop :=
  ∀ n, (P7818601092111456214.a n : ℤ) = A397371 n

theorem P7818601092111456214.correct : P7818601092111456214.Spec := by
  intro n
  simp only [A397371]

end A397371

/-! ## A397371.P1697034073673539617

`n*fp[n²]`
-/

namespace A397371.P1697034073673539617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A397371.P1697034073673539617

namespace A397371

/-- `n*fp[n²]` -/
def P1697034073673539617.Spec : Prop :=
  ∀ n, (P1697034073673539617.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P428656627210374540

`n*∑[char[col(n)²]]`
-/

namespace A397371.P428656627210374540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P428656627210374540

namespace A397371

/-- `n*∑[char[col(n)²]]` -/
def P428656627210374540.Spec : Prop :=
  ∀ n, (P428656627210374540.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P11963571694588795370

`n*∑[char[row(n)²]]`
-/

namespace A397371.P11963571694588795370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P11963571694588795370

namespace A397371

/-- `n*∑[char[row(n)²]]` -/
def P11963571694588795370.Spec : Prop :=
  ∀ n, (P11963571694588795370.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P15970026211629965520

`n*∑[and(1, char[n²])]`
-/

namespace A397371.P15970026211629965520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P15970026211629965520

namespace A397371

/-- `n*∑[and(1, char[n²])]` -/
def P15970026211629965520.Spec : Prop :=
  ∀ n, (P15970026211629965520.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P13140124806812716118

`∑[char[xor(1, n)²]]*n`
-/

namespace A397371.P13140124806812716118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * n

end

end A397371.P13140124806812716118

namespace A397371

/-- `∑[char[xor(1, n)²]]*n` -/
def P13140124806812716118.Spec : Prop :=
  ∀ n, (P13140124806812716118.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P3627580504681668101

`ceil(sqrt(C(n+1, n)))*n`
-/

namespace A397371.P3627580504681668101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (n + 1) n : ℝ)⌉ * (n : ℤ)

end

end A397371.P3627580504681668101

namespace A397371

/-- `ceil(sqrt(C(n+1, n)))*n` -/
def P3627580504681668101.Spec : Prop :=
  ∀ n, P3627580504681668101.a n = A397371 n

end A397371

/-! ## A397371.P9455578873347543711

`n*∑[A010052(n)]`
-/

namespace A397371.P9455578873347543711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P9455578873347543711

namespace A397371

/-- `n*∑[A010052(n)]` -/
def P9455578873347543711.Spec : Prop :=
  ∀ n, P9455578873347543711.a n = A397371 n

end A397371

/-! ## A397371.P618543011528707117

`n*Δ[A327672(n)]`
-/

namespace A397371.P618543011528707117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A397371.P618543011528707117

namespace A397371

/-- `n*Δ[A327672(n)]` -/
def P618543011528707117.Spec : Prop :=
  ∀ n, P618543011528707117.a n = A397371 n

end A397371

/-! ## A397371.P15771830898800996428

`n*(A000196(n)+1)`
-/

namespace A397371.P15771830898800996428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000196 n + 1)

end

end A397371.P15771830898800996428

namespace A397371

/-- `n*(A000196(n)+1)` -/
def P15771830898800996428.Spec : Prop :=
  ∀ n, P15771830898800996428.a n = A397371 n

theorem P15771830898800996428.correct : P15771830898800996428.Spec := by
  intro n
  simp only [A397371, Nat.add_sub_cancel, A397371.P15771830898800996428.a, A397371.P7818601092111456214.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397371

/-! ## A397371.P7564555942261012794

`n*A003059(1+n)`
-/

namespace A397371.P7564555942261012794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003059 (1 + n)

end

end A397371.P7564555942261012794

namespace A397371

/-- `n*A003059(1+n)` -/
def P7564555942261012794.Spec : Prop :=
  ∀ n, P7564555942261012794.a n = A397371 n

end A397371

/-! ## A397371.P12314399874488906994

`n*sqrt(A048761(n+1))`
-/

namespace A397371.P12314399874488906994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A048761 (n + 1) : ℝ)

end

end A397371.P12314399874488906994

namespace A397371

/-- `n*sqrt(A048761(n+1))` -/
def P12314399874488906994.Spec : Prop :=
  ∀ n, P12314399874488906994.a n = (A397371 n : ℝ)

end A397371

/-! ## A397371.P1185423732692468654

`n/2*A130819(n+1)`
-/

namespace A397371.P1185423732692468654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A130819 (n + 1) : ℚ)

end

end A397371.P1185423732692468654

namespace A397371

/-- `n/2*A130819(n+1)` -/
def P1185423732692468654.Spec : Prop :=
  ∀ n, P1185423732692468654.a n = (A397371 n : ℚ)

end A397371

/-! ## A397371.P6246705155843084068

`n*(n+1-A028391(n))`
-/

namespace A397371.P6246705155843084068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) - A028391 n)

end

end A397371.P6246705155843084068

namespace A397371

/-- `n*(n+1-A028391(n))` -/
def P6246705155843084068.Spec : Prop :=
  ∀ n, P6246705155843084068.a n = A397371 n

theorem P6246705155843084068.correct : P6246705155843084068.Spec := by
  intro n
  simp only [A397371, Nat.add_sub_cancel, A397371.P6246705155843084068.a, A397371.P7818601092111456214.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397371

/-! ## A397371.P13388509449700799636

`n*(A078358(n+1)-n)`
-/

namespace A397371.P13388509449700799636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A078358 (n + 1) - (n : ℤ))

end

end A397371.P13388509449700799636

namespace A397371

/-- `n*(A078358(n+1)-n)` -/
def P13388509449700799636.Spec : Prop :=
  ∀ n, P13388509449700799636.a n = A397371 n

end A397371

/-! ## A397371.P17285739894899796053

`n*(A135668(n+1)-(n+1))`
-/

namespace A397371.P17285739894899796053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135668 (n + 1) - (n + 1 : ℤ))

end

end A397371.P17285739894899796053

namespace A397371

/-- `n*(A135668(n+1)-(n+1))` -/
def P17285739894899796053.Spec : Prop :=
  ∀ n, P17285739894899796053.a n = A397371 n

end A397371

/-! ## A397371.P8336056732377649506

`n*A008619(A000267(n))`
-/

namespace A397371.P8336056732377649506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 (A000267 n).toNat

end

end A397371.P8336056732377649506

namespace A397371

/-- `n*A008619(A000267(n))` -/
def P8336056732377649506.Spec : Prop :=
  ∀ n, P8336056732377649506.a n = A397371 n

end A397371

/-! ## A397371.P1688727791089718991

`n*A004526(A307136(n+1))`
-/

namespace A397371.P1688727791089718991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 (A307136 (n + 1)).toNat

end

end A397371.P1688727791089718991

namespace A397371

/-- `n*A004526(A307136(n+1))` -/
def P1688727791089718991.Spec : Prop :=
  ∀ n, P1688727791089718991.a n = A397371 n

end A397371

/-! ## A397371.P10223660797555021422

`n*A135034(n+1)`
-/

namespace A397371.P10223660797555021422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135034 (n + 1)

end

end A397371.P10223660797555021422

namespace A397371

/-- `n*A135034(n+1)` -/
def P10223660797555021422.Spec : Prop :=
  ∀ n, P10223660797555021422.a n = A397371 n

end A397371

/-! ## A397371.P15095794421241453160

`n*A000194(A000037(n+1))`
-/

namespace A397371.P15095794421241453160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000194 (A000037 (n + 1)).toNat

end

end A397371.P15095794421241453160

namespace A397371

/-- `n*A000194(A000037(n+1))` -/
def P15095794421241453160.Spec : Prop :=
  ∀ n, P15095794421241453160.a n = A397371 n

end A397371

/-!
# A397379: Number of compositions (c_1,...,c_k) of n such that gcd(c_i,i)=1 for all i.

The programs for A397379, there is no canonical definition to state claims against.
-/

/-! ## A397379.P557704341160869482

`A101776(A167910(n))`
-/

namespace A397379.P557704341160869482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A167910 n).toNat

end

end A397379.P557704341160869482

/-! ## A397379.P5329233460306112741

`A166018(A374746(n))`
-/

namespace A397379.P5329233460306112741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A374746 n).toNat

end

end A397379.P5329233460306112741

/-! ## A397379.P14910926037103964941

`A295866(A083844(n+1))`
-/

namespace A397379.P14910926037103964941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A083844 (n + 1)).toNat

end

end A397379.P14910926037103964941

/-! ## A397379.P11518334366337954615

`A358849(A343161(n+2))`
-/

namespace A397379.P11518334366337954615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (A343161 (n + 2)).toNat

end

end A397379.P11518334366337954615

/-! ## A397379.P18207925982712246169

`A341023(A073776(n))+A073776(n)`
-/

namespace A397379.P18207925982712246169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 ((A073776 n).toNat + 56) + A073776 n

end

end A397379.P18207925982712246169

/-!
# A397380: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * (binomial(n+2*k,k) + binomial(n+2*k,k-1)).

The programs for A397380, the canonical program `A397380.P3500654932573034132` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397380 has offset 0).

The definition of A397380 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397383, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397380.P3500654932573034132

`A243116(n)+A397383(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A397380

/-- `A243116(n)+A397383(n)` -/
def P3500654932573034132.Spec : Prop :=
  ∀ n, P3500654932573034132.a n = A397380 n

theorem P3500654932573034132.correct : P3500654932573034132.Spec := by
  intro n
  simp only [A397380]

end A397380

/-! ## A397380.P10709596613646594122

`A243116(n)+A243116(n)-A394186(n)`
-/

namespace A397380.P10709596613646594122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n + (A243116 n - A394186 n)

end

end A397380.P10709596613646594122

namespace A397380

/-- `A243116(n)+A243116(n)-A394186(n)` -/
def P10709596613646594122.Spec : Prop :=
  ∀ n, P10709596613646594122.a n = A397380 n

end A397380

/-!
# A397381: a(n) = Sum_{k=0..n} binomial(n+2*k,3*k) * (binomial(n+3*k,k) + binomial(n+3*k,k-1)).

The programs for A397381, there is no canonical definition to state claims against.
-/

/-! ## A397381.P6518720427031428030

`A378402(n)+A397384(n)`
-/

namespace A397381.P6518720427031428030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378402 n + A397384 n

end

end A397381.P6518720427031428030

/-! ## A397381.P7409997190439943482

`A397384(n)+∑{#}[n, C(n, #)*C(n+3*#, n)]`
-/

namespace A397381.P7409997190439943482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397384 n + ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (n + 3 * k) n : ℕ) : ℤ)

end

end A397381.P7409997190439943482

/-!
# A397382: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * (binomial(n+4*k,k) + binomial(n+4*k,k-1)).

The programs for A397382, there is no canonical definition to state claims against.
-/

/-! ## A397382.P11712692821197948964

`A397386(n)+A397385(n)`
-/

namespace A397382.P11712692821197948964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397386 n + A397385 n

end

end A397382.P11712692821197948964

/-! ## A397382.P2124213379203186378

`A397385(n)+∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]`
-/

namespace A397382.P2124213379203186378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397385 n + ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3 * k) (4 * k) * Nat.choose (n + 4 * k) k : ℕ) : ℤ)

end

end A397382.P2124213379203186378

/-!
# A397383: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * binomial(n+2*k,k-1).

The programs for A397383, the canonical program `A397383.P15673520071357837229` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397383 has offset 0).

The definition of A397383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397383.P15673520071357837229

`A243116(n)-A394186(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A397383

/-- `A243116(n)-A394186(n)` -/
def P15673520071357837229.Spec : Prop :=
  ∀ n, P15673520071357837229.a n = A397383 n

theorem P15673520071357837229.correct : P15673520071357837229.Spec := by
  intro n
  simp only [A397383]

end A397383

/-! ## A397383.P5689602401387867526

`A397380(n)-A243116(n)`
-/

namespace A397383.P5689602401387867526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397380 n - A243116 n

end

end A397383.P5689602401387867526

namespace A397383

/-- `A397380(n)-A243116(n)` -/
def P5689602401387867526.Spec : Prop :=
  ∀ n, P5689602401387867526.a n = A397383 n

theorem P5689602401387867526.correct : P5689602401387867526.Spec := by
  intro n
  simp only [A397383, Nat.add_sub_cancel, A397383.P5689602401387867526.a, A397383.P15673520071357837229.a, A243116, A243116.P17283519620250842221.f1, A243116.P17283519620250842221.a, A394186, A394186.P3706441358124203491.a, A397380, A397380.P3500654932573034132.a, A071945, A071945.P8242470920315150283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A397383

/-! ## A397383.P12185746391816334250

`A243116(n)-A071945(∑[4*n])`
-/

namespace A397383.P12185746391816334250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n - A071945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397383.P12185746391816334250

namespace A397383

/-- `A243116(n)-A071945(∑[4*n])` -/
def P12185746391816334250.Spec : Prop :=
  ∀ n, P12185746391816334250.a n = A397383 n

end A397383

/-! ## A397383.P11044308140119962699

`A257365(A002943(n)+A000217(n))-A394186(n)`
-/

namespace A397383.P11044308140119962699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A002943 n + A000217 n).toNat - A394186 n

end

end A397383.P11044308140119962699

namespace A397383

/-- `A257365(A002943(n)+A000217(n))-A394186(n)` -/
def P11044308140119962699.Spec : Prop :=
  ∀ n, P11044308140119962699.a n = A397383 n

end A397383

/-! ## A397383.P15539016740973907466

`A397380(n)-A257365(A002943(n)+A000217(n))`
-/

namespace A397383.P15539016740973907466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397380 n - A257365 (A002943 n + A000217 n).toNat

end

end A397383.P15539016740973907466

namespace A397383

/-- `A397380(n)-A257365(A002943(n)+A000217(n))` -/
def P15539016740973907466.Spec : Prop :=
  ∀ n, P15539016740973907466.a n = A397383 n

end A397383

/-! ## A397383.P1226808256345484669

`A257365(A166136(5*n+1)-A166136(4*n+1))-A394186(n)`
-/

namespace A397383.P1226808256345484669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A166136 (5 * n + 1) - A166136 (4 * n + 1)).toNat - A394186 n

end

end A397383.P1226808256345484669

namespace A397383

/-- `A257365(A166136(5*n+1)-A166136(4*n+1))-A394186(n)` -/
def P1226808256345484669.Spec : Prop :=
  ∀ n, P1226808256345484669.a n = A397383 n

end A397383

/-! ## A397383.P14100542005586016264

`A397380(n)-A257365(A166136(5*n+1)-A166136(4*n+1))`
-/

namespace A397383.P14100542005586016264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397380 n - A257365 (A166136 (5 * n + 1) - A166136 (4 * n + 1)).toNat

end

end A397383.P14100542005586016264

namespace A397383

/-- `A397380(n)-A257365(A166136(5*n+1)-A166136(4*n+1))` -/
def P14100542005586016264.Spec : Prop :=
  ∀ n, P14100542005586016264.a n = A397383 n

end A397383

/-!
# A397384: a(n) = Sum_{k=0..n} binomial(n+2*k,3*k) * binomial(n+3*k,k-1).

The programs for A397384, there is no canonical definition to state claims against.
-/

/-! ## A397384.P14339252815921090252

`A397381(n)-∑{#}[n, C(n, #)*C(n+3*#, n)]`
-/

namespace A397384.P14339252815921090252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397381 n - ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (n + 3 * k) n : ℕ) : ℤ)

end

end A397384.P14339252815921090252

/-! ## A397384.P14682166765770252935

`A378402(n)-A395801(n)`
-/

namespace A397384.P14682166765770252935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378402 n - A395801 n

end

end A397384.P14682166765770252935

/-! ## A397384.P14364369720857332236

`A397381(n)-A378402(n)`
-/

namespace A397384.P14364369720857332236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397381 n - A378402 n

end

end A397384.P14364369720857332236

/-!
# A397385: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * binomial(n+4*k,k-1).

The programs for A397385, there is no canonical definition to state claims against.
-/

/-! ## A397385.P15319101928823158367

`A397386(n)-A396286(n)`
-/

namespace A397385.P15319101928823158367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397386 n - A396286 n

end

end A397385.P15319101928823158367

/-! ## A397385.P8415071436777612602

`A397382(n)-A397386(n)`
-/

namespace A397385.P8415071436777612602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397382 n - A397386 n

end

end A397385.P8415071436777612602

/-! ## A397385.P10315697642602889619

`(A397382(n)-A396286(n))/2`
-/

namespace A397385.P10315697642602889619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397382 n - A396286 n : ℚ) / 2

end

end A397385.P10315697642602889619

/-!
# A397386: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * binomial(n+4*k,k).

The programs for A397386, the canonical program `A397386.P7285958036870640858` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397386 has offset 0).

The definition of A397386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]` (program `A397386.P7285958036870640858`, by `A397386.P7285958036870640858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397386.P7285958036870640858

`∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397386

/-- `∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]` -/
def P7285958036870640858.Spec : Prop :=
  ∀ n, (P7285958036870640858.a n : ℤ) = A397386 n

theorem P7285958036870640858.correct : P7285958036870640858.Spec := by
  intro n
  simp only [A397386]

end A397386

/-! ## A397386.P16964936943660944577

`A397385(n)+A396286(n)`
-/

namespace A397386.P16964936943660944577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397385 n + A396286 n

end

end A397386.P16964936943660944577

namespace A397386

/-- `A397385(n)+A396286(n)` -/
def P16964936943660944577.Spec : Prop :=
  ∀ n, P16964936943660944577.a n = A397386 n

end A397386

/-! ## A397386.P15432626693233600062

`A397382(n)-A397385(n)`
-/

namespace A397386.P15432626693233600062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397382 n - A397385 n

end

end A397386.P15432626693233600062

namespace A397386

/-- `A397382(n)-A397385(n)` -/
def P15432626693233600062.Spec : Prop :=
  ∀ n, P15432626693233600062.a n = A397386 n

end A397386

/-! ## A397386.P15787400495041586772

`(A397382(n)+A396286(n))/2`
-/

namespace A397386.P15787400495041586772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397382 n + A396286 n : ℚ) / 2

end

end A397386.P15787400495041586772

namespace A397386

/-- `(A397382(n)+A396286(n))/2` -/
def P15787400495041586772.Spec : Prop :=
  ∀ n, P15787400495041586772.a n = (A397386 n : ℚ)

end A397386

/-!
# A397387: Sophie Germain cyclic numbers: numbers k such that k and 2*k+1 are both cyclic numbers (A003277).

The programs for A397387, the canonical program `A397387.P3236873794457607494` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397387 has offset 1).

The definition of A397387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397387.P3236873794457607494

`∩[floor(A003277(n+3)/2), A003277(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A397387

/-- `∩[floor(A003277(n+3)/2), A003277(n+1)]` -/
def P3236873794457607494.Spec : Prop :=
  ∀ n, (P3236873794457607494.a n : ℤ) = A397387 (n + 1)

theorem P3236873794457607494.correct : P3236873794457607494.Spec := by
  intro n
  simp only [A397387, Nat.add_sub_cancel]

end A397387

/-! ## A397387.P15693558162220358477

`record[A195637(n+1)%A195637(2*n+3)]`
-/

namespace A397387.P15693558162220358477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195637 (n + 1)) (A195637 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397387.P15693558162220358477

namespace A397387

/-- `record[A195637(n+1)%A195637(2*n+3)]` -/
def P15693558162220358477.Spec : Prop :=
  ∀ n, P15693558162220358477.a n = A397387 (n + 1)

end A397387

/-! ## A397387.P1423565890743820484

`eq[A009195(n+1), A009195(2*n+3)]+1`
-/

namespace A397387.P1423565890743820484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397387.P1423565890743820484

namespace A397387

/-- `eq[A009195(n+1), A009195(2*n+3)]+1` -/
def P1423565890743820484.Spec : Prop :=
  ∀ n, (P1423565890743820484.a n : ℤ) = A397387 (n + 1)

end A397387

/-! ## A397387.P6144625965797447455

`record[A109395(A109395(2*(n+1))-1)]`
-/

namespace A397387.P6144625965797447455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A109395 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397387.P6144625965797447455

namespace A397387

/-- `record[A109395(A109395(2*(n+1))-1)]` -/
def P6144625965797447455.Spec : Prop :=
  ∀ n, P6144625965797447455.a n = A397387 (n + 1)

end A397387

/-! ## A397387.P4928686333609689125

`eq[A000001(n)+2, A326203(2*n+1)]`
-/

namespace A397387.P4928686333609689125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P4928686333609689125

namespace A397387

/-- `eq[A000001(n)+2, A326203(2*n+1)]` -/
def P4928686333609689125.Spec : Prop :=
  ∀ n, (P4928686333609689125.a n : ℤ) = A397387 (n + 1)

end A397387

/-! ## A397387.P7090079399328147642

`lt[A000001(2*n+1), C(2, A000001(n))]`
-/

namespace A397387.P7090079399328147642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A397387.P7090079399328147642

namespace A397387

/-- `lt[A000001(2*n+1), C(2, A000001(n))]` -/
def P7090079399328147642.Spec : Prop :=
  ∀ n, (P7090079399328147642.a n : ℤ) = A397387 (n + 1)

end A397387

/-! ## A397387.P5100537752700300878

`eq[A000001(n), A000025(A000001(2*n+1))]`
-/

namespace A397387.P5100537752700300878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (A000001 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P5100537752700300878

namespace A397387

/-- `eq[A000001(n), A000025(A000001(2*n+1))]` -/
def P5100537752700300878.Spec : Prop :=
  ∀ n, (P5100537752700300878.a n : ℤ) = A397387 (n + 1)

end A397387

/-! ## A397387.P1747222868692540888

`eq[A000001(n), A331423(A000001(2*n+1)+1)]`
-/

namespace A397387.P1747222868692540888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (A000001 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P1747222868692540888

namespace A397387

/-- `eq[A000001(n), A331423(A000001(2*n+1)+1)]` -/
def P1747222868692540888.Spec : Prop :=
  ∀ n, (P1747222868692540888.a n : ℤ) = A397387 (n + 1)

end A397387

/-! ## A397387.P9902676392066906377

`eq[A000001(n), A001694(A297420(2*n+1))]`
-/

namespace A397387.P9902676392066906377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A297420 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P9902676392066906377

namespace A397387

/-- `eq[A000001(n), A001694(A297420(2*n+1))]` -/
def P9902676392066906377.Spec : Prop :=
  ∀ n, (P9902676392066906377.a n : ℤ) = A397387 (n + 1)

end A397387

/-! ## A397387.P9509288100424230984

`eq[A000005(A297420(2*n+1)), A297420(n)]`
-/

namespace A397387.P9509288100424230984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A297420 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P9509288100424230984

namespace A397387

/-- `eq[A000005(A297420(2*n+1)), A297420(n)]` -/
def P9509288100424230984.Spec : Prop :=
  ∀ n, (P9509288100424230984.a n : ℤ) = A397387 (n + 1)

end A397387

/-!
# A397389: a(n) is the y-coordinate of a knight after moving n steps according to the rules defined in A397388.

The programs for A397389, there is no canonical definition to state claims against.
-/

/-! ## A397389.P6192791340554075741

`A074286(A024365(3*(n+1)))%A179104(n+1)`
-/

namespace A397389.P6192791340554075741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074286 (A024365 (3 * (n + 1))).toNat) (A179104 (n + 1))

end

end A397389.P6192791340554075741

/-!
# A397394: a(n) is the x-coordinate of a knight after moving n steps according to the rules defined in A397392, with the last tiebreaking rule modified so that the colexicographically largest point is chosen instead of the lexicographically largest point.

The programs for A397394, there is no canonical definition to state claims against.
-/

/-! ## A397394.P6052232145096754258

`A397396(n)+A051344(A252615(n+1))`
-/

namespace A397394.P6052232145096754258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397396 n + A051344 (A252615 (n + 1)).toNat

end

end A397394.P6052232145096754258

/-! ## A397394.P12334027111575664123

`A397396(n)+A278085(A090989(n+1))`
-/

namespace A397394.P12334027111575664123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397396 n + A278085 (A090989 (n + 1)).toNat

end

end A397394.P12334027111575664123

/-! ## A397394.P14404364020535315912

`A397396(n)^A283027(A246118(n+1))`
-/

namespace A397394.P14404364020535315912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397396 n : ℚ) ^ (A283027 (A246118 (n + 1)).toNat : ℤ)

end

end A397394.P14404364020535315912

/-!
# A397395: a(n) is the y-coordinate of a knight after moving n steps according to the rules defined in A397394.

The programs for A397395, there is no canonical definition to state claims against.
-/

/-! ## A397395.P7783063469893930045

`A397397(n)*A131713(A029988(n+1))`
-/

namespace A397395.P7783063469893930045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397397 n * A131713 (A029988 (n + 1)).toNat

end

end A397395.P7783063469893930045

/-! ## A397395.P8688491243368709958

`A397397(n)+A051344(A252615(n+1))`
-/

namespace A397395.P8688491243368709958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397397 n + A051344 (A252615 (n + 1)).toNat

end

end A397395.P8688491243368709958

/-! ## A397395.P4472760950190543959

`A397397(n)+A278085(A090989(n+1))`
-/

namespace A397395.P4472760950190543959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397397 n + A278085 (A090989 (n + 1)).toNat

end

end A397395.P4472760950190543959

/-!
# A397396: a(n) is the x-coordinate of a knight after moving n steps according to the rules defined in A397392, with the last tiebreaking rule modified so that the lexicographically least point is chosen instead of the lexicographically largest point.

The programs for A397396, there is no canonical definition to state claims against.
-/

/-! ## A397396.P13839990252605402728

`A397394(n)-A051344(A252615(n+1))`
-/

namespace A397396.P13839990252605402728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397394 n - A051344 (A252615 (n + 1)).toNat

end

end A397396.P13839990252605402728

/-! ## A397396.P14898201277532736511

`A397394(n)-A278085(A090989(n+1))`
-/

namespace A397396.P14898201277532736511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397394 n - A278085 (A090989 (n + 1)).toNat

end

end A397396.P14898201277532736511

/-!
# A397397: a(n) is the y-coordinate of a knight after moving n steps according to the rules defined in A397396.

The programs for A397397, there is no canonical definition to state claims against.
-/

/-! ## A397397.P15576717710149926622

`A397395(n)-A051344(A252615(n+1))`
-/

namespace A397397.P15576717710149926622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397395 n - A051344 (A252615 (n + 1)).toNat

end

end A397397.P15576717710149926622

/-! ## A397397.P9810555531501805514

`A397395(n)-A278085(A090989(n+1))`
-/

namespace A397397.P9810555531501805514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397395 n - A278085 (A090989 (n + 1)).toNat

end

end A397397.P9810555531501805514

/-!
# A397398: a(n) is the x-coordinate of a knight after moving n steps according to the rules defined in A397392, with the last tiebreaking rule modified so that the colexicographically least point is chosen instead of the lexicographically largest point.

The programs for A397398, there is no canonical definition to state claims against.
-/

/-! ## A397398.P12345476757223969700

`A010815(A008631(2*n+3))-A397392(n)`
-/

namespace A397398.P12345476757223969700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A008631 (2 * n + 3)).toNat - A397392 n

end

end A397398.P12345476757223969700

