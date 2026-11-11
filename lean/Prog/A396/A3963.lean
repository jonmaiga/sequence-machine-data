import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A396300: a(n) is the last term in the n-th block of A280864.

The programs for A396300, there is no canonical definition to state claims against.
-/

/-! ## A396300.P12301097760733191933

`A280864(A280774(n+1))`
-/

namespace A396300.P12301097760733191933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280774 (n + 1)).toNat

end

end A396300.P12301097760733191933

/-! ## A396300.P14183267684841426006

`A280864(∑[A283832(1+n)])`
-/

namespace A396300.P14183267684841426006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A396300.P14183267684841426006

/-!
# A396301: a(n) is the value of the first term in the n-th block of A280864.

The programs for A396301, there is no canonical definition to state claims against.
-/

/-! ## A396301.P11275033255920963010

`eq[1, A280738(A280741(n+1))]+1`
-/

namespace A396301.P11275033255920963010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (A280741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396301.P11275033255920963010

/-! ## A396301.P16728762905368315021

`A280864(eq[1, A280738(n+1)]+1)`
-/

namespace A396301.P16728762905368315021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A396301.P16728762905368315021

/-! ## A396301.P14400375512032802147

`∩[comp[A396300(n+2)], A372059(n+1)]`
-/

namespace A396301.P14400375512032802147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396300 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A396301.P14400375512032802147

/-! ## A396301.P3926739332680582047

`lt[A294137(n), A381441(A000027(2*n+1))]`
-/

namespace A396301.P3926739332680582047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381441 (A000027 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396301.P3926739332680582047

/-! ## A396301.P6564251424229622154

`filter[A346127(n+1), A294905(#)]`
-/

namespace A396301.P6564251424229622154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A396301.P6564251424229622154

/-!
# A396302: Apply PrimePi (A000720) to A396301 and then take first differences.

The programs for A396302, there is no canonical definition to state claims against.
-/

/-! ## A396302.P14985424414716754477

`Δ[A000720(A396301(n+1))]`
-/

namespace A396302.P14985424414716754477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A396301 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396302.P14985424414716754477

/-! ## A396302.P6234219188947881925

`A397172(A099257(2+n))`
-/

namespace A396302.P6234219188947881925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397172 (A099257 (2 + n)).toNat

end

end A396302.P6234219188947881925

/-! ## A396302.P6279674615540405786

`A367622(xor(10*n, A214257(3*n+4)))`
-/

namespace A396302.P6279674615540405786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367622 (Int.xor (10 * n : ℤ) (A214257 (3 * n + 4))).toNat

end

end A396302.P6279674615540405786

/-! ## A396302.P7152917072591616974

`A054523(gcd(A026793(n+1), A355393(n)))`
-/

namespace A396302.P7152917072591616974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (Int.gcd (A026793 (n + 1)) (A355393 n))

end

end A396302.P7152917072591616974

/-! ## A396302.P1961131493122825763

`A240328(A250120(abs(2-n²)))+1`
-/

namespace A396302.P1961131493122825763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A250120 |2 - (n ^ 2 : ℤ)|.toNat).toNat + 1

end

end A396302.P1961131493122825763

/-!
# A396303: Primes that begin a block of terms in A280864.

The programs for A396303, there is no canonical definition to state claims against.
-/

/-! ## A396303.P5846130931388906605

`p?[A396301(n+1)]`
-/

namespace A396303.P5846130931388906605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396303.P5846130931388906605

/-! ## A396303.P6340491144979341307

`∩[A000040(n+1), A396301(n+1)]`
-/

namespace A396303.P6340491144979341307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396303.P6340491144979341307

/-! ## A396303.P6544975904987868424

`∩[A053813(n+1), A396301(n+1)]`
-/

namespace A396303.P6544975904987868424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396303.P6544975904987868424

/-! ## A396303.P8140810690674732265

`filter[A396301(n+1), A001222(#)]`
-/

namespace A396303.P8140810690674732265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A396303.P8140810690674732265

/-! ## A396303.P729887688931974832

`filter[A396301(n+1), A010051(#)]`
-/

namespace A396303.P729887688931974832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396303.P729887688931974832

/-! ## A396303.P9357906232930885190

`filter[A396301(n+1), A066829(#)]`
-/

namespace A396303.P9357906232930885190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A396303.P9357906232930885190

/-! ## A396303.P17881860712723351414

`filter[A396301(n+2), A008966(#)]`
-/

namespace A396303.P17881860712723351414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A396303.P17881860712723351414

/-! ## A396303.P12345529015162316991

`filter[A396301(n+2), A175860(#)]`
-/

namespace A396303.P12345529015162316991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175860 (f1 j).toNat = 1) n)

end

end A396303.P12345529015162316991

/-! ## A396303.P5265605787109269713

`∩[A036844(n+1), A396301(n+1)]`
-/

namespace A396303.P5265605787109269713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396303.P5265605787109269713

/-! ## A396303.P5607836667369869983

`filter[A396301(n+1), A049240(#)]`
-/

namespace A396303.P5607836667369869983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A396303.P5607836667369869983

/-! ## A396303.P7396864740635371998

`filter[A396301(n+1), A099104(#)]`
-/

namespace A396303.P7396864740635371998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A396303.P7396864740635371998

/-! ## A396303.P5090979470232124027

`filter[A396301(n+1), A252233(#)]`
-/

namespace A396303.P5090979470232124027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A396303.P5090979470232124027

/-! ## A396303.P694496183596254768

`filter[A396301(n+1), A296211(#)]`
-/

namespace A396303.P694496183596254768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A396303.P694496183596254768

/-! ## A396303.P2785994670190624087

`filter[A396301(n+1), A323153(#)]`
-/

namespace A396303.P2785994670190624087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A396303.P2785994670190624087

/-! ## A396303.P4098330113107729516

`filter[A396301(n+1), A324823(#)]`
-/

namespace A396303.P4098330113107729516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A396303.P4098330113107729516

/-! ## A396303.P1601923010864168436

`filter[A396301(n+1), A327861(#)]`
-/

namespace A396303.P1601923010864168436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A396303.P1601923010864168436

/-! ## A396303.P11345207665117334277

`filter[A396301(n+1), A342460(#)]`
-/

namespace A396303.P11345207665117334277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A396303.P11345207665117334277

/-! ## A396303.P12493047543135908433

`filter[A396301(n+1), A348737(#)]`
-/

namespace A396303.P12493047543135908433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A396303.P12493047543135908433

/-! ## A396303.P14314923180587577026

`filter[A396301(n+1), A353471(#)]`
-/

namespace A396303.P14314923180587577026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A396303.P14314923180587577026

/-! ## A396303.P4666099173054100981

`filter[A396301(n+1), A353499(#)]`
-/

namespace A396303.P4666099173054100981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A396303.P4666099173054100981

/-!
# A396305: Which blocks in A280864 have length 4.

The programs for A396305, there is no canonical definition to state claims against.
-/

/-! ## A396305.P9987780823907332380

`eq[4, A283832(n+1)]+1`
-/

namespace A396305.P9987780823907332380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396305.P9987780823907332380

/-! ## A396305.P12756100204808582915

`eq[4, A283832(A028310(n))]`
-/

namespace A396305.P12756100204808582915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396305.P12756100204808582915

/-!
# A396306: Initial terms of length-4 blocks in A280864.

The programs for A396306, there is no canonical definition to state claims against.
-/

/-! ## A396306.P18296172063850539408

`A396301(A396305(1+n))`
-/

namespace A396306.P18296172063850539408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (A396305 (1 + n)).toNat

end

end A396306.P18296172063850539408

/-!
# A396307: Final terms of length-4 blocks in A280864.

The programs for A396307, there is no canonical definition to state claims against.
-/

/-! ## A396307.P11663263423880154454

`A396300(A396305(1+n))`
-/

namespace A396307.P11663263423880154454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396300 (A396305 (1 + n)).toNat

end

end A396307.P11663263423880154454

/-! ## A396307.P16862028628553333938

`A280864(A280774(A396305(A285189(A280774(n+1)))))`
-/

namespace A396307.P16862028628553333938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280774 (A396305 (A285189 (A280774 (n + 1)).toNat).toNat).toNat).toNat

end

end A396307.P16862028628553333938

/-!
# A396310: a(n)/9! is the coefficient of x^9 in the Taylor expansion of the k-th iteration of sin(x).

The programs for A396310, the canonical program `A396310.P15637081066417192461` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396310 has offset 0).

The definition of A396310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396310.P15637081066417192461

`(8-7*n)²*n*(25*n-24)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396310

/-- `(8-7*n)²*n*(25*n-24)` -/
def P15637081066417192461.Spec : Prop :=
  ∀ n, P15637081066417192461.a n = A396310 n

theorem P15637081066417192461.correct : P15637081066417192461.Spec := by
  intro n
  simp only [A396310]

end A396310

/-!
# A396311: Number of tilings of a 5 X n rectangle by unit squares and the Ferrers tile (3,2,1).

The programs for A396311, the canonical program `A396311.P12780869091172628652` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396311 has offset 0).

The definition of A396311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396311.P14451213710145190343

`ogf(1/(1-x-3x^3-x^4-3x^5-x^7))`
-/

namespace A396311.P14451213710145190343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -3, -1, -3, 0, -1] n

end

end A396311.P14451213710145190343

namespace A396311

/-- `ogf(1/(1-x-3x^3-x^4-3x^5-x^7))` -/
def P14451213710145190343.Spec : Prop :=
  ∀ n, P14451213710145190343.a n = A396311 n

end A396311

/-! ## A396311.P12780869091172628652

`a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=8, a(5)=15, a(6)=31`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396311

/-- `a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` -/
def P12780869091172628652.Spec : Prop :=
  ∀ n, (P12780869091172628652.a n : ℤ) = A396311 n

theorem P12780869091172628652.correct : P12780869091172628652.Spec := by
  intro n
  simp only [A396311]

end A396311

/-! ## A396311.P5512918727642529100

`Δ[floor(A129682(n+1)/2)]`
-/

namespace A396311.P5512918727642529100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129682 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396311.P5512918727642529100

namespace A396311

/-- `Δ[floor(A129682(n+1)/2)]` -/
def P5512918727642529100.Spec : Prop :=
  ∀ n, P5512918727642529100.a n = A396311 n

end A396311

/-! ## A396311.P5598541085061962333

`A226143(A186240(n))`
-/

namespace A396311.P5598541085061962333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A186240 n).toNat

end

end A396311.P5598541085061962333

namespace A396311

/-- `A226143(A186240(n))` -/
def P5598541085061962333.Spec : Prop :=
  ∀ n, P5598541085061962333.a n = A396311 n

end A396311

/-! ## A396311.P7566389428341857921

`floor(2^(n-1))-A008683(A176496(n+1))`
-/

namespace A396311.P7566389428341857921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A008683 (A176496 (n + 1)).toNat

end

end A396311.P7566389428341857921

namespace A396311

/-- `floor(2^(n-1))-A008683(A176496(n+1))` -/
def P7566389428341857921.Spec : Prop :=
  ∀ n, P7566389428341857921.a n = A396311 n

end A396311

/-!
# A396312: Number of tilings of an (h+3) X n rectangle by unit squares and the Ferrers tile (h,2,2,1), for h >= 4.

The programs for A396312, the canonical program `A396312.P10265567404779375665` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396312 has offset 0).

The definition of A396312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396312.P10265567404779375665

`ogf(1/(1-x-4x^4-3x^5-3x^6-6x^7-2x^8-2x^9-4x^10-x^13))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396312

/-- `ogf(1/(1-x-4x^4-3x^5-3x^6-6x^7-2x^8-2x^9-4x^10-x^13))` -/
def P10265567404779375665.Spec : Prop :=
  ∀ n, P10265567404779375665.a n = A396312 n

theorem P10265567404779375665.correct : P10265567404779375665.Spec := by
  intro n
  simp only [A396312]

end A396312

/-! ## A396312.P18372644446480101244

`A392398(n)+A226463(A297185(2*n+1))`
-/

namespace A396312.P18372644446480101244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392398 n + A226463 (A297185 (2 * n + 1)).toNat

end

end A396312.P18372644446480101244

namespace A396312

/-- `A392398(n)+A226463(A297185(2*n+1))` -/
def P18372644446480101244.Spec : Prop :=
  ∀ n, P18372644446480101244.a n = A396312 n

end A396312

/-!
# A396313: Number of tilings of a 5 X n rectangle by unit squares and the Ferrers tile (3,3,2).

The programs for A396313, the canonical program `A396313.P9142973888799398951` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396313 has offset 0).

The definition of A396313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396313.P5871917139418676358

`ogf(1/(1-x-3x^3-x^5))`
-/

namespace A396313.P5871917139418676358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -3, 0, -1] n

end

end A396313.P5871917139418676358

namespace A396313

/-- `ogf(1/(1-x-3x^3-x^5))` -/
def P5871917139418676358.Spec : Prop :=
  ∀ n, P5871917139418676358.a n = A396313 n

end A396313

/-! ## A396313.P9142973888799398951

`a(n-1)+3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396313

/-- `a(n-1)+3*a(n-3)+a(n-5)` -/
def P9142973888799398951.Spec : Prop :=
  ∀ n, (P9142973888799398951.a n : ℤ) = A396313 n

theorem P9142973888799398951.correct : P9142973888799398951.Spec := by
  intro n
  simp only [A396313]

end A396313

/-!
# A396314: Numbers k > 1 for which A396316(k) is not the greatest prime factor of k.

The programs for A396314, there is no canonical definition to state claims against.
-/

/-! ## A396314.P1688908922119398576

`lt[A006530(n+1), A295294(n+1)]+1`
-/

namespace A396314.P1688908922119398576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396314.P1688908922119398576

/-! ## A396314.P10152392728617049558

`A065475(lt[A006530(n+1), A295294(n+1)])`
-/

namespace A396314.P10152392728617049558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396314.P10152392728617049558

/-! ## A396314.P6118881267612977073

`lt[A007947(n+1), A159630(n+1)]+1`
-/

namespace A396314.P6118881267612977073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396314.P6118881267612977073

/-! ## A396314.P8165165929638710871

`lt[A322589(n+1), A294886(A124859(n+1))]+1`
-/

namespace A396314.P8165165929638710871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (A124859 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396314.P8165165929638710871

/-! ## A396314.P1378178332594814037

`lt[A327473(n+1), A102631(n+1)]+1`
-/

namespace A396314.P1378178332594814037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396314.P1378178332594814037

/-!
# A396315: a(n) = Sum_{r=0..n} 2^(r*(n-r))*Sum_{s=0..r} 2^(s*(r-s)).

The programs for A396315, there is no canonical definition to state claims against.
-/

/-! ## A396315.P5163133118282808189

`A397208(∑[(n+3)!])`
-/

namespace A396315.P5163133118282808189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396315.P5163133118282808189

/-!
# A396316: Numerator of the largest abundancy of any proper divisor of n as a fraction of the abundancy of n.

The programs for A396316, there is no canonical definition to state claims against.
-/

/-! ## A396316.P3731560534977494059

`A396319(n+2)-1`
-/

namespace A396316.P3731560534977494059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396319 (n + 2) - 1

end

end A396316.P3731560534977494059

/-! ## A396316.P18332031276622138274

`A023443(A396319(n+2))`
-/

namespace A396316.P18332031276622138274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A396319 (n + 2)).toNat

end

end A396316.P18332031276622138274

/-! ## A396316.P16158658225637646189

`A289207(A396319(n+2)+1)`
-/

namespace A396316.P16158658225637646189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A396319 (n + 2) + 1).toNat

end

end A396316.P16158658225637646189

/-! ## A396316.P1719612264321227706

`A002260(C(A396319(n+2), 2))`
-/

namespace A396316.P1719612264321227706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A396319 (n + 2)).toNat 2)

end

end A396316.P1719612264321227706

/-!
# A396317: Number of n X n binary matrices with exactly 8 1's such that there are an even number of 1's in every row and column.

The programs for A396317, the canonical program `A396317.P8377799462079475610` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396317 has offset 0).

The definition of A396317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396317.P8377799462079475610

`90*C(n, 4)²+36*C(n, 4)*C(n, 3)+2*C(n, 2)*C(n, 4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396317

/-- `90*C(n, 4)²+36*C(n, 4)*C(n, 3)+2*C(n, 2)*C(n, 4)` -/
def P8377799462079475610.Spec : Prop :=
  ∀ n, (P8377799462079475610.a n : ℤ) = A396317 n

theorem P8377799462079475610.correct : P8377799462079475610.Spec := by
  intro n
  simp only [A396317]

end A396317

/-! ## A396317.P12981670887731330632

`n²*(n-3)*(n-2)*(n-1)²*(3*n*(5*n-17)+46)/96`
-/

namespace A396317.P12981670887731330632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n : ℤ) - 3) * ((n : ℤ) - 2) * ((n : ℤ) - 1) ^ 2 * ((3 * n : ℤ) * ((5 * n : ℤ) - 17) + 46) : ℚ) / 96

end

end A396317.P12981670887731330632

namespace A396317

/-- `n²*(n-3)*(n-2)*(n-1)²*(3*n*(5*n-17)+46)/96` -/
def P12981670887731330632.Spec : Prop :=
  ∀ n, P12981670887731330632.a n = (A396317 n : ℚ)

theorem P12981670887731330632.correct : P12981670887731330632.Spec := by
  intro n
  simp only [A396317, Nat.add_sub_cancel, A396317.P12981670887731330632.a, A396317.P8377799462079475610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396317

/-! ## A396317.P5655833272983576467

`90*C(n, 4)²+36*C(n, 4)*C(n, 3)+(n²-n)*C(n, 4)`
-/

namespace A396317.P5655833272983576467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * Nat.choose n 4 ^ 2 + 36 * Nat.choose n 4 * Nat.choose n 3 : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ)) * (Nat.choose n 4 : ℤ)

end

end A396317.P5655833272983576467

namespace A396317

/-- `90*C(n, 4)²+36*C(n, 4)*C(n, 3)+(n²-n)*C(n, 4)` -/
def P5655833272983576467.Spec : Prop :=
  ∀ n, P5655833272983576467.a n = A396317 n

theorem P5655833272983576467.correct : P5655833272983576467.Spec := by
  intro n
  simp only [A396317, Nat.add_sub_cancel, A396317.P5655833272983576467.a, A396317.P8377799462079475610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396317

/-!
# A396319: Denominator of the largest abundancy of any proper divisor of n as a fraction of the abundancy of n.

The programs for A396319, there is no canonical definition to state claims against.
-/

/-! ## A396319.P7801369629319913844

`A396316(n+2)+1`
-/

namespace A396319.P7801369629319913844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396316 (n + 2) + 1

end

end A396319.P7801369629319913844

/-! ## A396319.P14314259778329653226

`A020725(A396316(2+n))`
-/

namespace A396319.P14314259778329653226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A396316 (2 + n)).toNat

end

end A396319.P14314259778329653226

/-! ## A396319.P8996863889116747482

`A031285(A396316(n+2))`
-/

namespace A396319.P8996863889116747482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A396316 (n + 2)).toNat

end

end A396319.P8996863889116747482

/-! ## A396319.P13176680373153979049

`A000203(A354933(n+2)%A119715(3*n+2))`
-/

namespace A396319.P13176680373153979049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A354933 (n + 2)) (A119715 (3 * n + 2))).toNat

end

end A396319.P13176680373153979049

/-! ## A396319.P16314414817529889924

`A000203(A034699(n+2))%A000043(3*n+5)`
-/

namespace A396319.P16314414817529889924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A034699 (n + 2)).toNat) (A000043 (3 * n + 5))

end

end A396319.P16314414817529889924

/-!
# A396321: Number of n X n binary matrices with exactly 10 1's such that there are an even number of 1's in every row and column.

The programs for A396321, the canonical program `A396321.P1360173914200064195` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396321 has offset 1).

The definition of A396321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396321.P1360173914200064195

`(n-2)*(n-1)²*n²*(n+1)²*((n+1)*((n+1)*(17*(n+1)-127)+300)-236)/120`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396321

/-- `(n-2)*(n-1)²*n²*(n+1)²*((n+1)*((n+1)*(17*(n+1)-127)+300)-236)/120` -/
def P1360173914200064195.Spec : Prop :=
  ∀ n, P1360173914200064195.a n = (A396321 (n + 1) : ℚ)

end A396321

/-!
# A396322: Expansion of e.g.f. exp(x)*(cosh(x)-1)*(sinh(x)-x).

The programs for A396322, the canonical program `A396322.P11753024341592081400` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396322 has offset 0).

The definition of A396322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396322.P11753024341592081400

`ogf((10x^5-20x^6+6x^7)/(1-8x+22x^2-20x^3-11x^4+28x^5-12x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396322

/-- `ogf((10x^5-20x^6+6x^7)/(1-8x+22x^2-20x^3-11x^4+28x^5-12x^6))` -/
def P11753024341592081400.Spec : Prop :=
  ∀ n, P11753024341592081400.a n = A396322 n

theorem P11753024341592081400.correct : P11753024341592081400.Spec := by
  intro n
  simp only [A396322]

end A396322

/-! ## A396322.P11496714534051663398

`A212621(A080635(abs(2-n)))`
-/

namespace A396322.P11496714534051663398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212621 (A080635 |2 - (n : ℤ)|.toNat).toNat

end

end A396322.P11496714534051663398

namespace A396322

/-- `A212621(A080635(abs(2-n)))` -/
def P11496714534051663398.Spec : Prop :=
  ∀ n, P11496714534051663398.a n = A396322 n

end A396322

/-! ## A396322.P3736238503509960754

`A337683(A006720(n+1))*n`
-/

namespace A396322.P3736238503509960754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337683 (A006720 (n + 1)).toNat * (n : ℤ)

end

end A396322.P3736238503509960754

namespace A396322

/-- `A337683(A006720(n+1))*n` -/
def P3736238503509960754.Spec : Prop :=
  ∀ n, P3736238503509960754.a n = A396322 n

end A396322

/-! ## A396322.P13182134030052337505

`A000111(n)-A010879(A323293(n))`
-/

namespace A396322.P13182134030052337505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A010879 (A323293 n).toNat

end

end A396322.P13182134030052337505

namespace A396322

/-- `A000111(n)-A010879(A323293(n))` -/
def P13182134030052337505.Spec : Prop :=
  ∀ n, P13182134030052337505.a n = A396322 n

end A396322

/-!
# A396323: Numbers that are neither cubefree nor powerful with at least 3 distinct prime factors.

The programs for A396323, the canonical program `A396323.P6518160970652980328` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396323 has offset 1).

The definition of A396323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396323.P6518160970652980328

`filter[A391319(n+1), A379958(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A396323

/-- `filter[A391319(n+1), A379958(#)]` -/
def P6518160970652980328.Spec : Prop :=
  ∀ n, P6518160970652980328.a n = A396323 (n + 1)

theorem P6518160970652980328.correct : P6518160970652980328.Spec := by
  intro n
  simp only [A396323, Nat.add_sub_cancel]

end A396323

/-! ## A396323.P9208555650305151695

`∩[A320632(n+1), A391319(n+1)]`
-/

namespace A396323.P9208555650305151695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P9208555650305151695

namespace A396323

/-- `∩[A320632(n+1), A391319(n+1)]` -/
def P9208555650305151695.Spec : Prop :=
  ∀ n, (P9208555650305151695.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P644951051553303408

`∩[A102562(n+1), A391319(n+1)]`
-/

namespace A396323.P644951051553303408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P644951051553303408

namespace A396323

/-- `∩[A102562(n+1), A391319(n+1)]` -/
def P644951051553303408.Spec : Prop :=
  ∀ n, (P644951051553303408.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P629647729736026496

`∩[A046099(n+1), A390949(n+1)]`
-/

namespace A396323.P629647729736026496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P629647729736026496

namespace A396323

/-- `∩[A046099(n+1), A390949(n+1)]` -/
def P629647729736026496.Spec : Prop :=
  ∀ n, (P629647729736026496.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P2562303429418628709

`∩[A074451(n+1), A390949(n+1)]`
-/

namespace A396323.P2562303429418628709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P2562303429418628709

namespace A396323

/-- `∩[A074451(n+1), A390949(n+1)]` -/
def P2562303429418628709.Spec : Prop :=
  ∀ n, (P2562303429418628709.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P7360344640836722185

`∩[A362148(n+1), A390949(n+1)]`
-/

namespace A396323.P7360344640836722185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P7360344640836722185

namespace A396323

/-- `∩[A362148(n+1), A390949(n+1)]` -/
def P7360344640836722185.Spec : Prop :=
  ∀ n, (P7360344640836722185.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P13747001378706507568

`∩[A378767(n+1), A390949(n+1)]`
-/

namespace A396323.P13747001378706507568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P13747001378706507568

namespace A396323

/-- `∩[A378767(n+1), A390949(n+1)]` -/
def P13747001378706507568.Spec : Prop :=
  ∀ n, (P13747001378706507568.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P16573008135834388682

`∩[A388305(n+1), A391319(n+1)]`
-/

namespace A396323.P16573008135834388682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P16573008135834388682

namespace A396323

/-- `∩[A388305(n+1), A391319(n+1)]` -/
def P16573008135834388682.Spec : Prop :=
  ∀ n, (P16573008135834388682.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P3797571949426735443

`∩[A375055(n+1), A391319(n+1)]`
-/

namespace A396323.P3797571949426735443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P3797571949426735443

namespace A396323

/-- `∩[A375055(n+1), A391319(n+1)]` -/
def P3797571949426735443.Spec : Prop :=
  ∀ n, (P3797571949426735443.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P5818151761540670378

`∩[A328957(n+1), A391319(n+1)]`
-/

namespace A396323.P5818151761540670378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P5818151761540670378

namespace A396323

/-- `∩[A328957(n+1), A391319(n+1)]` -/
def P5818151761540670378.Spec : Prop :=
  ∀ n, (P5818151761540670378.a n : ℤ) = A396323 (n + 1)

end A396323

/-! ## A396323.P7859413584278082599

`∩[A000977(n+1), A391319(n+1)]`
-/

namespace A396323.P7859413584278082599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396323.P7859413584278082599

namespace A396323

/-- `∩[A000977(n+1), A391319(n+1)]` -/
def P7859413584278082599.Spec : Prop :=
  ∀ n, (P7859413584278082599.a n : ℤ) = A396323 (n + 1)

end A396323

/-!
# A396324: Numbers k for which there exists a residue class r (mod k) with s = r+m*k, m >= 0, such that rad(s) | gcd(s,k), where rad = A007947.

The programs for A396324, there is no canonical definition to state claims against.
-/

/-! ## A396324.P11888875315088260222

`lt[0, A395984(n+1)]+1`
-/

namespace A396324.P11888875315088260222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A396324.P11888875315088260222

/-! ## A396324.P13053130323821542029

`comp[A000290(n)*A395984(n+1)+n]+1`
-/

namespace A396324.P13053130323821542029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A395984 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P13053130323821542029

/-! ## A396324.P10909754462821890745

`comp[A048950(n+1)*A395984(n+1)+n]+1`
-/

namespace A396324.P10909754462821890745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048950 (n + 1) * A395984 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P10909754462821890745

/-! ## A396324.P9611749069254152877

`comp[A065049(2*(n+2))*A395984(n+1)+n]+1`
-/

namespace A396324.P9611749069254152877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065049 (2 * (n + 2)) * A395984 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P9611749069254152877

/-! ## A396324.P3867090633820098795

`comp[A032302(2*n+3)*A395984(n+1)+n]+1`
-/

namespace A396324.P3867090633820098795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032302 (2 * n + 3) * A395984 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P3867090633820098795

/-! ## A396324.P16489709459011016304

`comp[A277961(3*n+5)*A395984(n+1)+n]+1`
-/

namespace A396324.P16489709459011016304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277961 (3 * n + 5) * A395984 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P16489709459011016304

/-! ## A396324.P7890251214488267768

`comp[A395080(n)*A395984(n+1)+n]+1`
-/

namespace A396324.P7890251214488267768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395080 n * A395984 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P7890251214488267768

/-! ## A396324.P5654463494091700647

`lt[0, A395984(A233583(n+1))]`
-/

namespace A396324.P5654463494091700647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396324.P5654463494091700647

/-! ## A396324.P2711662114504107861

`comp[A395984(n+1)*A396020(n+1)+n]+1`
-/

namespace A396324.P2711662114504107861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 (n + 1) * A396020 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396324.P2711662114504107861

/-!
# A396334: Nonnegative integers that are palindromes in both binary and balanced ternary.

The programs for A396334, there is no canonical definition to state claims against.
-/

/-! ## A396334.P12238610297685355392

`∩[A006995(n+1), A134027(n+1)]`
-/

namespace A396334.P12238610297685355392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396334.P12238610297685355392

/-! ## A396334.P13871186467985283986

`∩[A134027(n+1), A180204(n+1)]`
-/

namespace A396334.P13871186467985283986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396334.P13871186467985283986

/-! ## A396334.P17115355273391544056

`filter[A134027(n+1), A178225(#)]`
-/

namespace A396334.P17115355273391544056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A396334.P17115355273391544056

/-!
# A396335: Primes of the form k^2 + prime(k)^2.

The programs for A396335, there is no canonical definition to state claims against.
-/

/-! ## A396335.P9611201772448925424

`A106587(A177150(n+1))`
-/

namespace A396335.P9611201772448925424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (A177150 (n + 1)).toNat

end

end A396335.P9611201772448925424

/-! ## A396335.P2864084644004147576

`p?[A106587(n+1)]`
-/

namespace A396335.P2864084644004147576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396335.P2864084644004147576

/-! ## A396335.P4811546490698054329

`filter[A106587(n+1), A010051(#)]`
-/

namespace A396335.P4811546490698054329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396335.P4811546490698054329

/-! ## A396335.P2134857096015792153

`filter[A106587(n+1), A069513(#)]`
-/

namespace A396335.P2134857096015792153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A396335.P2134857096015792153

/-! ## A396335.P15407247416040118839

`filter[A106587(n+1), A324290(#)]`
-/

namespace A396335.P15407247416040118839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A396335.P15407247416040118839

/-!
# A396336: Dirichlet convolution of A047994 with A023900.

The programs for A396336, the canonical program `A396336.P13045972141286078433` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396336 has offset 1).

The definition of A396336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396336.P1783827650138767285

`∏{p}[n+1, #-1]*∏{e}[n+1, #-1]`
-/

namespace A396336.P1783827650138767285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * (∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1))

end

end A396336.P1783827650138767285

namespace A396336

/-- `∏{p}[n+1, #-1]*∏{e}[n+1, #-1]` -/
def P1783827650138767285.Spec : Prop :=
  ∀ n, P1783827650138767285.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P12984006851240676556

`∏{e}[n+1, #-1]*A322351(n+1)`
-/

namespace A396336.P12984006851240676556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) * A322351 (n + 1)

end

end A396336.P12984006851240676556

namespace A396336

/-- `∏{e}[n+1, #-1]*A322351(n+1)` -/
def P12984006851240676556.Spec : Prop :=
  ∀ n, P12984006851240676556.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P11557029863529690492

`A173557(n+1)*A361430(n+1)`
-/

namespace A396336.P11557029863529690492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A361430 (n + 1)

end

end A396336.P11557029863529690492

namespace A396336

/-- `A173557(n+1)*A361430(n+1)` -/
def P11557029863529690492.Spec : Prop :=
  ∀ n, P11557029863529690492.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P3520349840842987215

`A322351(n+1)*A361430(n+1)`
-/

namespace A396336.P3520349840842987215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322351 (n + 1) * A361430 (n + 1)

end

end A396336.P3520349840842987215

namespace A396336

/-- `A322351(n+1)*A361430(n+1)` -/
def P3520349840842987215.Spec : Prop :=
  ∀ n, P3520349840842987215.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P6378952276605328190

`∑{d}[n+1, A023900(#)*A047994((n+1)/#)]`
-/

namespace A396336.P6378952276605328190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P6378952276605328190

namespace A396336

/-- `∑{d}[n+1, A023900(#)*A047994((n+1)/#)]` -/
def P6378952276605328190.Spec : Prop :=
  ∀ n, P6378952276605328190.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P12259209144446129862

`∑{d}[n+1, A062949(#)*A101035((n+1)/#)]`
-/

namespace A396336.P12259209144446129862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062949 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P12259209144446129862

namespace A396336

/-- `∑{d}[n+1, A062949(#)*A101035((n+1)/#)]` -/
def P12259209144446129862.Spec : Prop :=
  ∀ n, P12259209144446129862.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P13045972141286078433

`∑{d}[n+1, A055615(#)*A333645((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A396336

/-- `∑{d}[n+1, A055615(#)*A333645((n+1)/#)]` -/
def P13045972141286078433.Spec : Prop :=
  ∀ n, P13045972141286078433.a n = A396336 (n + 1)

theorem P13045972141286078433.correct : P13045972141286078433.Spec := by
  intro n
  simp only [A396336, Nat.add_sub_cancel]

end A396336

/-! ## A396336.P8374474275893626752

`∑{d}[n+1, A062355(#)*A328641((n+1)/#)]`
-/

namespace A396336.P8374474275893626752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062355 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P8374474275893626752

namespace A396336

/-- `∑{d}[n+1, A062355(#)*A328641((n+1)/#)]` -/
def P8374474275893626752.Spec : Prop :=
  ∀ n, P8374474275893626752.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P9329220514449994306

`∑{d}[n+1, A328722(#)*A341636((n+1)/#)]`
-/

namespace A396336.P9329220514449994306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A341636 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P9329220514449994306

namespace A396336

/-- `∑{d}[n+1, A328722(#)*A341636((n+1)/#)]` -/
def P9329220514449994306.Spec : Prop :=
  ∀ n, P9329220514449994306.a n = A396336 (n + 1)

end A396336

/-! ## A396336.P6908508281336338330

`A117212(n+1)*A298826(n+1)`
-/

namespace A396336.P6908508281336338330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117212 (n + 1) * A298826 (n + 1)

end

end A396336.P6908508281336338330

namespace A396336

/-- `A117212(n+1)*A298826(n+1)` -/
def P6908508281336338330.Spec : Prop :=
  ∀ n, P6908508281336338330.a n = A396336 (n + 1)

end A396336

/-!
# A396339: Number of permutations p of [n] whose prefix sums Sum_{i=1..k} p(i) avoid triangular numbers for 1 <= k < n.

The programs for A396339, there is no canonical definition to state claims against.
-/

/-! ## A396339.P15130917670018583988

`A211006(A010748(n))`
-/

namespace A396339.P15130917670018583988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211006 (A010748 n).toNat

end

end A396339.P15130917670018583988

/-! ## A396339.P4929876069416503098

`A383193(A049150(n))`
-/

namespace A396339.P4929876069416503098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383193 (A049150 n).toNat

end

end A396339.P4929876069416503098

/-! ## A396339.P4983639237545064372

`A339903(A150916(n))`
-/

namespace A396339.P4983639237545064372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339903 (A150916 n).toNat

end

end A396339.P4983639237545064372

/-!
# A396340: Primes prime(k) such that prime(k) - prime(k-1) is a Fibonacci number.

The programs for A396340, there is no canonical definition to state claims against.
-/

/-! ## A396340.P12724909533940966539

`∪[A006530(A037074(n+1)), A084725(n+1)]`
-/

namespace A396340.P12724909533940966539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A037074 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396340.P12724909533940966539

/-! ## A396340.P11139696182881556671

`A067829(n+1)-A336104(A101624(n))`
-/

namespace A396340.P11139696182881556671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - A336104 (A101624 n).toNat

end

end A396340.P11139696182881556671

/-! ## A396340.P1457651453579232829

`∪[A006512(n+1), A379750(A059839(n))]`
-/

namespace A396340.P1457651453579232829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379750 (A059839 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396340.P1457651453579232829

/-! ## A396340.P9365770609003950019

`∪[A006512(n+1), A384058(A129226(n))]`
-/

namespace A396340.P9365770609003950019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384058 (A129226 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396340.P9365770609003950019

/-! ## A396340.P4186928363524649232

`∪[A001097(2*n+1), A092835(A033936(n))]`
-/

namespace A396340.P4186928363524649232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092835 (A033936 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396340.P4186928363524649232

/-!
# A396344: Expansion of x * (3+4*x-7*x^2-6*x^3-x^4-4*x^5+3*x^6+2*x^7)/((1-x) * (1+x) * (1-3*x^2-x^4+x^6)).

The programs for A396344, the canonical program `A396344.P15016918885993711818` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396344 has offset 1).

The definition of A396344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))` (program `A396344.P15016918885993711818`, by `A396344.P15016918885993711818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396344.P15016918885993711818

`ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396344

/-- `ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))` -/
def P15016918885993711818.Spec : Prop :=
  ∀ n, P15016918885993711818.a n = A396344 (n + 1)

theorem P15016918885993711818.correct : P15016918885993711818.Spec := by
  intro n
  simp only [A396344, Nat.add_sub_cancel]

end A396344

/-! ## A396344.P6303265132762839775

`4*a(n-2)-2*a(n-4)-2*a(n-6)+a(n-8)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=10, a(4)=13, a(5)=28, a(6)=39, a(7)=86`
-/

namespace A396344.P6303265132762839775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 10, 13, 28, 39, 86] fun n a =>
  4 * a (n - 2) - 2 * a (n - 4) - 2 * a (n - 6) + a (n - 8)

end

end A396344.P6303265132762839775

namespace A396344

/-- `4*a(n-2)-2*a(n-4)-2*a(n-6)+a(n-8)` -/
def P6303265132762839775.Spec : Prop :=
  ∀ n, P6303265132762839775.a n = A396344 (n + 1)

end A396344

/-! ## A396344.P3079710311546505329

`A396347(A396345(1+n))`
-/

namespace A396344.P3079710311546505329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396347 (A396345 (1 + n)).toNat

end

end A396344.P3079710311546505329

namespace A396344

/-- `A396347(A396345(1+n))` -/
def P3079710311546505329.Spec : Prop :=
  ∀ n, P3079710311546505329.a n = A396344 (n + 1)

end A396344

/-! ## A396344.P8615219986897090765

`A396347(record[A396346(n+3)])`
-/

namespace A396344.P8615219986897090765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396346 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A396344.P8615219986897090765

namespace A396344

/-- `A396347(record[A396346(n+3)])` -/
def P8615219986897090765.Spec : Prop :=
  ∀ n, P8615219986897090765.a n = A396344 (n + 1)

end A396344

/-!
# A396345: Expansion of x * (3+3*x-8*x^2-3*x^3+2*x^4-3*x^5+4*x^6+x^7-x^8)/((1-x)^2 * (1+x) * (1-3*x^2-x^4+x^6)).

The programs for A396345, the canonical program `A396345.P1990905254869130227` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396345 has offset 1).

The definition of A396345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))` (program `A396345.P1990905254869130227`, by `A396345.P1990905254869130227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396345.P1990905254869130227

`ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396345

/-- `ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))` -/
def P1990905254869130227.Spec : Prop :=
  ∀ n, P1990905254869130227.a n = A396345 (n + 1)

theorem P1990905254869130227.correct : P1990905254869130227.Spec := by
  intro n
  simp only [A396345, Nat.add_sub_cancel]

end A396345

/-! ## A396345.P17392244955359150560

`∑[A396344(1+n)]-n`
-/

namespace A396345.P17392244955359150560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396344 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A396345.P17392244955359150560

namespace A396345

/-- `∑[A396344(1+n)]-n` -/
def P17392244955359150560.Spec : Prop :=
  ∀ n, P17392244955359150560.a n = A396345 (n + 1)

end A396345

/-! ## A396345.P14490303222909090432

`∑[A396344(n+1)+A057428(n)]`
-/

namespace A396345.P14490303222909090432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396344 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396345.P14490303222909090432

namespace A396345

/-- `∑[A396344(n+1)+A057428(n)]` -/
def P14490303222909090432.Spec : Prop :=
  ∀ n, P14490303222909090432.a n = A396345 (n + 1)

end A396345

/-! ## A396345.P15072582772989553206

`A001057(2*n)+∑[A396344(n+1)]`
-/

namespace A396345.P15072582772989553206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396345.P15072582772989553206

namespace A396345

/-- `A001057(2*n)+∑[A396344(n+1)]` -/
def P15072582772989553206.Spec : Prop :=
  ∀ n, P15072582772989553206.a n = A396345 (n + 1)

end A396345

/-! ## A396345.P11226283989177442021

`record[A396346(n+3)]`
-/

namespace A396345.P11226283989177442021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396346 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396345.P11226283989177442021

namespace A396345

/-- `record[A396346(n+3)]` -/
def P11226283989177442021.Spec : Prop :=
  ∀ n, P11226283989177442021.a n = A396345 (n + 1)

end A396345

/-!
# A396347: Least k such that A396346(k) = n.

The programs for A396347, there is no canonical definition to state claims against.
-/

/-! ## A396347.P4790434868132119925

`fo[A396346(n)]`
-/

namespace A396347.P4790434868132119925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A396347.P4790434868132119925

/-!
# A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

The programs for A396348, the canonical program `A396348.P16602830164095250324` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396348 has offset 1).

The definition of A396348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396348.P16602830164095250324

`A000040(col(n)+1)^A249344(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A396348

/-- `A000040(col(n)+1)^A249344(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1)` -/
def P16602830164095250324.Spec : Prop :=
  ∀ n, P16602830164095250324.a n = (A396348 (n + 1) : ℚ)

end A396348

/-! ## A396348.P3604061063505832311

`A060176(A278818(n))`
-/

namespace A396348.P3604061063505832311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A278818 n).toNat

end

end A396348.P3604061063505832311

namespace A396348

/-- `A060176(A278818(n))` -/
def P3604061063505832311.Spec : Prop :=
  ∀ n, P3604061063505832311.a n = A396348 (n + 1)

end A396348

/-! ## A396348.P13092462153322042456

`A060176(A038722(1+n))`
-/

namespace A396348.P13092462153322042456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A038722 (1 + n)).toNat

end

end A396348.P13092462153322042456

namespace A396348

/-- `A060176(A038722(1+n))` -/
def P13092462153322042456.Spec : Prop :=
  ∀ n, P13092462153322042456.a n = A396348 (n + 1)

end A396348

/-! ## A396348.P9310174807208931916

`A060176(A114327(n)+n+1)`
-/

namespace A396348.P9310174807208931916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A114327 n + (n : ℤ) + 1).toNat

end

end A396348.P9310174807208931916

namespace A396348

/-- `A060176(A114327(n)+n+1)` -/
def P9310174807208931916.Spec : Prop :=
  ∀ n, P9310174807208931916.a n = A396348 (n + 1)

end A396348

/-! ## A396348.P14968047835634143995

`A000040(col(n)+1)^A249344(n+1)`
-/

namespace A396348.P14968047835634143995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.triCol n + 1) : ℚ) ^ (A249344 (n + 1) : ℤ)

end

end A396348.P14968047835634143995

namespace A396348

/-- `A000040(col(n)+1)^A249344(n+1)` -/
def P14968047835634143995.Spec : Prop :=
  ∀ n, P14968047835634143995.a n = (A396348 (n + 1) : ℚ)

end A396348

/-! ## A396348.P11231553889494448780

`A000040(A002260(n+1))^A249344(n+1)`
-/

namespace A396348.P11231553889494448780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A002260 (n + 1)).toNat : ℚ) ^ (A249344 (n + 1) : ℤ)

end

end A396348.P11231553889494448780

namespace A396348

/-- `A000040(A002260(n+1))^A249344(n+1)` -/
def P11231553889494448780.Spec : Prop :=
  ∀ n, P11231553889494448780.a n = (A396348 (n + 1) : ℚ)

end A396348

/-! ## A396348.P11857084434833824677

`gcd(A059896(n+1), A319075(n))`
-/

namespace A396348.P11857084434833824677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059896 (n + 1)) (A319075 n)

end

end A396348.P11857084434833824677

namespace A396348

/-- `gcd(A059896(n+1), A319075(n))` -/
def P11857084434833824677.Spec : Prop :=
  ∀ n, (P11857084434833824677.a n : ℤ) = A396348 (n + 1)

end A396348

/-! ## A396348.P4589777526881726991

`gcd(A141157(n), A182944(n+1))`
-/

namespace A396348.P4589777526881726991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141157 n) (A182944 (n + 1))

end

end A396348.P4589777526881726991

namespace A396348

/-- `gcd(A141157(n), A182944(n+1))` -/
def P4589777526881726991.Spec : Prop :=
  ∀ n, (P4589777526881726991.a n : ℤ) = A396348 (n + 1)

end A396348

/-!
# A396352: Number of rooted binary unlabeled general galled trees with n leaves.

The programs for A396352, there is no canonical definition to state claims against.
-/

/-! ## A396352.P10280548617698099277

`A109436(A066369(n))`
-/

namespace A396352.P10280548617698099277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109436 (A066369 n).toNat

end

end A396352.P10280548617698099277

/-! ## A396352.P15194833430906920489

`A008616(A026004(n)+n)`
-/

namespace A396352.P15194833430906920489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A026004 n + (n : ℤ)).toNat

end

end A396352.P15194833430906920489

/-!
# A396353: Number of unsatisfiable 3-SAT formulas with n variables and 3 clauses in the multiset clause model.

The programs for A396353, the canonical program `A396353.P14220741429290017551` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396353 has offset 1).

The definition of A396353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396353.P7448405676561385034

`ogf((4+44x-40x^2+24x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A396353.P7448405676561385034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 44, -40, 24] [1, -5, 10, -10, 5, -1] n

end

end A396353.P7448405676561385034

namespace A396353

/-- `ogf((4+44x-40x^2+24x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P7448405676561385034.Spec : Prop :=
  ∀ n, P7448405676561385034.a n = A396353 (n + 1)

end A396353

/-! ## A396353.P14220741429290017551

`2*(n+1)*(2*(n+1)^3+3*(n+1)²+19*(n+1)-18)/3`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396353

/-- `2*(n+1)*(2*(n+1)^3+3*(n+1)²+19*(n+1)-18)/3` -/
def P14220741429290017551.Spec : Prop :=
  ∀ n, P14220741429290017551.a n = (A396353 (n + 1) : ℚ)

end A396353

/-! ## A396353.P9331261132881578419

`A396351(∑[3+n]+1)`
-/

namespace A396353.P9331261132881578419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A396353.P9331261132881578419

namespace A396353

/-- `A396351(∑[3+n]+1)` -/
def P9331261132881578419.Spec : Prop :=
  ∀ n, P9331261132881578419.a n = A396353 (n + 1)

end A396353

/-!
# A396354: Number of unsatisfiable 3-SAT formulas with n variables and 4 clauses in the multiset clause model.

The programs for A396354, there is no canonical definition to state claims against.
-/

/-! ## A396354.P11878781839367877496

`A396351(∑[n+4]+3)`
-/

namespace A396354.P11878781839367877496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A396354.P11878781839367877496

/-!
# A396358: a(n) = J((n-1)*(n+1))/(J(n-1)*J(n+1)), where J(n) is the n-th Jacobsthal number A001045(n).

The programs for A396358, there is no canonical definition to state claims against.
-/

/-! ## A396358.P7396867438168927381

`A327349(2+a(n-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A396358.P7396867438168927381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A327349 (2 + a (n - 1)).toNat

end

end A396358.P7396867438168927381

/-!
# A396364: Triangle T(n, k) read by rows: number of graphs in A396149 on n vertices containing exactly k triangles, for n >= 0, 0 <= k <= binomial(n, 3).

The programs for A396364, there is no canonical definition to state claims against.
-/

/-! ## A396364.P7001092973636337282

`A366851(and(A006073(n+1), A279437(3*n+4)))`
-/

namespace A396364.P7001092973636337282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366851 (Int.land (A006073 (n + 1)) (A279437 (3 * n + 4))).toNat

end

end A396364.P7001092973636337282

/-! ## A396364.P15736793938815404914

`A025448(A004523(2*(n+1))*A270890(n+2))`
-/

namespace A396364.P15736793938815404914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 (A004523 (2 * (n + 1)) * A270890 (n + 2)).toNat

end

end A396364.P15736793938815404914

/-! ## A396364.P18024519017630788494

`A325414(A068932(n)%A015723(n+1))`
-/

namespace A396364.P18024519017630788494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 (Int.tmod (A068932 n) (A015723 (n + 1))).toNat

end

end A396364.P18024519017630788494

/-! ## A396364.P16781404145618752393

`A306383(A389742(2*(n+1))%A248519(3*n))`
-/

namespace A396364.P16781404145618752393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306383 (Int.tmod (A389742 (2 * (n + 1))) (A248519 (3 * n))).toNat

end

end A396364.P16781404145618752393

/-! ## A396364.P15012072264454765650

`A001899(7*(record[A143591(n+1)]+1)-2)`
-/

namespace A396364.P15012072264454765650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (7 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) - 2).toNat

end

end A396364.P15012072264454765650

/-!
# A396379: Fixed points of A396378: integers m so that m is the smallest integer of the interval (m, m+1, ..., m+A396377(m)) that divides the product of the other integers.

The programs for A396379, there is no canonical definition to state claims against.
-/

/-! ## A396379.P11121324613556666372

`record[A396378(n+1)%(n+2)]`
-/

namespace A396379.P11121324613556666372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396378 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396379.P11121324613556666372

/-! ## A396379.P8681764223842680565

`eq[n, A396378(A028310(n))]`
-/

namespace A396379.P8681764223842680565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396378 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396379.P8681764223842680565

/-! ## A396379.P8431483603468119033

`eq[A000027(n+1), A396378(n+1)]+1`
-/

namespace A396379.P8431483603468119033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396379.P8431483603468119033

/-! ## A396379.P11289753656339533621

`A009087(n+1)-A304327(A281754(n))`
-/

namespace A396379.P11289753656339533621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1) - A304327 (A281754 n).toNat

end

end A396379.P11289753656339533621

/-! ## A396379.P10925533354775292478

`A050376(n+1)-A304327(A281754(n))`
-/

namespace A396379.P10925533354775292478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - A304327 (A281754 n).toNat

end

end A396379.P10925533354775292478

/-!
# A396381: Bi-unitary half-Zumkeller numbers: numbers whose set of bi-unitary proper divisors can be partitioned into two disjoint subsets of equal sum.

The programs for A396381, there is no canonical definition to state claims against.
-/

/-! ## A396381.P12717996340922143572

`∩[A094519(n+1), A227760(n+1)]`
-/

namespace A396381.P12717996340922143572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396381.P12717996340922143572

/-! ## A396381.P4224172635995034360

`A023196(comp[A179850(2*(n+1))*A198243(3*(n+1))])`
-/

namespace A396381.P4224172635995034360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179850 (2 * (n + 1)) * A198243 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A396381.P4224172635995034360

/-! ## A396381.P8577203662451066630

`record[A083207(n+1)/A061680(A096818(n+1)+1)]`
-/

namespace A396381.P8577203662451066630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083207 (n + 1) : ℚ) / (A061680 (A096818 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396381.P8577203662451066630

/-! ## A396381.P17877784932121190076

`filter[A028776(n+1), A179527(#)]`
-/

namespace A396381.P17877784932121190076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A396381.P17877784932121190076

/-! ## A396381.P16623527420750757856

`filter[A028776(n+1), A210455(#)]`
-/

namespace A396381.P16623527420750757856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A396381.P16623527420750757856

/-!
# A396385: a(n) = r(n,n), where r(1,k)=f(k)=floor(k*c), r(n,k)=f(r(n-1,k)), c=3/2.

The programs for A396385, there is no canonical definition to state claims against.
-/

/-! ## A396385.P4031338645766960778

`A007494(A353220(n))+1`
-/

namespace A396385.P4031338645766960778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A353220 n).toNat + 1

end

end A396385.P4031338645766960778

/-! ## A396385.P7548983151825249105

`A184429(A285460(1+n))`
-/

namespace A396385.P7548983151825249105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (A285460 (1 + n)).toNat

end

end A396385.P7548983151825249105

/-! ## A396385.P421413758564416661

`A000712(n+1)-A296772(A067687(n))`
-/

namespace A396385.P421413758564416661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1) - A296772 (A067687 n).toNat

end

end A396385.P421413758564416661

/-!
# A396386: a(n) = r(n,n), where r(1,k)=f(k)=round(k*c), r(n,k)=f(r(n-1,k)), c=3/2, using banker's rounding.

The programs for A396386, there is no canonical definition to state claims against.
-/

/-! ## A396386.P5766063453967288785

`A096111(n)+A002024(A189416(n+1)+1)`
-/

namespace A396386.P5766063453967288785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 n + A002024 (A189416 (n + 1) + 1).toNat

end

end A396386.P5766063453967288785

/-!
# A396389: a(n) = r(n,n), where r(1,k)=f(k)=round(k*c), r(n,k)=f(r(n-1,k)), c=e.

The programs for A396389, there is no canonical definition to state claims against.
-/

/-! ## A396389.P10246088907438041293

`A194009(A132337(2*n+1))+A000108(n)`
-/

namespace A396389.P10246088907438041293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194009 (A132337 (2 * n + 1)).toNat + A000108 n

end

end A396389.P10246088907438041293

/-!
# A396391: a(n) = r(n,n), where r(1,k)=f(k)=ceiling(k*c), r(n,k)=f(r(n-1,k)), c=golden ratio.

The programs for A396391, there is no canonical definition to state claims against.
-/

/-! ## A396391.P12691842274421091440

`A320829(∑[∑[A020492(n+1)]])`
-/

namespace A396391.P12691842274421091440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320829 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A396391.P12691842274421091440

/-! ## A396391.P10305923404053949203

`A281470(n+1)-A102705(A005001(n))`
-/

namespace A396391.P10305923404053949203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281470 (n + 1) - A102705 (A005001 n).toNat

end

end A396391.P10305923404053949203

/-!
# A396392: a(n) = r(n,n), where r(1,k)=f(k)=round(k*c), r(n,k)=f(r(n-1,k)), c=golden ratio.

The programs for A396392, there is no canonical definition to state claims against.
-/

/-! ## A396392.P5134545273762521986

`A117741(A006261(n+1))`
-/

namespace A396392.P5134545273762521986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (A006261 (n + 1)).toNat

end

end A396392.P5134545273762521986

/-! ## A396392.P12000590390815136556

`A194366(A162214(n+1))-1`
-/

namespace A396392.P12000590390815136556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194366 (A162214 (n + 1)).toNat - 1

end

end A396392.P12000590390815136556

/-!
# A396393: a(n) = r(n,n), where r(1,k)=f(k)=floor(k*c), r(n,k)=f(r(n-1,k)), c=(golden ratio)^2.

The programs for A396393, there is no canonical definition to state claims against.
-/

/-! ## A396393.P3859383029017570154

`A396394(n+1)-A000045(2*(n+1))`
-/

namespace A396393.P3859383029017570154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396394 (n + 1) - A000045 (2 * (n + 1))

end

end A396393.P3859383029017570154

/-!
# A396394: a(n) = r(n,n), where r(1,k)=f(k)=ceiling(k*c), r(n,k)=f(r(n-1,k)), c=(golden ratio)^2.

The programs for A396394, there is no canonical definition to state claims against.
-/

/-! ## A396394.P4340330379865706183

`A396393(n+1)+A000045(2*(n+1))`
-/

namespace A396394.P4340330379865706183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396393 (n + 1) + A000045 (2 * (n + 1))

end

end A396394.P4340330379865706183

/-! ## A396394.P3989563037792411663

`A381607((n+1)*3^(n+1))`
-/

namespace A396394.P3989563037792411663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381607 ((n + 1) * 3 ^ (n + 1))

end

end A396394.P3989563037792411663

/-!
# A396398: a(n) = r(n,n), where r(1,k)=f(k)=round(k*c), r(n,k)=f(r(n-1,k)), c=sqrt(2).

The programs for A396398, there is no canonical definition to state claims against.
-/

/-! ## A396398.P6704984672594494188

`∑[record[A135223(A320843(n))]]`
-/

namespace A396398.P6704984672594494188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (A320843 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396398.P6704984672594494188

/-! ## A396398.P12313294349347988411

`A399180(A014417(n))+A276024(n+1)`
-/

namespace A396398.P12313294349347988411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399180 (A014417 n).toNat + A276024 (n + 1)

end

end A396398.P12313294349347988411

