import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C050
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C006
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A399300: a(n) is the least even number whose n-th smallest Goldbach prime equals A398545(n).

The programs for A399300, there is no canonical definition to state claims against.
-/

/-! ## A399300.P13145709497426154398

`A294492(A090983(n+1))`
-/

namespace A399300.P13145709497426154398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294492 (A090983 (n + 1)).toNat

end

end A399300.P13145709497426154398

/-!
# A399301: Primes not in A398545.

The programs for A399301, there is no canonical definition to state claims against.
-/

/-! ## A399301.P8655488574202018435

`A302245(A126204(n))`
-/

namespace A399301.P8655488574202018435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302245 (A126204 n).toNat

end

end A399301.P8655488574202018435

/-!
# A399304: Number of transitive relations on n unlabeled points with no isolated point.

The programs for A399304, there is no canonical definition to state claims against.
-/

/-! ## A399304.P13041554731427444867

`A334120(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A399304.P13041554731427444867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A334120 (a (n - 1)).toNat + 1

end

end A399304.P13041554731427444867

/-!
# A399305: Integers whose minimal Lucas representation (A130310) ends in a 0 which if removed results in a valid minimal Lucas representation of another integer.

The programs for A399305, the canonical program `A399305.P4536784307607382255` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399305 has offset 1).

The definition of A399305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8540 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399305.P4536784307607382255

`A063732(A187945(n+2))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399305

/-- `A063732(A187945(n+2))` -/
def P4536784307607382255.Spec : Prop :=
  ∀ n, P4536784307607382255.a n = A399305 (n + 1)

theorem P4536784307607382255.correct : P4536784307607382255.Spec := by
  intro n
  simp only [A399305, Nat.add_sub_cancel]

end A399305

/-! ## A399305.P8535003462775193178

`A399721(A399306(n+2)-2)`
-/

namespace A399305.P8535003462775193178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399721 (A399306 (n + 2) - 2).toNat

end

end A399305.P8535003462775193178

namespace A399305

/-- `A399721(A399306(n+2)-2)` -/
def P8535003462775193178.Spec : Prop :=
  ∀ n, P8535003462775193178.a n = A399305 (n + 1)

end A399305

/-! ## A399305.P14693166088127800417

`A324470(A077168(n))`
-/

namespace A399305.P14693166088127800417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324470 (A077168 n).toNat

end

end A399305.P14693166088127800417

namespace A399305

/-- `A324470(A077168(n))` -/
def P14693166088127800417.Spec : Prop :=
  ∀ n, P14693166088127800417.a n = A399305 (n + 1)

end A399305

/-! ## A399305.P6560542801147490582

`eq[A188071(n+1), A244173(n)]`
-/

namespace A399305.P6560542801147490582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244173 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399305.P6560542801147490582

namespace A399305

/-- `eq[A188071(n+1), A244173(n)]` -/
def P6560542801147490582.Spec : Prop :=
  ∀ n, (P6560542801147490582.a n : ℤ) = A399305 (n + 1)

end A399305

/-! ## A399305.P10433711340318816435

`eq[A188071(n+1), A288326(n)]`
-/

namespace A399305.P10433711340318816435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399305.P10433711340318816435

namespace A399305

/-- `eq[A188071(n+1), A288326(n)]` -/
def P10433711340318816435.Spec : Prop :=
  ∀ n, (P10433711340318816435.a n : ℤ) = A399305 (n + 1)

end A399305

/-!
# A399306: Integers whose minimal Lucas representation (A130310) does not end in a 0 which if removed results in a valid minimal Lucas representation of another integer.

The programs for A399306, the canonical program `A399306.P14696332805227839918` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399306 has offset 1).

The definition of A399306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399306.P14696332805227839918

`A249115(A187951(n+1))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A399306

/-- `A249115(A187951(n+1))` -/
def P14696332805227839918.Spec : Prop :=
  ∀ n, P14696332805227839918.a n = A399306 (n + 1)

theorem P14696332805227839918.correct : P14696332805227839918.Spec := by
  intro n
  simp only [A399306, Nat.add_sub_cancel]

end A399306

/-! ## A399306.P15791556526164978963

`A247431(A187951(n+1))`
-/

namespace A399306.P15791556526164978963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (A187951 (n + 1)).toNat

end

end A399306.P15791556526164978963

namespace A399306

/-- `A247431(A187951(n+1))` -/
def P15791556526164978963.Spec : Prop :=
  ∀ n, P15791556526164978963.a n = A399306 (n + 1)

end A399306

/-! ## A399306.P619210590007849302

`A094350(A187829(n+1))`
-/

namespace A399306.P619210590007849302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094350 (A187829 (n + 1)).toNat

end

end A399306.P619210590007849302

namespace A399306

/-- `A094350(A187829(n+1))` -/
def P619210590007849302.Spec : Prop :=
  ∀ n, P619210590007849302.a n = A399306 (n + 1)

end A399306

/-! ## A399306.P7340054031148198745

`A094350(A077168(n))`
-/

namespace A399306.P7340054031148198745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094350 (A077168 n).toNat

end

end A399306.P7340054031148198745

namespace A399306

/-- `A094350(A077168(n))` -/
def P7340054031148198745.Spec : Prop :=
  ∀ n, P7340054031148198745.a n = A399306 (n + 1)

end A399306

/-! ## A399306.P9651504364143192993

`A094350(A004907(n+2))`
-/

namespace A399306.P9651504364143192993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094350 (A004907 (n + 2)).toNat

end

end A399306.P9651504364143192993

namespace A399306

/-- `A094350(A004907(n+2))` -/
def P9651504364143192993.Spec : Prop :=
  ∀ n, P9651504364143192993.a n = A399306 (n + 1)

end A399306

/-!
# A399312: Number of partitions of n where the smallest part is equal to the number of divisors of n, d(n) = A000005(n).

The programs for A399312, there is no canonical definition to state claims against.
-/

/-! ## A399312.P14498449235311269654

`A326441(A392218(n+1))`
-/

namespace A399312.P14498449235311269654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (A392218 (n + 1)).toNat

end

end A399312.P14498449235311269654

/-!
# A399313: Numbers k = rad(k) * p(k) * q(k) such that A008479(k) = 5, where rad = A007947, p = least prime factor of k, q = second smallest distinct prime factor of k.

The programs for A399313, there is no canonical definition to state claims against.
-/

/-! ## A399313.P3411136977322676137

`∩[A375144(n+1), A399320(n+1)]`
-/

namespace A399313.P3411136977322676137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P3411136977322676137

/-! ## A399313.P11822966370623074172

`∩[A386797(n+1), A399320(n+1)]`
-/

namespace A399313.P11822966370623074172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P11822966370623074172

/-! ## A399313.P16296786678723127440

`∩[A398444(n+1), A399320(n+1)]`
-/

namespace A399313.P16296786678723127440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P16296786678723127440

/-! ## A399313.P11732921197895454172

`∩[A377817(n+1), A399320(n+1)]`
-/

namespace A399313.P11732921197895454172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P11732921197895454172

/-! ## A399313.P12219104478807238122

`∩[A072413(n+1), A399320(n+1)]`
-/

namespace A399313.P12219104478807238122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P12219104478807238122

/-! ## A399313.P14008763973503683251

`∩[A338539(n+1), A399320(n+1)]`
-/

namespace A399313.P14008763973503683251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P14008763973503683251

/-! ## A399313.P15275933861081499109

`∩[A036785(n+1), A399320(n+1)]`
-/

namespace A399313.P15275933861081499109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P15275933861081499109

/-! ## A399313.P4874193918565915630

`∩[A082295(n+1), A399320(n+1)]`
-/

namespace A399313.P4874193918565915630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P4874193918565915630

/-! ## A399313.P14881410682018434985

`filter[A399320(n+1), A355454(#)]`
-/

namespace A399313.P14881410682018434985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A399313.P14881410682018434985

/-! ## A399313.P569372247560379521

`filter[A399320(n+1), A353625(#)]`
-/

namespace A399313.P569372247560379521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A399313.P569372247560379521

/-! ## A399313.P13249608170777683509

`∩[A398264(n+1), A399320(n+1)]`
-/

namespace A399313.P13249608170777683509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399313.P13249608170777683509

/-!
# A399316: Number of Gauss diagrams of meander curves with 2n+1 crossings.

The programs for A399316, there is no canonical definition to state claims against.
-/

/-! ## A399316.P6303964164585490041

`A080055(a(n-1))+n` with `a(0)=1`
-/

namespace A399316.P6303964164585490041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080055 (a (n - 1)).toNat + (n : ℤ)

end

end A399316.P6303964164585490041

/-!
# A399318: Row products of the triangle A107711.

The programs for A399318, there is no canonical definition to state claims against.
-/

/-! ## A399318.P2975951315825067386

`A121426(A293046(n))`
-/

namespace A399318.P2975951315825067386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121426 (A293046 n).toNat

end

end A399318.P2975951315825067386

/-! ## A399318.P6807527483230150030

`A327148(A153958(n))`
-/

namespace A399318.P6807527483230150030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327148 (A153958 n).toNat

end

end A399318.P6807527483230150030

/-! ## A399318.P2973041180134586367

`A034254(A049929(n+1))`
-/

namespace A399318.P2973041180134586367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034254 (A049929 (n + 1)).toNat

end

end A399318.P2973041180134586367

/-!
# A399324: a(n) = (1/(n + 2)) * Sum_{k=0..n} binomial(2*k, k) * binomial(n+2, k+1). Row sums of A106534.

The programs for A399324, the canonical program `A399324.P15725540353166825345` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399324 has offset 0).

The definition of A399324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399324.P15725540353166825345

`1/(n+2)*∑{#}[n, C(2*#, #)*C(n+2, #+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399324

/-- `1/(n+2)*∑{#}[n, C(2*#, #)*C(n+2, #+1)]` -/
def P15725540353166825345.Spec : Prop :=
  ∀ n, P15725540353166825345.a n = (A399324 n : ℚ)

end A399324

/-! ## A399324.P6689705012664119570

`∑[A026759(n)]`
-/

namespace A399324.P6689705012664119570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399324.P6689705012664119570

namespace A399324

/-- `∑[A026759(n)]` -/
def P6689705012664119570.Spec : Prop :=
  ∀ n, P6689705012664119570.a n = A399324 n

end A399324

/-! ## A399324.P11579704625342183398

`∑[A026764(2*n)]`
-/

namespace A399324.P11579704625342183398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399324.P11579704625342183398

namespace A399324

/-- `∑[A026764(2*n)]` -/
def P11579704625342183398.Spec : Prop :=
  ∀ n, P11579704625342183398.a n = A399324 n

end A399324

/-! ## A399324.P8016679992572144933

`A007317(n+2)-A000108(n+1)`
-/

namespace A399324.P8016679992572144933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2) - A000108 (n + 1)

end

end A399324.P8016679992572144933

namespace A399324

/-- `A007317(n+2)-A000108(n+1)` -/
def P8016679992572144933.Spec : Prop :=
  ∀ n, P8016679992572144933.a n = A399324 n

end A399324

/-! ## A399324.P13358589542674981315

`A181768(n+2)-A000108(n+1)`
-/

namespace A399324.P13358589542674981315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 2) - A000108 (n + 1)

end

end A399324.P13358589542674981315

namespace A399324

/-- `A181768(n+2)-A000108(n+1)` -/
def P13358589542674981315.Spec : Prop :=
  ∀ n, P13358589542674981315.a n = A399324 n

end A399324

/-!
# A399341: a(n) = (n^6 + 9*n^5 + 30*n^4 + 45*n^3 + 29*n^2 + 6*n) / 8. (Row 3 of array A399342.)

The programs for A399341, the canonical program `A399341.P5948604663381644649` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399341 has offset 0).

The definition of A399341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399341.P5948604663381644649

`(n^6+9*n^5+30*n^4+45*n^3+29*n²+6*n)/8`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399341

/-- `(n^6+9*n^5+30*n^4+45*n^3+29*n²+6*n)/8` -/
def P5948604663381644649.Spec : Prop :=
  ∀ n, P5948604663381644649.a n = (A399341 n : ℚ)

end A399341

/-! ## A399341.P17697432926639642635

`((n+1)²+n)*C(∑[n+1], 2)`
-/

namespace A399341.P17697432926639642635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n) * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A399341.P17697432926639642635

namespace A399341

/-- `((n+1)²+n)*C(∑[n+1], 2)` -/
def P17697432926639642635.Spec : Prop :=
  ∀ n, (P17697432926639642635.a n : ℤ) = A399341 n

end A399341

/-! ## A399341.P13002863635853534663

`lcm((n+1)²+n, C(∑[n+1], 2))`
-/

namespace A399341.P13002863635853534663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2 + n) (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A399341.P13002863635853534663

namespace A399341

/-- `lcm((n+1)²+n, C(∑[n+1], 2))` -/
def P13002863635853534663.Spec : Prop :=
  ∀ n, (P13002863635853534663.a n : ℤ) = A399341 n

end A399341

/-! ## A399341.P12794515194276577308

`A059270(∑[n]+n)`
-/

namespace A399341.P12794515194276577308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A399341.P12794515194276577308

namespace A399341

/-- `A059270(∑[n]+n)` -/
def P12794515194276577308.Spec : Prop :=
  ∀ n, P12794515194276577308.a n = A399341 n

end A399341

/-! ## A399341.P3782473085571139569

`A047866(n*(n+3))`
-/

namespace A399341.P3782473085571139569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047866 (n * (n + 3))

end

end A399341.P3782473085571139569

namespace A399341

/-- `A047866(n*(n+3))` -/
def P3782473085571139569.Spec : Prop :=
  ∀ n, P3782473085571139569.a n = A399341 n

end A399341

/-! ## A399341.P2040692380969737591

`A109900(n*(n+3))`
-/

namespace A399341.P2040692380969737591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (n * (n + 3))

end

end A399341.P2040692380969737591

namespace A399341

/-- `A109900(n*(n+3))` -/
def P2040692380969737591.Spec : Prop :=
  ∀ n, P2040692380969737591.a n = A399341 n

end A399341

/-! ## A399341.P17843074583959214935

`A011890(2*∑[n+1])`
-/

namespace A399341.P17843074583959214935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011890 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A399341.P17843074583959214935

namespace A399341

/-- `A011890(2*∑[n+1])` -/
def P17843074583959214935.Spec : Prop :=
  ∀ n, P17843074583959214935.a n = A399341 n

end A399341

/-! ## A399341.P4826825231550631483

`A034828((n+1)²+n)`
-/

namespace A399341.P4826825231550631483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 ((n + 1) ^ 2 + n)

end

end A399341.P4826825231550631483

namespace A399341

/-- `A034828((n+1)²+n)` -/
def P4826825231550631483.Spec : Prop :=
  ∀ n, P4826825231550631483.a n = A399341 n

end A399341

/-! ## A399341.P6693074589165224387

`A290168((n+1)²+n)`
-/

namespace A399341.P6693074589165224387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290168 ((n + 1) ^ 2 + n)

end

end A399341.P6693074589165224387

namespace A399341

/-- `A290168((n+1)²+n)` -/
def P6693074589165224387.Spec : Prop :=
  ∀ n, P6693074589165224387.a n = A399341 n

end A399341

/-! ## A399341.P4791173378923805918

`A177100(A133694(n+1))`
-/

namespace A399341.P4791173378923805918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177100 (A133694 (n + 1)).toNat

end

end A399341.P4791173378923805918

namespace A399341

/-- `A177100(A133694(n+1))` -/
def P4791173378923805918.Spec : Prop :=
  ∀ n, P4791173378923805918.a n = A399341 n

end A399341

/-!
# A399342: Array read by ascending antidiagonals: A(n, k) = (1/k) * Sum_{j=0..n} A(n-j, k-1) * A(j, 1) * binomial(n+k, j+1) * binomial(n, j) for k >= 2, A(0, k) = 1, A(n, 0) = 0^n, and A(n, 1) = Sum_{j=1..n} j! * A(n-j, j).

The programs for A399342, there is no canonical definition to state claims against.
-/

/-! ## A399342.P12839014684321292049

`A399444(n)/A233543(n)`
-/

namespace A399342.P12839014684321292049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399444 n : ℚ) / (A233543 n : ℚ)

end

end A399342.P12839014684321292049

/-!
# A399343: Expansion of Product_{k>=1} (theta_3(q^k)/theta_4(q^k))^k, where theta_3() and theta_4() are the Jacobi theta functions.

The programs for A399343, there is no canonical definition to state claims against.
-/

/-! ## A399343.P11361290633234161914

`A278083(A337034(n))`
-/

namespace A399343.P11361290633234161914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278083 (A337034 n).toNat

end

end A399343.P11361290633234161914

/-!
# A399346: Placid Platypus function PP(n): Minimal number of states of all 2-symbol Turing machines that print exactly n ones then halt.

The programs for A399346, there is no canonical definition to state claims against.
-/

/-! ## A399346.P10396282787837711844

`∑[char[A028444(n)]]`
-/

namespace A399346.P10396282787837711844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399346.P10396282787837711844

/-! ## A399346.P10117277470898876578

`floor(log(A191026(n+1)))`
-/

namespace A399346.P10117277470898876578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A191026 (n + 1) : ℝ)⌋

end

end A399346.P10117277470898876578

/-! ## A399346.P8754428171853147012

`A210032(A028829(n))`
-/

namespace A399346.P8754428171853147012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210032 (A028829 n).toNat

end

end A399346.P8754428171853147012

/-! ## A399346.P12887013965593179550

`A125269(A371719(n))`
-/

namespace A399346.P12887013965593179550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A371719 n).toNat

end

end A399346.P12887013965593179550

/-! ## A399346.P7631614834403264464

`A108582(A043777(n+1))`
-/

namespace A399346.P7631614834403264464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A043777 (n + 1)).toNat

end

end A399346.P7631614834403264464

/-!
# A399347: a(n) is the smallest size of a pairwise coprime subset of {1, ..., n} to which no further element can be added.

The programs for A399347, there is no canonical definition to state claims against.
-/

/-! ## A399347.P13973828985980653349

`A357186(A210702(n+2))`
-/

namespace A399347.P13973828985980653349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A210702 (n + 2)).toNat

end

end A399347.P13973828985980653349

/-!
# A399349: Array read by antidiagonals: T(n,k) is the number of independent vertex sets in the n X k torus grid graph.

The programs for A399349, there is no canonical definition to state claims against.
-/

/-! ## A399349.P6173535151459685670

`A023899(A157221(n))`
-/

namespace A399349.P6173535151459685670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023899 (A157221 n).toNat

end

end A399349.P6173535151459685670

/-! ## A399349.P11337221771188484857

`A231015(A022187(n))`
-/

namespace A399349.P11337221771188484857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231015 (A022187 n).toNat

end

end A399349.P11337221771188484857

/-! ## A399349.P15998938733788522402

`A122340(A157181(n))`
-/

namespace A399349.P15998938733788522402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122340 (A157181 n).toNat

end

end A399349.P15998938733788522402

/-! ## A399349.P3377530589480436035

`A109375(A179837(n))`
-/

namespace A399349.P3377530589480436035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A179837 n).toNat

end

end A399349.P3377530589480436035

/-! ## A399349.P14723088383708753575

`A113881(A176641(n))`
-/

namespace A399349.P14723088383708753575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A176641 n).toNat

end

end A399349.P14723088383708753575

/-!
# A399351: Number of independent vertex sets in the n X n projective plane graph.

The programs for A399351, there is no canonical definition to state claims against.
-/

/-! ## A399351.P2561296044305392123

`A399350(4*∑[n+1])`
-/

namespace A399351.P2561296044305392123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399350 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A399351.P2561296044305392123

/-!
# A399352: Number of independent vertex sets in the n X 2 projective plane graph.

The programs for A399352, the canonical program `A399352.P14429200933316941259` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399352 has offset 0).

The definition of A399352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399352.P14429200933316941259

`ogf((1+3x+x^4-x^5)/(1-5x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399352

/-- `ogf((1+3x+x^4-x^5)/(1-5x^2-x^4+x^6))` -/
def P14429200933316941259.Spec : Prop :=
  ∀ n, P14429200933316941259.a n = A399352 n

theorem P14429200933316941259.correct : P14429200933316941259.Spec := by
  intro n
  simp only [A399352]

end A399352

/-! ## A399352.P11321254222209524093

`5*a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15, a(4)=27, a(5)=77`
-/

namespace A399352.P11321254222209524093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 15, 27, 77] fun n a =>
  5 * a (n - 2) + a (n - 4) - a (n - 6)

end

end A399352.P11321254222209524093

namespace A399352

/-- `5*a(n-2)+a(n-4)-a(n-6)` -/
def P11321254222209524093.Spec : Prop :=
  ∀ n, P11321254222209524093.a n = A399352 n

end A399352

/-! ## A399352.P237161235090727065

`A399103(∑[n+3])`
-/

namespace A399352.P237161235090727065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399103 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399352.P237161235090727065

namespace A399352

/-- `A399103(∑[n+3])` -/
def P237161235090727065.Spec : Prop :=
  ∀ n, P237161235090727065.a n = A399352 n

end A399352

/-! ## A399352.P2477858374303285278

`A399350(∑[n+3])`
-/

namespace A399352.P2477858374303285278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399352.P2477858374303285278

namespace A399352

/-- `A399350(∑[n+3])` -/
def P2477858374303285278.Spec : Prop :=
  ∀ n, P2477858374303285278.a n = A399352 n

end A399352

/-!
# A399353: Number of independent vertex sets in the n X 3 projective plane graph.

The programs for A399353, the canonical program `A399353.P8469045247543343980` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399353 has offset 0).

The definition of A399353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399353.P8469045247543343980

`ogf((2+3x-9x^2+6x^3-9x^4+2x^5+9x^6-4x^7+3x^8-x^9)/(1-12x^2+3x^4+25x^6+2x^8-x^10))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399353

/-- `ogf((2+3x-9x^2+6x^3-9x^4+2x^5+9x^6-4x^7+3x^8-x^9)/(1-12x^2+3x^4+25x^6+2x^8-x^10))` -/
def P8469045247543343980.Spec : Prop :=
  ∀ n, P8469045247543343980.a n = A399353 n

theorem P8469045247543343980.correct : P8469045247543343980.Spec := by
  intro n
  simp only [A399353]

end A399353

/-! ## A399353.P1216303782252893439

`A399350(A167614(n+2))`
-/

namespace A399353.P1216303782252893439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399350 (A167614 (n + 2)).toNat

end

end A399353.P1216303782252893439

namespace A399353

/-- `A399350(A167614(n+2))` -/
def P1216303782252893439.Spec : Prop :=
  ∀ n, P1216303782252893439.a n = A399353 n

end A399353

/-!
# A399354: Number of independent vertex sets in the 3 X n Moebius strip graph.

The programs for A399354, the canonical program `A399354.P5833896430700675044` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399354 has offset 0).

The definition of A399354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399354.P5833896430700675044

`ogf((3-12x^2-12x^3-x^4)/(1-x-8x^2-6x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399354

/-- `ogf((3-12x^2-12x^3-x^4)/(1-x-8x^2-6x^3+x^4+x^5))` -/
def P5833896430700675044.Spec : Prop :=
  ∀ n, P5833896430700675044.a n = A399354 n

theorem P5833896430700675044.correct : P5833896430700675044.Spec := by
  intro n
  simp only [A399354]

end A399354

/-! ## A399354.P8214098995072199189

`a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` with `a(0)=3, a(1)=3, a(2)=15, a(3)=45, a(4)=179`
-/

namespace A399354.P8214098995072199189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 15, 45, 179] fun n a =>
  a (n - 1) + 8 * a (n - 2) + 6 * a (n - 3) - a (n - 4) - a (n - 5)

end

end A399354.P8214098995072199189

namespace A399354

/-- `a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` -/
def P8214098995072199189.Spec : Prop :=
  ∀ n, P8214098995072199189.a n = A399354 n

end A399354

/-! ## A399354.P16165420157550078593

`A399103(A167614(n+2))`
-/

namespace A399354.P16165420157550078593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399103 (A167614 (n + 2)).toNat

end

end A399354.P16165420157550078593

namespace A399354

/-- `A399103(A167614(n+2))` -/
def P16165420157550078593.Spec : Prop :=
  ∀ n, P16165420157550078593.a n = A399354 n

end A399354

/-!
# A399355: Number of independent vertex sets in the 4 X n Moebius strip graph.

The programs for A399355, the canonical program `A399355.P8661528366666240690` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399355 has offset 0).

The definition of A399355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399355.P8661528366666240690

`ogf((2+5x-20x^2-49x^3-10x^4+23x^5-4x^6-3x^7)/(1-x-20x^2-27x^3+14x^4+25x^5-4x^6-5x^7+x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399355

/-- `ogf((2+5x-20x^2-49x^3-10x^4+23x^5-4x^6-3x^7)/(1-x-20x^2-27x^3+14x^4+25x^5-4x^6-5x^7+x^8))` -/
def P8661528366666240690.Spec : Prop :=
  ∀ n, P8661528366666240690.a n = A399355 n

theorem P8661528366666240690.correct : P8661528366666240690.Spec := by
  intro n
  simp only [A399355]

end A399355

/-!
# A399356: Number of independent vertex sets in the n X 3 Moebius strip graph.

The programs for A399356, there is no canonical definition to state claims against.
-/

/-! ## A399356.P7923111433417306381

`A332107(A097551(n))`
-/

namespace A399356.P7923111433417306381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332107 (A097551 n).toNat

end

end A399356.P7923111433417306381

/-!
# A399357: Number of independent vertex sets in the 4 X n Klein bottle graph.

The programs for A399357, the canonical program `A399357.P4855077862202174180` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399357 has offset 0).

The definition of A399357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399357.P4855077862202174180

`ogf((1+4x-12x^2+8x^3-x^4)/(1-3x-12x^2+4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399357

/-- `ogf((1+4x-12x^2+8x^3-x^4)/(1-3x-12x^2+4x^3+3x^4-x^5))` -/
def P4855077862202174180.Spec : Prop :=
  ∀ n, P4855077862202174180.a n = A399357 n

theorem P4855077862202174180.correct : P4855077862202174180.Spec := by
  intro n
  simp only [A399357]

end A399357

/-! ## A399357.P7956109331399004727

`3*a(n-1)+12*a(n-2)-4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=21, a(3)=151, a(4)=673`
-/

namespace A399357.P7956109331399004727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 21, 151, 673] fun n a =>
  3 * a (n - 1) + 12 * a (n - 2) - 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A399357.P7956109331399004727

namespace A399357

/-- `3*a(n-1)+12*a(n-2)-4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7956109331399004727.Spec : Prop :=
  ∀ n, P7956109331399004727.a n = A399357 n

end A399357

/-!
# A399359: a(n) = 108^n * [z^n] hypergeom([1/6, 1/3], [1], z)^4.

The programs for A399359, the canonical program `A399359.P3296580441456699831` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399359 has offset 0).

The definition of A399359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399359.P3296580441456699831

`∑{#}[n, A184423(#)*A184423(n-#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A399359

/-- `∑{#}[n, A184423(#)*A184423(n-#)]` -/
def P3296580441456699831.Spec : Prop :=
  ∀ n, P3296580441456699831.a n = A399359 n

theorem P3296580441456699831.correct : P3296580441456699831.Spec := by
  intro n
  simp only [A399359]

end A399359

/-!
# A399361: The number of 3-connected cubic planar graphs on 2n-4 vertices that can be strongly embedded on the projective plane.

The programs for A399361, there is no canonical definition to state claims against.
-/

/-! ## A399361.P3303961857923785155

`A093494(A174958(n+1))`
-/

namespace A399361.P3303961857923785155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093494 (A174958 (n + 1)).toNat

end

end A399361.P3303961857923785155

/-! ## A399361.P2832708002512542958

`A231405(A062416(n+1))`
-/

namespace A399361.P2832708002512542958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231405 (A062416 (n + 1)).toNat

end

end A399361.P2832708002512542958

/-!
# A399362: The number of 3-connected cubic planar graphs on 2n-4 vertices that can be strongly embedded on the torus.

The programs for A399362, there is no canonical definition to state claims against.
-/

/-! ## A399362.P13251569509188920833

`A392051(A006882(n))`
-/

namespace A399362.P13251569509188920833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (A006882 n).toNat

end

end A399362.P13251569509188920833

/-! ## A399362.P13182441158509496045

`A392051(A161178(n))`
-/

namespace A399362.P13182441158509496045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (A161178 n).toNat

end

end A399362.P13182441158509496045

/-! ## A399362.P10311123038990768566

`A348323(A172524(n+1))`
-/

namespace A399362.P10311123038990768566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348323 (A172524 (n + 1)).toNat

end

end A399362.P10311123038990768566

/-!
# A399363: The number of 3-connected cubic planar graphs on 2n-4 vertices that can be strongly embedded on the Klein bottle.

The programs for A399363, there is no canonical definition to state claims against.
-/

/-! ## A399363.P11456956746076490590

`A244591(A086625(n))`
-/

namespace A399363.P11456956746076490590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244591 (A086625 n).toNat

end

end A399363.P11456956746076490590

/-! ## A399363.P6655251910367568270

`A244591(A152172(n+1))`
-/

namespace A399363.P6655251910367568270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244591 (A152172 (n + 1)).toNat

end

end A399363.P6655251910367568270

/-! ## A399363.P6121469848486373810

`A244591(A001677(n+2))`
-/

namespace A399363.P6121469848486373810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244591 (A001677 (n + 2)).toNat

end

end A399363.P6121469848486373810

/-!
# A399367: Greedy sequence of positive integers such that all pairwise sums and all pairwise products of distinct terms are distinct.

The programs for A399367, there is no canonical definition to state claims against.
-/

/-! ## A399367.P16774025323340310963

`A003003(A399578(n))`
-/

namespace A399367.P16774025323340310963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A399578 n).toNat

end

end A399367.P16774025323340310963

/-! ## A399367.P8833699699174099049

`A057561(A035298(n+1))`
-/

namespace A399367.P8833699699174099049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A035298 (n + 1)).toNat

end

end A399367.P8833699699174099049

/-! ## A399367.P2560218942737359366

`A057561(A347542(n+6))`
-/

namespace A399367.P2560218942737359366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A347542 (n + 6)).toNat

end

end A399367.P2560218942737359366

/-!
# A399369: Numbers k such that p^p divides k for some prime p and there exists j < k such that A376418(j) = A376418(k).

The programs for A399369, there is no canonical definition to state claims against.
-/

/-! ## A399369.P14735771887241161526

`A336488(A196668(n+1))`
-/

namespace A399369.P14735771887241161526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (A196668 (n + 1)).toNat

end

end A399369.P14735771887241161526

/-!
# A399372: a(n) is the smallest prime not dividing A003415(n) [the arithmetic derivative of n], with a(0) = a(1) = 1 by convention.

The programs for A399372, there is no canonical definition to state claims against.
-/

/-! ## A399372.P3051137175821070441

`A020639(A327859(n))`
-/

namespace A399372.P3051137175821070441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A327859 n).toNat

end

end A399372.P3051137175821070441

/-! ## A399372.P6250556804791199679

`A020639(A400151(n))`
-/

namespace A399372.P6250556804791199679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A400151 n).toNat

end

end A399372.P6250556804791199679

/-! ## A399372.P10956567465361941212

`∏{p}[A399376(n), #]`
-/

namespace A399372.P10956567465361941212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A399372.P10956567465361941212

/-! ## A399372.P8830423896890276882

`A006530(A399376(n))`
-/

namespace A399372.P8830423896890276882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A399376 n).toNat

end

end A399372.P8830423896890276882

/-! ## A399372.P2698653112200133599

`gcd(A034386(n), A399376(n))`
-/

namespace A399372.P2698653112200133599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A399376 n)

end

end A399372.P2698653112200133599

/-!
# A399374: For n >= 2, the least significant nonzero digit in primorial base representation of n' (the arithmetic derivative of n), with a(0) = a(1) = 0 by convention.

The programs for A399374, there is no canonical definition to state claims against.
-/

/-! ## A399374.P18201469211712352783

`A276088(A003415(n))`
-/

namespace A399374.P18201469211712352783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A003415 n).toNat

end

end A399374.P18201469211712352783

/-! ## A399374.P13404332996770621843

`A067029(A327859(n))`
-/

namespace A399374.P13404332996770621843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A327859 n).toNat

end

end A399374.P13404332996770621843

/-! ## A399374.P3611166176539103769

`∑{e}[A399376(n), #]`
-/

namespace A399374.P3611166176539103769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A399374.P3611166176539103769

/-! ## A399374.P13721418589384103405

`A001222(A399376(n))`
-/

namespace A399374.P13721418589384103405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A399376 n).toNat

end

end A399374.P13721418589384103405

/-!
# A399376: a(n) = A028233(A327859(n)).

The programs for A399376, there is no canonical definition to state claims against.
-/

/-! ## A399376.P7877327986157500427

`A399372(n)^A399374(n)`
-/

namespace A399376.P7877327986157500427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399372 n : ℚ) ^ (A399374 n : ℤ)

end

end A399376.P7877327986157500427

/-! ## A399376.P16130114159790003951

`A028233(A327859(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399376.P16130114159790003951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A327859 n).toNat

end

end A399376.P16130114159790003951

/-! ## A399376.P14322467298525194287

`A028233(A276086(A003415(n)))`
-/

namespace A399376.P14322467298525194287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A276086 (A003415 n).toNat).toNat

end

end A399376.P14322467298525194287

/-!
# A399377: a(n) is the least prime p such that p^valuation(A327859(n),p) does not divide n, or 1 if no such p exists.

The programs for A399377, there is no canonical definition to state claims against.
-/

/-! ## A399377.P9660430220150976684

`A020639(A370117(n))`
-/

namespace A399377.P9660430220150976684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A370117 n).toNat

end

end A399377.P9660430220150976684

/-!
# A399381: a(n) is the minimum positive integer k such that k*n-1 is squarefree.

The programs for A399381, there is no canonical definition to state claims against.
-/

/-! ## A399381.P5315817130530151093

`(A399682(n+1)+1)/(n+1)`
-/

namespace A399381.P5315817130530151093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399682 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A399381.P5315817130530151093

/-! ## A399381.P2218490116739711071

`A280009(A243958(n+2))`
-/

namespace A399381.P2218490116739711071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280009 (A243958 (n + 2)).toNat

end

end A399381.P2218490116739711071

/-!
# A399382: a(n) is the minimum positive integer k such that k*n+1 is squarefree.

The programs for A399382, there is no canonical definition to state claims against.
-/

/-! ## A399382.P17792438364696919594

`(A076986(n+1)-1)/(n+1)`
-/

namespace A399382.P17792438364696919594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076986 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A399382.P17792438364696919594

/-! ## A399382.P10660570063913851182

`A198333(A348049(n+2))`
-/

namespace A399382.P10660570063913851182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198333 (A348049 (n + 2)).toNat

end

end A399382.P10660570063913851182

/-! ## A399382.P16484070010105378822

`A342749(A351449(n+2))`
-/

namespace A399382.P16484070010105378822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (A351449 (n + 2)).toNat

end

end A399382.P16484070010105378822

/-! ## A399382.P15880741245922532579

`A136691(A183102(n+2))`
-/

namespace A399382.P15880741245922532579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 (A183102 (n + 2)).toNat

end

end A399382.P15880741245922532579

/-! ## A399382.P4891912219539120025

`A136691(A183104(n+2))`
-/

namespace A399382.P4891912219539120025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 (A183104 (n + 2)).toNat

end

end A399382.P4891912219539120025

/-!
# A399383: Triangle read by rows: T(n,k) = Sum_{i=0..n-k} binomial(n,i)*|Stirling1(n-i,k)|*k^i, for n >= 0 and 0 <= k <= n.

The programs for A399383, there is no canonical definition to state claims against.
-/

/-! ## A399383.P14296465717708549563

`A345672(A194938(n+1))`
-/

namespace A399383.P14296465717708549563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345672 (A194938 (n + 1)).toNat

end

end A399383.P14296465717708549563

/-!
# A399384: a(n) = (2*n + 1)*(n!)^2.

The programs for A399384, the canonical program `A399384.P7302958641022206687` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399384 has offset 0).

The definition of A399384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*n!²` (program `A399384.P7302958641022206687`, by `A399384.P7302958641022206687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399384.P7302958641022206687

`(2*n+1)*n!²`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399384

/-- `(2*n+1)*n!²` -/
def P7302958641022206687.Spec : Prop :=
  ∀ n, (P7302958641022206687.a n : ℤ) = A399384 n

theorem P7302958641022206687.correct : P7302958641022206687.Spec := by
  intro n
  simp only [A399384]

end A399384

/-! ## A399384.P4731634080967994339

`A007680(n)*n!`
-/

namespace A399384.P4731634080967994339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n * (Nat.factorial n : ℤ)

end

end A399384.P4731634080967994339

namespace A399384

/-- `A007680(n)*n!` -/
def P4731634080967994339.Spec : Prop :=
  ∀ n, P4731634080967994339.a n = A399384 n

theorem P4731634080967994339.correct : P4731634080967994339.Spec := by
  intro n
  simp only [A399384, Nat.add_sub_cancel, A399384.P4731634080967994339.a, A399384.P7302958641022206687.a, A007680, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399384

/-! ## A399384.P4687149696896314502

`n!²*Δ[n²]`
-/

namespace A399384.P4687149696896314502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A399384.P4687149696896314502

namespace A399384

/-- `n!²*Δ[n²]` -/
def P4687149696896314502.Spec : Prop :=
  ∀ n, P4687149696896314502.a n = A399384 n

theorem P4687149696896314502.correct : P4687149696896314502.Spec := by
  intro n
  simp only [A399384, Nat.add_sub_cancel, A399384.P4687149696896314502.f1, A399384.P4687149696896314502.a, A399384.P7302958641022206687.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A399384

/-! ## A399384.P2189128298190401443

`(n+1)!²-Δ[n!]²`
-/

namespace A399384.P2189128298190401443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A399384.P2189128298190401443

namespace A399384

/-- `(n+1)!²-Δ[n!]²` -/
def P2189128298190401443.Spec : Prop :=
  ∀ n, P2189128298190401443.a n = A399384 n

theorem P2189128298190401443.correct : P2189128298190401443.Spec := by
  intro n
  simp only [A399384, Nat.add_sub_cancel, A399384.P2189128298190401443.f1, A399384.P2189128298190401443.a, A399384.P7302958641022206687.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A399384

/-! ## A399384.P4257387175725277470

`(2*n+1)*n!*n!`
-/

namespace A399384.P4257387175725277470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.factorial n * Nat.factorial n

end

end A399384.P4257387175725277470

namespace A399384

/-- `(2*n+1)*n!*n!` -/
def P4257387175725277470.Spec : Prop :=
  ∀ n, (P4257387175725277470.a n : ℤ) = A399384 n

theorem P4257387175725277470.correct : P4257387175725277470.Spec := by
  intro n
  simp only [A399384, Nat.add_sub_cancel, A399384.P4257387175725277470.a, A399384.P7302958641022206687.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A399384

/-!
# A399387: Number of nonisomorphic undirected graphs with loops allowed on n vertices having trivial automorphism group.

The programs for A399387, there is no canonical definition to state claims against.
-/

/-! ## A399387.P18294672994660460547

`A205717(∑[n^n])`
-/

namespace A399387.P18294672994660460547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399387.P18294672994660460547

/-! ## A399387.P8848011191865968412

`A113320(A042885(n))`
-/

namespace A399387.P8848011191865968412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113320 (A042885 n).toNat

end

end A399387.P8848011191865968412

/-!
# A399388: Number of nonisomorphic asymmetric antisymmetric binary relations on an n-element set.

The programs for A399388, there is no canonical definition to state claims against.
-/

/-! ## A399388.P12219289819271422805

`A233188(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A399388.P12219289819271422805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A233188 (a (n - 1)).toNat

end

end A399388.P12219289819271422805

/-!
# A399389: G.f. A(x) satisfies: A(x) = x * ( 1 + x + ( A(x)^2 + A(x^2) ) / 2 ).

The programs for A399389, there is no canonical definition to state claims against.
-/

/-! ## A399389.P12108256900341996108

`A135660(A238014(n+1))`
-/

namespace A399389.P12108256900341996108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A238014 (n + 1)).toNat

end

end A399389.P12108256900341996108

/-!
# A399392: Number of free ouroboros polycubes with 2*n cells.

The programs for A399392, there is no canonical definition to state claims against.
-/

/-! ## A399392.P9013965733920311197

`A033865(A227937(n+1))`
-/

namespace A399392.P9013965733920311197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A227937 (n + 1)).toNat

end

end A399392.P9013965733920311197

/-!
# A399393: Number of one-sided ouroboros polycubes with 2*n cells.

The programs for A399393, there is no canonical definition to state claims against.
-/

/-! ## A399393.P7534835333820426341

`A106801(A063024(n))`
-/

namespace A399393.P7534835333820426341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A063024 n).toNat

end

end A399393.P7534835333820426341

/-! ## A399393.P4209167058616570946

`A382119(n+1)-(A161901(n+1)+A038548(n+2))`
-/

namespace A399393.P4209167058616570946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382119 (n + 1) - (A161901 (n + 1) + A038548 (n + 2))

end

end A399393.P4209167058616570946

/-!
# A399394: Number of fixed ouroboros polycubes with 2*n cells.

The programs for A399394, there is no canonical definition to state claims against.
-/

/-! ## A399394.P724642418286038614

`A247835(A272523(n+1))`
-/

namespace A399394.P724642418286038614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247835 (A272523 (n + 1)).toNat

end

end A399394.P724642418286038614

