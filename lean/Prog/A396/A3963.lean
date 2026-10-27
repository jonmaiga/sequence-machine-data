import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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

/-!
# A396301: a(n) is the value of the first term in the n-th block of A280864.

The programs for A396301, there is no canonical definition to state claims against.
-/

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

/-! ## A396301.P12069732517704627189

`∩[A186891(n+1), A346127(n+1)]`
-/

namespace A396301.P12069732517704627189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396301.P12069732517704627189

/-! ## A396301.P9815826331595309485

`∩[A257688(n+1), A346127(n+1)]`
-/

namespace A396301.P9815826331595309485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396301.P9815826331595309485

/-! ## A396301.P2807477295809323052

`∩[A257689(n+1), A346127(n+1)]`
-/

namespace A396301.P2807477295809323052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396301.P2807477295809323052

/-! ## A396301.P8001355093936620108

`∩[A257691(n+1), A346127(n+1)]`
-/

namespace A396301.P8001355093936620108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396301.P8001355093936620108

/-!
# A396302: Apply PrimePi (A000720) to A396301 and then take first differences.

The programs for A396302, there is no canonical definition to state claims against.
-/

/-! ## A396302.P15945941167367320065

`A397172(A099257(n+2))`
-/

namespace A396302.P15945941167367320065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397172 (A099257 (n + 2)).toNat

end

end A396302.P15945941167367320065

/-! ## A396302.P794311255970872472

`A171905(A156540(n))`
-/

namespace A396302.P794311255970872472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (A156540 n).toNat

end

end A396302.P794311255970872472

/-! ## A396302.P17767100668591365564

`A171905(A381426(n))`
-/

namespace A396302.P17767100668591365564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (A381426 n).toNat

end

end A396302.P17767100668591365564

/-! ## A396302.P17023833992360503457

`A171905(A195805(n+1))`
-/

namespace A396302.P17023833992360503457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (A195805 (n + 1)).toNat

end

end A396302.P17023833992360503457

/-! ## A396302.P14773222559301600245

`A367622(A218615(n+1))`
-/

namespace A396302.P14773222559301600245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367622 (A218615 (n + 1)).toNat

end

end A396302.P14773222559301600245

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

/-! ## A396303.P6031026592064832680

`filter[A396301(n+1), A353788(#)]`
-/

namespace A396303.P6031026592064832680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A396303.P6031026592064832680

/-!
# A396306: Initial terms of length-4 blocks in A280864.

The programs for A396306, there is no canonical definition to state claims against.
-/

/-! ## A396306.P16072039699487686963

`A396301(A396305(n+1))`
-/

namespace A396306.P16072039699487686963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (A396305 (n + 1)).toNat

end

end A396306.P16072039699487686963

/-!
# A396307: Final terms of length-4 blocks in A280864.

The programs for A396307, there is no canonical definition to state claims against.
-/

/-! ## A396307.P15117438251076991918

`A396300(A396305(n+1))`
-/

namespace A396307.P15117438251076991918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396300 (A396305 (n + 1)).toNat

end

end A396307.P15117438251076991918

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

The programs for A396310, the canonical program `A396310.P15637081066417192461` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396310 has offset 0).

The definition of A396310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396310.P15637081066417192461

`(8-7*n)²*n*(25*n-24)`

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A396311, the canonical program `A396311.P12780869091172628652` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396311 has offset 0).

The definition of A396311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396311.P12780869091172628652

`a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=8, a(5)=15, a(6)=31`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396311

/-- `a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` -/
def P12780869091172628652.Spec : Prop :=
  ∀ n, (P12780869091172628652.a n : ℤ) = A396311 n

theorem P12780869091172628652.correct : P12780869091172628652.Spec := by
  intro n
  simp only [A396311]

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

/-!
# A396312: Number of tilings of an (h+3) X n rectangle by unit squares and the Ferrers tile (h,2,2,1), for h >= 4.

The programs for A396312, there is no canonical definition to state claims against.
-/

/-! ## A396312.P1285893561816098780

`A392398(n)+A392374(A374632(n))`
-/

namespace A396312.P1285893561816098780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392398 n + A392374 (A374632 n).toNat

end

end A396312.P1285893561816098780

/-! ## A396312.P18372644446480101244

`A392398(n)+A226463(A297185(2*n+1))`
-/

namespace A396312.P18372644446480101244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392398 n + A226463 (A297185 (2 * n + 1)).toNat

end

end A396312.P18372644446480101244

/-!
# A396313: Number of tilings of a 5 X n rectangle by unit squares and the Ferrers tile (3,3,2).

The programs for A396313, the canonical program `A396313.P9142973888799398951` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396313 has offset 0).

The definition of A396313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396313.P9142973888799398951

`a(n-1)+3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396313

/-- `a(n-1)+3*a(n-3)+a(n-5)` -/
def P9142973888799398951.Spec : Prop :=
  ∀ n, (P9142973888799398951.a n : ℤ) = A396313 n

theorem P9142973888799398951.correct : P9142973888799398951.Spec := by
  intro n
  simp only [A396313]

end A396313

/-! ## A396313.P928131062106448621

`ogf(-1/(-1+x+3x^3+x^5))`
-/

namespace A396313.P928131062106448621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -3, 0, -1] n

end

end A396313.P928131062106448621

namespace A396313

/-- `ogf(-1/(-1+x+3x^3+x^5))` -/
def P928131062106448621.Spec : Prop :=
  ∀ n, P928131062106448621.a n = A396313 n

end A396313

/-!
# A396314: Numbers k > 1 for which A396316(k) is not the greatest prime factor of k.

The programs for A396314, there is no canonical definition to state claims against.
-/

/-! ## A396314.P9534254691579758413

`lt[A000010(A122111(n+1)+1), n+1]+1`
-/

namespace A396314.P9534254691579758413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A122111 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396314.P9534254691579758413

/-! ## A396314.P17121369701977936221

`lt[A358371(2*n+3), ∏{p}[n+1, #^val(n+1, #²)]²]+1`
-/

namespace A396314.P17121369701977936221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (2 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396314.P17121369701977936221

/-! ## A396314.P543581645169424719

`A034043(A077168(n+1))`
-/

namespace A396314.P543581645169424719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (A077168 (n + 1)).toNat

end

end A396314.P543581645169424719

/-! ## A396314.P1143212755070467999

`filter[A139338(2*n+1), A107078(#)]`
-/

namespace A396314.P1143212755070467999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A396314.P1143212755070467999

/-! ## A396314.P13385135987177475287

`lt[A090740(A123158(n+3)), A051903(n+1)]+1`
-/

namespace A396314.P13385135987177475287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (A123158 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396314.P13385135987177475287

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

/-!
# A396317: Number of n X n binary matrices with exactly 8 1's such that there are an even number of 1's in every row and column.

The programs for A396317, the canonical program `A396317.P8377799462079475610` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396317 has offset 0).

The definition of A396317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396317.P8377799462079475610

`90*C(n, 4)²+36*C(n, 4)*C(n, 3)+2*C(n, 2)*C(n, 4)`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A396319.P17022673861445563679

`A020725(A396316(n+2))`
-/

namespace A396319.P17022673861445563679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A396316 (n + 2)).toNat

end

end A396319.P17022673861445563679

/-! ## A396319.P13906155382019316415

`∑{d}[A070939(A333492(n+2)), #]`
-/

namespace A396319.P13906155382019316415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A333492 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A396319.P13906155382019316415

/-! ## A396319.P2843549335968948032

`A000203(A034699(n+2)%A319379(n+5))`
-/

namespace A396319.P2843549335968948032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A034699 (n + 2)) (A319379 (n + 5))).toNat

end

end A396319.P2843549335968948032

/-!
# A396321: Number of n X n binary matrices with exactly 10 1's such that there are an even number of 1's in every row and column.

The programs for A396321, the canonical program `A396321.P1360173914200064195` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396321 has offset 1).

The definition of A396321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396321.P1360173914200064195

`(n-2)*(n-1)²*n²*(n+1)²*((n+1)*((n+1)*(17*(n+1)-127)+300)-236)/120`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396321

/-- `(n-2)*(n-1)²*n²*(n+1)²*((n+1)*((n+1)*(17*(n+1)-127)+300)-236)/120` -/
def P1360173914200064195.Spec : Prop :=
  ∀ n, P1360173914200064195.a n = (A396321 (n + 1) : ℚ)

end A396321

/-!
# A396323: Numbers that are neither cubefree nor powerful with at least 3 distinct prime factors.

The programs for A396323, the canonical program `A396323.P6518160970652980328` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396323 has offset 1).

The definition of A396323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396323.P6518160970652980328

`filter[A391319(n+1), A379958(#)]`

The canonical program, it is in `Seq.B007.C001`.
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

The programs for A396336, the canonical program `A396336.P13045972141286078433` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396336 has offset 1).

The definition of A396336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B005.C002`.
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
# A396344: Expansion of x * (3+4*x-7*x^2-6*x^3-x^4-4*x^5+3*x^6+2*x^7)/((1-x) * (1+x) * (1-3*x^2-x^4+x^6)).

The programs for A396344, the canonical program `A396344.P15016918885993711818` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396344 has offset 1).

The definition of A396344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))` (program `A396344.P15016918885993711818`, by `A396344.P15016918885993711818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396344.P15016918885993711818

`ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A396344.P6391709910201222020

`A396347(A396345(n+1))`
-/

namespace A396344.P6391709910201222020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396347 (A396345 (n + 1)).toNat

end

end A396344.P6391709910201222020

namespace A396344

/-- `A396347(A396345(n+1))` -/
def P6391709910201222020.Spec : Prop :=
  ∀ n, P6391709910201222020.a n = A396344 (n + 1)

end A396344

/-!
# A396345: Expansion of x * (3+3*x-8*x^2-3*x^3+2*x^4-3*x^5+4*x^6+x^7-x^8)/((1-x)^2 * (1+x) * (1-3*x^2-x^4+x^6)).

The programs for A396345, the canonical program `A396345.P1990905254869130227` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396345 has offset 1).

The definition of A396345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))` (program `A396345.P1990905254869130227`, by `A396345.P1990905254869130227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396345.P1990905254869130227

`ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396345

/-- `ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))` -/
def P1990905254869130227.Spec : Prop :=
  ∀ n, P1990905254869130227.a n = A396345 (n + 1)

theorem P1990905254869130227.correct : P1990905254869130227.Spec := by
  intro n
  simp only [A396345, Nat.add_sub_cancel]

end A396345

/-! ## A396345.P16309646855747641725

`∑[A396344(n+1)]-n`
-/

namespace A396345.P16309646855747641725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A396345.P16309646855747641725

namespace A396345

/-- `∑[A396344(n+1)]-n` -/
def P16309646855747641725.Spec : Prop :=
  ∀ n, P16309646855747641725.a n = A396345 (n + 1)

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

/-! ## A396345.P13745495612260640588

`A396346(A396344(n+1))`
-/

namespace A396345.P13745495612260640588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396346 (A396344 (n + 1)).toNat

end

end A396345.P13745495612260640588

namespace A396345

/-- `A396346(A396344(n+1))` -/
def P13745495612260640588.Spec : Prop :=
  ∀ n, P13745495612260640588.a n = A396345 (n + 1)

end A396345

/-!
# A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

The programs for A396348, the canonical program `A396348.P3604061063505832311` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396348 has offset 1).

The definition of A396348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396348.P3604061063505832311

`A060176(A278818(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A396348

/-- `A060176(A278818(n))` -/
def P3604061063505832311.Spec : Prop :=
  ∀ n, P3604061063505832311.a n = A396348 (n + 1)

theorem P3604061063505832311.correct : P3604061063505832311.Spec := by
  intro n
  simp only [A396348, Nat.add_sub_cancel]

end A396348

/-! ## A396348.P17548438825274713540

`A060176(A038722(n+1))`
-/

namespace A396348.P17548438825274713540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A038722 (n + 1)).toNat

end

end A396348.P17548438825274713540

namespace A396348

/-- `A060176(A038722(n+1))` -/
def P17548438825274713540.Spec : Prop :=
  ∀ n, P17548438825274713540.a n = A396348 (n + 1)

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

/-! ## A396348.P8157910384699263924

`gcd(A101468(n), A319075(n))`
-/

namespace A396348.P8157910384699263924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101468 n) (A319075 n)

end

end A396348.P8157910384699263924

namespace A396348

/-- `gcd(A101468(n), A319075(n))` -/
def P8157910384699263924.Spec : Prop :=
  ∀ n, (P8157910384699263924.a n : ℤ) = A396348 (n + 1)

end A396348

/-! ## A396348.P6243375885301296129

`A009191(A319075(n))`
-/

namespace A396348.P6243375885301296129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A319075 n).toNat

end

end A396348.P6243375885301296129

namespace A396348

/-- `A009191(A319075(n))` -/
def P6243375885301296129.Spec : Prop :=
  ∀ n, P6243375885301296129.a n = A396348 (n + 1)

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

/-! ## A396352.P551977491416209987

`A109436(A027934(n)+n)`
-/

namespace A396352.P551977491416209987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109436 (A027934 n + (n : ℤ)).toNat

end

end A396352.P551977491416209987

/-!
# A396353: Number of unsatisfiable 3-SAT formulas with n variables and 3 clauses in the multiset clause model.

The programs for A396353, the canonical program `A396353.P14220741429290017551` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396353 has offset 1).

The definition of A396353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396353.P14220741429290017551

`2*(n+1)*(2*(n+1)^3+3*(n+1)²+19*(n+1)-18)/3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396353

/-- `2*(n+1)*(2*(n+1)^3+3*(n+1)²+19*(n+1)-18)/3` -/
def P14220741429290017551.Spec : Prop :=
  ∀ n, P14220741429290017551.a n = (A396353 (n + 1) : ℚ)

end A396353

/-! ## A396353.P6027039227899619561

`A396351(A034856(n+2))`
-/

namespace A396353.P6027039227899619561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A034856 (n + 2)).toNat

end

end A396353.P6027039227899619561

namespace A396353

/-- `A396351(A034856(n+2))` -/
def P6027039227899619561.Spec : Prop :=
  ∀ n, P6027039227899619561.a n = A396353 (n + 1)

end A396353

/-! ## A396353.P18292927323856446385

`A396351(A000217(n+3)-2)`
-/

namespace A396353.P18292927323856446385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A000217 (n + 3) - 2).toNat

end

end A396353.P18292927323856446385

namespace A396353

/-- `A396351(A000217(n+3)-2)` -/
def P18292927323856446385.Spec : Prop :=
  ∀ n, P18292927323856446385.a n = A396353 (n + 1)

end A396353

/-! ## A396353.P17704387894290824383

`A396351(lt[A106356(n+1), 1])`
-/

namespace A396353.P17704387894290824383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A396353.P17704387894290824383

namespace A396353

/-- `A396351(lt[A106356(n+1), 1])` -/
def P17704387894290824383.Spec : Prop :=
  ∀ n, P17704387894290824383.a n = A396353 (n + 1)

end A396353

/-!
# A396354: Number of unsatisfiable 3-SAT formulas with n variables and 4 clauses in the multiset clause model.

The programs for A396354, there is no canonical definition to state claims against.
-/

/-! ## A396354.P1679111176678666192

`A396351(A141214(n+1))`
-/

namespace A396354.P1679111176678666192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A141214 (n + 1)).toNat

end

end A396354.P1679111176678666192

/-! ## A396354.P5188367178135389117

`A396351(A000217(n+4)-3)`
-/

namespace A396354.P5188367178135389117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A000217 (n + 4) - 3).toNat

end

end A396354.P5188367178135389117

/-! ## A396354.P15732937808741777813

`A396351(A317710(n+1)+A000217(n+3))`
-/

namespace A396354.P15732937808741777813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A317710 (n + 1) + A000217 (n + 3)).toNat

end

end A396354.P15732937808741777813

/-!
# A396358: a(n) = J((n-1)*(n+1))/(J(n-1)*J(n+1)), where J(n) is the n-th Jacobsthal number A001045(n).

The programs for A396358, there is no canonical definition to state claims against.
-/

/-! ## A396358.P1848901027000414895

`A225695(A019111(n+4))`
-/

namespace A396358.P1848901027000414895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225695 (A019111 (n + 4)).toNat

end

end A396358.P1848901027000414895

/-!
# A396364: Triangle T(n, k) read by rows: number of graphs in A396149 on n vertices containing exactly k triangles, for n >= 0, 0 <= k <= binomial(n, 3).

The programs for A396364, there is no canonical definition to state claims against.
-/

/-! ## A396364.P12411253631817213920

`A357137(val(A128836(n+1)+floor(1/(n+1)), 2))`
-/

namespace A396364.P12411253631817213920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (SequenceMachineLib.valuation (A128836 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat 2)

end

end A396364.P12411253631817213920

/-! ## A396364.P10053790686196790850

`and(A146289(A000045(n+1)), A380245(n+1))`
-/

namespace A396364.P10053790686196790850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146289 (A000045 (n + 1)).toNat) (A380245 (n + 1))

end

end A396364.P10053790686196790850

/-! ## A396364.P3385639477180120683

`val(A052485(ceil(3*2^(n-3))), 2)`
-/

namespace A396364.P3385639477180120683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052485 ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat).toNat 2

end

end A396364.P3385639477180120683

/-! ## A396364.P16775593379031785684

`A325414(A068932(n))`
-/

namespace A396364.P16775593379031785684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 (A068932 n).toNat

end

end A396364.P16775593379031785684

/-! ## A396364.P1931822507343978846

`A341685(A180476(n+1))`
-/

namespace A396364.P1931822507343978846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341685 (A180476 (n + 1)).toNat

end

end A396364.P1931822507343978846

/-!
# A396379: Fixed points of A396378: integers m so that m is the smallest integer of the interval (m, m+1, ..., m+A396377(m)) that divides the product of the other integers.

The programs for A396379, there is no canonical definition to state claims against.
-/

/-! ## A396379.P16200853944650071750

`A050376(n+1)-A157196(A393620(2*(n+1)))`
-/

namespace A396379.P16200853944650071750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - A157196 (A393620 (2 * (n + 1))).toNat

end

end A396379.P16200853944650071750

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

/-! ## A396381.P2564532152248360565

`filter[A028776(n+1), A294936(#)]`
-/

namespace A396381.P2564532152248360565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A396381.P2564532152248360565

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

/-! ## A396385.P13074785177633280871

`A184429(A285460(n+1))`
-/

namespace A396385.P13074785177633280871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (A285460 (n + 1)).toNat

end

end A396385.P13074785177633280871

/-!
# A396391: a(n) = r(n,n), where r(1,k)=f(k)=ceiling(k*c), r(n,k)=f(r(n-1,k)), c=golden ratio.

The programs for A396391, there is no canonical definition to state claims against.
-/

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

/-! ## A396392.P8293499140732800564

`A330064(A243988(n))`
-/

namespace A396392.P8293499140732800564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330064 (A243988 n).toNat

end

end A396392.P8293499140732800564

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

/-! ## A396393.P5836746903225470234

`A022290((A005942(n)+A214212(n)-1)*A011782(2*(n+1)))`
-/

namespace A396393.P5836746903225470234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 ((A005942 n + (A214212 n - 1)) * A011782 (2 * (n + 1))).toNat

end

end A396393.P5836746903225470234

/-!
# A396394: a(n) = r(n,n), where r(1,k)=f(k)=ceiling(k*c), r(n,k)=f(r(n-1,k)), c=(golden ratio)^2.

The programs for A396394, there is no canonical definition to state claims against.
-/

/-! ## A396394.P3989563037792411663

`A381607((n+1)*3^(n+1))`
-/

namespace A396394.P3989563037792411663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381607 ((n + 1) * 3 ^ (n + 1))

end

end A396394.P3989563037792411663

