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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A371605: Expansion of e.g.f. 1 / (1 - x + x^2/2 - x^3/3).

The programs for A371605, there is no canonical definition to state claims against.
-/

/-! ## A371605.P746243235426551600

`A342790(A291519(n))`
-/

namespace A371605.P746243235426551600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (A291519 n).toNat

end

end A371605.P746243235426551600

/-! ## A371605.P17239324413310439706

`A028335(A006882(n))%A357060(n+2)`
-/

namespace A371605.P17239324413310439706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028335 (A006882 n).toNat) (A357060 (n + 2))

end

end A371605.P17239324413310439706

/-! ## A371605.P3348274022600251851

`A126176(A036668(n+1))+A002264(n)+1`
-/

namespace A371605.P3348274022600251851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126176 (A036668 (n + 1)).toNat + (A002264 n + 1)

end

end A371605.P3348274022600251851

/-!
# A371606: Number of ways to fold with complete turns a strip of n blank double-sided sticky stamps.

The programs for A371606, there is no canonical definition to state claims against.
-/

/-! ## A371606.P11524034440346361789

`A166018(A001997(n))`
-/

namespace A371606.P11524034440346361789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A001997 n).toNat

end

end A371606.P11524034440346361789

/-! ## A371606.P10596497618797392712

`A023190(A148850(n))`
-/

namespace A371606.P10596497618797392712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148850 n).toNat

end

end A371606.P10596497618797392712

/-! ## A371606.P6518490920278060988

`A023190(A148851(n))`
-/

namespace A371606.P6518490920278060988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148851 n).toNat

end

end A371606.P6518490920278060988

/-!
# A371607: G.f. satisfies A(x) = ( 1 + x * (1 + x*A(x)^2) )^2.

The programs for A371607, there is no canonical definition to state claims against.
-/

/-! ## A371607.P1189724324482735554

`A320903(n)+A074290(A006542(n+6))`
-/

namespace A371607.P1189724324482735554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320903 n + A074290 (A006542 (n + 6)).toNat

end

end A371607.P1189724324482735554

/-! ## A371607.P12267961206244271608

`A022290(A001462(n+1)*A079468(n+1))`
-/

namespace A371607.P12267961206244271608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A001462 (n + 1) * A079468 (n + 1)).toNat

end

end A371607.P12267961206244271608

/-!
# A371608: G.f. satisfies A(x) = ( 1 + x * (1 + x*A(x)^3) )^2.

The programs for A371608, there is no canonical definition to state claims against.
-/

/-! ## A371608.P1724910729044304908

`A347610(A196140(n+1))`
-/

namespace A371608.P1724910729044304908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (A196140 (n + 1)).toNat

end

end A371608.P1724910729044304908

/-! ## A371608.P14476252260990137024

`A318953(A135364(n))-n`
-/

namespace A371608.P14476252260990137024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318953 (A135364 n).toNat - (n : ℤ)

end

end A371608.P14476252260990137024

/-!
# A371609: G.f. satisfies A(x) = ( 1 + x * (1 + x*A(x)^2)^2 )^2.

The programs for A371609, there is no canonical definition to state claims against.
-/

/-! ## A371609.P10407835994240087734

`A001861(n)-A086011(A002110(n))`
-/

namespace A371609.P10407835994240087734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 n - A086011 (A002110 n).toNat

end

end A371609.P10407835994240087734

/-! ## A371609.P10536245491690934367

`A001861(n)-A188172(A041049(n))`
-/

namespace A371609.P10536245491690934367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 n - A188172 (A041049 n).toNat

end

end A371609.P10536245491690934367

/-!
# A371610: G.f. satisfies A(x) = ( 1 + x * (1 + x*A(x)^3)^2 )^2.

The programs for A371610, there is no canonical definition to state claims against.
-/

/-! ## A371610.P11312503275096060871

`A002872(n)-A007814(A002465(n))`
-/

namespace A371610.P11312503275096060871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002872 n - A007814 (A002465 n).toNat

end

end A371610.P11312503275096060871

/-! ## A371610.P15554231488507158015

`A002872(n)-A001222(A194725(n))`
-/

namespace A371610.P15554231488507158015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002872 n - A001222 (A194725 n).toNat

end

end A371610.P15554231488507158015

/-!
# A371611: Number of 2*n-sided cycles with the property that one makes the same number of left and right turns while following its edges.

The programs for A371611, there is no canonical definition to state claims against.
-/

/-! ## A371611.P6212185387380729084

`A365094(A059993(n+1))`
-/

namespace A371611.P6212185387380729084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365094 (A059993 (n + 1)).toNat

end

end A371611.P6212185387380729084

/-!
# A371612: G.f. satisfies A(x) = ( 1 + x / (1 - x*A(x)^2) )^2.

The programs for A371612, there is no canonical definition to state claims against.
-/

/-! ## A371612.P16851943745763192542

`A008676(A392416(n+2))`
-/

namespace A371612.P16851943745763192542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A392416 (n + 2)).toNat

end

end A371612.P16851943745763192542

/-! ## A371612.P16339932167745140697

`A309576(A326363(n))+A301456(n)`
-/

namespace A371612.P16339932167745140697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309576 (A326363 n).toNat + A301456 n

end

end A371612.P16339932167745140697

/-!
# A371613: G.f. satisfies A(x) = ( 1 + x / (1 - x*A(x)^3) )^2.

The programs for A371613, there is no canonical definition to state claims against.
-/

/-! ## A371613.P11707342126246240782

`A307013(A052842(n))+A000262(n)`
-/

namespace A371613.P11707342126246240782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 (A052842 n).toNat + A000262 n

end

end A371613.P11707342126246240782

/-! ## A371613.P3255396040796831517

`A157466(A000312(n))-A337038(n)`
-/

namespace A371613.P3255396040796831517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157466 (A000312 n).toNat - A337038 n

end

end A371613.P3255396040796831517

/-!
# A371614: G.f. satisfies A(x) = ( 1 + x / (1 - x*A(x)^2)^2 )^2.

The programs for A371614, there is no canonical definition to state claims against.
-/

/-! ## A371614.P3601955872762048971

`A315361(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A371614.P3601955872762048971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A315361 (a (n - 1)).toNat

end

end A371614.P3601955872762048971

/-!
# A371615: G.f. satisfies A(x) = ( 1 + x / (1 - x*A(x)^3)^2 )^2.

The programs for A371615, there is no canonical definition to state claims against.
-/

/-! ## A371615.P5285172106400505475

`A326946(n)%A001359(A017593(n))`
-/

namespace A371615.P5285172106400505475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326946 n) (A001359 (A017593 n).toNat)

end

end A371615.P5285172106400505475

/-! ## A371615.P13701920651403970294

`A289078(n+1)+A057367(A093145(n))`
-/

namespace A371615.P13701920651403970294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (n + 1) + A057367 (A093145 n).toNat

end

end A371615.P13701920651403970294

/-!
# A371616: G.f. satisfies A(x) = 1 + x / (1 - x*A(x)^3)^3.

The programs for A371616, there is no canonical definition to state claims against.
-/

/-! ## A371616.P6804673500268735978

`or(A014276(n), A336664(A269484(n+1)))`
-/

namespace A371616.P6804673500268735978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014276 n) (A336664 (A269484 (n + 1)).toNat)

end

end A371616.P6804673500268735978

/-! ## A371616.P10835461668916888898

`A302478(A045572(n!))`
-/

namespace A371616.P10835461668916888898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A045572 (Nat.factorial n)).toNat

end

end A371616.P10835461668916888898

/-!
# A371617: G.f. satisfies A(x) = ( 1 + x / (1 - x*A(x)^3)^3 )^2.

The programs for A371617, there is no canonical definition to state claims against.
-/

/-! ## A371617.P5096839484757183852

`A194403(A366453(n))`
-/

namespace A371617.P5096839484757183852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (A366453 n).toNat

end

end A371617.P5096839484757183852

/-!
# A371618: Indices where prime(n) first appears in A373902.

The programs for A371618, there is no canonical definition to state claims against.
-/

/-! ## A371618.P5726840215597286126

`A187808(A219455(n+2))`
-/

namespace A371618.P5726840215597286126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187808 (A219455 (n + 2)).toNat

end

end A371618.P5726840215597286126

/-!
# A371620: Fractal sequence based on a heptagon: a(n) = number of unobscured heptagons remaining after completing step n.

The programs for A371620, there is no canonical definition to state claims against.
-/

/-! ## A371620.P8864641011872572047

`ogf((-1+4x)/(-1+5x+3x^2+5x^3-3x^4))`
-/

namespace A371620.P8864641011872572047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -3, -5, 3] n

end

end A371620.P8864641011872572047

/-!
# A371622: Primes p such that p - 2 and p + 2 have the same number of prime factors, counted with multiplicity.

The programs for A371622, the canonical program `A371622.P18148360112742593564` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371622 has offset 1).

The definition of A371622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371622.P18148360112742593564

`p?[A371656(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A371622

/-- `p?[A371656(n+1)]` -/
def P18148360112742593564.Spec : Prop :=
  ∀ n, P18148360112742593564.a n = A371622 (n + 1)

theorem P18148360112742593564.correct : P18148360112742593564.Spec := by
  intro n
  simp only [A371622, Nat.add_sub_cancel]

end A371622

/-! ## A371622.P9002424329033319979

`filter[A371656(n+1), A010051(#)]`
-/

namespace A371622.P9002424329033319979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A371622.P9002424329033319979

namespace A371622

/-- `filter[A371656(n+1), A010051(#)]` -/
def P9002424329033319979.Spec : Prop :=
  ∀ n, P9002424329033319979.a n = A371622 (n + 1)

end A371622

/-! ## A371622.P8942142975402520796

`∩[A000040(n+1), A371656(n+1)]`
-/

namespace A371622.P8942142975402520796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P8942142975402520796

namespace A371622

/-- `∩[A000040(n+1), A371656(n+1)]` -/
def P8942142975402520796.Spec : Prop :=
  ∀ n, (P8942142975402520796.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P12108303646879005555

`∩[A006005(n+1), A371656(n+1)]`
-/

namespace A371622.P12108303646879005555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P12108303646879005555

namespace A371622

/-- `∩[A006005(n+1), A371656(n+1)]` -/
def P12108303646879005555.Spec : Prop :=
  ∀ n, (P12108303646879005555.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P690277925399597049

`∩[A008578(n+1), A371656(n+1)]`
-/

namespace A371622.P690277925399597049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P690277925399597049

namespace A371622

/-- `∩[A008578(n+1), A371656(n+1)]` -/
def P690277925399597049.Spec : Prop :=
  ∀ n, (P690277925399597049.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P17422604176315721336

`∩[A045344(n+1), A371656(n+1)]`
-/

namespace A371622.P17422604176315721336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P17422604176315721336

namespace A371622

/-- `∩[A045344(n+1), A371656(n+1)]` -/
def P17422604176315721336.Spec : Prop :=
  ∀ n, (P17422604176315721336.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P16555143510636952590

`∩[A046022(n+1), A371656(n+1)]`
-/

namespace A371622.P16555143510636952590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P16555143510636952590

namespace A371622

/-- `∩[A046022(n+1), A371656(n+1)]` -/
def P16555143510636952590.Spec : Prop :=
  ∀ n, (P16555143510636952590.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P57694009892383746

`∩[A051948(n+1), A371656(n+1)]`
-/

namespace A371622.P57694009892383746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P57694009892383746

namespace A371622

/-- `∩[A051948(n+1), A371656(n+1)]` -/
def P57694009892383746.Spec : Prop :=
  ∀ n, (P57694009892383746.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P5422807923845754596

`∩[A065091(n+1), A371656(n+1)]`
-/

namespace A371622.P5422807923845754596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P5422807923845754596

namespace A371622

/-- `∩[A065091(n+1), A371656(n+1)]` -/
def P5422807923845754596.Spec : Prop :=
  ∀ n, (P5422807923845754596.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P18331267274185427402

`∩[A108719(n+1), A371656(n+1)]`
-/

namespace A371622.P18331267274185427402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P18331267274185427402

namespace A371622

/-- `∩[A108719(n+1), A371656(n+1)]` -/
def P18331267274185427402.Spec : Prop :=
  ∀ n, (P18331267274185427402.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P1356743522384188401

`∩[A116974(n+1), A371656(n+1)]`
-/

namespace A371622.P1356743522384188401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P1356743522384188401

namespace A371622

/-- `∩[A116974(n+1), A371656(n+1)]` -/
def P1356743522384188401.Spec : Prop :=
  ∀ n, (P1356743522384188401.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P3168841658991683289

`∩[A140475(n+1), A371656(n+1)]`
-/

namespace A371622.P3168841658991683289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P3168841658991683289

namespace A371622

/-- `∩[A140475(n+1), A371656(n+1)]` -/
def P3168841658991683289.Spec : Prop :=
  ∀ n, (P3168841658991683289.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P11513481584578055179

`∩[A158611(n+1), A371656(n+1)]`
-/

namespace A371622.P11513481584578055179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P11513481584578055179

namespace A371622

/-- `∩[A158611(n+1), A371656(n+1)]` -/
def P11513481584578055179.Spec : Prop :=
  ∀ n, (P11513481584578055179.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P15383327852959375725

`∩[A182986(n+1), A371656(n+1)]`
-/

namespace A371622.P15383327852959375725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P15383327852959375725

namespace A371622

/-- `∩[A182986(n+1), A371656(n+1)]` -/
def P15383327852959375725.Spec : Prop :=
  ∀ n, (P15383327852959375725.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P14538024245814915704

`∩[A261123(n+1), A371656(n+1)]`
-/

namespace A371622.P14538024245814915704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P14538024245814915704

namespace A371622

/-- `∩[A261123(n+1), A371656(n+1)]` -/
def P14538024245814915704.Spec : Prop :=
  ∀ n, (P14538024245814915704.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P4208025090465114282

`∩[A164921(n+1), A371656(n+1)]`
-/

namespace A371622.P4208025090465114282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371622.P4208025090465114282

namespace A371622

/-- `∩[A164921(n+1), A371656(n+1)]` -/
def P4208025090465114282.Spec : Prop :=
  ∀ n, (P4208025090465114282.a n : ℤ) = A371622 (n + 1)

end A371622

/-! ## A371622.P2503820062849091662

`filter[A371656(n+1), A080339(#)]`
-/

namespace A371622.P2503820062849091662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A371622.P2503820062849091662

namespace A371622

/-- `filter[A371656(n+1), A080339(#)]` -/
def P2503820062849091662.Spec : Prop :=
  ∀ n, P2503820062849091662.a n = A371622 (n + 1)

end A371622

/-! ## A371622.P15194376580660563835

`filter[A371656(n+1), A080545(#)]`
-/

namespace A371622.P15194376580660563835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A371622.P15194376580660563835

namespace A371622

/-- `filter[A371656(n+1), A080545(#)]` -/
def P15194376580660563835.Spec : Prop :=
  ∀ n, P15194376580660563835.a n = A371622 (n + 1)

end A371622

/-! ## A371622.P1636979766409497930

`filter[A371656(n+1), A171387(#)]`
-/

namespace A371622.P1636979766409497930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A371622.P1636979766409497930

namespace A371622

/-- `filter[A371656(n+1), A171387(#)]` -/
def P1636979766409497930.Spec : Prop :=
  ∀ n, P1636979766409497930.a n = A371622 (n + 1)

end A371622

/-!
# A371625: The x-coordinate of the point (x,y) where x + y = n, x is an integer, and x/y is as close as possible to phi (by absolute difference).

The programs for A371625, there is no canonical definition to state claims against.
-/

/-! ## A371625.P15891720292437140885

`n+1-A371626(n+1)`
-/

namespace A371625.P15891720292437140885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A371626 (n + 1)

end

end A371625.P15891720292437140885

/-! ## A371625.P394117319872084748

`round((n+1-acot(n))/ϕ)`
-/

namespace A371625.P394117319872084748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) / Real.goldenRatio)

end

end A371625.P394117319872084748

/-! ## A371625.P7231471363178447736

`round((n+1-1/(n+1))/ϕ)`
-/

namespace A371625.P7231471363178447736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℚ) - 1 / (n + 1 : ℚ) : ℝ) / Real.goldenRatio)

end

end A371625.P7231471363178447736

/-! ## A371625.P11514660592983494041

`ceil(log2(A214041(n+2)))`
-/

namespace A371625.P11514660592983494041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A214041 (n + 2) : ℝ)⌉

end

end A371625.P11514660592983494041

/-! ## A371625.P5967177646304280194

`n-A002837(A371626(n+1))`
-/

namespace A371625.P5967177646304280194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002837 (A371626 (n + 1)).toNat

end

end A371625.P5967177646304280194

/-! ## A371625.P15097433170531147712

`floor(A260733(3*(n+1))/A016897(n))`
-/

namespace A371625.P15097433170531147712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260733 (3 * (n + 1)) : ℚ) / (A016897 n : ℚ)⌋

end

end A371625.P15097433170531147712

/-!
# A371626: The y-coordinate of the point where x + y = n, x is an integer and x/y is as close as possible to phi (by absolute difference).

The programs for A371626, there is no canonical definition to state claims against.
-/

/-! ## A371626.P10427782907944128108

`n+1-A371625(n+1)`
-/

namespace A371626.P10427782907944128108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A371625 (n + 1)

end

end A371626.P10427782907944128108

/-! ## A371626.P651770538832695018

`1-round((n+1-acot(n))/ϕ)+n`
-/

namespace A371626.P651770538832695018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) / Real.goldenRatio) + (n : ℤ)

end

end A371626.P651770538832695018

/-! ## A371626.P16726679391806745612

`ceil(A067728(n+1)/A022423(2*(n+1)))`
-/

namespace A371626.P16726679391806745612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067728 (n + 1) : ℚ) / (A022423 (2 * (n + 1)) : ℚ)⌉

end

end A371626.P16726679391806745612

/-! ## A371626.P4424157679174472595

`A024000(A371625(n+1))+n`
-/

namespace A371626.P4424157679174472595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A371625 (n + 1)).toNat + (n : ℤ)

end

end A371626.P4424157679174472595

/-! ## A371626.P3562635920773554592

`A080079(A371625(n+1)+A080079(n+1))`
-/

namespace A371626.P3562635920773554592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A371625 (n + 1) + A080079 (n + 1)).toNat

end

end A371626.P3562635920773554592

/-! ## A371626.P13326086983181373372

`A105209(A078411(n))`
-/

namespace A371626.P13326086983181373372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A078411 n).toNat

end

end A371626.P13326086983181373372

/-!
# A371627: The x-coordinate of the point where x + y = n, x is an integer and x/y is as close as possible to 1/phi.

The programs for A371627, the canonical program `A371627.P7388867108596461691` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371627 has offset 1).

The definition of A371627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371627.P16058539759369631232

`round(cot(ϕ/(n+1))/ϕ)`
-/

namespace A371627.P16058539759369631232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.goldenRatio / (n + 1 : ℝ)) / Real.goldenRatio)

end

end A371627.P16058539759369631232

namespace A371627

/-- `round(cot(ϕ/(n+1))/ϕ)` -/
def P16058539759369631232.Spec : Prop :=
  ∀ n, P16058539759369631232.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P1420557845916901706

`floor((ϕ+2)*(n+1))-A186516(n+1)`
-/

namespace A371627.P1420557845916901706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋ - A186516 (n + 1)

end

end A371627.P1420557845916901706

namespace A371627

/-- `floor((ϕ+2)*(n+1))-A186516(n+1)` -/
def P1420557845916901706.Spec : Prop :=
  ∀ n, P1420557845916901706.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P7388867108596461691

`A003231(n+1)%A186516(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A371627

/-- `A003231(n+1)%A186516(n+1)` -/
def P7388867108596461691.Spec : Prop :=
  ∀ n, P7388867108596461691.a n = A371627 (n + 1)

theorem P7388867108596461691.correct : P7388867108596461691.Spec := by
  intro n
  simp only [A371627, Nat.add_sub_cancel]

end A371627

/-! ## A371627.P9425825499555071164

`A110654(A004767(n)-A186516(n+1))`
-/

namespace A371627.P9425825499555071164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004767 n - A186516 (n + 1)).toNat

end

end A371627.P9425825499555071164

namespace A371627

/-- `A110654(A004767(n)-A186516(n+1))` -/
def P9425825499555071164.Spec : Prop :=
  ∀ n, P9425825499555071164.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P5046959891761882092

`floor(ϕ*(n+1))%A005378(2*n+1)`
-/

namespace A371627.P5046959891761882092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ (A005378 (2 * n + 1))

end

end A371627.P5046959891761882092

namespace A371627

/-- `floor(ϕ*(n+1))%A005378(2*n+1)` -/
def P5046959891761882092.Spec : Prop :=
  ∀ n, P5046959891761882092.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P3368636782576655348

`A110654(2*n+1)-A110654(A005378(2*n+1))`
-/

namespace A371627.P3368636782576655348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n + 1) - A110654 (A005378 (2 * n + 1)).toNat

end

end A371627.P3368636782576655348

namespace A371627

/-- `A110654(2*n+1)-A110654(A005378(2*n+1))` -/
def P3368636782576655348.Spec : Prop :=
  ∀ n, P3368636782576655348.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P4338699390308015298

`2*(n+1)-A295282(n+1)`
-/

namespace A371627.P4338699390308015298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A295282 (n + 1)

end

end A371627.P4338699390308015298

namespace A371627

/-- `2*(n+1)-A295282(n+1)` -/
def P4338699390308015298.Spec : Prop :=
  ∀ n, P4338699390308015298.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P6922695393486411163

`A367066(A367066(n+4)-1)`
-/

namespace A371627.P6922695393486411163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A367066 (n + 4) - 1).toNat

end

end A371627.P6922695393486411163

namespace A371627

/-- `A367066(A367066(n+4)-1)` -/
def P6922695393486411163.Spec : Prop :=
  ∀ n, P6922695393486411163.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P8260138575684813652

`n+1-A189663(A295282(n+1))`
-/

namespace A371627.P8260138575684813652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A189663 (A295282 (n + 1)).toNat

end

end A371627.P8260138575684813652

namespace A371627

/-- `n+1-A189663(A295282(n+1))` -/
def P8260138575684813652.Spec : Prop :=
  ∀ n, P8260138575684813652.a n = A371627 (n + 1)

end A371627

/-! ## A371627.P5279116227542680604

`A163300(n+1)%A295282(n+1)`
-/

namespace A371627.P5279116227542680604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A295282 (n + 1))

end

end A371627.P5279116227542680604

namespace A371627

/-- `A163300(n+1)%A295282(n+1)` -/
def P5279116227542680604.Spec : Prop :=
  ∀ n, P5279116227542680604.a n = A371627 (n + 1)

end A371627

/-!
# A371628: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, x_4, n) )^3.

The programs for A371628, the canonical program `A371628.P15621552581421940745` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371628 has offset 1).

The definition of A371628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371628.P15621552581421940745

`∑{d}[n+1, A084220(#)*A189393((n+1)/#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A371628

/-- `∑{d}[n+1, A084220(#)*A189393((n+1)/#)]` -/
def P15621552581421940745.Spec : Prop :=
  ∀ n, P15621552581421940745.a n = A371628 (n + 1)

theorem P15621552581421940745.correct : P15621552581421940745.Spec := by
  intro n
  simp only [A371628, Nat.add_sub_cancel]

end A371628

/-!
# A371629: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^3.

The programs for A371629, the canonical program `A371629.P6292007437965494300` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371629 has offset 1).

The definition of A371629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371629.P6292007437965494300

`∑[A179298(val(n+1, 2)+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A371629

/-- `∑[A179298(val(n+1, 2)+1)]` -/
def P6292007437965494300.Spec : Prop :=
  ∀ n, P6292007437965494300.a n = A371629 (n + 1)

theorem P6292007437965494300.correct : P6292007437965494300.Spec := by
  intro n
  simp only [A371629, Nat.add_sub_cancel]

end A371629

/-! ## A371629.P6230053200352474120

`A384816(A019565(n+1))`
-/

namespace A371629.P6230053200352474120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384816 (A019565 (n + 1)).toNat

end

end A371629.P6230053200352474120

namespace A371629

/-- `A384816(A019565(n+1))` -/
def P6230053200352474120.Spec : Prop :=
  ∀ n, P6230053200352474120.a n = A371629 (n + 1)

end A371629

/-!
# A371630: Numbers k that set records in A372720.

The programs for A371630, there is no canonical definition to state claims against.
-/

/-! ## A371630.P5636373217895225049

`∩[A194096(n+1), A048325(n)]`
-/

namespace A371630.P5636373217895225049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371630.P5636373217895225049

/-! ## A371630.P13104925186867195808

`∩[A023769(n+1), A194096(n+1)]`
-/

namespace A371630.P13104925186867195808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371630.P13104925186867195808

/-! ## A371630.P15252273422883731244

`∩[A044825(n+1), A194096(n+1)]`
-/

namespace A371630.P15252273422883731244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371630.P15252273422883731244

/-! ## A371630.P6265270533462707186

`∩[A044963(n+1), A194096(n+1)]`
-/

namespace A371630.P6265270533462707186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371630.P6265270533462707186

/-! ## A371630.P512720127284186103

`record[A277906(A064989((n+1)²))]`
-/

namespace A371630.P512720127284186103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A064989 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371630.P512720127284186103

/-!
# A371631: Primes whose product of nonzero digits divided by the sum of its digits is also prime.

The programs for A371631, there is no canonical definition to state claims against.
-/

/-! ## A371631.P10984665019197484902

`p?[A138566(n+1)]`
-/

namespace A371631.P10984665019197484902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A371631.P10984665019197484902

/-!
# A371632: Lexicographically earliest sequence of positive integers such that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form a progression of the form p, p+q, p-q, where q >= 0.

The programs for A371632, there is no canonical definition to state claims against.
-/

/-! ## A371632.P5968667837892835872

`A196563(∑[∑[A325781(3*n+2)]])`
-/

namespace A371632.P5968667837892835872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371632.P5968667837892835872

/-! ## A371632.P16480132671129359267

`A001221(A064957(n+1)+A034386(n+1))`
-/

namespace A371632.P16480132671129359267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064957 (n + 1) + A034386 (n + 1)).toNat

end

end A371632.P16480132671129359267

/-! ## A371632.P15780601673637051

`A002828(A309086(3*n+1)*A347459(n+1))`
-/

namespace A371632.P15780601673637051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A309086 (3 * n + 1) * A347459 (n + 1)).toNat

end

end A371632.P15780601673637051

/-! ## A371632.P8861111307249217124

`A001221(xor(A000041(3*n+2), A359804(n+1)))`
-/

namespace A371632.P8861111307249217124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A000041 (3 * n + 2)) (A359804 (n + 1))).toNat

end

end A371632.P8861111307249217124

/-! ## A371632.P10902203746873977216

`A062756(A054269(n+1)+A000225(n))`
-/

namespace A371632.P10902203746873977216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A054269 (n + 1) + A000225 n).toNat

end

end A371632.P10902203746873977216

/-!
# A371633: Number of ways to choose a simple labeled graph on [n], then partition the vertex set into independent sets, then choose a vertex from each independent set.

The programs for A371633, there is no canonical definition to state claims against.
-/

/-! ## A371633.P18373072712780443064

`A081523(A041051(n))`
-/

namespace A371633.P18373072712780443064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081523 (A041051 n).toNat

end

end A371633.P18373072712780443064

/-!
# A371634: Records in A372720.

The programs for A371634, there is no canonical definition to state claims against.
-/

/-! ## A371634.P5763984612873457652

`A095960(A371630(n+1))`
-/

namespace A371634.P5763984612873457652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (A371630 (n + 1)).toNat

end

end A371634.P5763984612873457652

/-! ## A371634.P9657842308009672721

`record[A095960(A002202(n+1))]`
-/

namespace A371634.P9657842308009672721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (A002202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371634.P9657842308009672721

/-! ## A371634.P6437165953027877156

`record[A095960(A025487(n+1))]`
-/

namespace A371634.P6437165953027877156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371634.P6437165953027877156

/-! ## A371634.P15059121128480065120

`record[A372720(A005153(n+1))]`
-/

namespace A371634.P15059121128480065120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372720 (A005153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371634.P15059121128480065120

/-! ## A371634.P7548055319147332744

`A372720(A371630(n+1)+A355432(n+1))`
-/

namespace A371634.P7548055319147332744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372720 (A371630 (n + 1) + A355432 (n + 1)).toNat

end

end A371634.P7548055319147332744

/-!
# A371636: For any number k >= 0, let T_k be the triangle with values in {-1, 0, +1} whose base corresponds to the balanced ternary expansion of k (without leading zeros) and other values, say t above u and v, satisfy t+u+v = 0 mod 3; this sequence lists the numbers k such that T_k has 3-fold rotational symmetry.

The programs for A371636, there is no canonical definition to state claims against.
-/

/-! ## A371636.P18083896017746696618

`eq[n, A134028(A371635(n))]`
-/

namespace A371636.P18083896017746696618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A371635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371636.P18083896017746696618

/-!
# A371637: Triangle read by rows: T(n, k) = (-8)^k*binomial(2*n, 2*k)*Euler(2*k, 1/2).

The programs for A371637, there is no canonical definition to state claims against.
-/

/-! ## A371637.P14244875041345313457

`A059268(n)*A086646(A061579(n))`
-/

namespace A371637.P14244875041345313457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A086646 (A061579 n).toNat

end

end A371637.P14244875041345313457

/-!
# A371638: a(n) = 2*n + valuation(n, 3) with valuation(n, 3) = A007949(n).

The programs for A371638, the canonical program `A371638.P3848879041737044132` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371638 has offset 1).

The definition of A371638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+val(n+1, 3)` (program `A371638.P3848879041737044132`, by `A371638.P3848879041737044132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371638.P3848879041737044132

`2*(n+1)+val(n+1, 3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A371638

/-- `2*(n+1)+val(n+1, 3)` -/
def P3848879041737044132.Spec : Prop :=
  ∀ n, (P3848879041737044132.a n : ℤ) = A371638 (n + 1)

theorem P3848879041737044132.correct : P3848879041737044132.Spec := by
  intro n
  simp only [A371638, Nat.add_sub_cancel]

end A371638

/-! ## A371638.P17374520377594660486

`val(n+1, 3)+2+n+n`
-/

namespace A371638.P17374520377594660486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 + 2 + n + n

end

end A371638.P17374520377594660486

namespace A371638

/-- `val(n+1, 3)+2+n+n` -/
def P17374520377594660486.Spec : Prop :=
  ∀ n, (P17374520377594660486.a n : ℤ) = A371638 (n + 1)

theorem P17374520377594660486.correct : P17374520377594660486.Spec := by
  intro n
  simp only [A371638, Nat.add_sub_cancel, A371638.P17374520377594660486.a, A371638.P3848879041737044132.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A371638

/-! ## A371638.P163154213759708395

`A366922(n+1)+2*n`
-/

namespace A371638.P163154213759708395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366922 (n + 1) + (2 * n : ℤ)

end

end A371638.P163154213759708395

namespace A371638

/-- `A366922(n+1)+2*n` -/
def P163154213759708395.Spec : Prop :=
  ∀ n, P163154213759708395.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P6468643359579719760

`A051064(n+1)+Δ[n²]`
-/

namespace A371638.P6468643359579719760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A371638.P6468643359579719760

namespace A371638

/-- `A051064(n+1)+Δ[n²]` -/
def P6468643359579719760.Spec : Prop :=
  ∀ n, P6468643359579719760.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P3535334719509044884

`A007949(n+1)+2*(n+1)`
-/

namespace A371638.P3535334719509044884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + (2 * (n + 1) : ℤ)

end

end A371638.P3535334719509044884

namespace A371638

/-- `A007949(n+1)+2*(n+1)` -/
def P3535334719509044884.Spec : Prop :=
  ∀ n, P3535334719509044884.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P7706318480213195898

`A001511(A064989(n+1))+2*n+1`
-/

namespace A371638.P7706318480213195898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A064989 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P7706318480213195898

namespace A371638

/-- `A001511(A064989(n+1))+2*n+1` -/
def P7706318480213195898.Spec : Prop :=
  ∀ n, P7706318480213195898.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P16160758182278238385

`A072078(A000265(n+1))+2*n+1`
-/

namespace A371638.P16160758182278238385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A000265 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P16160758182278238385

namespace A371638

/-- `A072078(A000265(n+1))+2*n+1` -/
def P16160758182278238385.Spec : Prop :=
  ∀ n, P16160758182278238385.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P282133073326554511

`A254046(A003602(n+1))+2*n+1`
-/

namespace A371638.P282133073326554511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A003602 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P282133073326554511

namespace A371638

/-- `A254046(A003602(n+1))+2*n+1` -/
def P282133073326554511.Spec : Prop :=
  ∀ n, P282133073326554511.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P16341363285052361833

`A001511(A318509(n+1))+2*n+1`
-/

namespace A371638.P16341363285052361833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A318509 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P16341363285052361833

namespace A371638

/-- `A001511(A318509(n+1))+2*n+1` -/
def P16341363285052361833.Spec : Prop :=
  ∀ n, P16341363285052361833.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P12254495272486265378

`A001511(A348747(n+1))+2*n+1`
-/

namespace A371638.P12254495272486265378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A348747 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P12254495272486265378

namespace A371638

/-- `A001511(A348747(n+1))+2*n+1` -/
def P12254495272486265378.Spec : Prop :=
  ∀ n, P12254495272486265378.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P11773322219021416821

`A001227(A370180(n+1))+2*n+1`
-/

namespace A371638.P11773322219021416821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A370180 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P11773322219021416821

namespace A371638

/-- `A001227(A370180(n+1))+2*n+1` -/
def P11773322219021416821.Spec : Prop :=
  ∀ n, P11773322219021416821.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P11751359076557157411

`A280509(A246200(n+1))+2*n+1`
-/

namespace A371638.P11751359076557157411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280509 (A246200 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A371638.P11751359076557157411

namespace A371638

/-- `A280509(A246200(n+1))+2*n+1` -/
def P11751359076557157411.Spec : Prop :=
  ∀ n, P11751359076557157411.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P16200073647518063386

`Δ[A004128(n)+n²]`
-/

namespace A371638.P16200073647518063386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371638.P16200073647518063386

namespace A371638

/-- `Δ[A004128(n)+n²]` -/
def P16200073647518063386.Spec : Prop :=
  ∀ n, P16200073647518063386.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P5617067075434477809

`Δ[A120514(n+1)+n²]`
-/

namespace A371638.P5617067075434477809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120514 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371638.P5617067075434477809

namespace A371638

/-- `Δ[A120514(n+1)+n²]` -/
def P5617067075434477809.Spec : Prop :=
  ∀ n, P5617067075434477809.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P4304476185204218479

`Δ[(n+1)²-A089792(n)]`
-/

namespace A371638.P4304476185204218479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A089792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371638.P4304476185204218479

namespace A371638

/-- `Δ[(n+1)²-A089792(n)]` -/
def P4304476185204218479.Spec : Prop :=
  ∀ n, P4304476185204218479.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P9531233927776340150

`A346502(n+1)-(A054861(n+1)+A054861(n))`
-/

namespace A371638.P9531233927776340150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 (n + 1) - (A054861 (n + 1) + A054861 n)

end

end A371638.P9531233927776340150

namespace A371638

/-- `A346502(n+1)-(A054861(n+1)+A054861(n))` -/
def P9531233927776340150.Spec : Prop :=
  ∀ n, P9531233927776340150.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P15650883899403904495

`A091512(2*n+1)+A051064(n+1)`
-/

namespace A371638.P15650883899403904495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091512 (2 * n + 1) + A051064 (n + 1)

end

end A371638.P15650883899403904495

namespace A371638

/-- `A091512(2*n+1)+A051064(n+1)` -/
def P15650883899403904495.Spec : Prop :=
  ∀ n, P15650883899403904495.a n = A371638 (n + 1)

end A371638

/-! ## A371638.P3982480226519911878

`A246200(A246200(2*n+1))+A051064(2*(n+1))`
-/

namespace A371638.P3982480226519911878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A246200 (2 * n + 1)).toNat + A051064 (2 * (n + 1))

end

end A371638.P3982480226519911878

namespace A371638

/-- `A246200(A246200(2*n+1))+A051064(2*(n+1))` -/
def P3982480226519911878.Spec : Prop :=
  ∀ n, P3982480226519911878.a n = A371638 (n + 1)

end A371638

/-!
# A371640: a(n) = 3^(2*n + valuation(n, 3)) = 3^A371638(n).

The programs for A371640, the canonical program `A371640.P6272718172563112277` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371640 has offset 1).

The definition of A371640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371640.P7503199325995250729

`3^(2*(n+1)+val(n+1, 3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371640.P7503199325995250729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (2 * (n + 1) + SequenceMachineLib.valuation (n + 1) 3)

end

end A371640.P7503199325995250729

namespace A371640

/-- `3^(2*(n+1)+val(n+1, 3))` -/
def P7503199325995250729.Spec : Prop :=
  ∀ n, (P7503199325995250729.a n : ℤ) = A371640 (n + 1)

end A371640

/-! ## A371640.P6272718172563112277

`3^A371638(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A371640

/-- `3^A371638(n+1)` -/
def P6272718172563112277.Spec : Prop :=
  ∀ n, P6272718172563112277.a n = (A371640 (n + 1) : ℚ)

end A371640

/-! ## A371640.P14151878275853645760

`A000244(A371638(n+1))`
-/

namespace A371640.P14151878275853645760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A371638 (n + 1)).toNat

end

end A371640.P14151878275853645760

namespace A371640

/-- `A000244(A371638(n+1))` -/
def P14151878275853645760.Spec : Prop :=
  ∀ n, P14151878275853645760.a n = A371640 (n + 1)

end A371640

/-! ## A371640.P252109432933673060

`A000244(A051064(n+1)+2*n+1)`
-/

namespace A371640.P252109432933673060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A051064 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A371640.P252109432933673060

namespace A371640

/-- `A000244(A051064(n+1)+2*n+1)` -/
def P252109432933673060.Spec : Prop :=
  ∀ n, P252109432933673060.a n = A371640 (n + 1)

end A371640

/-! ## A371640.P15178223639705981779

`A001019(n+1)*A038500(2*(n+1))`
-/

namespace A371640.P15178223639705981779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (n + 1) * A038500 (2 * (n + 1))

end

end A371640.P15178223639705981779

namespace A371640

/-- `A001019(n+1)*A038500(2*(n+1))` -/
def P15178223639705981779.Spec : Prop :=
  ∀ n, P15178223639705981779.a n = A371640 (n + 1)

end A371640

/-! ## A371640.P18287739017406509175

`A038500(n+1)*A133494(2*n+3)`
-/

namespace A371640.P18287739017406509175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A133494 (2 * n + 3)

end

end A371640.P18287739017406509175

namespace A371640

/-- `A038500(n+1)*A133494(2*n+3)` -/
def P18287739017406509175.Spec : Prop :=
  ∀ n, P18287739017406509175.a n = A371640 (n + 1)

end A371640

/-! ## A371640.P17615183738833987129

`A000244(n+1)²*A038500(2*(n+1))`
-/

namespace A371640.P17615183738833987129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) ^ 2 * A038500 (2 * (n + 1))

end

end A371640.P17615183738833987129

namespace A371640

/-- `A000244(n+1)²*A038500(2*(n+1))` -/
def P17615183738833987129.Spec : Prop :=
  ∀ n, P17615183738833987129.a n = A371640 (n + 1)

end A371640

/-! ## A371640.P8586662389318650598

`A055156(n+1)/A273893(n+1)*A055156(n)`
-/

namespace A371640.P8586662389318650598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055156 (n + 1) : ℚ) / (A273893 (n + 1) : ℚ) * (A055156 n : ℚ)

end

end A371640.P8586662389318650598

namespace A371640

/-- `A055156(n+1)/A273893(n+1)*A055156(n)` -/
def P8586662389318650598.Spec : Prop :=
  ∀ n, P8586662389318650598.a n = (A371640 (n + 1) : ℚ)

end A371640

/-! ## A371640.P4104835183219775463

`A000244(n+1)*A000244(n+1)*A038500(n+1)`
-/

namespace A371640.P4104835183219775463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) * A000244 (n + 1) * A038500 (n + 1)

end

end A371640.P4104835183219775463

namespace A371640

/-- `A000244(n+1)*A000244(n+1)*A038500(n+1)` -/
def P4104835183219775463.Spec : Prop :=
  ∀ n, P4104835183219775463.a n = A371640 (n + 1)

end A371640

/-! ## A371640.P5182002873562715369

`A009971(n+1)/A273893(n+1)`
-/

namespace A371640.P5182002873562715369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009971 (n + 1) : ℚ) / (A273893 (n + 1) : ℚ)

end

end A371640.P5182002873562715369

namespace A371640

/-- `A009971(n+1)/A273893(n+1)` -/
def P5182002873562715369.Spec : Prop :=
  ∀ n, P5182002873562715369.a n = (A371640 (n + 1) : ℚ)

end A371640

/-!
# A371653: Numbers k such that the number formed by putting the digits of k in descending order is prime.

The programs for A371653, there is no canonical definition to state claims against.
-/

/-! ## A371653.P1375939762911523739

`∪[A211655(n+1), A224402(n+1)]`
-/

namespace A371653.P1375939762911523739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371653.P1375939762911523739

/-! ## A371653.P17358844049703616828

`eq[1, A032741(A004186(n))]`
-/

namespace A371653.P17358844049703616828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371653.P17358844049703616828

/-! ## A371653.P7056955939078418420

`eq[1, A001222(A004186(n+1))]+1`
-/

namespace A371653.P7056955939078418420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004186 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371653.P7056955939078418420

/-! ## A371653.P7708025935643110200

`eq[2, A074206(A004186(n)²)]`
-/

namespace A371653.P7708025935643110200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A004186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371653.P7708025935643110200

/-! ## A371653.P204180744454536049

`eq[2, A105700(A004186(n)²)]`
-/

namespace A371653.P204180744454536049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371653.P204180744454536049

/-!
# A371654: Numbers that are not multiples of 10 and that yield a prime if their digits are arranged in ascending order.

The programs for A371654, there is no canonical definition to state claims against.
-/

/-! ## A371654.P6768195471955346043

`eq[2, A105700(A328447(n)²)]`
-/

namespace A371654.P6768195471955346043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A328447 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371654.P6768195471955346043

/-!
# A371655: G.f. satisfies A(x) = 1 + x * A(x) * (1 + A(x))^2.

The programs for A371655, there is no canonical definition to state claims against.
-/

/-! ## A371655.P13031924617367527139

`2^n*A100327(n)`
-/

namespace A371655.P13031924617367527139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A100327 n

end

end A371655.P13031924617367527139

/-! ## A371655.P4873006815282217320

`A000079(n)*A007165(2*n+1)`
-/

namespace A371655.P4873006815282217320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007165 (2 * n + 1)

end

end A371655.P4873006815282217320

/-! ## A371655.P10264617852707571946

`record[A122111(2*n+1)]*A003168(n)`
-/

namespace A371655.P10264617852707571946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003168 n

end

end A371655.P10264617852707571946

/-! ## A371655.P8464344037834523907

`A003168(n)*A326105(∑[char[1]+1+n])`
-/

namespace A371655.P8464344037834523907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 n * A326105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371655.P8464344037834523907

/-! ## A371655.P17495795367894112880

`A100327(n)*A125746(A000079(n))`
-/

namespace A371655.P17495795367894112880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100327 n * A125746 (A000079 n).toNat

end

end A371655.P17495795367894112880

/-!
# A371656: Numbers k such that k - 2 and k + 2 have the same number of prime factors, counted with multiplicity.

The programs for A371656, the canonical program `A371656.P17774110375711877708` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371656 has offset 1).

The definition of A371656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371656.P17774110375711877708

`eq[A001222(n+1), A001222(n+5)]+3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A371656

/-- `eq[A001222(n+1), A001222(n+5)]+3` -/
def P17774110375711877708.Spec : Prop :=
  ∀ n, (P17774110375711877708.a n : ℤ) = A371656 (n + 1)

theorem P17774110375711877708.correct : P17774110375711877708.Spec := by
  intro n
  simp only [A371656, Nat.add_sub_cancel]

end A371656

/-! ## A371656.P11860661997844828197

`A009005(eq[A001222(n+1), A001222(n+5)])`
-/

namespace A371656.P11860661997844828197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371656.P11860661997844828197

namespace A371656

/-- `A009005(eq[A001222(n+1), A001222(n+5)])` -/
def P11860661997844828197.Spec : Prop :=
  ∀ n, P11860661997844828197.a n = A371656 (n + 1)

end A371656

/-! ## A371656.P14728114607478008426

`eq[A165843(n+1), A165843(n+5)]+3`
-/

namespace A371656.P14728114607478008426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165843 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A371656.P14728114607478008426

namespace A371656

/-- `eq[A165843(n+1), A165843(n+5)]+3` -/
def P14728114607478008426.Spec : Prop :=
  ∀ n, (P14728114607478008426.a n : ℤ) = A371656 (n + 1)

end A371656

/-!
# A371658: G.f. satisfies A(x) = 1 + x * A(x)^2 * (1 + A(x))^2.

The programs for A371658, there is no canonical definition to state claims against.
-/

/-! ## A371658.P14663963981391650284

`2^n*A219538(n)`
-/

namespace A371658.P14663963981391650284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A219538 n

end

end A371658.P14663963981391650284

/-! ## A371658.P4301149113375437285

`A219538(n)*A261275(A000124(n+1))`
-/

namespace A371658.P4301149113375437285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219538 n * A261275 (A000124 (n + 1)).toNat

end

end A371658.P4301149113375437285

/-! ## A371658.P9853657488499464382

`A219538(n)*A302265(A000217(n+1))`
-/

namespace A371658.P9853657488499464382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219538 n * A302265 (A000217 (n + 1)).toNat

end

end A371658.P9853657488499464382

/-!
# A371661: G.f. satisfies A(x) = 1 + x * A(x)^3 * (1 + A(x))^2.

The programs for A371661, there is no canonical definition to state claims against.
-/

/-! ## A371661.P8543047473225084478

`2^n*A371669(n)`
-/

namespace A371661.P8543047473225084478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A371669 n

end

end A371661.P8543047473225084478

/-! ## A371661.P11027286847267670872

`A000027(A371669(n))*A000079(n)`
-/

namespace A371661.P11027286847267670872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A371669 n).toNat * A000079 n

end

end A371661.P11027286847267670872

/-!
# A371662: Number of binary strings of length n with more 000 than 001 substrings.

The programs for A371662, there is no canonical definition to state claims against.
-/

/-! ## A371662.P1867871114853450994

`2^n-A164137(n)-A371682(n)`
-/

namespace A371662.P1867871114853450994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A164137 n - A371682 n

end

end A371662.P1867871114853450994

/-! ## A371662.P8969781245987610277

`A105566(A030033(n))`
-/

namespace A371662.P8969781245987610277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A030033 n).toNat

end

end A371662.P8969781245987610277

/-! ## A371662.P8710429038352288125

`A191291(A165531(n))`
-/

namespace A371662.P8710429038352288125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A165531 n).toNat

end

end A371662.P8710429038352288125

/-! ## A371662.P4879458643881833550

`A351290(A035055(n))`
-/

namespace A371662.P4879458643881833550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A035055 n).toNat

end

end A371662.P4879458643881833550

/-! ## A371662.P1754908542034472588

`A305820(A325920(n))`
-/

namespace A371662.P1754908542034472588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A325920 n).toNat

end

end A371662.P1754908542034472588

/-!
# A371663: a(n) is the number of sides of simple polygons (sorted in ascending order) for which one or more arithmetic sequences can be formed from all their interior angles (all integer, in degrees).

The programs for A371663, there is no canonical definition to state claims against.
-/

/-! ## A371663.P15262624098852754658

`A018609(n+3)`
-/

namespace A371663.P15262624098852754658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 3)

end

end A371663.P15262624098852754658

/-! ## A371663.P630751891101115258

`A079210(n+34)`
-/

namespace A371663.P630751891101115258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 34)

end

end A371663.P630751891101115258

/-! ## A371663.P174280160639040357

`filter[A035303(n+3), A122255(#)]`
-/

namespace A371663.P174280160639040357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A371663.P174280160639040357

/-! ## A371663.P6026695885823642105

`filter[A178858(n+3), A109720(#)]`
-/

namespace A371663.P6026695885823642105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A371663.P6026695885823642105

/-!
# A371669: G.f. satisfies A(x) = 1 + x * A(x)^3 * (1 + A(x))^2/2.

The programs for A371669, there is no canonical definition to state claims against.
-/

/-! ## A371669.P10787129058665261871

`A371661(n)/2^n`
-/

namespace A371669.P10787129058665261871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371661 n : ℚ) / (2 ^ n : ℚ)

end

end A371669.P10787129058665261871

/-! ## A371669.P16913845694837093712

`ceil(A371661(n)/A000079(n))`
-/

namespace A371669.P16913845694837093712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A371661 n : ℚ) / (A000079 n : ℚ)⌉

end

end A371669.P16913845694837093712

/-! ## A371669.P10075565398117157699

`floor(A371661(n)/∑[A011782(n)])`
-/

namespace A371669.P10075565398117157699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A371661 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A371669.P10075565398117157699

/-!
# A371672: a(n) = floor(log_phi(n)) with phi = A001622.

The programs for A371672, the canonical program `A371672.P8531591036181247015` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371672 has offset 1).

The definition of A371672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371672.P14573083181900233834

`∑[char[floor(ϕ^n)]]`
-/

namespace A371672.P14573083181900233834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371672.P14573083181900233834

namespace A371672

/-- `∑[char[floor(ϕ^n)]]` -/
def P14573083181900233834.Spec : Prop :=
  ∀ n, (P14573083181900233834.a n : ℤ) = A371672 (n + 1)

end A371672

/-! ## A371672.P7806795811592212645

`A362692(n+1)-1`
-/

namespace A371672.P7806795811592212645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362692 (n + 1) - 1

end

end A371672.P7806795811592212645

namespace A371672

/-- `A362692(n+1)-1` -/
def P7806795811592212645.Spec : Prop :=
  ∀ n, P7806795811592212645.a n = A371672 (n + 1)

end A371672

/-! ## A371672.P8531591036181247015

`floor(log2(A105425(n+1)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371672

/-- `floor(log2(A105425(n+1)))` -/
def P8531591036181247015.Spec : Prop :=
  ∀ n, (P8531591036181247015.a n : ℤ) = A371672 (n + 1)

theorem P8531591036181247015.correct : P8531591036181247015.Spec := by
  intro n
  simp only [A371672, Nat.add_sub_cancel]

end A371672

/-! ## A371672.P10123153227127751068

`∑[char[A014217(n)]]%(n+1)`
-/

namespace A371672.P10123153227127751068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A371672.P10123153227127751068

namespace A371672

/-- `∑[char[A014217(n)]]%(n+1)` -/
def P10123153227127751068.Spec : Prop :=
  ∀ n, (P10123153227127751068.a n : ℤ) = A371672 (n + 1)

end A371672

/-! ## A371672.P1867601956517839310

`A130241(floor(ϕ*(n+1)))-1`
-/

namespace A371672.P1867601956517839310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat - 1

end

end A371672.P1867601956517839310

namespace A371672

/-- `A130241(floor(ϕ*(n+1)))-1` -/
def P1867601956517839310.Spec : Prop :=
  ∀ n, P1867601956517839310.a n = A371672 (n + 1)

end A371672

/-! ## A371672.P16799726567837111165

`A116921(A190796(n+1))`
-/

namespace A371672.P16799726567837111165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A190796 (n + 1)).toNat

end

end A371672.P16799726567837111165

namespace A371672

/-- `A116921(A190796(n+1))` -/
def P16799726567837111165.Spec : Prop :=
  ∀ n, P16799726567837111165.a n = A371672 (n + 1)

end A371672

/-! ## A371672.P3832274398610835625

`A000523(A105425(n+1))`
-/

namespace A371672.P3832274398610835625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A105425 (n + 1)).toNat

end

end A371672.P3832274398610835625

namespace A371672

/-- `A000523(A105425(n+1))` -/
def P3832274398610835625.Spec : Prop :=
  ∀ n, P3832274398610835625.a n = A371672 (n + 1)

end A371672

/-! ## A371672.P12787791687670151002

`A130259(A381111(n+1))`
-/

namespace A371672.P12787791687670151002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A381111 (n + 1)).toNat

end

end A371672.P12787791687670151002

namespace A371672

/-- `A130259(A381111(n+1))` -/
def P12787791687670151002.Spec : Prop :=
  ∀ n, P12787791687670151002.a n = A371672 (n + 1)

end A371672

/-! ## A371672.P4564475771194910386

`A130245(A000045(A345379((n+1)²)))`
-/

namespace A371672.P4564475771194910386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A000045 (A345379 ((n + 1) ^ 2)).toNat).toNat

end

end A371672.P4564475771194910386

namespace A371672

/-- `A130245(A000045(A345379((n+1)²)))` -/
def P4564475771194910386.Spec : Prop :=
  ∀ n, P4564475771194910386.a n = A371672 (n + 1)

end A371672

/-! ## A371672.P3708078888641473307

`A130259(A269725(n+1))`
-/

namespace A371672.P3708078888641473307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A269725 (n + 1)).toNat

end

end A371672.P3708078888641473307

namespace A371672

/-- `A130259(A269725(n+1))` -/
def P3708078888641473307.Spec : Prop :=
  ∀ n, P3708078888641473307.a n = A371672 (n + 1)

end A371672

/-!
# A371673: Expansion of g.f. A(x) satisfying [x^(n-1)] A(x)^(n^2) = A000108(n-1) * n^n for n >= 1, where A000108 is the Catalan numbers.

The programs for A371673, there is no canonical definition to state claims against.
-/

/-! ## A371673.P7511026294425872380

`A305718(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A371673.P7511026294425872380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A305718 (a (n - 1)).toNat

end

end A371673.P7511026294425872380

/-!
# A371674: Number of maximal distance-critical graphs on n vertices.

The programs for A371674, there is no canonical definition to state claims against.
-/

/-! ## A371674.P9337243849602567695

`A067659(A318185(n+1)-A317141(n+1))`
-/

namespace A371674.P9337243849602567695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (A318185 (n + 1) - A317141 (n + 1)).toNat

end

end A371674.P9337243849602567695

/-! ## A371674.P1547222585872428762

`A057354(A241462(n+1)+A180018(n))`
-/

namespace A371674.P1547222585872428762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A241462 (n + 1) + A180018 n).toNat

end

end A371674.P1547222585872428762

/-!
# A371675: G.f. satisfies A(x) = 1 + x * A(x)^(3/2) * (1 + A(x)^(1/2))^2.

The programs for A371675, there is no canonical definition to state claims against.
-/

/-! ## A371675.P11368420691775143809

`A378238(∑[n+3])`
-/

namespace A371675.P11368420691775143809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371675.P11368420691775143809

/-! ## A371675.P11306149415621540402

`A187920(∑[n+1]+2)`
-/

namespace A371675.P11306149415621540402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187920 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A371675.P11306149415621540402

/-! ## A371675.P15717128514447056753

`record[A010054(n+3)*A378238(n)]`
-/

namespace A371675.P15717128514447056753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A378238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371675.P15717128514447056753

/-! ## A371675.P8523306783255566906

`record[A378238(n)/A110682(n+2)]`
-/

namespace A371675.P8523306783255566906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378238 n : ℚ) / (A110682 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371675.P8523306783255566906

/-! ## A371675.P9298448731498271525

`record[A378238(n)/A053123(n+3)]`
-/

namespace A371675.P9298448731498271525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378238 n : ℚ) / (A053123 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371675.P9298448731498271525

/-!
# A371676: G.f. satisfies A(x) = 1 + x * A(x)^2 * (1 + A(x)^(1/2))^2.

The programs for A371676, there is no canonical definition to state claims against.
-/

/-! ## A371676.P15142241273293082101

`A369539(n)/A000005(A008543(n))`
-/

namespace A371676.P15142241273293082101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369539 n : ℚ) / (A000005 (A008543 n).toNat : ℚ)

end

end A371676.P15142241273293082101

/-!
# A371678: G.f. satisfies A(x) = 1 + x * A(x)^3 * (1 + A(x)^(1/2))^2.

The programs for A371678, there is no canonical definition to state claims against.
-/

/-! ## A371678.P4597293447338652641

`A306420(n+1)*A351495(A342168(n))`
-/

namespace A371678.P4597293447338652641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306420 (n + 1) * A351495 (A342168 n).toNat

end

end A371678.P4597293447338652641

/-!
# A371681: G.f. satisfies A(x) = ( 1 + x * A(x) * (1 + A(x)) )^3.

The programs for A371681, there is no canonical definition to state claims against.
-/

/-! ## A371681.P1845559021380486947

`A378240(A052905(n+1)+1)`
-/

namespace A371681.P1845559021380486947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A052905 (n + 1) + 1).toNat

end

end A371681.P1845559021380486947

/-! ## A371681.P9281166640150342410

`A378240(A027379(n+2)-1)`
-/

namespace A371681.P9281166640150342410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A027379 (n + 2) - 1).toNat

end

end A371681.P9281166640150342410

/-! ## A371681.P14664864763481829463

`A378240(A000096(n+3)-3)`
-/

namespace A371681.P14664864763481829463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A000096 (n + 3) - 3).toNat

end

end A371681.P14664864763481829463

/-! ## A371681.P6362368580849829452

`A378240(eq[2, A152157(n+1)])`
-/

namespace A371681.P6362368580849829452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371681.P6362368580849829452

/-! ## A371681.P5290660132593097774

`A378240(A000217(n+3)+n)`
-/

namespace A371681.P5290660132593097774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A371681.P5290660132593097774

/-!
# A371682: Number of binary strings of length n with more 001 than 000 substrings.

The programs for A371682, there is no canonical definition to state claims against.
-/

/-! ## A371682.P4007274952167012056

`2^n-A164137(n)-A371662(n)`
-/

namespace A371682.P4007274952167012056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A164137 n - A371662 n

end

end A371682.P4007274952167012056

/-! ## A371682.P8775033255544330629

`A243087(n)-A089869(A120400(n))`
-/

namespace A371682.P8775033255544330629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243087 n - A089869 (A120400 n).toNat

end

end A371682.P8775033255544330629

/-! ## A371682.P4863160598197711447

`A001384(n)-A178788(A006749(n+1))`
-/

namespace A371682.P4863160598197711447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n - A178788 (A006749 (n + 1)).toNat

end

end A371682.P4863160598197711447

/-! ## A371682.P10706463088085280321

`A141100(3*n+2)+A141100(A170108(n))`
-/

namespace A371682.P10706463088085280321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (3 * n + 2) + A141100 (A170108 n).toNat

end

end A371682.P10706463088085280321

/-! ## A371682.P12366636366412306645

`A073750(A036661(n))`
-/

namespace A371682.P12366636366412306645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A036661 n).toNat

end

end A371682.P12366636366412306645

/-!
# A371686: Triangle read by rows: T(n, k) = e * binomial(n, k) * Gamma(k + 1, 1).

The programs for A371686, there is no canonical definition to state claims against.
-/

/-! ## A371686.P4897020870322254878

`A073107(∑[2*n]%comp[∑[n]])`
-/

namespace A371686.P4897020870322254878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A371686.P4897020870322254878

/-! ## A371686.P17735715094964786170

`A073107(∑[char[∑[n]]]²-n-1)`
-/

namespace A371686.P17735715094964786170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A371686.P17735715094964786170

/-! ## A371686.P595282558938719017

`A367962(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A371686.P595282558938719017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367962 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A371686.P595282558938719017

/-! ## A371686.P13675177859416575739

`A367962(n)/A119502(n)`
-/

namespace A371686.P13675177859416575739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367962 n : ℚ) / (A119502 n : ℚ)

end

end A371686.P13675177859416575739

/-! ## A371686.P8524381680962936311

`A367962(n)/A025581(n)!`
-/

namespace A371686.P8524381680962936311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367962 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A371686.P8524381680962936311

/-! ## A371686.P12889661914529579476

`A000522(A002262(n))*A007318(n)`
-/

namespace A371686.P12889661914529579476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A002262 n).toNat * A007318 n

end

end A371686.P12889661914529579476

/-! ## A371686.P13027398395555722060

`A007318(n)*A143409(A112367(n))`
-/

namespace A371686.P13027398395555722060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143409 (A112367 n).toNat

end

end A371686.P13027398395555722060

/-!
# A371689: Main diagonal of A365495: parity of the n-th term in the trajectory of n under the A014682 map.

The programs for A371689, there is no canonical definition to state claims against.
-/

/-! ## A371689.P7857811563570947183

`A368300(n+1)%2`
-/

namespace A371689.P7857811563570947183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368300 (n + 1)) 2

end

end A371689.P7857811563570947183

/-! ## A371689.P7441438227603261889

`A000035(A368300(n+1))`
-/

namespace A371689.P7441438227603261889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A368300 (n + 1)).toNat

end

end A371689.P7441438227603261889

/-! ## A371689.P16747362293209561535

`and(A059592(n), A368300(n+1))`
-/

namespace A371689.P16747362293209561535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059592 n) (A368300 (n + 1))

end

end A371689.P16747362293209561535

/-! ## A371689.P16339874439907595184

`and(A076338(n), A368300(n+1))`
-/

namespace A371689.P16339874439907595184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076338 n) (A368300 (n + 1))

end

end A371689.P16339874439907595184

/-! ## A371689.P14925624115817998252

`and(A158388(n), A368300(n+1))`
-/

namespace A371689.P14925624115817998252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A368300 (n + 1))

end

end A371689.P14925624115817998252

/-! ## A371689.P18227957755014022812

`and(A261143(n), A368300(n+1))`
-/

namespace A371689.P18227957755014022812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261143 n) (A368300 (n + 1))

end

end A371689.P18227957755014022812

/-! ## A371689.P5030774914629323272

`and(A267537(n), A368300(n+1))`
-/

namespace A371689.P5030774914629323272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267537 n) (A368300 (n + 1))

end

end A371689.P5030774914629323272

/-! ## A371689.P11105175508226124395

`and(A267869(n), A368300(n+1))`
-/

namespace A371689.P11105175508226124395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267869 n) (A368300 (n + 1))

end

end A371689.P11105175508226124395

/-! ## A371689.P6042830908613057872

`and(A176410(n), A368300(n+1))`
-/

namespace A371689.P6042830908613057872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A368300 (n + 1))

end

end A371689.P6042830908613057872

/-! ## A371689.P2670253676477666118

`and(A176794(n), A368300(n+1))`
-/

namespace A371689.P2670253676477666118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A368300 (n + 1))

end

end A371689.P2670253676477666118

/-! ## A371689.P12622222596517988541

`and(A077860(n), A368300(n+1))`
-/

namespace A371689.P12622222596517988541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A368300 (n + 1))

end

end A371689.P12622222596517988541

/-! ## A371689.P15067011850593587894

`and(A083318(n), A368300(n+1))`
-/

namespace A371689.P15067011850593587894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A368300 (n + 1))

end

end A371689.P15067011850593587894

/-! ## A371689.P2290276217066041149

`and(A114001(n), A368300(n+1))`
-/

namespace A371689.P2290276217066041149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A368300 (n + 1))

end

end A371689.P2290276217066041149

/-! ## A371689.P6773286069922637477

`and(A171663(n), A368300(n+1))`
-/

namespace A371689.P6773286069922637477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171663 n) (A368300 (n + 1))

end

end A371689.P6773286069922637477

/-! ## A371689.P15437048210276311194

`and(A020737(n), A368300(n+1))`
-/

namespace A371689.P15437048210276311194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A368300 (n + 1))

end

end A371689.P15437048210276311194

/-! ## A371689.P12224876671812177889

`and(A131056(n+1), A368300(n+1))`
-/

namespace A371689.P12224876671812177889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131056 (n + 1)) (A368300 (n + 1))

end

end A371689.P12224876671812177889

/-! ## A371689.P6769728844505420157

`and(A288038(n+1), A368300(n+1))`
-/

namespace A371689.P6769728844505420157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288038 (n + 1)) (A368300 (n + 1))

end

end A371689.P6769728844505420157

/-! ## A371689.P1582516781729534213

`and(2-A051900(n), A368300(n+1))`
-/

namespace A371689.P1582516781729534213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A051900 n) (A368300 (n + 1))

end

end A371689.P1582516781729534213

/-! ## A371689.P15640230023948318081

`and(A048479(n), A368300(n+1))`
-/

namespace A371689.P15640230023948318081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A368300 (n + 1))

end

end A371689.P15640230023948318081

/-! ## A371689.P11340199560821605985

`and(A051900(n+1), A368300(n+1))`
-/

namespace A371689.P11340199560821605985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 (n + 1)) (A368300 (n + 1))

end

end A371689.P11340199560821605985

/-!
# A371690: Main diagonal of A347283: parity of the n-th term in the trajectory of n under the A006370 map.

The programs for A371690, there is no canonical definition to state claims against.
-/

/-! ## A371690.P15149656910666568763

`A347272(n)%2`
-/

namespace A371690.P15149656910666568763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347272 n) 2

end

end A371690.P15149656910666568763

/-! ## A371690.P12380866829643108908

`A000035(A347272(n))`
-/

namespace A371690.P12380866829643108908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347272 n).toNat

end

end A371690.P12380866829643108908

/-! ## A371690.P10395924852098743121

`and(A158388(n), A347272(n))`
-/

namespace A371690.P10395924852098743121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A347272 n)

end

end A371690.P10395924852098743121

/-! ## A371690.P14352983323300234385

`and(A267871(n), A347272(n))`
-/

namespace A371690.P14352983323300234385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267871 n) (A347272 n)

end

end A371690.P14352983323300234385

/-! ## A371690.P9298801381773179021

`and(A176410(n), A347272(n))`
-/

namespace A371690.P9298801381773179021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A347272 n)

end

end A371690.P9298801381773179021

/-! ## A371690.P11560713575443382800

`and(A176794(n), A347272(n))`
-/

namespace A371690.P11560713575443382800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A347272 n)

end

end A371690.P11560713575443382800

/-! ## A371690.P3475420825747922087

`and(A048578(n), A347272(n))`
-/

namespace A371690.P3475420825747922087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A347272 n)

end

end A371690.P3475420825747922087

/-! ## A371690.P4035872116990235751

`and(A066827(n+1), A347272(n))`
-/

namespace A371690.P4035872116990235751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A347272 n)

end

end A371690.P4035872116990235751

/-! ## A371690.P2536083181903284958

`and(A020737(n), A347272(n))`
-/

namespace A371690.P2536083181903284958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A347272 n)

end

end A371690.P2536083181903284958

/-! ## A371690.P5904614279018789490

`and(A276918(n), A347272(n))`
-/

namespace A371690.P5904614279018789490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276918 n) (A347272 n)

end

end A371690.P5904614279018789490

/-! ## A371690.P11028345351000842927

`and(A195744(n), A347272(n))`
-/

namespace A371690.P11028345351000842927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A347272 n)

end

end A371690.P11028345351000842927

/-! ## A371690.P12574538133336853326

`and(A122041(n+1), A347272(n))`
-/

namespace A371690.P12574538133336853326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A347272 n)

end

end A371690.P12574538133336853326

/-! ## A371690.P7887269371947513551

`and(A196657(n), A347272(n))`
-/

namespace A371690.P7887269371947513551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A347272 n)

end

end A371690.P7887269371947513551

/-! ## A371690.P16384238343845948090

`and(A002064(n), A347272(n))`
-/

namespace A371690.P16384238343845948090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A347272 n)

end

end A371690.P16384238343845948090

/-! ## A371690.P18329740172235574624

`and(A048477(n), A347272(n))`
-/

namespace A371690.P18329740172235574624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A347272 n)

end

end A371690.P18329740172235574624

/-! ## A371690.P11076260270779429067

`and(A288038(n+1), A347272(n))`
-/

namespace A371690.P11076260270779429067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288038 (n + 1)) (A347272 n)

end

end A371690.P11076260270779429067

/-! ## A371690.P311485002471066381

`and(1, and(A051900(n), A347272(n)))`
-/

namespace A371690.P311485002471066381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.land (A051900 n) (A347272 n))

end

end A371690.P311485002471066381

/-! ## A371690.P10018896481734114202

`and(A048479(n), A347272(n))`
-/

namespace A371690.P10018896481734114202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A347272 n)

end

end A371690.P10018896481734114202

/-! ## A371690.P6678108234627784715

`and(A134854(n+1), A347272(n))`
-/

namespace A371690.P6678108234627784715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134854 (n + 1)) (A347272 n)

end

end A371690.P6678108234627784715

/-! ## A371690.P4892406176693992359

`and(A295926(n+3), A347272(n))`
-/

namespace A371690.P4892406176693992359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295926 (n + 3)) (A347272 n)

end

end A371690.P4892406176693992359

/-!
# A371691: Main diagonal of A365992: parity of the n-th term in the trajectory of n under the A185452 map.

The programs for A371691, there is no canonical definition to state claims against.
-/

/-! ## A371691.P83826846493228648

`A368301(n+1)%2`
-/

namespace A371691.P83826846493228648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368301 (n + 1)) 2

end

end A371691.P83826846493228648

/-! ## A371691.P14524076144687668484

`and(A158388(n), A368301(n+1))`
-/

namespace A371691.P14524076144687668484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A368301 (n + 1))

end

end A371691.P14524076144687668484

/-! ## A371691.P12999035547608047222

`and(A261143(n), A368301(n+1))`
-/

namespace A371691.P12999035547608047222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261143 n) (A368301 (n + 1))

end

end A371691.P12999035547608047222

/-! ## A371691.P3398345634079157783

`and(A329684(n), A368301(n+1))`
-/

namespace A371691.P3398345634079157783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329684 n) (A368301 (n + 1))

end

end A371691.P3398345634079157783

/-! ## A371691.P13604014936460658276

`and(A048479(n), A368301(n+1))`
-/

namespace A371691.P13604014936460658276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A368301 (n + 1))

end

end A371691.P13604014936460658276

/-! ## A371691.P5175678263503175613

`and(A115342(n+6), A368301(n+1))`
-/

namespace A371691.P5175678263503175613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115342 (n + 6)) (A368301 (n + 1))

end

end A371691.P5175678263503175613

/-! ## A371691.P3989381164587773467

`and(A168298(n), A368301(n+1))`
-/

namespace A371691.P3989381164587773467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168298 n) (A368301 (n + 1))

end

end A371691.P3989381164587773467

/-! ## A371691.P6256042530812447833

`and(A248917(n), A368301(n+1))`
-/

namespace A371691.P6256042530812447833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248917 n) (A368301 (n + 1))

end

end A371691.P6256042530812447833

/-! ## A371691.P2065249093884927768

`and(A027608(n), A368301(n+1))`
-/

namespace A371691.P2065249093884927768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A368301 (n + 1))

end

end A371691.P2065249093884927768

/-! ## A371691.P8106417792154336723

`and(A211388(n), A368301(n+1))`
-/

namespace A371691.P8106417792154336723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211388 n) (A368301 (n + 1))

end

end A371691.P8106417792154336723

/-! ## A371691.P16932628034649536212

`and(A209530(n+1), A368301(n+1))`
-/

namespace A371691.P16932628034649536212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A209530 (n + 1)) (A368301 (n + 1))

end

end A371691.P16932628034649536212

/-! ## A371691.P8161060620784666192

`and(A359206(n+1), A368301(n+1))`
-/

namespace A371691.P8161060620784666192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359206 (n + 1)) (A368301 (n + 1))

end

end A371691.P8161060620784666192

/-! ## A371691.P13301893809939623346

`and(A087289(n), A368301(n+1))`
-/

namespace A371691.P13301893809939623346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A368301 (n + 1))

end

end A371691.P13301893809939623346

/-! ## A371691.P7735094860549483529

`and(A199116(n), A368301(n+1))`
-/

namespace A371691.P7735094860549483529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199116 n) (A368301 (n + 1))

end

end A371691.P7735094860549483529

/-! ## A371691.P6846635531143731122

`and(A199209(n), A368301(n+1))`
-/

namespace A371691.P6846635531143731122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199209 n) (A368301 (n + 1))

end

end A371691.P6846635531143731122

/-! ## A371691.P3780659222288270179

`and(A050915(n), A368301(n+1))`
-/

namespace A371691.P3780659222288270179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A368301 (n + 1))

end

end A371691.P3780659222288270179

/-! ## A371691.P9483760626147865458

`and(A359204(n+1), A368301(n+1))`
-/

namespace A371691.P9483760626147865458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359204 (n + 1)) (A368301 (n + 1))

end

end A371691.P9483760626147865458

/-! ## A371691.P11379132741959906800

`and(A365475(n+1), A368301(n+1))`
-/

namespace A371691.P11379132741959906800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A365475 (n + 1)) (A368301 (n + 1))

end

end A371691.P11379132741959906800

/-!
# A371692: Table(n,k) of binary strings of length n which have the same number of k long 0...00 and 0...01 substrings, where n>=0 and k>=2, read by downwards antidiagonals.

The programs for A371692, there is no canonical definition to state claims against.
-/

/-! ## A371692.P6441627402651043898

`A332888(A209566(n+1))`
-/

namespace A371692.P6441627402651043898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332888 (A209566 (n + 1)).toNat

end

end A371692.P6441627402651043898

/-! ## A371692.P1733770985087264743

`A354555(n)-A359241(A369345(n))`
-/

namespace A371692.P1733770985087264743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354555 n - A359241 (A369345 n).toNat

end

end A371692.P1733770985087264743

/-! ## A371692.P14609264855894148576

`A194446(A084112(2*(n+2)))+A172236(n+1)`
-/

namespace A371692.P14609264855894148576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (A084112 (2 * (n + 2))).toNat + A172236 (n + 1)

end

end A371692.P14609264855894148576

/-! ## A371692.P6917211758697528175

`A195079(A297628(n))+A010054(A138193(2*(n+2)))`
-/

namespace A371692.P6917211758697528175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (A297628 n).toNat + A010054 (A138193 (2 * (n + 2))).toNat

end

end A371692.P6917211758697528175

/-! ## A371692.P17615690188735413629

`A000120(6^A245230(n+1))`
-/

namespace A371692.P17615690188735413629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A245230 (n + 1) : ℤ))).toNat

end

end A371692.P17615690188735413629

/-!
# A371693: G.f. satisfies A(x) = ( 1 + x * A(x) * (1 + A(x)) )^2.

The programs for A371693, there is no canonical definition to state claims against.
-/

/-! ## A371693.P8353256011286927734

`A378239(∑[n+3])`
-/

namespace A371693.P8353256011286927734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371693.P8353256011286927734

/-! ## A371693.P6794986136069353724

`A219534(n+1)-A378156(n)`
-/

namespace A371693.P6794986136069353724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219534 (n + 1) - A378156 n

end

end A371693.P6794986136069353724

/-! ## A371693.P4189258355608835129

`record[A378239(n)/A075499(n+3)]`
-/

namespace A371693.P4189258355608835129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378239 n : ℚ) / (A075499 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371693.P4189258355608835129

/-!
# A371694: a(1) = 2; a(n+1) is the larger prime between nextprime(a(n)) and prevprime(a(n)+n-m+1), where m is the number of primes < a(n) that are missing from the sequence.

The programs for A371694, there is no canonical definition to state claims against.
-/

/-! ## A371694.P16299798414894846193

`A000040(lt[A019320(n), A334169(2*n+1)])`
-/

namespace A371694.P16299798414894846193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334169 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371694.P16299798414894846193

/-! ## A371694.P4338304185268238080

`∩[A166937(n+1), A000040(A193988(n+1))]`
-/

namespace A371694.P4338304185268238080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A193988 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371694.P4338304185268238080

/-! ## A371694.P3090687652150349640

`A000040(A193988(n+1)%A193959(3*(n+1)))`
-/

namespace A371694.P3090687652150349640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A193988 (n + 1)) (A193959 (3 * (n + 1)))).toNat

end

end A371694.P3090687652150349640

/-! ## A371694.P17813573657366564380

`A000040(A193988(n+1))%A193997(3*(n+1))`
-/

namespace A371694.P17813573657366564380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A193988 (n + 1)).toNat) (A193997 (3 * (n + 1)))

end

end A371694.P17813573657366564380

/-! ## A371694.P11094331735463174232

`A000040(A373847(n+1)%A383467(n+1))`
-/

namespace A371694.P11094331735463174232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A373847 (n + 1)) (A383467 (n + 1))).toNat

end

end A371694.P11094331735463174232

/-!
# A371697: Row sums of triangle A370262.

The programs for A371697, there is no canonical definition to state claims against.
-/

/-! ## A371697.P4925807837187922326

`A281995(A256016(n))+A004685(n)`
-/

namespace A371697.P4925807837187922326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281995 (A256016 n).toNat + A004685 n

end

end A371697.P4925807837187922326

/-!
# A371698: Number of partial order-preserving or -reversing transformations of a chain of length n.

The programs for A371698, the canonical program `A371698.P14444851263575026749` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371698 has offset 1).

The definition of A371698 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371698.P14444851263575026749

`2*A002003(n+1)-(1+(n+1)*(2^(n+1)-1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A371698

/-- `2*A002003(n+1)-(1+(n+1)*(2^(n+1)-1))` -/
def P14444851263575026749.Spec : Prop :=
  ∀ n, P14444851263575026749.a n = A371698 (n + 1)

theorem P14444851263575026749.correct : P14444851263575026749.Spec := by
  intro n
  simp only [A371698, Nat.add_sub_cancel]

end A371698

