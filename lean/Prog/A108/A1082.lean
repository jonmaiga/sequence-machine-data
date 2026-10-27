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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A108201: Numbers of the form (5^i)*(12^j), with i, j >= 0.

The programs for A108201, there is no canonical definition to state claims against.
-/

/-! ## A108201.P3572498955214044852

`record[A061391(A016921(n))]`
-/

namespace A108201.P3572498955214044852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A016921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108201.P3572498955214044852

/-! ## A108201.P7329902801017530132

`record[A061391(A017533(n))]`
-/

namespace A108201.P7329902801017530132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A017533 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108201.P7329902801017530132

/-! ## A108201.P11639412155748318281

`A061391(A343734(n+1))`
-/

namespace A108201.P11639412155748318281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A343734 (n + 1)).toNat

end

end A108201.P11639412155748318281

/-! ## A108201.P7567090344315475640

`A061391(A343737(n+1))`
-/

namespace A108201.P7567090344315475640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A343737 (n + 1)).toNat

end

end A108201.P7567090344315475640

/-!
# A108202: a(2n) = A007376(n); a(2n+1) = a(n).

The programs for A108202, there is no canonical definition to state claims against.
-/

/-! ## A108202.P7335738206999401982

`A007376(A025480(n))`
-/

namespace A108202.P7335738206999401982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A025480 n).toNat

end

end A108202.P7335738206999401982

/-! ## A108202.P10388977654357197922

`A007376(floor(n/(xor(n, n+1)+1)))`
-/

namespace A108202.P10388977654357197922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A108202.P10388977654357197922

/-! ## A108202.P5069800794148037178

`A007376(A153733(n)/2)`
-/

namespace A108202.P5069800794148037178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A108202.P5069800794148037178

/-! ## A108202.P7154973900510951989

`A007376(A003602(n+1)-1)`
-/

namespace A108202.P7154973900510951989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A003602 (n + 1) - 1).toNat

end

end A108202.P7154973900510951989

/-! ## A108202.P14178120372600078389

`A007376(A103391(n+2)-2)`
-/

namespace A108202.P14178120372600078389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A103391 (n + 2) - 2).toNat

end

end A108202.P14178120372600078389

/-! ## A108202.P15152511048417695626

`A007376(floor(A000265(n+1)/2))`
-/

namespace A108202.P15152511048417695626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ⌊(A000265 (n + 1) : ℚ) / 2⌋.toNat

end

end A108202.P15152511048417695626

/-! ## A108202.P13055118240043313647

`A007376(A110963(2*n+1)-1)`
-/

namespace A108202.P13055118240043313647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A110963 (2 * n + 1) - 1).toNat

end

end A108202.P13055118240043313647

/-! ## A108202.P7964364005197165470

`A007376((A000265(n+1)-1)/2)`
-/

namespace A108202.P7964364005197165470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A108202.P7964364005197165470

/-! ## A108202.P9068865293551983903

`A007376(n%A000265(n+1)/2)`
-/

namespace A108202.P9068865293551983903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.roundAway ((Int.tmod (n : ℤ) (A000265 (n + 1)) : ℚ) / 2)).toNat

end

end A108202.P9068865293551983903

/-! ## A108202.P170569375038735399

`A007376(A004525(A153733(n)))`
-/

namespace A108202.P170569375038735399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A004525 (A153733 n).toNat).toNat

end

end A108202.P170569375038735399

/-! ## A108202.P13721720245927594744

`A007376(abs(A097140(A153733(n))))`
-/

namespace A108202.P13721720245927594744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 |A097140 (A153733 n).toNat|.toNat

end

end A108202.P13721720245927594744

/-! ## A108202.P15943741673979588198

`A007376(abs(A127365(A153733(n))))`
-/

namespace A108202.P15943741673979588198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 |A127365 (A153733 n).toNat|.toNat

end

end A108202.P15943741673979588198

/-! ## A108202.P6373972164425579282

`A007376(-A001057(A153733(n)))`
-/

namespace A108202.P6373972164425579282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (-A001057 (A153733 n).toNat).toNat

end

end A108202.P6373972164425579282

/-! ## A108202.P13146277354358030830

`A007376(A004524(A000265(n+1)))`
-/

namespace A108202.P13146277354358030830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A004524 (A000265 (n + 1)).toNat).toNat

end

end A108202.P13146277354358030830

/-! ## A108202.P17100324763980104272

`A007376(A000265(n+1)%A003602(n+1))`
-/

namespace A108202.P17100324763980104272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A000265 (n + 1)) (A003602 (n + 1))).toNat

end

end A108202.P17100324763980104272

/-! ## A108202.P1438074427009784273

`A007376(A108715(2*n)+n)`
-/

namespace A108202.P1438074427009784273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A108715 (2 * n) + (n : ℤ)).toNat

end

end A108202.P1438074427009784273

/-! ## A108202.P3803580822984707360

`A007376(val(A117303(n+1), 2))`
-/

namespace A108202.P3803580822984707360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.valuation (A117303 (n + 1)).toNat 2)

end

end A108202.P3803580822984707360

/-!
# A108203: Numbers n put into lexicographical order which are the concatenation of k and the sum of the digits of k.

The programs for A108203, there is no canonical definition to state claims against.
-/

/-! ## A108203.P11119178419922501614

`A108773(A298359(n+1))`
-/

namespace A108203.P11119178419922501614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (A298359 (n + 1)).toNat

end

end A108203.P11119178419922501614

/-! ## A108203.P9068371153748571285

`A108773(A039691(n+2))`
-/

namespace A108203.P9068371153748571285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (A039691 (n + 2)).toNat

end

end A108203.P9068371153748571285

/-! ## A108203.P12893567681361607193

`A108773(A298639(n+2))`
-/

namespace A108203.P12893567681361607193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (A298639 (n + 2)).toNat

end

end A108203.P12893567681361607193

/-! ## A108203.P8792280603125331293

`A108773(lt[A180018(n), dr(n)])`
-/

namespace A108203.P8792280603125331293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A108203.P8792280603125331293

/-! ## A108203.P17882332337984948649

`A108773(lt[A180019(n), dr(n)])`
-/

namespace A108203.P17882332337984948649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A108203.P17882332337984948649

/-! ## A108203.P764177846210562321

`A062028(10*A298359(n+1))`
-/

namespace A108203.P764177846210562321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (10 * A298359 (n + 1)).toNat

end

end A108203.P764177846210562321

/-! ## A108203.P2734503734401280790

`A064806(10*A298359(n+1))`
-/

namespace A108203.P2734503734401280790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064806 (10 * A298359 (n + 1)).toNat

end

end A108203.P2734503734401280790

/-! ## A108203.P8817138740111983334

`∩[A083967(n+1), A131058(n+1)]`
-/

namespace A108203.P8817138740111983334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108203.P8817138740111983334

/-! ## A108203.P16558708860688193605

`∪[A056524(n+1), A214527(n+1)]`
-/

namespace A108203.P16558708860688193605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108203.P16558708860688193605

/-! ## A108203.P1276089707856025521

`∪[A214527(n+1), A240927(n+1)]`
-/

namespace A108203.P1276089707856025521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108203.P1276089707856025521

/-!
# A108204: a(n) = 2*(n-1)*a(n-1) -(n-1)*a(n-2) with a(0)=0, a(1)=1.

The programs for A108204, the canonical program `A108204.P7955510046656429427` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108204 has offset 0).

The definition of A108204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)*a(n-1)-(n-1)*a(n-2)` (program `A108204.P7955510046656429427`, by `A108204.P7955510046656429427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108204.P7955510046656429427

`2*(n-1)*a(n-1)-(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108204

/-- `2*(n-1)*a(n-1)-(n-1)*a(n-2)` -/
def P7955510046656429427.Spec : Prop :=
  ∀ n, P7955510046656429427.a n = A108204 n

theorem P7955510046656429427.correct : P7955510046656429427.Spec := by
  intro n
  simp only [A108204]

end A108204

/-! ## A108204.P11814639959779015827

`(1-n)*(a(n-2)-2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A108204.P11814639959779015827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) * (a (n - 2) - 2 * a (n - 1))

end

end A108204.P11814639959779015827

namespace A108204

/-- `(1-n)*(a(n-2)-2*a(n-1))` -/
def P11814639959779015827.Spec : Prop :=
  ∀ n, P11814639959779015827.a n = A108204 n

end A108204

/-! ## A108204.P409574386996560483

`(2*a(n-1)-a(n-2))*A023443(n)` with `a(0)=0, a(1)=1`
-/

namespace A108204.P409574386996560483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * a (n - 1) - a (n - 2)) * A023443 n

end

end A108204.P409574386996560483

namespace A108204

/-- `(2*a(n-1)-a(n-2))*A023443(n)` -/
def P409574386996560483.Spec : Prop :=
  ∀ n, P409574386996560483.a n = A108204 n

end A108204

/-!
# A108205: a(n) = 2*(n-1)*a(n-1)+(n-1)*a(n-2) with a(0)=0, a(1)=1.

The programs for A108205, the canonical program `A108205.P783094445079593483` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108205 has offset 0).

The definition of A108205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)*a(n-1)+(n-1)*a(n-2)` (program `A108205.P783094445079593483`, by `A108205.P783094445079593483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108205.P783094445079593483

`2*(n-1)*a(n-1)+(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108205

/-- `2*(n-1)*a(n-1)+(n-1)*a(n-2)` -/
def P783094445079593483.Spec : Prop :=
  ∀ n, P783094445079593483.a n = A108205 n

theorem P783094445079593483.correct : P783094445079593483.Spec := by
  intro n
  simp only [A108205]

end A108205

/-! ## A108205.P11551016320480081168

`(a(n-2)+2*a(n-1))*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A108205.P11551016320480081168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 2) + 2 * a (n - 1)) * ((n : ℤ) - 1)

end

end A108205.P11551016320480081168

namespace A108205

/-- `(a(n-2)+2*a(n-1))*(n-1)` -/
def P11551016320480081168.Spec : Prop :=
  ∀ n, P11551016320480081168.a n = A108205 n

end A108205

/-! ## A108205.P8488619189930414950

`(4*n-3)*a(n-1)-((2*n-1)*a(n-1)-(n-1)*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A108205.P8488619189930414950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((4 * n : ℤ) - 3) * a (n - 1) - (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2))

end

end A108205.P8488619189930414950

namespace A108205

/-- `(4*n-3)*a(n-1)-((2*n-1)*a(n-1)-(n-1)*a(n-2))` -/
def P8488619189930414950.Spec : Prop :=
  ∀ n, P8488619189930414950.a n = A108205 n

theorem P8488619189930414950.correct : P8488619189930414950.Spec := by
  intro n
  simp only [A108205, Nat.add_sub_cancel, A108205.P8488619189930414950.a, A108205.P783094445079593483.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108205

/-!
# A108206: a(n)= 3*(n-1)*a(n-1) +(n-1)*a(n-2), with a(0)=1, a(1)=1.

The programs for A108206, the canonical program `A108206.P7120017766962471610` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108206 has offset 0).

The definition of A108206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n-1)*a(n-1)+(n-1)*a(n-2)` (program `A108206.P7120017766962471610`, by `A108206.P7120017766962471610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108206.P7120017766962471610

`3*(n-1)*a(n-1)+(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108206

/-- `3*(n-1)*a(n-1)+(n-1)*a(n-2)` -/
def P7120017766962471610.Spec : Prop :=
  ∀ n, P7120017766962471610.a n = A108206 n

theorem P7120017766962471610.correct : P7120017766962471610.Spec := by
  intro n
  simp only [A108206]

end A108206

/-! ## A108206.P16103232041217688809

`(a(n-2)+3*a(n-1))*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A108206.P16103232041217688809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 2) + 3 * a (n - 1)) * ((n : ℤ) - 1)

end

end A108206.P16103232041217688809

namespace A108206

/-- `(a(n-2)+3*a(n-1))*(n-1)` -/
def P16103232041217688809.Spec : Prop :=
  ∀ n, P16103232041217688809.a n = A108206 n

end A108206

/-! ## A108206.P1689341033819768467

`(3-(3*(1-a(n-1))-a(n-2)))*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A108206.P1689341033819768467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 - (3 * (1 - a (n - 1)) - a (n - 2))) * ((n : ℤ) - 1)

end

end A108206.P1689341033819768467

namespace A108206

/-- `(3-(3*(1-a(n-1))-a(n-2)))*(n-1)` -/
def P1689341033819768467.Spec : Prop :=
  ∀ n, P1689341033819768467.a n = A108206 n

end A108206

/-!
# A108207: a(n)= 5*(n-1)*a(n-1) -(n-1)*a(n-2), with a(0)=0, a(1)=1.

The programs for A108207, the canonical program `A108207.P815893530879546544` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108207 has offset 0).

The definition of A108207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n-1)*a(n-1)-(n-1)*a(n-2)` (program `A108207.P815893530879546544`, by `A108207.P815893530879546544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108207.P815893530879546544

`5*(n-1)*a(n-1)-(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108207

/-- `5*(n-1)*a(n-1)-(n-1)*a(n-2)` -/
def P815893530879546544.Spec : Prop :=
  ∀ n, P815893530879546544.a n = A108207 n

theorem P815893530879546544.correct : P815893530879546544.Spec := by
  intro n
  simp only [A108207]

end A108207

/-! ## A108207.P15905820096483566281

`(5*a(n-1)-a(n-2))*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A108207.P15905820096483566281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (5 * a (n - 1) - a (n - 2)) * ((n : ℤ) - 1)

end

end A108207.P15905820096483566281

namespace A108207

/-- `(5*a(n-1)-a(n-2))*(n-1)` -/
def P15905820096483566281.Spec : Prop :=
  ∀ n, P15905820096483566281.a n = A108207 n

end A108207

/-!
# A108208: a(n) = 4*(n-1)*a(n-1) -2*(n-1)*a(n-2), with a(0)=0, a(1)=2.

The programs for A108208, the canonical program `A108208.P17964606794569423479` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108208 has offset 0).

The definition of A108208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n-1)*a(n-1)-2*(n-1)*a(n-2)` (program `A108208.P17964606794569423479`, by `A108208.P17964606794569423479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108208.P17964606794569423479

`4*(n-1)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108208

/-- `4*(n-1)*a(n-1)-2*(n-1)*a(n-2)` -/
def P17964606794569423479.Spec : Prop :=
  ∀ n, P17964606794569423479.a n = A108208 n

theorem P17964606794569423479.correct : P17964606794569423479.Spec := by
  intro n
  simp only [A108208]

end A108208

/-! ## A108208.P18434715860624514550

`(n-1)*2*(2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A108208.P18434715860624514550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((n : ℤ) - 1) * (2 * (2 * a (n - 1) - a (n - 2)))

end

end A108208.P18434715860624514550

namespace A108208

/-- `(n-1)*2*(2*a(n-1)-a(n-2))` -/
def P18434715860624514550.Spec : Prop :=
  ∀ n, P18434715860624514550.a n = A108208 n

theorem P18434715860624514550.correct : P18434715860624514550.Spec := by
  intro n
  simp only [A108208, Nat.add_sub_cancel, A108208.P18434715860624514550.a, A108208.P17964606794569423479.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108208

/-!
# A108209: a(n) = 5*(n-1)*a(n-1) -2*(n-1)*a(n-2) with a(0)=0, a(1)=2.

The programs for A108209, the canonical program `A108209.P17270216526019280535` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108209 has offset 0).

The definition of A108209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n-1)*a(n-1)-2*(n-1)*a(n-2)` (program `A108209.P17270216526019280535`, by `A108209.P17270216526019280535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108209.P17270216526019280535

`5*(n-1)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108209

/-- `5*(n-1)*a(n-1)-2*(n-1)*a(n-2)` -/
def P17270216526019280535.Spec : Prop :=
  ∀ n, P17270216526019280535.a n = A108209 n

theorem P17270216526019280535.correct : P17270216526019280535.Spec := by
  intro n
  simp only [A108209]

end A108209

/-! ## A108209.P16737780548753058002

`(5*a(n-1)-2%n*a(n-2))*(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A108209.P16737780548753058002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (5 * a (n - 1) - ((2 % n : ℕ) : ℤ) * a (n - 2)) * ((n : ℤ) - 1)

end

end A108209.P16737780548753058002

namespace A108209

/-- `(5*a(n-1)-2%n*a(n-2))*(n-1)` -/
def P16737780548753058002.Spec : Prop :=
  ∀ n, P16737780548753058002.a n = A108209 n

end A108209

/-!
# A108210: Let M[n] be the 2 X 2 matrix {{0, -3}, {(n - 1), 5*(n - 1)}} and let v[1] = {0, 1}', v[n] = M[n]*v[n - 1]'. Then a[n] is the first entry of v[n].

The programs for A108210, there is no canonical definition to state claims against.
-/

/-! ## A108210.P16428994515791803128

`(5*a(n-1)-3*a(n-2))*(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A108210.P16428994515791803128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (5 * a (n - 1) - 3 * a (n - 2)) * ((n : ℤ) - 1)

end

end A108210.P16428994515791803128

/-!
# A108211: a(n) = 16*n^2 + 1.

The programs for A108211, the canonical program `A108211.P17641433821935710279` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108211 has offset 1).

The definition of A108211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)²+1` (program `A108211.P17641433821935710279`, by `A108211.P17641433821935710279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108211.P17641433821935710279

`16*(n+1)²+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108211

/-- `16*(n+1)²+1` -/
def P17641433821935710279.Spec : Prop :=
  ∀ n, (P17641433821935710279.a n : ℤ) = A108211 (n + 1)

theorem P17641433821935710279.correct : P17641433821935710279.Spec := by
  intro n
  simp only [A108211, Nat.add_sub_cancel]

end A108211

/-! ## A108211.P694587411656955751

`A053755(2*(n+1))`
-/

namespace A108211.P694587411656955751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (2 * (n + 1))

end

end A108211.P694587411656955751

namespace A108211

/-- `A053755(2*(n+1))` -/
def P694587411656955751.Spec : Prop :=
  ∀ n, P694587411656955751.a n = A108211 (n + 1)

theorem P694587411656955751.correct : P694587411656955751.Spec := by
  intro n
  simp only [A108211, Nat.add_sub_cancel, A108211.P694587411656955751.a, A108211.P17641433821935710279.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108211

/-! ## A108211.P6341056985667818648

`A002522(4*(n+1))`
-/

namespace A108211.P6341056985667818648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (4 * (n + 1))

end

end A108211.P6341056985667818648

namespace A108211

/-- `A002522(4*(n+1))` -/
def P6341056985667818648.Spec : Prop :=
  ∀ n, P6341056985667818648.a n = A108211 (n + 1)

theorem P6341056985667818648.correct : P6341056985667818648.Spec := by
  intro n
  simp only [A108211, Nat.add_sub_cancel, A108211.P6341056985667818648.a, A108211.P17641433821935710279.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108211

/-! ## A108211.P9909457851667580484

`record[xor(n, -4)²+1]`
-/

namespace A108211.P9909457851667580484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108211.P9909457851667580484

namespace A108211

/-- `record[xor(n, -4)²+1]` -/
def P9909457851667580484.Spec : Prop :=
  ∀ n, P9909457851667580484.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P9988586613025475833

`∑[a(n-1)+32]` with `a(0)=17, a(1)=48`
-/

namespace A108211.P9988586613025475833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 48] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108211.P9988586613025475833

namespace A108211

/-- `∑[a(n-1)+32]` -/
def P9988586613025475833.Spec : Prop :=
  ∀ n, (P9988586613025475833.a n : ℤ) = A108211 (n + 1)

end A108211

/-! ## A108211.P7192711236504868359

`record[or(1, (4*(1-n))²)]`
-/

namespace A108211.P7192711236504868359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 * (1 - (n : ℤ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108211.P7192711236504868359

namespace A108211

/-- `record[or(1, (4*(1-n))²)]` -/
def P7192711236504868359.Spec : Prop :=
  ∀ n, P7192711236504868359.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P16401582791958939356

`record[xor(1, (4*(1-n))²)]`
-/

namespace A108211.P16401582791958939356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((4 * (1 - (n : ℤ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108211.P16401582791958939356

namespace A108211

/-- `record[xor(1, (4*(1-n))²)]` -/
def P16401582791958939356.Spec : Prop :=
  ∀ n, P16401582791958939356.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P3405678554237446125

`or(1, (2*sqrt(n+1))^4)`
-/

namespace A108211.P3405678554237446125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * Real.sqrt (n + 1 : ℝ)) ^ 4))

end

end A108211.P3405678554237446125

namespace A108211

/-- `or(1, (2*sqrt(n+1))^4)` -/
def P3405678554237446125.Spec : Prop :=
  ∀ n, P3405678554237446125.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P3806977780294743307

`xor(1, (2*sqrt(n+1))^4)`
-/

namespace A108211.P3806977780294743307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((2 * Real.sqrt (n + 1 : ℝ)) ^ 4))

end

end A108211.P3806977780294743307

namespace A108211

/-- `xor(1, (2*sqrt(n+1))^4)` -/
def P3806977780294743307.Spec : Prop :=
  ∀ n, P3806977780294743307.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P15523000908353521822

`Δ[C(4*n+3, 3)]/2`
-/

namespace A108211.P15523000908353521822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 3) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A108211.P15523000908353521822

namespace A108211

/-- `Δ[C(4*n+3, 3)]/2` -/
def P15523000908353521822.Spec : Prop :=
  ∀ n, P15523000908353521822.a n = (A108211 (n + 1) : ℚ)

theorem P15523000908353521822.correct : P15523000908353521822.Spec := by
  intro n
  simp only [A108211, Nat.add_sub_cancel, A108211.P15523000908353521822.f1, A108211.P15523000908353521822.a, A108211.P17641433821935710279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108211

/-! ## A108211.P15723338107412349216

`record[and(n-1, -4)²+1]`
-/

namespace A108211.P15723338107412349216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-4) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108211.P15723338107412349216

namespace A108211

/-- `record[and(n-1, -4)²+1]` -/
def P15723338107412349216.Spec : Prop :=
  ∀ n, P15723338107412349216.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P11660695880055688022

`record[lcm(4, (n+1)*(n+3))+5]`
-/

namespace A108211.P11660695880055688022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((n + 1) * (n + 3)) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108211.P11660695880055688022

namespace A108211

/-- `record[lcm(4, (n+1)*(n+3))+5]` -/
def P11660695880055688022.Spec : Prop :=
  ∀ n, (P11660695880055688022.a n : ℤ) = A108211 (n + 1)

end A108211

/-! ## A108211.P4837425857634809929

`Δ[A015219(n)/2]`
-/

namespace A108211.P4837425857634809929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015219 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108211.P4837425857634809929

namespace A108211

/-- `Δ[A015219(n)/2]` -/
def P4837425857634809929.Spec : Prop :=
  ∀ n, P4837425857634809929.a n = (A108211 (n + 1) : ℚ)

end A108211

/-! ## A108211.P9947549796351118825

`ceil(A158575(n+1)/2)`
-/

namespace A108211.P9947549796351118825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158575 (n + 1) : ℚ) / 2⌉

end

end A108211.P9947549796351118825

namespace A108211

/-- `ceil(A158575(n+1)/2)` -/
def P9947549796351118825.Spec : Prop :=
  ∀ n, P9947549796351118825.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P4424066400802362766

`ceil(A158638(n+1)/3)`
-/

namespace A108211.P4424066400802362766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158638 (n + 1) : ℚ) / 3⌉

end

end A108211.P4424066400802362766

namespace A108211

/-- `ceil(A158638(n+1)/3)` -/
def P4424066400802362766.Spec : Prop :=
  ∀ n, P4424066400802362766.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P18331829575947463169

`(A158563(n+1)+3)/2`
-/

namespace A108211.P18331829575947463169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158563 (n + 1) + 3 : ℚ) / 2

end

end A108211.P18331829575947463169

namespace A108211

/-- `(A158563(n+1)+3)/2` -/
def P18331829575947463169.Spec : Prop :=
  ∀ n, P18331829575947463169.a n = (A108211 (n + 1) : ℚ)

theorem P18331829575947463169.correct : P18331829575947463169.Spec := by
  intro n
  simp only [A108211, Nat.add_sub_cancel, A108211.P18331829575947463169.a, A108211.P17641433821935710279.a, A158563, A158563.P13902014769167631248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108211

/-! ## A108211.P6632019848998735171

`(A158684(n+1)+5)/4`
-/

namespace A108211.P6632019848998735171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158684 (n + 1) + 5 : ℚ) / 4

end

end A108211.P6632019848998735171

namespace A108211

/-- `(A158684(n+1)+5)/4` -/
def P6632019848998735171.Spec : Prop :=
  ∀ n, P6632019848998735171.a n = (A108211 (n + 1) : ℚ)

theorem P6632019848998735171.correct : P6632019848998735171.Spec := by
  intro n
  simp only [A108211, Nat.add_sub_cancel, A108211.P6632019848998735171.a, A108211.P17641433821935710279.a, A158684, A158684.P12772694682750737315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108211

/-! ## A108211.P9044780352970570622

`A158658(n+1)%A158491(n+1)`
-/

namespace A108211.P9044780352970570622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158658 (n + 1)) (A158491 (n + 1))

end

end A108211.P9044780352970570622

namespace A108211

/-- `A158658(n+1)%A158491(n+1)` -/
def P9044780352970570622.Spec : Prop :=
  ∀ n, P9044780352970570622.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P1217821075203758950

`A158670(n+1)%A158540(n+1)`
-/

namespace A108211.P1217821075203758950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158670 (n + 1)) (A158540 (n + 1))

end

end A108211.P1217821075203758950

namespace A108211

/-- `A158670(n+1)%A158540(n+1)` -/
def P1217821075203758950.Spec : Prop :=
  ∀ n, P1217821075203758950.a n = A108211 (n + 1)

end A108211

/-! ## A108211.P5512276329988280266

`A158684(n+1)%A158544(n+1)`
-/

namespace A108211.P5512276329988280266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158684 (n + 1)) (A158544 (n + 1))

end

end A108211.P5512276329988280266

namespace A108211

/-- `A158684(n+1)%A158544(n+1)` -/
def P5512276329988280266.Spec : Prop :=
  ∀ n, P5512276329988280266.a n = A108211 (n + 1)

end A108211

/-!
# A108213: a(0)=44; if n odd, a(n) = a(n-1)/2, otherwise a(n) = 4*a(n-1).

The programs for A108213, the canonical program `A108213.P11585684891601501796` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108213 has offset 0).

The definition of A108213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108213.P11585684891601501796

`2*a(n-2)` with `a(0)=44, a(1)=22`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108213

/-- `2*a(n-2)` -/
def P11585684891601501796.Spec : Prop :=
  ∀ n, (P11585684891601501796.a n : ℤ) = A108213 n

theorem P11585684891601501796.correct : P11585684891601501796.Spec := by
  intro n
  simp only [A108213]

end A108213

/-! ## A108213.P9220667799734460505

`22*2^A028242(n)`
-/

namespace A108213.P9220667799734460505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  22 * (2 : ℚ) ^ (A028242 n : ℤ)

end

end A108213.P9220667799734460505

namespace A108213

/-- `22*2^A028242(n)` -/
def P9220667799734460505.Spec : Prop :=
  ∀ n, P9220667799734460505.a n = (A108213 n : ℚ)

end A108213

/-! ## A108213.P17830460553094869774

`a(n-2)+a(n-2)` with `a(0)=44, a(1)=22`
-/

namespace A108213.P17830460553094869774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [44, 22] fun n a =>
  a (n - 2) + a (n - 2)

end

end A108213.P17830460553094869774

namespace A108213

/-- `a(n-2)+a(n-2)` -/
def P17830460553094869774.Spec : Prop :=
  ∀ n, (P17830460553094869774.a n : ℤ) = A108213 n

theorem P17830460553094869774.correct : P17830460553094869774.Spec := by
  intro n
  simp only [A108213, Nat.add_sub_cancel, A108213.P17830460553094869774.a, A108213.P11585684891601501796.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108213

/-! ## A108213.P5371361769333356061

`A108732(n+2)`
-/

namespace A108213.P5371361769333356061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108732 (n + 2)

end

end A108213.P5371361769333356061

namespace A108213

/-- `A108732(n+2)` -/
def P5371361769333356061.Spec : Prop :=
  ∀ n, P5371361769333356061.a n = A108213 n

end A108213

/-! ## A108213.P14579136402628578816

`2*A108732(n)`
-/

namespace A108213.P14579136402628578816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108732 n

end

end A108213.P14579136402628578816

namespace A108213

/-- `2*A108732(n)` -/
def P14579136402628578816.Spec : Prop :=
  ∀ n, P14579136402628578816.a n = A108213 n

end A108213

/-! ## A108213.P12662407648198190764

`22*A135530(n)`
-/

namespace A108213.P12662407648198190764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A135530 n

end

end A108213.P12662407648198190764

namespace A108213

/-- `22*A135530(n)` -/
def P12662407648198190764.Spec : Prop :=
  ∀ n, P12662407648198190764.a n = A108213 n

end A108213

/-! ## A108213.P6727396322856160697

`11*A060546(xor(1, n+2))`
-/

namespace A108213.P6727396322856160697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A060546 (Nat.xor 1 (n + 2))

end

end A108213.P6727396322856160697

namespace A108213

/-- `11*A060546(xor(1, n+2))` -/
def P6727396322856160697.Spec : Prop :=
  ∀ n, P6727396322856160697.a n = A108213 n

end A108213

/-! ## A108213.P796216930870610081

`A005015(A028242(n)+1)`
-/

namespace A108213.P796216930870610081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A028242 n + 1).toNat

end

end A108213.P796216930870610081

namespace A108213

/-- `A005015(A028242(n)+1)` -/
def P796216930870610081.Spec : Prop :=
  ∀ n, P796216930870610081.a n = A108213 n

end A108213

/-! ## A108213.P16630941315777816032

`A005015(A030451(n+1))`
-/

namespace A108213.P16630941315777816032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A030451 (n + 1)).toNat

end

end A108213.P16630941315777816032

namespace A108213

/-- `A005015(A030451(n+1))` -/
def P16630941315777816032.Spec : Prop :=
  ∀ n, P16630941315777816032.a n = A108213 n

end A108213

/-! ## A108213.P8879239760200613811

`A123760(A142954(n+2))`
-/

namespace A108213.P8879239760200613811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (A142954 (n + 2)).toNat

end

end A108213.P8879239760200613811

namespace A108213

/-- `A123760(A142954(n+2))` -/
def P8879239760200613811.Spec : Prop :=
  ∀ n, P8879239760200613811.a n = A108213 n

end A108213

/-! ## A108213.P296966470383946481

`A005015(A110657(2*(n+1)))`
-/

namespace A108213.P296966470383946481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A110657 (2 * (n + 1))).toNat

end

end A108213.P296966470383946481

namespace A108213

/-- `A005015(A110657(2*(n+1)))` -/
def P296966470383946481.Spec : Prop :=
  ∀ n, P296966470383946481.a n = A108213 n

end A108213

/-! ## A108213.P1611062513246749323

`A005015(A262672(2*n+1))`
-/

namespace A108213.P1611062513246749323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A262672 (2 * n + 1)).toNat

end

end A108213.P1611062513246749323

namespace A108213

/-- `A005015(A262672(2*n+1))` -/
def P1611062513246749323.Spec : Prop :=
  ∀ n, P1611062513246749323.a n = A108213 n

end A108213

/-! ## A108213.P5293855214413992565

`A005015(A262672(2*n)-1)`
-/

namespace A108213.P5293855214413992565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A262672 (2 * n) - 1).toNat

end

end A108213.P5293855214413992565

namespace A108213

/-- `A005015(A262672(2*n)-1)` -/
def P5293855214413992565.Spec : Prop :=
  ∀ n, P5293855214413992565.a n = A108213 n

end A108213

/-! ## A108213.P10901925591448754983

`A005015(2-(A030451(n)-n))`
-/

namespace A108213.P10901925591448754983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (2 - (A030451 n - (n : ℤ))).toNat

end

end A108213.P10901925591448754983

namespace A108213

/-- `A005015(2-(A030451(n)-n))` -/
def P10901925591448754983.Spec : Prop :=
  ∀ n, P10901925591448754983.a n = A108213 n

end A108213

/-! ## A108213.P15646090558510563117

`lcm(A040111(n), A135530(n+2))`
-/

namespace A108213.P15646090558510563117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040111 n) (A135530 (n + 2))

end

end A108213.P15646090558510563117

namespace A108213

/-- `lcm(A040111(n), A135530(n+2))` -/
def P15646090558510563117.Spec : Prop :=
  ∀ n, (P15646090558510563117.a n : ℤ) = A108213 n

end A108213

/-! ## A108213.P9993321223177991169

`A005015(A110658(2*(2*n+1)))`
-/

namespace A108213.P9993321223177991169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A110658 (2 * (2 * n + 1))).toNat

end

end A108213.P9993321223177991169

namespace A108213

/-- `A005015(A110658(2*(2*n+1)))` -/
def P9993321223177991169.Spec : Prop :=
  ∀ n, P9993321223177991169.a n = A108213 n

end A108213

/-! ## A108213.P13712724518509118103

`(A008593(2*n+1)-A008593(2*n))*A143095(n+1)`
-/

namespace A108213.P13712724518509118103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008593 (2 * n + 1) - A008593 (2 * n)) * A143095 (n + 1)

end

end A108213.P13712724518509118103

namespace A108213

/-- `(A008593(2*n+1)-A008593(2*n))*A143095(n+1)` -/
def P13712724518509118103.Spec : Prop :=
  ∀ n, P13712724518509118103.a n = A108213 n

end A108213

/-! ## A108213.P16887679366153982708

`A005015(A028242(A168232(A028242(2*n))))`
-/

namespace A108213.P16887679366153982708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A028242 (A168232 (A028242 (2 * n)).toNat).toNat).toNat

end

end A108213.P16887679366153982708

namespace A108213

/-- `A005015(A028242(A168232(A028242(2*n))))` -/
def P16887679366153982708.Spec : Prop :=
  ∀ n, P16887679366153982708.a n = A108213 n

end A108213

/-! ## A108213.P1199530847706973993

`Δ[11*A079360(n)]`
-/

namespace A108213.P1199530847706973993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A079360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108213.P1199530847706973993

namespace A108213

/-- `Δ[11*A079360(n)]` -/
def P1199530847706973993.Spec : Prop :=
  ∀ n, P1199530847706973993.a n = A108213 n

end A108213

/-!
# A108214: Denominator of the O(x^2) term in the Maclaurin series of the square of the Jacobi polynomial P^{a,b}_n(z) about z=1-x for real positive x.

The programs for A108214, the canonical program `A108214.P15719124206228036184` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108214 has offset 2).

The definition of A108214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108214.P15719124206228036184

`4*(n+1)!*(n+2)!`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108214

/-- `4*(n+1)!*(n+2)!` -/
def P15719124206228036184.Spec : Prop :=
  ∀ n, (P15719124206228036184.a n : ℤ) = A108214 (n + 2)

theorem P15719124206228036184.correct : P15719124206228036184.Spec := by
  intro n
  simp only [A108214, Nat.add_sub_cancel]

end A108214

/-! ## A108214.P14905957970353431511

`4*∏[∑[2*(n+1)]]`
-/

namespace A108214.P14905957970353431511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A108214.P14905957970353431511

namespace A108214

/-- `4*∏[∑[2*(n+1)]]` -/
def P14905957970353431511.Spec : Prop :=
  ∀ n, (P14905957970353431511.a n : ℤ) = A108214 (n + 2)

end A108214

/-! ## A108214.P16674921198813355156

`lcm(2, 4*∏[(n+1)*(n+2)])`
-/

namespace A108214.P16674921198813355156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A108214.P16674921198813355156

namespace A108214

/-- `lcm(2, 4*∏[(n+1)*(n+2)])` -/
def P16674921198813355156.Spec : Prop :=
  ∀ n, (P16674921198813355156.a n : ℤ) = A108214 (n + 2)

end A108214

/-! ## A108214.P16289888371067500831

`a(n-1)/Δ[n/(n+1)]` with `a(0)=8`
-/

namespace A108214.P16289888371067500831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) / (f1 (n + 1) - f1 n)

end

end A108214.P16289888371067500831

namespace A108214

/-- `a(n-1)/Δ[n/(n+1)]` -/
def P16289888371067500831.Spec : Prop :=
  ∀ n, P16289888371067500831.a n = (A108214 (n + 2) : ℚ)

end A108214

/-! ## A108214.P14806740670722481720

`abs(a(n-1)*∑[2*(n+1)])` with `a(0)=8`
-/

namespace A108214.P14806740670722481720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108214.P14806740670722481720

namespace A108214

/-- `abs(a(n-1)*∑[2*(n+1)])` -/
def P14806740670722481720.Spec : Prop :=
  ∀ n, (P14806740670722481720.a n : ℤ) = A108214 (n + 2)

end A108214

/-!
# A108215: 4-almost primes equal to the product of two successive semiprimes.

The programs for A108215, the canonical program `A108215.P414681337936929340` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108215 has offset 1).

The definition of A108215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108215.P10055334935575011677

`A001358(n+1)*A001358(n+2)`
-/

namespace A108215.P10055334935575011677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) * A001358 (n + 2)

end

end A108215.P10055334935575011677

namespace A108215

/-- `A001358(n+1)*A001358(n+2)` -/
def P10055334935575011677.Spec : Prop :=
  ∀ n, P10055334935575011677.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P4481422655938619416

`A176540(n+2)*A176540(n+3)`
-/

namespace A108215.P4481422655938619416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) * A176540 (n + 3)

end

end A108215.P4481422655938619416

namespace A108215

/-- `A176540(n+2)*A176540(n+3)` -/
def P4481422655938619416.Spec : Prop :=
  ∀ n, P4481422655938619416.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P414681337936929340

`sqrt(A074985(n+1)*A074985(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A108215

/-- `sqrt(A074985(n+1)*A074985(n+2))` -/
def P414681337936929340.Spec : Prop :=
  ∀ n, P414681337936929340.a n = (A108215 (n + 1) : ℝ)

end A108215

/-! ## A108215.P521025868694747846

`(A088707(n+2)-1)*eq[2, A226378(n)]`
-/

namespace A108215.P521025868694747846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 2) - 1) * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A108215.P521025868694747846

namespace A108215

/-- `(A088707(n+2)-1)*eq[2, A226378(n)]` -/
def P521025868694747846.Spec : Prop :=
  ∀ n, P521025868694747846.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P8846068578528380059

`(A088707(n+2)-1)*A075818(n+1)/2`
-/

namespace A108215.P8846068578528380059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 2) - 1 : ℚ) * ((A075818 (n + 1) : ℚ) / 2)

end

end A108215.P8846068578528380059

namespace A108215

/-- `(A088707(n+2)-1)*A075818(n+1)/2` -/
def P8846068578528380059.Spec : Prop :=
  ∀ n, P8846068578528380059.a n = (A108215 (n + 1) : ℚ)

end A108215

/-! ## A108215.P2496994076267481932

`A129767(2*(n+1))*A129767(2*(n+2))`
-/

namespace A108215.P2496994076267481932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1)) * A129767 (2 * (n + 2))

end

end A108215.P2496994076267481932

namespace A108215

/-- `A129767(2*(n+1))*A129767(2*(n+2))` -/
def P2496994076267481932.Spec : Prop :=
  ∀ n, P2496994076267481932.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P5033855378184777899

`(A088707(n+2)-1)*A207790(4*n+3)`
-/

namespace A108215.P5033855378184777899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 2) - 1) * A207790 (4 * n + 3)

end

end A108215.P5033855378184777899

namespace A108215

/-- `(A088707(n+2)-1)*A207790(4*n+3)` -/
def P5033855378184777899.Spec : Prop :=
  ∀ n, P5033855378184777899.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P13791297068317222699

`eq[2, A226378(n)]*A032742(A075818(n+2))`
-/

namespace A108215.P13791297068317222699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A032742 (A075818 (n + 2)).toNat

end

end A108215.P13791297068317222699

namespace A108215

/-- `eq[2, A226378(n)]*A032742(A075818(n+2))` -/
def P13791297068317222699.Spec : Prop :=
  ∀ n, P13791297068317222699.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P10184937934105882208

`eq[2, A284289(n)]*A032742(A075818(n+2))`
-/

namespace A108215.P10184937934105882208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A032742 (A075818 (n + 2)).toNat

end

end A108215.P10184937934105882208

namespace A108215

/-- `eq[2, A284289(n)]*A032742(A075818(n+2))` -/
def P10184937934105882208.Spec : Prop :=
  ∀ n, P10184937934105882208.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P11064126444138058684

`∏{d}[A000040(n+1), A001358(A000005(#)+n)]`
-/

namespace A108215.P11064126444138058684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001358 (A000005 d + (n : ℤ)).toNat

end

end A108215.P11064126444138058684

namespace A108215

/-- `∏{d}[A000040(n+1), A001358(A000005(#)+n)]` -/
def P11064126444138058684.Spec : Prop :=
  ∀ n, P11064126444138058684.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P5232888448941399075

`(A088707(n+1)-1)*A032742(A075818(n+2))`
-/

namespace A108215.P5232888448941399075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 1) - 1) * A032742 (A075818 (n + 2)).toNat

end

end A108215.P5232888448941399075

namespace A108215

/-- `(A088707(n+1)-1)*A032742(A075818(n+2))` -/
def P5232888448941399075.Spec : Prop :=
  ∀ n, P5232888448941399075.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P17196874831105820062

`A075818(n+1)/2*A032742(A075818(n+2))`
-/

namespace A108215.P17196874831105820062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 * (A032742 (A075818 (n + 2)).toNat : ℚ)

end

end A108215.P17196874831105820062

namespace A108215

/-- `A075818(n+1)/2*A032742(A075818(n+2))` -/
def P17196874831105820062.Spec : Prop :=
  ∀ n, P17196874831105820062.a n = (A108215 (n + 1) : ℚ)

end A108215

/-! ## A108215.P16979972904194051369

`∏{d}[A000040(n+1), A001358(A001221(#)+n+1)]`
-/

namespace A108215.P16979972904194051369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001358 (A001221 d + (n + 1 : ℤ)).toNat

end

end A108215.P16979972904194051369

namespace A108215

/-- `∏{d}[A000040(n+1), A001358(A001221(#)+n+1)]` -/
def P16979972904194051369.Spec : Prop :=
  ∀ n, P16979972904194051369.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P17163721065217322829

`(eq[1, A064911(n+1)]+1)*A032742(A075818(n+2))`
-/

namespace A108215.P17163721065217322829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A032742 (A075818 (n + 2)).toNat

end

end A108215.P17163721065217322829

namespace A108215

/-- `(eq[1, A064911(n+1)]+1)*A032742(A075818(n+2))` -/
def P17163721065217322829.Spec : Prop :=
  ∀ n, P17163721065217322829.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P8663335470670539682

`(eq[2, A001055(n+1)]+1)*A032742(A075818(n+2))`
-/

namespace A108215.P8663335470670539682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A032742 (A075818 (n + 2)).toNat

end

end A108215.P8663335470670539682

namespace A108215

/-- `(eq[2, A001055(n+1)]+1)*A032742(A075818(n+2))` -/
def P8663335470670539682.Spec : Prop :=
  ∀ n, P8663335470670539682.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P14327395703613341182

`(A088707(n+2)-1)*eq[2, A001222(A065033(2*n))]`
-/

namespace A108215.P14327395703613341182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 2) - 1) * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A108215.P14327395703613341182

namespace A108215

/-- `(A088707(n+2)-1)*eq[2, A001222(A065033(2*n))]` -/
def P14327395703613341182.Spec : Prop :=
  ∀ n, P14327395703613341182.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P15702965171645412143

`A000720(A106349(n+2))*A000720(A106349(n+1))`
-/

namespace A108215.P15702965171645412143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A106349 (n + 2)).toNat * A000720 (A106349 (n + 1)).toNat

end

end A108215.P15702965171645412143

namespace A108215

/-- `A000720(A106349(n+2))*A000720(A106349(n+1))` -/
def P15702965171645412143.Spec : Prop :=
  ∀ n, P15702965171645412143.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P15039047081525300125

`A032742(A075818(n+1))*A032742(A075818(n+2))`
-/

namespace A108215.P15039047081525300125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A075818 (n + 1)).toNat * A032742 (A075818 (n + 2)).toNat

end

end A108215.P15039047081525300125

namespace A108215

/-- `A032742(A075818(n+1))*A032742(A075818(n+2))` -/
def P15039047081525300125.Spec : Prop :=
  ∀ n, P15039047081525300125.a n = A108215 (n + 1)

end A108215

/-! ## A108215.P7054376379422942301

`(A088707(n+2)-1)*record[A210615(n+4)]`
-/

namespace A108215.P7054376379422942301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 2) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108215.P7054376379422942301

namespace A108215

/-- `(A088707(n+2)-1)*record[A210615(n+4)]` -/
def P7054376379422942301.Spec : Prop :=
  ∀ n, P7054376379422942301.a n = A108215 (n + 1)

end A108215

/-!
# A108216: Number of semiprimes between 10n and 10n + 9.

The programs for A108216, the canonical program `A108216.P14909083276844098734` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108216 has offset 0).

The definition of A108216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108216.P1692698306584182516

`Δ[A072000(A313236(2*n))]`
-/

namespace A108216.P1692698306584182516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A313236 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108216.P1692698306584182516

namespace A108216

/-- `Δ[A072000(A313236(2*n))]` -/
def P1692698306584182516.Spec : Prop :=
  ∀ n, P1692698306584182516.a n = A108216 n

end A108216

/-! ## A108216.P14909083276844098734

`Δ[A072000(record[A093178(5*n+4)])]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A108216

/-- `Δ[A072000(record[A093178(5*n+4)])]` -/
def P14909083276844098734.Spec : Prop :=
  ∀ n, P14909083276844098734.a n = A108216 n

theorem P14909083276844098734.correct : P14909083276844098734.Spec := by
  intro n
  simp only [A108216]

end A108216

/-! ## A108216.P4761576073375339722

`Δ[A072000(A004273(A008706(n)))]`
-/

namespace A108216.P4761576073375339722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A004273 (A008706 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108216.P4761576073375339722

namespace A108216

/-- `Δ[A072000(A004273(A008706(n)))]` -/
def P4761576073375339722.Spec : Prop :=
  ∀ n, P4761576073375339722.a n = A108216 n

end A108216

/-! ## A108216.P6366255065651461361

`Δ[A072000(A004280(A016861(n)))]`
-/

namespace A108216.P6366255065651461361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A004280 (A016861 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108216.P6366255065651461361

namespace A108216

/-- `Δ[A072000(A004280(A016861(n)))]` -/
def P6366255065651461361.Spec : Prop :=
  ∀ n, P6366255065651461361.a n = A108216 n

end A108216

/-! ## A108216.P488701595382870192

`Δ[A072000(A032793(A008458(n)))]`
-/

namespace A108216.P488701595382870192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A032793 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108216.P488701595382870192

namespace A108216

/-- `Δ[A072000(A032793(A008458(n)))]` -/
def P488701595382870192.Spec : Prop :=
  ∀ n, P488701595382870192.a n = A108216 n

end A108216

/-! ## A108216.P3270405625127263928

`Δ[A072000(A090771(A004277(n)))]`
-/

namespace A108216.P3270405625127263928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A090771 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108216.P3270405625127263928

namespace A108216

/-- `Δ[A072000(A090771(A004277(n)))]` -/
def P3270405625127263928.Spec : Prop :=
  ∀ n, P3270405625127263928.a n = A108216 n

end A108216

/-!
# A108217: a(0) = 1, a(1) = 1, a(n) = n! + (n-2)! for n >= 2.

The programs for A108217, there is no canonical definition to state claims against.
-/

/-! ## A108217.P12917324902433313787

`((1-n)²+n)*floor(n-atan(n))!`
-/

namespace A108217.P12917324902433313787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ)

end

end A108217.P12917324902433313787

/-! ## A108217.P4266644833870082273

`floor(n-atan(n))!*A002061(n)`
-/

namespace A108217.P4266644833870082273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ) * A002061 n

end

end A108217.P4266644833870082273

/-! ## A108217.P15757948998444060521

`A289207(n)!*A002061(n)`
-/

namespace A108217.P15757948998444060521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A289207 n).toNat : ℤ) * A002061 n

end

end A108217.P15757948998444060521

/-! ## A108217.P14060723096895071402

`A000142(n)+Δ[A003422(A289207(n))]`
-/

namespace A108217.P14060723096895071402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (f1 (n + 1) - f1 n)

end

end A108217.P14060723096895071402

/-! ## A108217.P10313460193545524310

`Δ[A003422(n)+A003422(A289207(n))]`
-/

namespace A108217.P10313460193545524310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n + A003422 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108217.P10313460193545524310

/-! ## A108217.P672122495081371618

`A104150(A004442(n))+A104150(A014681(n))`
-/

namespace A108217.P672122495081371618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A004442 n).toNat + A104150 (A014681 n).toNat

end

end A108217.P672122495081371618

/-!
# A108218: Numbers of the form (11^i)*(12^j), with i, j >= 0.

The programs for A108218, there is no canonical definition to state claims against.
-/

/-! ## A108218.P5732197991282048912

`A001021(A002262(n))*A033047(A130321(n))`
-/

namespace A108218.P5732197991282048912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (A002262 n).toNat * A033047 (A130321 n).toNat

end

end A108218.P5732197991282048912

/-! ## A108218.P12538122696648843958

`A033047(A130321(n))*A038328(A112367(n))`
-/

namespace A108218.P12538122696648843958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (A130321 n).toNat * A038328 (A112367 n).toNat

end

end A108218.P12538122696648843958

/-! ## A108218.P1318115793036708153

`A165832(A130321(n))*A166671(A059268(n))`
-/

namespace A108218.P1318115793036708153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165832 (A130321 n).toNat * A166671 (A059268 n).toNat

end

end A108218.P1318115793036708153

/-! ## A108218.P383819357775062268

`A038326(n)/A056926(A008459(n))`
-/

namespace A108218.P383819357775062268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038326 n : ℚ) / (A056926 (A008459 n).toNat : ℚ)

end

end A108218.P383819357775062268

/-! ## A108218.P10032117882439793649

`abs(A038326(n)/A118433(n))`
-/

namespace A108218.P10032117882439793649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A038326 n : ℚ) / (A118433 n : ℚ)|

end

end A108218.P10032117882439793649

/-! ## A108218.P10162575677761114776

`A038326(n)/gcd(A000038(n), A118433(n))`
-/

namespace A108218.P10162575677761114776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038326 n : ℚ) / (Int.gcd (A000038 n) (A118433 n) : ℚ)

end

end A108218.P10162575677761114776

/-! ## A108218.P13608170496482427912

`lcm(A038326(n)/A118433(n), A000034(2*n))`
-/

namespace A108218.P13608170496482427912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A038326 n : ℚ) / (A118433 n : ℚ))) (A000034 (2 * n))

end

end A108218.P13608170496482427912

/-!
# A108219: Numbers n such that A001414(n) is a golden semiprime, where A001414 is the sum of primes dividing n (with repetition).

The programs for A108219, there is no canonical definition to state claims against.
-/

/-! ## A108219.P1354653503254863049

`eq[2, A029219(A107463(n))]`
-/

namespace A108219.P1354653503254863049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108219.P1354653503254863049

/-! ## A108219.P3573926705176111564

`eq[6, A352792(A001414(n+1)+1)]+1`
-/

namespace A108219.P3573926705176111564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A001414 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108219.P3573926705176111564

/-!
# A108221: Primes of the form ceiling(sqrt(prime(n))).

The programs for A108221, the canonical program `A108221.P9472332214346116562` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108221 has offset 1).

The definition of A108221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108221.P9472332214346116562

`ceil(sqrt(A108222(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A108221

/-- `ceil(sqrt(A108222(n+1)))` -/
def P9472332214346116562.Spec : Prop :=
  ∀ n, P9472332214346116562.a n = A108221 (n + 1)

theorem P9472332214346116562.correct : P9472332214346116562.Spec := by
  intro n
  simp only [A108221, Nat.add_sub_cancel]

end A108221

/-! ## A108221.P16055844854137469367

`p?[A104103(n+1)]`
-/

namespace A108221.P16055844854137469367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P16055844854137469367

namespace A108221

/-- `p?[A104103(n+1)]` -/
def P16055844854137469367.Spec : Prop :=
  ∀ n, P16055844854137469367.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P5871461146394915256

`p?[A000006(n+1)+1]`
-/

namespace A108221.P5871461146394915256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P5871461146394915256

namespace A108221

/-- `p?[A000006(n+1)+1]` -/
def P5871461146394915256.Spec : Prop :=
  ∀ n, P5871461146394915256.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P6435212701582101444

`p?[A161188(n+1)-n]`
-/

namespace A108221.P6435212701582101444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P6435212701582101444

namespace A108221

/-- `p?[A161188(n+1)-n]` -/
def P6435212701582101444.Spec : Prop :=
  ∀ n, P6435212701582101444.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P827614016611967515

`p?[ceil(sqrt(A000040(n+1)))]`
-/

namespace A108221.P827614016611967515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000040 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P827614016611967515

namespace A108221

/-- `p?[ceil(sqrt(A000040(n+1)))]` -/
def P827614016611967515.Spec : Prop :=
  ∀ n, P827614016611967515.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P333446277992100280

`p?[round(sqrt(A000040(n)+a(n-1)))]` with `a(0)=1`
-/

namespace A108221.P333446277992100280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.sqrt (A000040 n + f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P333446277992100280

namespace A108221

/-- `p?[round(sqrt(A000040(n)+a(n-1)))]` -/
def P333446277992100280.Spec : Prop :=
  ∀ n, P333446277992100280.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P9562390967241742074

`p?[floor(sqrt(A000040(2*n+1-n)))+1]`
-/

namespace A108221.P9562390967241742074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P9562390967241742074

namespace A108221

/-- `p?[floor(sqrt(A000040(2*n+1-n)))+1]` -/
def P9562390967241742074.Spec : Prop :=
  ∀ n, P9562390967241742074.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P4686009093748930843

`p?[A020639(n+1)-(n-floor(sqrt(n)))]`
-/

namespace A108221.P4686009093748930843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - ((n : ℤ) - (Nat.sqrt n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P4686009093748930843

namespace A108221

/-- `p?[A020639(n+1)-(n-floor(sqrt(n)))]` -/
def P4686009093748930843.Spec : Prop :=
  ∀ n, P4686009093748930843.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P13335842123326105131

`p?[ceil(sqrt(A349826(n)))]`
-/

namespace A108221.P13335842123326105131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A349826 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P13335842123326105131

namespace A108221

/-- `p?[ceil(sqrt(A349826(n)))]` -/
def P13335842123326105131.Spec : Prop :=
  ∀ n, P13335842123326105131.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P6359330255649004449

`A003059(A108222(n+1))`
-/

namespace A108221.P6359330255649004449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A108222 (n + 1)).toNat

end

end A108221.P6359330255649004449

namespace A108221

/-- `A003059(A108222(n+1))` -/
def P6359330255649004449.Spec : Prop :=
  ∀ n, P6359330255649004449.a n = A108221 (n + 1)

end A108221

/-! ## A108221.P3691289450861433394

`p?[A003059(A000040(n+1))]`
-/

namespace A108221.P3691289450861433394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108221.P3691289450861433394

namespace A108221

/-- `p?[A003059(A000040(n+1))]` -/
def P3691289450861433394.Spec : Prop :=
  ∀ n, P3691289450861433394.a n = A108221 (n + 1)

end A108221

/-!
# A108222: Primes p such that ceiling(sqrt(p)) = prime.

The programs for A108222, the canonical program `A108222.P17402844413063193059` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108222 has offset 1).

The definition of A108222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108222.P1610300842075930069

`eq[A002033(A000196(n)), A003415(n)]`
-/

namespace A108222.P1610300842075930069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000196 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108222.P1610300842075930069

namespace A108222

/-- `eq[A002033(A000196(n)), A003415(n)]` -/
def P1610300842075930069.Spec : Prop :=
  ∀ n, (P1610300842075930069.a n : ℤ) = A108222 (n + 1)

end A108222

/-! ## A108222.P8568483144106450394

`eq[A001055(A003059(n+1)), A003415(n)]`
-/

namespace A108222.P8568483144106450394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A003059 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108222.P8568483144106450394

namespace A108222

/-- `eq[A001055(A003059(n+1)), A003415(n)]` -/
def P8568483144106450394.Spec : Prop :=
  ∀ n, (P8568483144106450394.a n : ℤ) = A108222 (n + 1)

end A108222

/-! ## A108222.P14801638353162953541

`eq[A001055(A003059(n+1)), A018783(n)]`
-/

namespace A108222.P14801638353162953541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A003059 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108222.P14801638353162953541

namespace A108222

/-- `eq[A001055(A003059(n+1)), A018783(n)]` -/
def P14801638353162953541.Spec : Prop :=
  ∀ n, (P14801638353162953541.a n : ℤ) = A108222 (n + 1)

end A108222

/-! ## A108222.P17402844413063193059

`eq[A005171(n+1)+1, A010051(A075119(n+1)+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108222

/-- `eq[A005171(n+1)+1, A010051(A075119(n+1)+1)]+1` -/
def P17402844413063193059.Spec : Prop :=
  ∀ n, (P17402844413063193059.a n : ℤ) = A108222 (n + 1)

theorem P17402844413063193059.correct : P17402844413063193059.Spec := by
  intro n
  simp only [A108222, Nat.add_sub_cancel]

end A108222

/-! ## A108222.P8813658208797981883

`eq[A000005(A003059(n+1)), A066656(n)]`
-/

namespace A108222.P8813658208797981883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003059 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108222.P8813658208797981883

namespace A108222

/-- `eq[A000005(A003059(n+1)), A066656(n)]` -/
def P8813658208797981883.Spec : Prop :=
  ∀ n, (P8813658208797981883.a n : ℤ) = A108222 (n + 1)

end A108222

/-!
# A108225: a(0) = 0, a(1) = 2; for n >= 2, a(n) = (a(n-1) + a(n-2))*(a(n-1) - a(n-2) + 1)/2.

The programs for A108225, the canonical program `A108225.P4355543073646989111` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108225 has offset 0).

The definition of A108225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108225.P3715724545664102251

`(a(n-1)+a(n-2))*(a(n-1)-a(n-2)+1)/2` with `a(0)=0, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108225.P3715724545664102251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * (a (n - 1) - a (n - 2) + 1) / 2

end

end A108225.P3715724545664102251

namespace A108225

/-- `(a(n-1)+a(n-2))*(a(n-1)-a(n-2)+1)/2` -/
def P3715724545664102251.Spec : Prop :=
  ∀ n, P3715724545664102251.a n = (A108225 n : ℚ)

end A108225

/-! ## A108225.P4355543073646989111

`A002658(n-1)+a(n-1)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108225

/-- `A002658(n-1)+a(n-1)` -/
def P4355543073646989111.Spec : Prop :=
  ∀ n, P4355543073646989111.a n = A108225 n

theorem P4355543073646989111.correct : P4355543073646989111.Spec := by
  intro n
  simp only [A108225]

end A108225

/-! ## A108225.P10526891050467818132

`C(a(n-1), 2)+2` with `a(0)=0`
-/

namespace A108225.P10526891050467818132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (a (n - 1)) 2 + 2

end

end A108225.P10526891050467818132

namespace A108225

/-- `C(a(n-1), 2)+2` -/
def P10526891050467818132.Spec : Prop :=
  ∀ n, (P10526891050467818132.a n : ℤ) = A108225 n

end A108225

/-! ## A108225.P8815974388624025922

`(a(n-1)²-a(n-1))/2+2` with `a(0)=0`
-/

namespace A108225.P8815974388624025922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) ^ 2 - a (n - 1)) / 2 + 2

end

end A108225.P8815974388624025922

namespace A108225

/-- `(a(n-1)²-a(n-1))/2+2` -/
def P8815974388624025922.Spec : Prop :=
  ∀ n, P8815974388624025922.a n = (A108225 n : ℚ)

end A108225

/-! ## A108225.P16434976080049247475

`2-(a(n-1)-a(n-1)²)/2` with `a(0)=0`
-/

namespace A108225.P16434976080049247475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a (n - 1) - a (n - 1) ^ 2) / 2

end

end A108225.P16434976080049247475

namespace A108225

/-- `2-(a(n-1)-a(n-1)²)/2` -/
def P16434976080049247475.Spec : Prop :=
  ∀ n, P16434976080049247475.a n = (A108225 n : ℚ)

end A108225

/-!
# A108226: Primes p such that p + 8^k is composite for all k >= 0.

The programs for A108226, there is no canonical definition to state claims against.
-/

/-! ## A108226.P12235424040858950484

`∪[A045473(n+1), A132255(n+1)]`
-/

namespace A108226.P12235424040858950484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108226.P12235424040858950484

/-! ## A108226.P16272656196467661001

`p?[eq[1, A018789(A263323(n+1))]]`
-/

namespace A108226.P16272656196467661001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018789 (A263323 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A108226.P16272656196467661001

/-! ## A108226.P4758764519679468960

`eq[A018789(A263323(n+1)), A166974(n)]`
-/

namespace A108226.P4758764519679468960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018789 (A263323 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108226.P4758764519679468960

/-!
# A108227: a(n) is the least number of prime factors for any abundant number with p_n (the n-th prime) as its least factor.

The programs for A108227, there is no canonical definition to state claims against.
-/

/-! ## A108227.P9264609724231592770

`A107705(n+1)+A000007(n)`
-/

namespace A108227.P9264609724231592770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A000007 n

end

end A108227.P9264609724231592770

/-! ## A108227.P7189592514049455104

`A107705(n+1)+A028310(n)-n`
-/

namespace A108227.P7189592514049455104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + (A028310 n - (n : ℤ))

end

end A108227.P7189592514049455104

/-! ## A108227.P10958427965583336919

`A107705(n+1)+A010051(2*(n+1))`
-/

namespace A108227.P10958427965583336919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A010051 (2 * (n + 1))

end

end A108227.P10958427965583336919

/-! ## A108227.P2871427116038531510

`A107705(n+1)+A007814(A008574(n)+1)`
-/

namespace A108227.P2871427116038531510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A007814 (A008574 n + 1).toNat

end

end A108227.P2871427116038531510

/-! ## A108227.P6913670212424312482

`A107705(n+1)+A015899(A080588(n)-n)`
-/

namespace A108227.P6913670212424312482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A015899 (A080588 n - (n : ℤ)).toNat

end

end A108227.P6913670212424312482

/-! ## A108227.P15159869788633991822

`A107705(n+1)+A015899(A008574(n)-(n+1))`
-/

namespace A108227.P15159869788633991822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A015899 (A008574 n - (n + 1 : ℤ)).toNat

end

end A108227.P15159869788633991822

/-! ## A108227.P12152338033771132118

`A007707(n+1)+A107705(n+1)-A007684(n+1)`
-/

namespace A108227.P12152338033771132118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) + (A107705 (n + 1) - A007684 (n + 1))

end

end A108227.P12152338033771132118

/-! ## A108227.P2233811474521849814

`A107705(n+1)+A008683(A001597(n+1))`
-/

namespace A108227.P2233811474521849814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A008683 (A001597 (n + 1)).toNat

end

end A108227.P2233811474521849814

/-! ## A108227.P17612941984621884004

`A107705(n+1)+A015899(A080588(3*n))`
-/

namespace A108227.P17612941984621884004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A015899 (A080588 (3 * n)).toNat

end

end A108227.P17612941984621884004

/-! ## A108227.P9339956562575822682

`A107705(n+1)+A008683((n+1)²)`
-/

namespace A108227.P9339956562575822682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107705 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A108227.P9339956562575822682

/-!
# A108228: a(n) = (A003961(n) - 1)/2, a permutation of the nonnegative integers.

The programs for A108228, the canonical program `A108228.P1519769312143049482` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108228 has offset 1).

The definition of A108228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108228.P1519769312143049482

`(A003961(n+1)-1)/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108228

/-- `(A003961(n+1)-1)/2` -/
def P1519769312143049482.Spec : Prop :=
  ∀ n, P1519769312143049482.a n = (A108228 (n + 1) : ℚ)

end A108228

/-! ## A108228.P4147412845193198738

`A253885(n)/2`
-/

namespace A108228.P4147412845193198738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / 2

end

end A108228.P4147412845193198738

namespace A108228

/-- `A253885(n)/2` -/
def P4147412845193198738.Spec : Prop :=
  ∀ n, P4147412845193198738.a n = (A108228 (n + 1) : ℚ)

end A108228

/-! ## A108228.P11477111065034531375

`A048673(n+1)-1`
-/

namespace A108228.P11477111065034531375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - 1

end

end A108228.P11477111065034531375

namespace A108228

/-- `A048673(n+1)-1` -/
def P11477111065034531375.Spec : Prop :=
  ∀ n, P11477111065034531375.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P16034618900098456047

`A349573(n+1)+n`
-/

namespace A108228.P16034618900098456047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1) + (n : ℤ)

end

end A108228.P16034618900098456047

namespace A108228

/-- `A349573(n+1)+n` -/
def P16034618900098456047.Spec : Prop :=
  ∀ n, P16034618900098456047.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P15667632164195130251

`floor(A003961(n+1)/2)`
-/

namespace A108228.P15667632164195130251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003961 (n + 1) : ℚ) / 2⌋

end

end A108228.P15667632164195130251

namespace A108228

/-- `floor(A003961(n+1)/2)` -/
def P15667632164195130251.Spec : Prop :=
  ∀ n, P15667632164195130251.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P9983728374331558043

`floor(A249734(n+1)/6)`
-/

namespace A108228.P9983728374331558043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249734 (n + 1) : ℚ) / 6⌋

end

end A108228.P9983728374331558043

namespace A108228

/-- `floor(A249734(n+1)/6)` -/
def P9983728374331558043.Spec : Prop :=
  ∀ n, P9983728374331558043.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P6487205171451942853

`floor(sinh(log(A045965(n+1))))`
-/

namespace A108228.P6487205171451942853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A045965 (n + 1) : ℝ))⌋

end

end A108228.P6487205171451942853

namespace A108228

/-- `floor(sinh(log(A045965(n+1))))` -/
def P6487205171451942853.Spec : Prop :=
  ∀ n, P6487205171451942853.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P3295987007701057675

`A243501(n+1)/2-1`
-/

namespace A108228.P3295987007701057675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) : ℚ) / 2 - 1

end

end A108228.P3295987007701057675

namespace A108228

/-- `A243501(n+1)/2-1` -/
def P3295987007701057675.Spec : Prop :=
  ∀ n, P3295987007701057675.a n = (A108228 (n + 1) : ℚ)

end A108228

/-! ## A108228.P10957116438057839486

`(A336853(n+1)+n)/2`
-/

namespace A108228.P10957116438057839486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336853 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A108228.P10957116438057839486

namespace A108228

/-- `(A336853(n+1)+n)/2` -/
def P10957116438057839486.Spec : Prop :=
  ∀ n, P10957116438057839486.a n = (A108228 (n + 1) : ℚ)

end A108228

/-! ## A108228.P6109137973208182153

`A378751(n+1)+A286385(n+1)`
-/

namespace A108228.P6109137973208182153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378751 (n + 1) + A286385 (n + 1)

end

end A108228.P6109137973208182153

namespace A108228

/-- `A378751(n+1)+A286385(n+1)` -/
def P6109137973208182153.Spec : Prop :=
  ∀ n, P6109137973208182153.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P12074301375917396338

`A003961(n+1)%A048673(n+1)`
-/

namespace A108228.P12074301375917396338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1)) (A048673 (n + 1))

end

end A108228.P12074301375917396338

namespace A108228

/-- `A003961(n+1)%A048673(n+1)` -/
def P12074301375917396338.Spec : Prop :=
  ∀ n, P12074301375917396338.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P9719394077833067678

`A045965(n+1)%A048673(n+1)`
-/

namespace A108228.P9719394077833067678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045965 (n + 1)) (A048673 (n + 1))

end

end A108228.P9719394077833067678

namespace A108228

/-- `A045965(n+1)%A048673(n+1)` -/
def P9719394077833067678.Spec : Prop :=
  ∀ n, P9719394077833067678.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P2326913953651116852

`∑{d}[n+1, A336854(#)*A346234((n+1)/#)]`
-/

namespace A108228.P2326913953651116852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336854 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108228.P2326913953651116852

namespace A108228

/-- `∑{d}[n+1, A336854(#)*A346234((n+1)/#)]` -/
def P2326913953651116852.Spec : Prop :=
  ∀ n, P2326913953651116852.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P9925750938757549587

`A245447(A064216(n+1))-1`
-/

namespace A108228.P9925750938757549587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064216 (n + 1)).toNat - 1

end

end A108228.P9925750938757549587

namespace A108228

/-- `A245447(A064216(n+1))-1` -/
def P9925750938757549587.Spec : Prop :=
  ∀ n, P9925750938757549587.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P14512285304224345768

`A245447(A064989(2*n+1))-1`
-/

namespace A108228.P14512285304224345768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064989 (2 * n + 1)).toNat - 1

end

end A108228.P14512285304224345768

namespace A108228

/-- `A245447(A064989(2*n+1))-1` -/
def P14512285304224345768.Spec : Prop :=
  ∀ n, P14512285304224345768.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P6328924072449589901

`A249810(2*(n+1))-1`
-/

namespace A108228.P6328924072449589901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * (n + 1)) - 1

end

end A108228.P6328924072449589901

namespace A108228

/-- `A249810(2*(n+1))-1` -/
def P6328924072449589901.Spec : Prop :=
  ∀ n, P6328924072449589901.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P6852845076543517043

`A249820(2*(n+1))+n`
-/

namespace A108228.P6852845076543517043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (2 * (n + 1)) + (n : ℤ)

end

end A108228.P6852845076543517043

namespace A108228

/-- `A249820(2*(n+1))+n` -/
def P6852845076543517043.Spec : Prop :=
  ∀ n, P6852845076543517043.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P15718308681362601677

`A283464(2*(n+1))-1`
-/

namespace A108228.P15718308681362601677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (2 * (n + 1)) - 1

end

end A108228.P15718308681362601677

namespace A108228

/-- `A283464(2*(n+1))-1` -/
def P15718308681362601677.Spec : Prop :=
  ∀ n, P15718308681362601677.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P17196398466749037660

`A023443(A048673(n+1))`
-/

namespace A108228.P17196398466749037660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048673 (n + 1)).toNat

end

end A108228.P17196398466749037660

namespace A108228

/-- `A023443(A048673(n+1))` -/
def P17196398466749037660.Spec : Prop :=
  ∀ n, P17196398466749037660.a n = A108228 (n + 1)

end A108228

/-! ## A108228.P11476552017399607404

`A264996(A266408(n+1))-1`
-/

namespace A108228.P11476552017399607404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A266408 (n + 1)).toNat - 1

end

end A108228.P11476552017399607404

namespace A108228

/-- `A264996(A266408(n+1))-1` -/
def P11476552017399607404.Spec : Prop :=
  ∀ n, P11476552017399607404.a n = A108228 (n + 1)

end A108228

/-!
# A108229: n occurs Lucas number L(n) times (A000204).

The programs for A108229, the canonical program `A108229.P10840528410335483622` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108229 has offset 1).

The definition of A108229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108229.P10840528410335483622

`∑[char[round(ϕ^n)-3]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108229

/-- `∑[char[round(ϕ^n)-3]]` -/
def P10840528410335483622.Spec : Prop :=
  ∀ n, (P10840528410335483622.a n : ℤ) = A108229 (n + 1)

theorem P10840528410335483622.correct : P10840528410335483622.Spec := by
  intro n
  simp only [A108229, Nat.add_sub_cancel]

end A108229

/-! ## A108229.P1349153274167946442

`a(ceil((n-3)/ϕ))+1` with `a(0)=1, a(1)=2`
-/

namespace A108229.P1349153274167946442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌈((n : ℤ) - 3 : ℝ) / Real.goldenRatio⌉.toNat + 1

end

end A108229.P1349153274167946442

namespace A108229

/-- `a(ceil((n-3)/ϕ))+1` -/
def P1349153274167946442.Spec : Prop :=
  ∀ n, (P1349153274167946442.a n : ℤ) = A108229 (n + 1)

end A108229

/-! ## A108229.P2536980844852380101

`A130245(n+3)-2`
-/

namespace A108229.P2536980844852380101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (n + 3) - 2

end

end A108229.P2536980844852380101

namespace A108229

/-- `A130245(n+3)-2` -/
def P2536980844852380101.Spec : Prop :=
  ∀ n, P2536980844852380101.a n = A108229 (n + 1)

end A108229

/-! ## A108229.P17481203708990276479

`A130241(n+3)-1`
-/

namespace A108229.P17481203708990276479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 3) - 1

end

end A108229.P17481203708990276479

namespace A108229

/-- `A130241(n+3)-1` -/
def P17481203708990276479.Spec : Prop :=
  ∀ n, P17481203708990276479.a n = A108229 (n + 1)

end A108229

/-! ## A108229.P9219176451451675703

`A130247(n+3)-1`
-/

namespace A108229.P9219176451451675703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (n + 3) - 1

end

end A108229.P9219176451451675703

namespace A108229

/-- `A130247(n+3)-1` -/
def P9219176451451675703.Spec : Prop :=
  ∀ n, P9219176451451675703.a n = A108229 (n + 1)

end A108229

/-! ## A108229.P1705649048448721354

`A130248(n+3)-A130243(n+2)`
-/

namespace A108229.P1705649048448721354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 3) - A130243 (n + 2)

end

end A108229.P1705649048448721354

namespace A108229

/-- `A130248(n+3)-A130243(n+2)` -/
def P1705649048448721354.Spec : Prop :=
  ∀ n, P1705649048448721354.a n = A108229 (n + 1)

end A108229

/-!
# A108230: a(1) = 0, a(n) = prime index of A088387(n).

The programs for A108230, there is no canonical definition to state claims against.
-/

/-! ## A108230.P10301753570251030907

`A000720(A088387(n+1))`
-/

namespace A108230.P10301753570251030907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088387 (n + 1)).toNat

end

end A108230.P10301753570251030907

/-! ## A108230.P12533430864018096208

`A055396(A034699(n+1))`
-/

namespace A108230.P12533430864018096208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A034699 (n + 1)).toNat

end

end A108230.P12533430864018096208

/-! ## A108230.P16305559130493842696

`A061395(A324388(n+1))`
-/

namespace A108230.P16305559130493842696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A324388 (n + 1)).toNat

end

end A108230.P16305559130493842696

/-! ## A108230.P12635092505009507495

`A066328(A354933(n+1))`
-/

namespace A108230.P12635092505009507495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A354933 (n + 1)).toNat

end

end A108230.P12635092505009507495

/-! ## A108230.P15309282056287705984

`A363487(A327393(n+1))`
-/

namespace A108230.P15309282056287705984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (A327393 (n + 1)).toNat

end

end A108230.P15309282056287705984

/-! ## A108230.P15743034039792351274

`A061395(A034699((n+1)²))`
-/

namespace A108230.P15743034039792351274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A034699 ((n + 1) ^ 2)).toNat

end

end A108230.P15743034039792351274

/-! ## A108230.P9760275842944971576

`A066328(A034699(n+1)²)`
-/

namespace A108230.P9760275842944971576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A034699 (n + 1) ^ 2).toNat

end

end A108230.P9760275842944971576

/-! ## A108230.P4744267719403735568

`A055396(A088387((n+1)²))`
-/

namespace A108230.P4744267719403735568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A088387 ((n + 1) ^ 2)).toNat

end

end A108230.P4744267719403735568

/-! ## A108230.P12810736938907269258

`A061395(A088387(n+1)²)`
-/

namespace A108230.P12810736938907269258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A088387 (n + 1) ^ 2).toNat

end

end A108230.P12810736938907269258

/-! ## A108230.P18085673124296900736

`A289508(A034699(n+1)²)`
-/

namespace A108230.P18085673124296900736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A034699 (n + 1) ^ 2).toNat

end

end A108230.P18085673124296900736

/-!
# A108232: Numbers n such that 11*n - 7 is prime.

The programs for A108232, the canonical program `A108232.P12864365856612306352` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108232 has offset 1).

The definition of A108232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108232.P3516768314306811864

`A154607(1+n)+1`
-/

namespace A108232.P3516768314306811864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (1 + n) + 1

end

end A108232.P3516768314306811864

namespace A108232

/-- `A154607(1+n)+1` -/
def P3516768314306811864.Spec : Prop :=
  ∀ n, P3516768314306811864.a n = A108232 (n + 1)

end A108232

/-! ## A108232.P12864365856612306352

`ceil(A141851(n+1)/11)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108232

/-- `ceil(A141851(n+1)/11)` -/
def P12864365856612306352.Spec : Prop :=
  ∀ n, P12864365856612306352.a n = A108232 (n + 1)

theorem P12864365856612306352.correct : P12864365856612306352.Spec := by
  intro n
  simp only [A108232, Nat.add_sub_cancel]

end A108232

/-! ## A108232.P5002440685392425774

`ceil(p?[A017437(n)]/11)`
-/

namespace A108232.P5002440685392425774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 11⌉

end

end A108232.P5002440685392425774

namespace A108232

/-- `ceil(p?[A017437(n)]/11)` -/
def P5002440685392425774.Spec : Prop :=
  ∀ n, P5002440685392425774.a n = A108232 (n + 1)

end A108232

/-! ## A108232.P8916608090981904900

`A014681(A154607(n+1))`
-/

namespace A108232.P8916608090981904900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A154607 (n + 1)).toNat

end

end A108232.P8916608090981904900

namespace A108232

/-- `A014681(A154607(n+1))` -/
def P8916608090981904900.Spec : Prop :=
  ∀ n, P8916608090981904900.a n = A108232 (n + 1)

end A108232

/-! ## A108232.P17581415317598074694

`lt[A001222(11*n+4), 2]+1`
-/

namespace A108232.P17581415317598074694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A108232.P17581415317598074694

namespace A108232

/-- `lt[A001222(11*n+4), 2]+1` -/
def P17581415317598074694.Spec : Prop :=
  ∀ n, (P17581415317598074694.a n : ℤ) = A108232 (n + 1)

end A108232

/-! ## A108232.P9230418424673049561

`eq[1, A001222(8*n+4+3*n)]+1`
-/

namespace A108232.P9230418424673049561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 4 + 3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108232.P9230418424673049561

namespace A108232

/-- `eq[1, A001222(8*n+4+3*n)]+1` -/
def P9230418424673049561.Spec : Prop :=
  ∀ n, (P9230418424673049561.a n : ℤ) = A108232 (n + 1)

end A108232

/-! ## A108232.P9542509613848790033

`lt[A000005(2*(6*n+1)-n+2), 3]+1`
-/

namespace A108232.P9542509613848790033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * (6 * n + 1) : ℤ) - (n : ℤ) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A108232.P9542509613848790033

namespace A108232

/-- `lt[A000005(2*(6*n+1)-n+2), 3]+1` -/
def P9542509613848790033.Spec : Prop :=
  ∀ n, (P9542509613848790033.a n : ℤ) = A108232 (n + 1)

end A108232

/-! ## A108232.P3592193225087592657

`eq[2, A000005(A017437(A014681(n)))]`
-/

namespace A108232.P3592193225087592657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017437 (A014681 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108232.P3592193225087592657

namespace A108232

/-- `eq[2, A000005(A017437(A014681(n)))]` -/
def P3592193225087592657.Spec : Prop :=
  ∀ n, (P3592193225087592657.a n : ℤ) = A108232 (n + 1)

end A108232

/-! ## A108232.P7832431530428108903

`eq[A000203(A017437(n)), A017449(n)]+1`
-/

namespace A108232.P7832431530428108903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108232.P7832431530428108903

namespace A108232

/-- `eq[A000203(A017437(n)), A017449(n)]+1` -/
def P7832431530428108903.Spec : Prop :=
  ∀ n, (P7832431530428108903.a n : ℤ) = A108232 (n + 1)

end A108232

/-! ## A108232.P6078090582788289618

`lt[A000203(A017437(n)), A017461(n)]+1`
-/

namespace A108232.P6078090582788289618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A108232.P6078090582788289618

namespace A108232

/-- `lt[A000203(A017437(n)), A017461(n)]+1` -/
def P6078090582788289618.Spec : Prop :=
  ∀ n, (P6078090582788289618.a n : ℤ) = A108232 (n + 1)

end A108232

/-! ## A108232.P2820486987532655268

`A194524(A141851(n+1))`
-/

namespace A108232.P2820486987532655268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194524 (A141851 (n + 1)).toNat

end

end A108232.P2820486987532655268

namespace A108232

/-- `A194524(A141851(n+1))` -/
def P2820486987532655268.Spec : Prop :=
  ∀ n, P2820486987532655268.a n = A108232 (n + 1)

end A108232

/-!
# A108233: Numbers n such that 11*n + 5 is prime.

The programs for A108233, the canonical program `A108233.P14032873285470875743` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108233 has offset 1).

The definition of A108233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7853 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108233.P14032873285470875743

`floor(p?[a(n-1)+11]/11)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108233

/-- `floor(p?[a(n-1)+11]/11)` -/
def P14032873285470875743.Spec : Prop :=
  ∀ n, P14032873285470875743.a n = A108233 (n + 1)

theorem P14032873285470875743.correct : P14032873285470875743.Spec := by
  intro n
  simp only [A108233, Nat.add_sub_cancel]

end A108233

/-! ## A108233.P16882761945035963632

`round(p?[a(n-1)+11]/11)` with `a(0)=10, a(1)=5`
-/

namespace A108233.P16882761945035963632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 5] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A108233.P16882761945035963632

namespace A108233

/-- `round(p?[a(n-1)+11]/11)` -/
def P16882761945035963632.Spec : Prop :=
  ∀ n, P16882761945035963632.a n = A108233 (n + 1)

end A108233

/-! ## A108233.P10031032932851386601

`ceil(p?[a(n-1)+11]/11)-1` with `a(0)=6, a(1)=5`
-/

namespace A108233.P10031032932851386601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 1

end

end A108233.P10031032932851386601

namespace A108233

/-- `ceil(p?[a(n-1)+11]/11)-1` -/
def P10031032932851386601.Spec : Prop :=
  ∀ n, P10031032932851386601.a n = A108233 (n + 1)

end A108233

/-! ## A108233.P7205782054712011575

`comp[A153381(n+1)]`
-/

namespace A108233.P7205782054712011575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108233.P7205782054712011575

namespace A108233

/-- `comp[A153381(n+1)]` -/
def P7205782054712011575.Spec : Prop :=
  ∀ n, (P7205782054712011575.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P17076912341278206138

`eq[1, A001222(11*n+5)]`
-/

namespace A108233.P17076912341278206138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108233.P17076912341278206138

namespace A108233

/-- `eq[1, A001222(11*n+5)]` -/
def P17076912341278206138.Spec : Prop :=
  ∀ n, (P17076912341278206138.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P5088180961726232799

`eq[2, A000005(11*n+5)]`
-/

namespace A108233.P5088180961726232799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108233.P5088180961726232799

namespace A108233

/-- `eq[2, A000005(11*n+5)]` -/
def P5088180961726232799.Spec : Prop :=
  ∀ n, (P5088180961726232799.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P15335758135998662886

`lt[2*n, A020639(11*n+5)]`
-/

namespace A108233.P15335758135998662886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108233.P15335758135998662886

namespace A108233

/-- `lt[2*n, A020639(11*n+5)]` -/
def P15335758135998662886.Spec : Prop :=
  ∀ n, (P15335758135998662886.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P2618505464907183274

`eq[A000010(A017449(n)), A017437(n)]`
-/

namespace A108233.P2618505464907183274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108233.P2618505464907183274

namespace A108233

/-- `eq[A000010(A017449(n)), A017437(n)]` -/
def P2618505464907183274.Spec : Prop :=
  ∀ n, (P2618505464907183274.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P2128252607002061579

`eq[A000203(A017449(n)), A017461(n)]`
-/

namespace A108233.P2128252607002061579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108233.P2128252607002061579

namespace A108233

/-- `eq[A000203(A017449(n)), A017461(n)]` -/
def P2128252607002061579.Spec : Prop :=
  ∀ n, (P2128252607002061579.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P10640032314228000029

`lt[A008593(n), A000010(A017449(n))]`
-/

namespace A108233.P10640032314228000029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108233.P10640032314228000029

namespace A108233

/-- `lt[A008593(n), A000010(A017449(n))]` -/
def P10640032314228000029.Spec : Prop :=
  ∀ n, (P10640032314228000029.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P12984014705702060413

`lt[A017401(n), A000010(A017449(n))]`
-/

namespace A108233.P12984014705702060413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108233.P12984014705702060413

namespace A108233

/-- `lt[A017401(n), A000010(A017449(n))]` -/
def P12984014705702060413.Spec : Prop :=
  ∀ n, (P12984014705702060413.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P15956964889308343222

`eq[A000010(A017437(n)+1), A017437(n)]`
-/

namespace A108233.P15956964889308343222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017437 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108233.P15956964889308343222

namespace A108233

/-- `eq[A000010(A017437(n)+1), A017437(n)]` -/
def P15956964889308343222.Spec : Prop :=
  ∀ n, (P15956964889308343222.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P13511174441736880177

`eq[A000203(A017461(n)-1), A017461(n)]`
-/

namespace A108233.P13511174441736880177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017461 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108233.P13511174441736880177

namespace A108233

/-- `eq[A000203(A017461(n)-1), A017461(n)]` -/
def P13511174441736880177.Spec : Prop :=
  ∀ n, (P13511174441736880177.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P11491551510211982592

`lt[A000040(A000005(11*n+5)), A177499(2*(n+1))]`
-/

namespace A108233.P11491551510211982592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (11 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108233.P11491551510211982592

namespace A108233

/-- `lt[A000040(A000005(11*n+5)), A177499(2*(n+1))]` -/
def P11491551510211982592.Spec : Prop :=
  ∀ n, (P11491551510211982592.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P5524331299738826641

`lt[2*n, A014963(11*n+5)]`
-/

namespace A108233.P5524331299738826641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (11 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108233.P5524331299738826641

namespace A108233

/-- `lt[2*n, A014963(11*n+5)]` -/
def P5524331299738826641.Spec : Prop :=
  ∀ n, (P5524331299738826641.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P6486430215480504769

`A194527(A141852(n+1))`
-/

namespace A108233.P6486430215480504769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194527 (A141852 (n + 1)).toNat

end

end A108233.P6486430215480504769

namespace A108233

/-- `A194527(A141852(n+1))` -/
def P6486430215480504769.Spec : Prop :=
  ∀ n, P6486430215480504769.a n = A108233 (n + 1)

end A108233

/-! ## A108233.P18201370966701199352

`eq[1, A246277(A017437(n)+1)]`
-/

namespace A108233.P18201370966701199352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A017437 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108233.P18201370966701199352

namespace A108233

/-- `eq[1, A246277(A017437(n)+1)]` -/
def P18201370966701199352.Spec : Prop :=
  ∀ n, (P18201370966701199352.a n : ℤ) = A108233 (n + 1)

end A108233

/-! ## A108233.P17960397756552276014

`eq[1, A053989(A017473(n)-1)]`
-/

namespace A108233.P17960397756552276014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A017473 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108233.P17960397756552276014

namespace A108233

/-- `eq[1, A053989(A017473(n)-1)]` -/
def P17960397756552276014.Spec : Prop :=
  ∀ n, (P17960397756552276014.a n : ℤ) = A108233 (n + 1)

end A108233

/-!
# A108234: Minimum m such that n*2^m+k is prime, for k < 2^m. In other words, assuming you've read n out of a binary stream, a(n) is the minimum number of additional bits (appended to the least significant end of n) you must read before it is possible to obtain a prime.

The programs for A108234, there is no canonical definition to state claims against.
-/

/-! ## A108234.P15559226817215472280

`A001222(floor(A164022(n+1)/(n+1)))`
-/

namespace A108234.P15559226817215472280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊(A164022 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A108234.P15559226817215472280

/-! ## A108234.P14836942924523607280

`A001222(floor(A208241(n+1)/(n+1)))*A005171(n+1)`
-/

namespace A108234.P14836942924523607280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊(A208241 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat * A005171 (n + 1)

end

end A108234.P14836942924523607280

/-! ## A108234.P7932545561761952839

`A000523(round(A208241(n+1)/(n+1)))*A005171(n+1)`
-/

namespace A108234.P7932545561761952839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A208241 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A005171 (n + 1)

end

end A108234.P7932545561761952839

/-! ## A108234.P14700064592327798934

`A001222(round(A208241(n+1)/(n+1)))*A005171(n+1)`
-/

namespace A108234.P14700064592327798934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A208241 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A005171 (n + 1)

end

end A108234.P14700064592327798934

/-! ## A108234.P2227756433141265109

`A000523(A164022(n+1))-A000523(n+1)`
-/

namespace A108234.P2227756433141265109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A164022 (n + 1)).toNat - A000523 (n + 1)

end

end A108234.P2227756433141265109

/-! ## A108234.P11476532135755116691

`(A000523(A208241(n+1))-A000523(n+1))*A005171(n+1)`
-/

namespace A108234.P11476532135755116691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000523 (A208241 (n + 1)).toNat - A000523 (n + 1)) * A005171 (n + 1)

end

end A108234.P11476532135755116691

/-! ## A108234.P13547339145393228926

`A000523(A262365(∑[n]+1))-A000523(n+1)`
-/

namespace A108234.P13547339145393228926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A262365 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - A000523 (n + 1)

end

end A108234.P13547339145393228926

/-! ## A108234.P1655721261042144350

`A005171(n+1)*A338884(n+1)`
-/

namespace A108234.P1655721261042144350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A338884 (n + 1)

end

end A108234.P1655721261042144350

/-! ## A108234.P135758836689613198

`floor(A338884(n+1)/A089026(n+1))`
-/

namespace A108234.P135758836689613198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A338884 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ)⌋

end

end A108234.P135758836689613198

/-! ## A108234.P14853285181947473017

`(1-A010051(n+1))*A338884(n+1)`
-/

namespace A108234.P14853285181947473017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A338884 (n + 1)

end

end A108234.P14853285181947473017

/-!
# A108235: Number of partitions of {1,2,...,3n} into n triples (X,Y,Z) each satisfying X+Y=Z.

The programs for A108235, there is no canonical definition to state claims against.
-/

/-! ## A108235.P12608810561932917898

`A002849(A008486(n))*A133872(n)`
-/

namespace A108235.P12608810561932917898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002849 (A008486 n).toNat * A133872 n

end

end A108235.P12608810561932917898

/-! ## A108235.P15627144226379572502

`A002849(A028310(3*n))*A133872(n)`
-/

namespace A108235.P15627144226379572502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002849 (A028310 (3 * n)).toNat * A133872 n

end

end A108235.P15627144226379572502

/-! ## A108235.P159325058454216241

`A133872(n)*A234944(A133263(n))`
-/

namespace A108235.P159325058454216241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A234944 (A133263 n).toNat

end

end A108235.P159325058454216241

/-! ## A108235.P10886963308492660909

`A137676(n)*A234944(A133263(n))`
-/

namespace A108235.P10886963308492660909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 n * A234944 (A133263 n).toNat

end

end A108235.P10886963308492660909

/-!
# A108237: Erase the odd-indexed digits of the sequence and concatenate what is left. The result is the concatenation of all integers of the sequence.

The programs for A108237, there is no canonical definition to state claims against.
-/

/-! ## A108237.P3742249800585902701

`A279769(lt[A349151(n+1), A349130(n+1)])`
-/

namespace A108237.P3742249800585902701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279769 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A108237.P3742249800585902701

/-!
# A108238: Numbers of the form (7^i)*(12^j), with i, j >= 0.

The programs for A108238, there is no canonical definition to state claims against.
-/

/-! ## A108238.P18065055460355821831

`A028310(A038278(n)/A007318(n))`
-/

namespace A108238.P18065055460355821831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A038278 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A108238.P18065055460355821831

/-! ## A108238.P1612416449385187868

`A028310(A038278(n)/A076831(n))`
-/

namespace A108238.P1612416449385187868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A038278 n : ℚ) / (A076831 n : ℚ))).toNat

end

end A108238.P1612416449385187868

/-! ## A108238.P16566481978836545967

`A262401(A038278(n)/A007318(n))`
-/

namespace A108238.P16566481978836545967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (SequenceMachineLib.roundAway ((A038278 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A108238.P16566481978836545967

/-! ## A108238.P17685894506320985663

`A262401(A038278(n)/A076831(n))`
-/

namespace A108238.P17685894506320985663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (SequenceMachineLib.roundAway ((A038278 n : ℚ) / (A076831 n : ℚ))).toNat

end

end A108238.P17685894506320985663

/-! ## A108238.P4666897009812247657

`A005843(A038278(n))/A028326(n)`
-/

namespace A108238.P4666897009812247657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A038278 n).toNat : ℚ) / (A028326 n : ℚ)

end

end A108238.P4666897009812247657

/-!
# A108239: Number of triangulated surfaces with n vertices.

The programs for A108239, there is no canonical definition to state claims against.
-/

/-! ## A108239.P3504968167772534284

`A047241(A165903(n)+floor(n/2))`
-/

namespace A108239.P3504968167772534284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A165903 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A108239.P3504968167772534284

/-! ## A108239.P652148827753952240

`A030101(A030068(ceil(∑[3^(n-2)])+1))`
-/

namespace A108239.P652148827753952240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030068 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + 1).toNat).toNat

end

end A108239.P652148827753952240

/-!
# A108241: Numbers n such that concatenating n and the sum of factorials of the digits of n produces a triangular number.

The programs for A108241, there is no canonical definition to state claims against.
-/

/-! ## A108241.P3357674891760505831

`A336291(n)+A000720(A336242(n+1))`
-/

namespace A108241.P3357674891760505831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336291 n + A000720 (A336242 (n + 1)).toNat

end

end A108241.P3357674891760505831

/-!
# A108242: a(n) is the number of coverings of 1..n by cyclic words of length 3, such that each value from 1 to n appears precisely 3 times. That is, the union of all the letters in all of the words of a given covering is the multiset {1,1,1,2,2,2,...,n,n,n}. Repeats of words are allowed in a given covering.

The programs for A108242, there is no canonical definition to state claims against.
-/

/-! ## A108242.P9697660611384896048

`and(A127276(n), A304491(A055555(n)))`
-/

namespace A108242.P9697660611384896048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127276 n) (A304491 (A055555 n).toNat)

end

end A108242.P9697660611384896048

/-! ## A108242.P4254429753019268139

`and(A000010(A360344(n)), A037151(2*(n+1)))`
-/

namespace A108242.P4254429753019268139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A360344 n).toNat) (A037151 (2 * (n + 1)))

end

end A108242.P4254429753019268139

/-!
# A108243: a(n) = number of 3-regular (trivalent) multi-graphs without loops on 2n vertices; a(n) = number of symmetric 2n X 2n matrices with {0,1,2,3}-entries with row sum equal to 3 for each row and trace 0.

The programs for A108243, there is no canonical definition to state claims against.
-/

/-! ## A108243.P7446859499638720871

`A333351(A181510(n+1)-n)`
-/

namespace A108243.P7446859499638720871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A181510 (n + 1) - (n : ℤ)).toNat

end

end A108243.P7446859499638720871

/-! ## A108243.P14009611681829920934

`A333351(A141214(2*n+1)-1)`
-/

namespace A108243.P14009611681829920934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A141214 (2 * n + 1) - 1).toNat

end

end A108243.P14009611681829920934

/-! ## A108243.P14543569361497265546

`A333351(A000096(2*n+3)-3)`
-/

namespace A108243.P14543569361497265546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A000096 (2 * n + 3) - 3).toNat

end

end A108243.P14543569361497265546

/-! ## A108243.P6596100701792750624

`A333351(A000124(2*(n+2))-5)`
-/

namespace A108243.P6596100701792750624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A000124 (2 * (n + 2)) - 5).toNat

end

end A108243.P6596100701792750624

/-! ## A108243.P9370617624552655663

`A333351(A016777(n)+A001844(n+1))`
-/

namespace A108243.P9370617624552655663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A016777 n + A001844 (n + 1)).toNat

end

end A108243.P9370617624552655663

/-!
# A108244: Triangle read by rows: row n gives list of all compositions of n ordered first by decreasing length, then by reverse colexicographical order.

The programs for A108244, there is no canonical definition to state claims against.
-/

/-! ## A108244.P444330200569850004

`A296772(n+1)+A296773(n+1)-A337260(n+1)`
-/

namespace A108244.P444330200569850004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (n + 1) + (A296773 (n + 1) - A337260 (n + 1))

end

end A108244.P444330200569850004

/-! ## A108244.P5909559457129645078

`A272269(A296773(n+1)+A262079(n+1))`
-/

namespace A108244.P5909559457129645078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A296773 (n + 1) + A262079 (n + 1)).toNat

end

end A108244.P5909559457129645078

/-! ## A108244.P15390780018875505406

`A376595(A262079(n+1)*A296773(n+1))`
-/

namespace A108244.P15390780018875505406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376595 (A262079 (n + 1) * A296773 (n + 1)).toNat

end

end A108244.P15390780018875505406

/-! ## A108244.P14431234605422769468

`A118759(lcm(A262079(n+1), A296773(n+1)))`
-/

namespace A108244.P14431234605422769468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lcm (A262079 (n + 1)) (A296773 (n + 1)))

end

end A108244.P14431234605422769468

/-! ## A108244.P14741554094615235852

`A296773(n+1)+A057979(A262079(n+1)!)`
-/

namespace A108244.P14741554094615235852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296773 (n + 1) + A057979 (Nat.factorial (A262079 (n + 1)).toNat)

end

end A108244.P14741554094615235852

/-!
# A108245: If n-th prime is 4m - 1, then a(n) = 4m + 1. If n-th prime is 4m + 1, then a(n) = 4m - 1.

The programs for A108245, the canonical program `A108245.P15949807087332557583` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108245 has offset 2).

The definition of A108245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108245.P15949807087332557583

`A000040(n+2)+2*(A000040(n+2)%4-2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A108245

/-- `A000040(n+2)+2*(A000040(n+2)%4-2)` -/
def P15949807087332557583.Spec : Prop :=
  ∀ n, P15949807087332557583.a n = A108245 (n + 2)

theorem P15949807087332557583.correct : P15949807087332557583.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel]

end A108245

/-! ## A108245.P6884030969046323755

`xor(2, p?[2*n+1]+1)-1`
-/

namespace A108245.P6884030969046323755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) : ℤ) - 1

end

end A108245.P6884030969046323755

namespace A108245

/-- `xor(2, p?[2*n+1]+1)-1` -/
def P6884030969046323755.Spec : Prop :=
  ∀ n, P6884030969046323755.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P18118314240032591239

`xor(2, A055670(n+2))-1`
-/

namespace A108245.P18118314240032591239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A055670 (n + 2)) - 1

end

end A108245.P18118314240032591239

namespace A108245

/-- `xor(2, A055670(n+2))-1` -/
def P18118314240032591239.Spec : Prop :=
  ∀ n, P18118314240032591239.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P4126696893715534359

`xor(2, A065091(n+1)+1)-1`
-/

namespace A108245.P4126696893715534359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A065091 (n + 1) + 1) - 1

end

end A108245.P4126696893715534359

namespace A108245

/-- `xor(2, A065091(n+1)+1)-1` -/
def P4126696893715534359.Spec : Prop :=
  ∀ n, P4126696893715534359.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P2237439838558002149

`A065091(n+1)+2*A212159(n+2)`
-/

namespace A108245.P2237439838558002149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 2 * A212159 (n + 2)

end

end A108245.P2237439838558002149

namespace A108245

/-- `A065091(n+1)+2*A212159(n+2)` -/
def P2237439838558002149.Spec : Prop :=
  ∀ n, P2237439838558002149.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P2729087166547364018

`abs(2-A073579(n+2))`
-/

namespace A108245.P2729087166547364018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A073579 (n + 2)|

end

end A108245.P2729087166547364018

namespace A108245

/-- `abs(2-A073579(n+2))` -/
def P2729087166547364018.Spec : Prop :=
  ∀ n, P2729087166547364018.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P10061172559096876105

`xor(2, A008864(n+2))-1`
-/

namespace A108245.P10061172559096876105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008864 (n + 2)) - 1

end

end A108245.P10061172559096876105

namespace A108245

/-- `xor(2, A008864(n+2))-1` -/
def P10061172559096876105.Spec : Prop :=
  ∀ n, P10061172559096876105.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P3679446503764910076

`xor(2, A040976(n+2))+2`
-/

namespace A108245.P3679446503764910076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A040976 (n + 2)) + 2

end

end A108245.P3679446503764910076

namespace A108245

/-- `xor(2, A040976(n+2))+2` -/
def P3679446503764910076.Spec : Prop :=
  ∀ n, P3679446503764910076.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P16214338335838032601

`xor(2, A175216(n+2))-1`
-/

namespace A108245.P16214338335838032601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A175216 (n + 2)) - 1

end

end A108245.P16214338335838032601

namespace A108245

/-- `xor(2, A175216(n+2))-1` -/
def P16214338335838032601.Spec : Prop :=
  ∀ n, P16214338335838032601.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P417804732182972949

`xor(2, A052147(n+2))-2`
-/

namespace A108245.P417804732182972949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A052147 (n + 2)) - 2

end

end A108245.P417804732182972949

namespace A108245

/-- `xor(2, A052147(n+2))-2` -/
def P417804732182972949.Spec : Prop :=
  ∀ n, P417804732182972949.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P16797603787757196187

`xor(2, A000040(n+2)+1)-1`
-/

namespace A108245.P16797603787757196187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A000040 (n + 2) + 1) - 1

end

end A108245.P16797603787757196187

namespace A108245

/-- `xor(2, A000040(n+2)+1)-1` -/
def P16797603787757196187.Spec : Prop :=
  ∀ n, P16797603787757196187.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P17272978815889298706

`A076342(n+2)-A070750(n+2)`
-/

namespace A108245.P17272978815889298706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076342 (n + 2) - A070750 (n + 2)

end

end A108245.P17272978815889298706

namespace A108245

/-- `A076342(n+2)-A070750(n+2)` -/
def P17272978815889298706.Spec : Prop :=
  ∀ n, P17272978815889298706.a n = A108245 (n + 2)

theorem P17272978815889298706.correct : P17272978815889298706.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel, A108245.P17272978815889298706.a, A108245.P15949807087332557583.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A076342, A076342.P17182392044292318344.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108245

/-! ## A108245.P14270812880813450307

`A039702(n+2)+A076342(n+2)-2`
-/

namespace A108245.P14270812880813450307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 2) + (A076342 (n + 2) - 2)

end

end A108245.P14270812880813450307

namespace A108245

/-- `A039702(n+2)+A076342(n+2)-2` -/
def P14270812880813450307.Spec : Prop :=
  ∀ n, P14270812880813450307.a n = A108245 (n + 2)

theorem P14270812880813450307.correct : P14270812880813450307.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel, A108245.P14270812880813450307.a, A108245.P15949807087332557583.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A076342, A076342.P17182392044292318344.a, A070750, A070750.P13196581040963341553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108245

/-! ## A108245.P14644341170524897054

`A000040(n+2)-2*A070750(n+2)`
-/

namespace A108245.P14644341170524897054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 2 * A070750 (n + 2)

end

end A108245.P14644341170524897054

namespace A108245

/-- `A000040(n+2)-2*A070750(n+2)` -/
def P14644341170524897054.Spec : Prop :=
  ∀ n, P14644341170524897054.a n = A108245 (n + 2)

theorem P14644341170524897054.correct : P14644341170524897054.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel, A108245.P14644341170524897054.a, A108245.P15949807087332557583.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108245

/-! ## A108245.P14946081692328087167

`2*A076342(n+2)-A000040(n+2)`
-/

namespace A108245.P14946081692328087167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076342 (n + 2) - A000040 (n + 2)

end

end A108245.P14946081692328087167

namespace A108245

/-- `2*A076342(n+2)-A000040(n+2)` -/
def P14946081692328087167.Spec : Prop :=
  ∀ n, P14946081692328087167.a n = A108245 (n + 2)

theorem P14946081692328087167.correct : P14946081692328087167.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel, A108245.P14946081692328087167.a, A108245.P15949807087332557583.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A076342, A076342.P17182392044292318344.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108245

/-! ## A108245.P4231462212937640784

`A006005(n+2)-2*A070750(n+2)`
-/

namespace A108245.P4231462212937640784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) - 2 * A070750 (n + 2)

end

end A108245.P4231462212937640784

namespace A108245

/-- `A006005(n+2)-2*A070750(n+2)` -/
def P4231462212937640784.Spec : Prop :=
  ∀ n, P4231462212937640784.a n = A108245 (n + 2)

theorem P4231462212937640784.correct : P4231462212937640784.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel, A108245.P4231462212937640784.a, A108245.P15949807087332557583.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A070750, A070750.P13196581040963341553.a, A000007, A000007.P6599383543502402472.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108245

/-! ## A108245.P4597448559971052629

`(A073579(n+2)-2)*A070750(n+2)`
-/

namespace A108245.P4597448559971052629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073579 (n + 2) - 2) * A070750 (n + 2)

end

end A108245.P4597448559971052629

namespace A108245

/-- `(A073579(n+2)-2)*A070750(n+2)` -/
def P4597448559971052629.Spec : Prop :=
  ∀ n, P4597448559971052629.a n = A108245 (n + 2)

end A108245

/-! ## A108245.P10853407027050680095

`gcd(2-A073579(n+2), A000038(n+1))`
-/

namespace A108245.P10853407027050680095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A073579 (n + 2)) (A000038 (n + 1))

end

end A108245.P10853407027050680095

namespace A108245

/-- `gcd(2-A073579(n+2), A000038(n+1))` -/
def P10853407027050680095.Spec : Prop :=
  ∀ n, (P10853407027050680095.a n : ℤ) = A108245 (n + 2)

end A108245

/-! ## A108245.P12715366079319092440

`A076342(n+2)+A076342(n+2)-A065091(n+1)`
-/

namespace A108245.P12715366079319092440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076342 (n + 2) + (A076342 (n + 2) - A065091 (n + 1))

end

end A108245.P12715366079319092440

namespace A108245

/-- `A076342(n+2)+A076342(n+2)-A065091(n+1)` -/
def P12715366079319092440.Spec : Prop :=
  ∀ n, P12715366079319092440.a n = A108245 (n + 2)

theorem P12715366079319092440.correct : P12715366079319092440.Spec := by
  intro n
  simp only [A108245, Nat.add_sub_cancel, A108245.P12715366079319092440.a, A108245.P15949807087332557583.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A076342, A076342.P17182392044292318344.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108245

/-! ## A108245.P2208266477111582923

`A000040(n+2)+A212159(n+2)+A212159(n+2)`
-/

namespace A108245.P2208266477111582923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A212159 (n + 2) + A212159 (n + 2))

end

end A108245.P2208266477111582923

namespace A108245

/-- `A000040(n+2)+A212159(n+2)+A212159(n+2)` -/
def P2208266477111582923.Spec : Prop :=
  ∀ n, P2208266477111582923.a n = A108245 (n + 2)

end A108245

/-!
# A108246: Number of labeled 2-regular graphs with no multiple edges, but loops are allowed (i.e., each vertex is endpoint of two (usual) edges or one loop).

The programs for A108246, there is no canonical definition to state claims against.
-/

/-! ## A108246.P7021574328350138075

`A333158(∑[n+1])`
-/

namespace A108246.P7021574328350138075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108246.P7021574328350138075

/-! ## A108246.P3373517693757155209

`A333158(A000217(n+1))+A333146(n+1)`
-/

namespace A108246.P3373517693757155209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333158 (A000217 (n + 1)).toNat + A333146 (n + 1)

end

end A108246.P3373517693757155209

/-! ## A108246.P7640411812645989569

`A054898(n!-C(n, 8))+abs(1-n)!`
-/

namespace A108246.P7640411812645989569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (Nat.factorial n - Nat.choose n 8) + (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A108246.P7640411812645989569

/-!
# A108248: a(n) = ceiling(n/24) + ceiling((n+1)/24).

The programs for A108248, the canonical program `A108248.P1267347502384203964` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108248 has offset 0).

The definition of A108248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/24)+ceil((n+1)/24)` (program `A108248.P1267347502384203964`, by `A108248.P1267347502384203964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108248.P1267347502384203964

`ceil(n/24)+ceil((n+1)/24)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108248

/-- `ceil(n/24)+ceil((n+1)/24)` -/
def P1267347502384203964.Spec : Prop :=
  ∀ n, P1267347502384203964.a n = A108248 n

theorem P1267347502384203964.correct : P1267347502384203964.Spec := by
  intro n
  simp only [A108248]

end A108248

/-! ## A108248.P13832722870430203219

`∑[C(2, (2*n)%48)]`
-/

namespace A108248.P13832722870430203219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * n % 48)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108248.P13832722870430203219

namespace A108248

/-- `∑[C(2, (2*n)%48)]` -/
def P13832722870430203219.Spec : Prop :=
  ∀ n, (P13832722870430203219.a n : ℤ) = A108248 n

end A108248

/-! ## A108248.P5210876674195495145

`∑[round(cot(1)^(n%24))]`
-/

namespace A108248.P5210876674195495145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 : ℝ) ^ (n % 24))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108248.P5210876674195495145

namespace A108248

/-- `∑[round(cot(1)^(n%24))]` -/
def P5210876674195495145.Spec : Prop :=
  ∀ n, P5210876674195495145.a n = A108248 n

end A108248

/-! ## A108248.P5502066109348185579

`∑[char[a(n-2)+24]]` with `a(0)=1, a(1)=0`
-/

namespace A108248.P5502066109348185579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) + 24

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108248.P5502066109348185579

namespace A108248

/-- `∑[char[a(n-2)+24]]` -/
def P5502066109348185579.Spec : Prop :=
  ∀ n, (P5502066109348185579.a n : ℤ) = A108248 n

end A108248

/-! ## A108248.P7266681739666958104

`∑[1-A168185(A004526(n))]`
-/

namespace A108248.P7266681739666958104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168185 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108248.P7266681739666958104

namespace A108248

/-- `∑[1-A168185(A004526(n))]` -/
def P7266681739666958104.Spec : Prop :=
  ∀ n, P7266681739666958104.a n = A108248 n

end A108248

/-! ## A108248.P647977882359172426

`A099480(A004525(A004525(n)))`
-/

namespace A108248.P647977882359172426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 (A004525 (A004525 n).toNat).toNat

end

end A108248.P647977882359172426

namespace A108248

/-- `A099480(A004525(A004525(n)))` -/
def P647977882359172426.Spec : Prop :=
  ∀ n, P647977882359172426.a n = A108248 n

end A108248

/-! ## A108248.P12126689550094121000

`∑[val(A322411(n), 12)]`
-/

namespace A108248.P12126689550094121000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322411 n).toNat 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108248.P12126689550094121000

namespace A108248

/-- `∑[val(A322411(n), 12)]` -/
def P12126689550094121000.Spec : Prop :=
  ∀ n, (P12126689550094121000.a n : ℤ) = A108248 n

end A108248

/-!
# A108249: Consider primes p and q such that p = 3^k + 20 and q = 3^(k+1) + 20 for some k; sequence gives values of p.

The programs for A108249, there is no canonical definition to state claims against.
-/

/-! ## A108249.P6337078903162449404

`3*p?[3^n+4]+8`
-/

namespace A108249.P6337078903162449404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 8

end

end A108249.P6337078903162449404

/-!
# A108250: Primes p such that p + googol is prime.

The programs for A108250, there is no canonical definition to state claims against.
-/

/-! ## A108250.P11575694454970959164

`p?[A049014(n+1)]`
-/

namespace A108250.P11575694454970959164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108250.P11575694454970959164

/-! ## A108250.P6897991723501176187

`p?[record[A049014(A126759(n))]]`
-/

namespace A108250.P6897991723501176187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108250.P6897991723501176187

/-! ## A108250.P907925770097968871

`p?[record[A049014(A133310(n))]]`
-/

namespace A108250.P907925770097968871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108250.P907925770097968871

/-! ## A108250.P16557160499641518167

`p?[record[A049014(A152271(n))]]`
-/

namespace A108250.P16557160499641518167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108250.P16557160499641518167

/-! ## A108250.P17200016736621611514

`p?[record[A049014(A141256(n))]]`
-/

namespace A108250.P17200016736621611514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108250.P17200016736621611514

/-! ## A108250.P8912772370924477402

`filter[A049014(n+1), A010051(#)]`
-/

namespace A108250.P8912772370924477402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108250.P8912772370924477402

/-! ## A108250.P16607208646003569435

`filter[A049014(n+1), A365716(#)]`
-/

namespace A108250.P16607208646003569435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A108250.P16607208646003569435

/-! ## A108250.P14289025572429267218

`filter[A049014(n+1), A379969(#)]`
-/

namespace A108250.P14289025572429267218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A108250.P14289025572429267218

/-! ## A108250.P507081440650646328

`filter[A049014(n+1), A380467(#)]`
-/

namespace A108250.P507081440650646328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A108250.P507081440650646328

/-!
# A108252: Primes p such that googol - p is prime.

The programs for A108252, there is no canonical definition to state claims against.
-/

/-! ## A108252.P5712143245268382860

`p?[A108251(n+1)]`
-/

namespace A108252.P5712143245268382860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108252.P5712143245268382860

/-! ## A108252.P5001143812875398390

`p?[record[A108251(A133310(n))]]`
-/

namespace A108252.P5001143812875398390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108252.P5001143812875398390

/-! ## A108252.P3258811356620792967

`filter[A108251(n+1), A010051(#)]`
-/

namespace A108252.P3258811356620792967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108252.P3258811356620792967

/-! ## A108252.P1580206312751700666

`filter[A108251(n+1), A069513(#)]`
-/

namespace A108252.P1580206312751700666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A108252.P1580206312751700666

/-! ## A108252.P2699879034445165773

`filter[A108251(n+1), A324290(#)]`
-/

namespace A108252.P2699879034445165773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A108252.P2699879034445165773

/-! ## A108252.P11379197519416474342

`record[A006530(∑{p}[A108251(n+1), #])]`
-/

namespace A108252.P11379197519416474342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108252.P11379197519416474342

/-! ## A108252.P13449041705216168982

`record[A020639(A108251(2*(n+1)-n-1))]`
-/

namespace A108252.P13449041705216168982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A108251 ((2 * (n + 1) : ℤ) - (n : ℤ) - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108252.P13449041705216168982

/-! ## A108252.P2348584609451556792

`record[A020639(A108251(n+1)%A108250(n+1))]`
-/

namespace A108252.P2348584609451556792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A108251 (n + 1)) (A108250 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108252.P2348584609451556792

/-! ## A108252.P637406093059664481

`filter[A108251(n+1), A257531(#)]`
-/

namespace A108252.P637406093059664481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A108252.P637406093059664481

/-!
# A108255: Primes p such that little googol + p is prime.

The programs for A108255, there is no canonical definition to state claims against.
-/

/-! ## A108255.P14324209753947187829

`p?[A108253(n+1)]`
-/

namespace A108255.P14324209753947187829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108255.P14324209753947187829

/-! ## A108255.P14732236535264639320

`∩[A002476(n+1), A108253(n+1)]`
-/

namespace A108255.P14732236535264639320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P14732236535264639320

/-! ## A108255.P1635987581386105744

`∩[A007645(n+1), A108253(n+1)]`
-/

namespace A108255.P1635987581386105744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P1635987581386105744

/-! ## A108255.P10213665341518433979

`∩[A045331(n+1), A108253(n+1)]`
-/

namespace A108255.P10213665341518433979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P10213665341518433979

/-! ## A108255.P3099153024184072296

`∩[A045375(n+1), A108253(n+1)]`
-/

namespace A108255.P3099153024184072296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P3099153024184072296

/-! ## A108255.P16163797373802463825

`∩[A108253(n+1), A123365(n+1)]`
-/

namespace A108255.P16163797373802463825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P16163797373802463825

/-! ## A108255.P18181881014424448988

`∩[A108253(n+1), A279815(n+1)]`
-/

namespace A108255.P18181881014424448988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P18181881014424448988

/-! ## A108255.P2846994324893952850

`∩[A040116(n+1), A108253(n+1)]`
-/

namespace A108255.P2846994324893952850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P2846994324893952850

/-! ## A108255.P6679256083519911996

`∩[A042986(n+1), A108253(n+1)]`
-/

namespace A108255.P6679256083519911996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P6679256083519911996

/-! ## A108255.P13026012761030367372

`∩[A045321(n+1), A108253(n+1)]`
-/

namespace A108255.P13026012761030367372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P13026012761030367372

/-! ## A108255.P8310509918006934379

`∩[A108253(n+1), A325143(n+1)]`
-/

namespace A108255.P8310509918006934379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P8310509918006934379

/-! ## A108255.P2486337954830466049

`∩[A059500(n+1), A108253(n+1)]`
-/

namespace A108255.P2486337954830466049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P2486337954830466049

/-! ## A108255.P3754756036885944074

`∩[A045320(n+1), A108253(n+1)]`
-/

namespace A108255.P3754756036885944074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P3754756036885944074

/-! ## A108255.P4890132926006328767

`∩[A045334(n+1), A108253(n+1)]`
-/

namespace A108255.P4890132926006328767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P4890132926006328767

/-! ## A108255.P16001520359169709801

`∩[A058501(n+1), A108253(n+1)]`
-/

namespace A108255.P16001520359169709801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P16001520359169709801

/-! ## A108255.P12276563435474374086

`∩[A108253(n+1), A167464(n+1)]`
-/

namespace A108255.P12276563435474374086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P12276563435474374086

/-! ## A108255.P13881742211887720866

`∩[A049591(n+1), A108253(n+1)]`
-/

namespace A108255.P13881742211887720866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P13881742211887720866

/-! ## A108255.P34401286185302925

`∩[A067774(n+1), A108253(n+1)]`
-/

namespace A108255.P34401286185302925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P34401286185302925

/-! ## A108255.P8406856000040333283

`∩[A067833(n+1), A108253(n+1)]`
-/

namespace A108255.P8406856000040333283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P8406856000040333283

/-! ## A108255.P14281477220980051249

`∩[A053176(n+1), A108253(n+1)]`
-/

namespace A108255.P14281477220980051249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108255.P14281477220980051249

/-!
# A108256: Primes p such that little googol - p is prime.

The programs for A108256, there is no canonical definition to state claims against.
-/

/-! ## A108256.P14509611156556626025

`p?[A108254(n+1)]`
-/

namespace A108256.P14509611156556626025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108256.P14509611156556626025

/-! ## A108256.P4257318013614048245

`p?[record[A108254(A052938(n))]]`
-/

namespace A108256.P4257318013614048245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108256.P4257318013614048245

/-! ## A108256.P13138454405152884011

`p?[A010684(2*n)*A108254(A052938(2*n))]`
-/

namespace A108256.P13138454405152884011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A108254 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108256.P13138454405152884011

/-! ## A108256.P9770641994292519142

`∩[A003627(n+1), A108254(n+1)]`
-/

namespace A108256.P9770641994292519142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108256.P9770641994292519142

/-! ## A108256.P8742006062286736078

`∩[A007528(n+1), A108254(n+1)]`
-/

namespace A108256.P8742006062286736078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108256.P8742006062286736078

/-! ## A108256.P15987099257902756733

`∩[A045309(n+1), A108254(n+1)]`
-/

namespace A108256.P15987099257902756733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108256.P15987099257902756733

/-! ## A108256.P18284333604907195835

`∩[A045410(n+1), A108254(n+1)]`
-/

namespace A108256.P18284333604907195835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108256.P18284333604907195835

/-! ## A108256.P14683094036331234532

`∩[A056955(n+1), A108254(n+1)]`
-/

namespace A108256.P14683094036331234532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108256.P14683094036331234532

/-! ## A108256.P12472326544325370761

`p?[A010684(n)²*A108254(A052938(n))]`
-/

namespace A108256.P12472326544325370761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n ^ 2 * A108254 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108256.P12472326544325370761

/-! ## A108256.P16358857766407316270

`∩[A049577(n+1), A108254(n+1)]`
-/

namespace A108256.P16358857766407316270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108256.P16358857766407316270

/-! ## A108256.P7292206874296430021

`record[A020639(A108254(n+8))]`
-/

namespace A108256.P7292206874296430021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A108254 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108256.P7292206874296430021

/-! ## A108256.P12455890338904106652

`filter[A108254(n+1), A010051(#)]`
-/

namespace A108256.P12455890338904106652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108256.P12455890338904106652

/-! ## A108256.P488296986500891755

`filter[A108254(n+1), A069513(#)]`
-/

namespace A108256.P488296986500891755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A108256.P488296986500891755

/-! ## A108256.P9074937492772973678

`filter[A108254(n+1), A174897(#)]`
-/

namespace A108256.P9074937492772973678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A108256.P9074937492772973678

/-! ## A108256.P10228021835793421337

`filter[A108254(n+1), A211487(#)]`
-/

namespace A108256.P10228021835793421337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A108256.P10228021835793421337

/-! ## A108256.P10883925465022297486

`filter[A108254(n+1), A302777(#)]`
-/

namespace A108256.P10883925465022297486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A108256.P10883925465022297486

/-! ## A108256.P11085609511490792585

`filter[A108254(n+1), A323152(#)]`
-/

namespace A108256.P11085609511490792585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A108256.P11085609511490792585

/-! ## A108256.P11948243767807134019

`filter[A108254(n+1), A323153(#)]`
-/

namespace A108256.P11948243767807134019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A108256.P11948243767807134019

/-! ## A108256.P16073535153680437870

`filter[A108254(n+1), A340363(#)]`
-/

namespace A108256.P16073535153680437870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A108256.P16073535153680437870

/-!
# A108258: Consider primes p and q such that p = 3^k + 20 and q = 3^(k+1) + 20 for some k; sequence gives values of q.

The programs for A108258, there is no canonical definition to state claims against.
-/

/-! ## A108258.P4520138261722591534

`3^A186041(n+1)+20`
-/

namespace A108258.P4520138261722591534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A186041 (n + 1) : ℤ) + 20

end

end A108258.P4520138261722591534

/-!
# A108259: Consider primes p and q such that p = 3^k + 2 and q = 3^(k+1) + 2 for some k; sequence gives values of p.

The programs for A108259, there is no canonical definition to state claims against.
-/

/-! ## A108259.P5629722944354925852

`3^A212112(n)+2`
-/

namespace A108259.P5629722944354925852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A212112 n : ℤ) + 2

end

end A108259.P5629722944354925852

/-!
# A108261: 2nd order recursive series having the property that the product of any two adjacent terms is a triangular number, T(b) = b(b+1)/2 where b equals term a(n) of related series A108262.

The programs for A108261, the canonical program `A108261.P12236067375405267424` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108261 has offset 0).

The definition of A108261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108261.P12236067375405267424

`6*a(n-1)-a(n-2)-4` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108261

/-- `6*a(n-1)-a(n-2)-4` -/
def P12236067375405267424.Spec : Prop :=
  ∀ n, P12236067375405267424.a n = A108261 n

theorem P12236067375405267424.correct : P12236067375405267424.Spec := by
  intro n
  simp only [A108261]

end A108261

/-! ## A108261.P2257444925296469896

`A038725(n)+1`
-/

namespace A108261.P2257444925296469896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 n + 1

end

end A108261.P2257444925296469896

namespace A108261

/-- `A038725(n)+1` -/
def P2257444925296469896.Spec : Prop :=
  ∀ n, P2257444925296469896.a n = A108261 n

end A108261

/-! ## A108261.P9057270473770002113

`∑[ogf((x+3x^2)/(1-6x+x^2))]+2`
-/

namespace A108261.P9057270473770002113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A108261.P9057270473770002113

namespace A108261

/-- `∑[ogf((x+3x^2)/(1-6x+x^2))]+2` -/
def P9057270473770002113.Spec : Prop :=
  ∀ n, P9057270473770002113.a n = A108261 n

end A108261

/-! ## A108261.P15914876202550949587

`A006452(2*n)+1`
-/

namespace A108261.P15914876202550949587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (2 * n) + 1

end

end A108261.P15914876202550949587

namespace A108261

/-- `A006452(2*n)+1` -/
def P15914876202550949587.Spec : Prop :=
  ∀ n, P15914876202550949587.a n = A108261 n

end A108261

/-! ## A108261.P3981170887603445976

`A216162(4*n)+1`
-/

namespace A108261.P3981170887603445976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (4 * n) + 1

end

end A108261.P3981170887603445976

namespace A108261

/-- `A216162(4*n)+1` -/
def P3981170887603445976.Spec : Prop :=
  ∀ n, P3981170887603445976.a n = A108261 n

end A108261

/-! ## A108261.P8189993210298940830

`A038761(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A108261.P8189993210298940830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A038761 (n - 1) + a (n - 1)

end

end A108261.P8189993210298940830

namespace A108261

/-- `A038761(n-1)+a(n-1)` -/
def P8189993210298940830.Spec : Prop :=
  ∀ n, P8189993210298940830.a n = A108261 n

end A108261

/-! ## A108261.P14361443614141734220

`A117719(A004273(n))+1`
-/

namespace A108261.P14361443614141734220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117719 (A004273 n).toNat + 1

end

end A108261.P14361443614141734220

namespace A108261

/-- `A117719(A004273(n))+1` -/
def P14361443614141734220.Spec : Prop :=
  ∀ n, P14361443614141734220.a n = A108261 n

end A108261

/-! ## A108261.P7330801671052482035

`A001541(n)+1-A001109(n)`
-/

namespace A108261.P7330801671052482035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (1 - A001109 n)

end

end A108261.P7330801671052482035

namespace A108261

/-- `A001541(n)+1-A001109(n)` -/
def P7330801671052482035.Spec : Prop :=
  ∀ n, P7330801671052482035.a n = A108261 n

end A108261

/-! ## A108261.P4911349816790394261

`A099938(n+1)-A001109(n)`
-/

namespace A108261.P4911349816790394261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099938 (n + 1) - A001109 n

end

end A108261.P4911349816790394261

namespace A108261

/-- `A099938(n+1)-A001109(n)` -/
def P4911349816790394261.Spec : Prop :=
  ∀ n, P4911349816790394261.a n = A108261 n

end A108261

/-! ## A108261.P14740512824211096054

`A011900(n)+1-A182435(n)`
-/

namespace A108261.P14740512824211096054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n + (1 - A182435 n)

end

end A108261.P14740512824211096054

namespace A108261

/-- `A011900(n)+1-A182435(n)` -/
def P14740512824211096054.Spec : Prop :=
  ∀ n, P14740512824211096054.a n = A108261 n

end A108261

/-! ## A108261.P7374162413674953354

`A053141(n)+2-A182435(n)`
-/

namespace A108261.P7374162413674953354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + (2 - A182435 n)

end

end A108261.P7374162413674953354

namespace A108261

/-- `A053141(n)+2-A182435(n)` -/
def P7374162413674953354.Spec : Prop :=
  ∀ n, P7374162413674953354.a n = A108261 n

end A108261

/-! ## A108261.P9244880652407125479

`A082639(n+1)+2-A001109(n)`
-/

namespace A108261.P9244880652407125479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (n + 1) + (2 - A001109 n)

end

end A108261.P9244880652407125479

namespace A108261

/-- `A082639(n+1)+2-A001109(n)` -/
def P9244880652407125479.Spec : Prop :=
  ∀ n, P9244880652407125479.a n = A108261 n

end A108261

/-! ## A108261.P9372782189758465526

`A099938(n+1)-A001542(n)/2`
-/

namespace A108261.P9372782189758465526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099938 (n + 1) : ℚ) - (A001542 n : ℚ) / 2

end

end A108261.P9372782189758465526

namespace A108261

/-- `A099938(n+1)-A001542(n)/2` -/
def P9372782189758465526.Spec : Prop :=
  ∀ n, P9372782189758465526.a n = (A108261 n : ℚ)

end A108261

/-! ## A108261.P17677226667745750933

`A001333(2*n)+∑[A176981(2*n)]`
-/

namespace A108261.P17677226667745750933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108261.P17677226667745750933

namespace A108261

/-- `A001333(2*n)+∑[A176981(2*n)]` -/
def P17677226667745750933.Spec : Prop :=
  ∀ n, P17677226667745750933.a n = A108261 n

end A108261

/-! ## A108261.P16358903731720047893

`A099938(n+1)-A000129(2*n)/2`
-/

namespace A108261.P16358903731720047893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099938 (n + 1) : ℚ) - (A000129 (2 * n) : ℚ) / 2

end

end A108261.P16358903731720047893

namespace A108261

/-- `A099938(n+1)-A000129(2*n)/2` -/
def P16358903731720047893.Spec : Prop :=
  ∀ n, P16358903731720047893.a n = (A108261 n : ℚ)

end A108261

/-! ## A108261.P11568616591392297594

`A099938(n+1)-(1-∑[A176981(2*n)])`
-/

namespace A108261.P11568616591392297594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099938 (n + 1) - (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108261.P11568616591392297594

namespace A108261

/-- `A099938(n+1)-(1-∑[A176981(2*n)])` -/
def P11568616591392297594.Spec : Prop :=
  ∀ n, P11568616591392297594.a n = A108261 n

end A108261

/-! ## A108261.P15660597552320827700

`A215936(2*n+1)+∑[A215936(2*n+1)]`
-/

namespace A108261.P15660597552320827700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108261.P15660597552320827700

namespace A108261

/-- `A215936(2*n+1)+∑[A215936(2*n+1)]` -/
def P15660597552320827700.Spec : Prop :=
  ∀ n, P15660597552320827700.a n = A108261 n

end A108261

/-! ## A108261.P4206748447035819005

`A204514(2*(n+1))+1-A204512(2*(n+1))`
-/

namespace A108261.P4206748447035819005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (2 * (n + 1)) + (1 - A204512 (2 * (n + 1)))

end

end A108261.P4206748447035819005

namespace A108261

/-- `A204514(2*(n+1))+1-A204512(2*(n+1))` -/
def P4206748447035819005.Spec : Prop :=
  ∀ n, P4206748447035819005.a n = A108261 n

end A108261

/-! ## A108261.P17648121258485008330

`(A182193(n)+5)/2`
-/

namespace A108261.P17648121258485008330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182193 n + 5 : ℚ) / 2

end

end A108261.P17648121258485008330

namespace A108261

/-- `(A182193(n)+5)/2` -/
def P17648121258485008330.Spec : Prop :=
  ∀ n, P17648121258485008330.a n = (A108261 n : ℚ)

end A108261

/-!
# A108262: Second order recursive series having the property that the product of any two adjacent terms equals 4 times a triangular number. That is a(n)*a(n+1)= 4*T(c) = 2c(c+1), where c = the term a(n+1) of related series A108261.

The programs for A108262, the canonical program `A108262.P8542918929825115705` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108262 has offset 0).

The definition of A108262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108262.P8542918929825115705

`6*a(n-1)-a(n-2)-6` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108262

/-- `6*a(n-1)-a(n-2)-6` -/
def P8542918929825115705.Spec : Prop :=
  ∀ n, P8542918929825115705.a n = A108262 n

theorem P8542918929825115705.correct : P8542918929825115705.Spec := by
  intro n
  simp only [A108262]

end A108262

/-! ## A108262.P13428423150870238741

`∑[ogf((5x+x^2)/(1-6x+x^2))]+3`
-/

namespace A108262.P13428423150870238741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A108262.P13428423150870238741

namespace A108262

/-- `∑[ogf((5x+x^2)/(1-6x+x^2))]+3` -/
def P13428423150870238741.Spec : Prop :=
  ∀ n, P13428423150870238741.a n = A108262 n

end A108262

/-! ## A108262.P5057624004932577057

`A212329(n+1)+3`
-/

namespace A108262.P5057624004932577057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212329 (n + 1) + 3

end

end A108262.P5057624004932577057

namespace A108262

/-- `A212329(n+1)+3` -/
def P5057624004932577057.Spec : Prop :=
  ∀ n, P5057624004932577057.a n = A108262 n

end A108262

/-! ## A108262.P2749175136827083358

`A098790(2*n)+2`
-/

namespace A108262.P2749175136827083358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (2 * n) + 2

end

end A108262.P2749175136827083358

namespace A108262

/-- `A098790(2*n)+2` -/
def P2749175136827083358.Spec : Prop :=
  ∀ n, P2749175136827083358.a n = A108262 n

end A108262

/-! ## A108262.P8272683254969280065

`A375726(2*n)+2`
-/

namespace A108262.P8272683254969280065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375726 (2 * n) + 2

end

end A108262.P8272683254969280065

namespace A108262

/-- `A375726(2*n)+2` -/
def P8272683254969280065.Spec : Prop :=
  ∀ n, P8272683254969280065.a n = A108262 n

end A108262

/-! ## A108262.P14132085678230400946

`(A038762(n)+3)/2`
-/

namespace A108262.P14132085678230400946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038762 n + 3 : ℚ) / 2

end

end A108262.P14132085678230400946

namespace A108262

/-- `(A038762(n)+3)/2` -/
def P14132085678230400946.Spec : Prop :=
  ∀ n, P14132085678230400946.a n = (A108262 n : ℚ)

end A108262

/-! ## A108262.P6836195753579859393

`A353580(Δ[n²])+1`
-/

namespace A108262.P6836195753579859393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A108262.P6836195753579859393

namespace A108262

/-- `A353580(Δ[n²])+1` -/
def P6836195753579859393.Spec : Prop :=
  ∀ n, P6836195753579859393.a n = A108262 n

end A108262

/-! ## A108262.P2991202395374182995

`A124124(Δ[n²])+2`
-/

namespace A108262.P2991202395374182995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A108262.P2991202395374182995

namespace A108262

/-- `A124124(Δ[n²])+2` -/
def P2991202395374182995.Spec : Prop :=
  ∀ n, P2991202395374182995.a n = A108262 n

end A108262

/-! ## A108262.P13552645023546165830

`2+A124124(2*n+1)`
-/

namespace A108262.P13552645023546165830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A124124 (2 * n + 1)

end

end A108262.P13552645023546165830

namespace A108262

/-- `2+A124124(2*n+1)` -/
def P13552645023546165830.Spec : Prop :=
  ∀ n, P13552645023546165830.a n = A108262 n

end A108262

/-! ## A108262.P14348041089017629079

`∑[abs(A135532(2*n))]+2`
-/

namespace A108262.P14348041089017629079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135532 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A108262.P14348041089017629079

namespace A108262

/-- `∑[abs(A135532(2*n))]+2` -/
def P14348041089017629079.Spec : Prop :=
  ∀ n, P14348041089017629079.a n = A108262 n

end A108262

/-! ## A108262.P10788526198249136438

`∑[A266505(2*A004277(n))]`
-/

namespace A108262.P10788526198249136438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108262.P10788526198249136438

namespace A108262

/-- `∑[A266505(2*A004277(n))]` -/
def P10788526198249136438.Spec : Prop :=
  ∀ n, P10788526198249136438.a n = A108262 n

end A108262

/-! ## A108262.P2365426425623330480

`A001541(n)+A046090(n)+1`
-/

namespace A108262.P2365426425623330480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (A046090 n + 1)

end

end A108262.P2365426425623330480

namespace A108262

/-- `A001541(n)+A046090(n)+1` -/
def P2365426425623330480.Spec : Prop :=
  ∀ n, P2365426425623330480.a n = A108262 n

end A108262

/-! ## A108262.P7086650483094734174

`A011900(n)+A038723(n)+1`
-/

namespace A108262.P7086650483094734174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n + (A038723 n + 1)

end

end A108262.P7086650483094734174

namespace A108262

/-- `A011900(n)+A038723(n)+1` -/
def P7086650483094734174.Spec : Prop :=
  ∀ n, P7086650483094734174.a n = A108262 n

end A108262

/-! ## A108262.P5415912174719490206

`A001541(n)+A001652(n)+2`
-/

namespace A108262.P5415912174719490206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (A001652 n + 2)

end

end A108262.P5415912174719490206

namespace A108262

/-- `A001541(n)+A001652(n)+2` -/
def P5415912174719490206.Spec : Prop :=
  ∀ n, P5415912174719490206.a n = A108262 n

end A108262

/-! ## A108262.P2424341500682333165

`A038723(n)+A053141(n)+2`
-/

namespace A108262.P2424341500682333165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n + (A053141 n + 2)

end

end A108262.P2424341500682333165

namespace A108262

/-- `A038723(n)+A053141(n)+2` -/
def P2424341500682333165.Spec : Prop :=
  ∀ n, P2424341500682333165.a n = A108262 n

end A108262

/-! ## A108262.P3227327336470504411

`A002315(n)+2-A182435(n)`
-/

namespace A108262.P3227327336470504411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + (2 - A182435 n)

end

end A108262.P3227327336470504411

namespace A108262

/-- `A002315(n)+2-A182435(n)` -/
def P3227327336470504411.Spec : Prop :=
  ∀ n, P3227327336470504411.a n = A108262 n

end A108262

/-! ## A108262.P10923457290279753277

`A001108(n)+Δ[A001109(n)]+2`
-/

namespace A108262.P10923457290279753277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (f1 (n + 1) - f1 n + 2)

end

end A108262.P10923457290279753277

namespace A108262

/-- `A001108(n)+Δ[A001109(n)]+2` -/
def P10923457290279753277.Spec : Prop :=
  ∀ n, P10923457290279753277.a n = A108262 n

end A108262

/-! ## A108262.P10985683910840609742

`Δ[A001542(n)]+1-A001652(n)`
-/

namespace A108262.P10985683910840609742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A001652 n)

end

end A108262.P10985683910840609742

namespace A108262

/-- `Δ[A001542(n)]+1-A001652(n)` -/
def P10985683910840609742.Spec : Prop :=
  ∀ n, P10985683910840609742.a n = A108262 n

end A108262

/-! ## A108262.P8457184227614683059

`Δ[A182189(n)]+1-A001652(n)`
-/

namespace A108262.P8457184227614683059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A001652 n)

end

end A108262.P8457184227614683059

namespace A108262

/-- `Δ[A182189(n)]+1-A001652(n)` -/
def P8457184227614683059.Spec : Prop :=
  ∀ n, P8457184227614683059.a n = A108262 n

end A108262

/-! ## A108262.P1281602110988364117

`Δ[A001108(n)]+2-A182435(n)`
-/

namespace A108262.P1281602110988364117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A182435 n)

end

end A108262.P1281602110988364117

namespace A108262

/-- `Δ[A001108(n)]+2-A182435(n)` -/
def P1281602110988364117.Spec : Prop :=
  ∀ n, P1281602110988364117.a n = A108262 n

end A108262

/-!
# A108263: Triangle read by rows: T(n,k) is the number of short bushes with n edges and k branchnodes (i.e., nodes of outdegree at least two). A short bush is an ordered tree with no nodes of outdegree 1.

The programs for A108263, the canonical program `A108263.P18378031101420940815` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108263 has offset 0).

The definition of A108263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108263.P18378031101420940815

`A086810(A091018(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108263

/-- `A086810(A091018(n))` -/
def P18378031101420940815.Spec : Prop :=
  ∀ n, P18378031101420940815.a n = A108263 n

theorem P18378031101420940815.correct : P18378031101420940815.Spec := by
  intro n
  simp only [A108263]

end A108263

/-! ## A108263.P16620040420368890188

`A086810(A056536(n+1)-1)`
-/

namespace A108263.P16620040420368890188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A056536 (n + 1) - 1).toNat

end

end A108263.P16620040420368890188

namespace A108263

/-- `A086810(A056536(n+1)-1)` -/
def P16620040420368890188.Spec : Prop :=
  ∀ n, P16620040420368890188.a n = A108263 n

end A108263

/-! ## A108263.P5823526999248280397

`A085838(A091018(n))%p?[A275917(n)]`
-/

namespace A108263.P5823526999248280397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085838 (A091018 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A108263.P5823526999248280397

namespace A108263

/-- `A085838(A091018(n))%p?[A275917(n)]` -/
def P5823526999248280397.Spec : Prop :=
  ∀ n, P5823526999248280397.a n = A108263 n

end A108263

/-! ## A108263.P638412048419104635

`A085838(A091018(n)%A113470(3*n+2))`
-/

namespace A108263.P638412048419104635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085838 (Int.tmod (A091018 n) (A113470 (3 * n + 2))).toNat

end

end A108263.P638412048419104635

namespace A108263

/-- `A085838(A091018(n)%A113470(3*n+2))` -/
def P638412048419104635.Spec : Prop :=
  ∀ n, P638412048419104635.a n = A108263 n

end A108263

/-! ## A108263.P2894910917993634793

`A085838(A091018(n)%A055161(n))`
-/

namespace A108263.P2894910917993634793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085838 (Int.tmod (A091018 n) (A055161 n)).toNat

end

end A108263.P2894910917993634793

namespace A108263

/-- `A085838(A091018(n)%A055161(n))` -/
def P2894910917993634793.Spec : Prop :=
  ∀ n, P2894910917993634793.a n = A108263 n

end A108263

/-!
# A108264: Consider primes p and q such that p = 2^k + 9 and q = 2^(k+1) + 9 for some k; sequence gives values of p.

The programs for A108264, there is no canonical definition to state claims against.
-/

/-! ## A108264.P7293349235407980819

`p?[and(2, -n)^n+9]`
-/

namespace A108264.P7293349235407980819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ)) ^ n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108264.P7293349235407980819

/-!
# A108265: Consider primes p and q such that p = 2^k + 9 and q = 2^(k+1) + 9 for some k; sequence gives values of q.

The programs for A108265, there is no canonical definition to state claims against.
-/

/-! ## A108265.P16238332139244935486

`record[2^xor(2, n)]+9`
-/

namespace A108265.P16238332139244935486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 9

end

end A108265.P16238332139244935486

/-!
# A108266: Consider primes p and q such that p = 2^k + 15 and q = 2^(k+1) + 15 for some k; sequence gives values of p.

The programs for A108266, there is no canonical definition to state claims against.
-/

/-! ## A108266.P9371303345165929863

`(A108271(n+1)+15)/2`
-/

namespace A108266.P9371303345165929863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108271 (n + 1) + 15 : ℚ) / 2

end

end A108266.P9371303345165929863

/-! ## A108266.P911414116202597564

`A144487(comp[A001400(n+4)]+1)`
-/

namespace A108266.P911414116202597564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A108266.P911414116202597564

/-! ## A108266.P15277616578469899828

`A144487(∑[A329340(∑{d}[n+1, #])])`
-/

namespace A108266.P15277616578469899828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108266.P15277616578469899828

/-! ## A108266.P13830902156752339331

`A144487(comp[∑[A136744(n+1)]]+1)`
-/

namespace A108266.P13830902156752339331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A108266.P13830902156752339331

/-! ## A108266.P7129219509355540053

`A144487(A353848(n)+A256554(n))`
-/

namespace A108266.P7129219509355540053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (A353848 n + A256554 n).toNat

end

end A108266.P7129219509355540053

/-!
# A108267: Triangle read by rows, T(n, k) = [x^k] (1-x)^(n+1)*Sum_{j=0..n} binomial(n + n*j + j, n*j + j)*x^j.

The programs for A108267, there is no canonical definition to state claims against.
-/

/-! ## A108267.P2258571074449777719

`A001650(A022179(n))`
-/

namespace A108267.P2258571074449777719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A022179 n).toNat

end

end A108267.P2258571074449777719

/-! ## A108267.P3550286431353687091

`A080595(A022177(n))`
-/

namespace A108267.P3550286431353687091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A022177 n).toNat

end

end A108267.P3550286431353687091

/-! ## A108267.P17389350707291537753

`A032642(A091378(n))`
-/

namespace A108267.P17389350707291537753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032642 (A091378 n).toNat

end

end A108267.P17389350707291537753

/-! ## A108267.P12755830220049899319

`A161334(A059328(n))`
-/

namespace A108267.P12755830220049899319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161334 (A059328 n).toNat

end

end A108267.P12755830220049899319

/-! ## A108267.P1860712822610802217

`A093413(A176467(n))`
-/

namespace A108267.P1860712822610802217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A176467 n).toNat

end

end A108267.P1860712822610802217

/-!
# A108268: Column 2 of triangle A108267.

The programs for A108268, there is no canonical definition to state claims against.
-/

/-! ## A108268.P16884056124703899725

`A163181(∑[(n+2)²+n+1])`
-/

namespace A108268.P16884056124703899725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163181 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108268.P16884056124703899725

/-! ## A108268.P10552014375425684487

`A108267(∑[n+3])`
-/

namespace A108268.P10552014375425684487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108268.P10552014375425684487

/-! ## A108268.P6185933589518793562

`or(1, A108267(A141214(n)))`
-/

namespace A108268.P6185933589518793562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108267 (A141214 n).toNat)

end

end A108268.P6185933589518793562

/-!
# A108269: Numbers of the form (2*m - 1)*4^k where m >= 1, k >= 1.

The programs for A108269, the canonical program `A108269.P11596501751048516182` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108269 has offset 1).

The definition of A108269 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108269.P11596501751048516182

`2*A036554(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108269

/-- `2*A036554(n+1)` -/
def P11596501751048516182.Spec : Prop :=
  ∀ n, P11596501751048516182.a n = A108269 (n + 1)

theorem P11596501751048516182.correct : P11596501751048516182.Spec := by
  intro n
  simp only [A108269, Nat.add_sub_cancel]

end A108269

/-! ## A108269.P14853421982059224862

`4*A003159(n+1)`
-/

namespace A108269.P14853421982059224862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003159 (n + 1)

end

end A108269.P14853421982059224862

namespace A108269

/-- `4*A003159(n+1)` -/
def P14853421982059224862.Spec : Prop :=
  ∀ n, P14853421982059224862.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P1830043794737804789

`2*comp[n*and(n, -n)]`
-/

namespace A108269.P1830043794737804789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108269.P1830043794737804789

namespace A108269

/-- `2*comp[n*and(n, -n)]` -/
def P1830043794737804789.Spec : Prop :=
  ∀ n, (P1830043794737804789.a n : ℤ) = A108269 (n + 1)

end A108269

/-! ## A108269.P11767053375768297210

`2*eq[2, and(n, -n)%3]`
-/

namespace A108269.P11767053375768297210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108269.P11767053375768297210

namespace A108269

/-- `2*eq[2, and(n, -n)%3]` -/
def P11767053375768297210.Spec : Prop :=
  ∀ n, (P11767053375768297210.a n : ℤ) = A108269 (n + 1)

end A108269

/-! ## A108269.P1899427794385608575

`2*eq[0, xor(n, n-1)%3]`
-/

namespace A108269.P1899427794385608575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108269.P1899427794385608575

namespace A108269

/-- `2*eq[0, xor(n, n-1)%3]` -/
def P1899427794385608575.Spec : Prop :=
  ∀ n, (P1899427794385608575.a n : ℤ) = A108269 (n + 1)

end A108269

/-! ## A108269.P15750575344010964013

`2*(comp[or(n, val(n+2, 2))]+2)`
-/

namespace A108269.P15750575344010964013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A108269.P15750575344010964013

namespace A108269

/-- `2*(comp[or(n, val(n+2, 2))]+2)` -/
def P15750575344010964013.Spec : Prop :=
  ∀ n, (P15750575344010964013.a n : ℤ) = A108269 (n + 1)

end A108269

/-! ## A108269.P15560551925883051441

`4*(eq[0, val(n+1, 2)%2]+1)`
-/

namespace A108269.P15560551925883051441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A108269.P15560551925883051441

namespace A108269

/-- `4*(eq[0, val(n+1, 2)%2]+1)` -/
def P15560551925883051441.Spec : Prop :=
  ∀ n, (P15560551925883051441.a n : ℤ) = A108269 (n + 1)

end A108269

/-! ## A108269.P12049272424342830515

`A131323(n+1)+1`
-/

namespace A108269.P12049272424342830515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1) + 1

end

end A108269.P12049272424342830515

namespace A108269

/-- `A131323(n+1)+1` -/
def P12049272424342830515.Spec : Prop :=
  ∀ n, P12049272424342830515.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P17532320696946500331

`A249034(n+1)-1`
-/

namespace A108269.P17532320696946500331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1) - 1

end

end A108269.P17532320696946500331

namespace A108269

/-- `A249034(n+1)-1` -/
def P17532320696946500331.Spec : Prop :=
  ∀ n, P17532320696946500331.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P6983675006300553819

`∑[4*A026465(n+1)]`
-/

namespace A108269.P6983675006300553819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A026465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108269.P6983675006300553819

namespace A108269

/-- `∑[4*A026465(n+1)]` -/
def P6983675006300553819.Spec : Prop :=
  ∀ n, P6983675006300553819.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P687259963793561013

`2*(A079523(n+1)+1)`
-/

namespace A108269.P687259963793561013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079523 (n + 1) + 1)

end

end A108269.P687259963793561013

namespace A108269

/-- `2*(A079523(n+1)+1)` -/
def P687259963793561013.Spec : Prop :=
  ∀ n, P687259963793561013.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P2469722765465953476

`2*(A072939(n+1)-1)`
-/

namespace A108269.P2469722765465953476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072939 (n + 1) - 1)

end

end A108269.P2469722765465953476

namespace A108269

/-- `2*(A072939(n+1)-1)` -/
def P2469722765465953476.Spec : Prop :=
  ∀ n, P2469722765465953476.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P12629362234002344056

`2*(A162648(n+1)+2)`
-/

namespace A108269.P12629362234002344056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A162648 (n + 1) + 2)

end

end A108269.P12629362234002344056

namespace A108269

/-- `2*(A162648(n+1)+2)` -/
def P12629362234002344056.Spec : Prop :=
  ∀ n, P12629362234002344056.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P8405535805720091301

`(A225822(n+1)+1)/2`
-/

namespace A108269.P8405535805720091301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225822 (n + 1) + 1 : ℚ) / 2

end

end A108269.P8405535805720091301

namespace A108269

/-- `(A225822(n+1)+1)/2` -/
def P8405535805720091301.Spec : Prop :=
  ∀ n, P8405535805720091301.a n = (A108269 (n + 1) : ℚ)

end A108269

/-! ## A108269.P4379827500119580703

`4*(A121539(n+1)+1)`
-/

namespace A108269.P4379827500119580703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A121539 (n + 1) + 1)

end

end A108269.P4379827500119580703

namespace A108269

/-- `4*(A121539(n+1)+1)` -/
def P4379827500119580703.Spec : Prop :=
  ∀ n, P4379827500119580703.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P4448569784421972828

`2*(A003158(n+1)-n)`
-/

namespace A108269.P4448569784421972828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003158 (n + 1) - (n : ℤ))

end

end A108269.P4448569784421972828

namespace A108269

/-- `2*(A003158(n+1)-n)` -/
def P4448569784421972828.Spec : Prop :=
  ∀ n, P4448569784421972828.a n = A108269 (n + 1)

theorem P4448569784421972828.correct : P4448569784421972828.Spec := by
  intro n
  simp only [A108269, Nat.add_sub_cancel, A108269.P4448569784421972828.a, A108269.P11596501751048516182.a, A003158, A003158.P15521823830310252341.a, A036554, A036554.P8175060370953883075.a, A003157, A003157.P4569272790691930079.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108269

/-! ## A108269.P11104319082388646338

`∑[2*(A080426(n+1)+1)]`
-/

namespace A108269.P11104319082388646338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080426 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108269.P11104319082388646338

namespace A108269

/-- `∑[2*(A080426(n+1)+1)]` -/
def P11104319082388646338.Spec : Prop :=
  ∀ n, P11104319082388646338.a n = A108269 (n + 1)

end A108269

/-! ## A108269.P16618081868789299560

`record[2*2*A302792(n+1)]`
-/

namespace A108269.P16618081868789299560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A302792 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108269.P16618081868789299560

namespace A108269

/-- `record[2*2*A302792(n+1)]` -/
def P16618081868789299560.Spec : Prop :=
  ∀ n, P16618081868789299560.a n = A108269 (n + 1)

end A108269

/-!
# A108270: Numbers k such that k*k! + (smallest prime >= k) is prime.

The programs for A108270, there is no canonical definition to state claims against.
-/

/-! ## A108270.P3655970664082176216

`filter[A096986(n+1), A005171(#)]`
-/

namespace A108270.P3655970664082176216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A108270.P3655970664082176216

/-! ## A108270.P13070950639803753452

`∩[A018252(n+1), A096986(n+1)]`
-/

namespace A108270.P13070950639803753452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108270.P13070950639803753452

/-! ## A108270.P4301205323746140973

`∩[A096986(n+1), A141468(n+1)]`
-/

namespace A108270.P4301205323746140973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108270.P4301205323746140973

/-!
# A108271: Consider primes p and q such that p = 2^k + 15 and q = 2^(k+1) + 15 for some k; sequence gives values of q.

The programs for A108271, there is no canonical definition to state claims against.
-/

/-! ## A108271.P8050834709707382182

`2*A108266(n+1)-15`
-/

namespace A108271.P8050834709707382182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108266 (n + 1) - 15

end

end A108271.P8050834709707382182

/-! ## A108271.P16898321299979432990

`A144487(eq[A008651(n), A025460(n)]+1)`
-/

namespace A108271.P16898321299979432990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A108271.P16898321299979432990

/-! ## A108271.P7361864714328222235

`A144487(eq[A144451(n+1), A144477(n+3)])`
-/

namespace A108271.P7361864714328222235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144477 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108271.P7361864714328222235

/-! ## A108271.P16071090612557283330

`p?[A006530(A250738(n+1))+2^(n+1)]`
-/

namespace A108271.P16071090612557283330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A250738 (n + 1)).toNat + (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108271.P16071090612557283330

/-!
# A108272: Consider primes p and q such that p = 2^k + 21 and q = 2^(k+1) + 21 for some k; sequence gives values of p.

The programs for A108272, there is no canonical definition to state claims against.
-/

/-! ## A108272.P3561135424008556796

`A156983(A020695(n))`
-/

namespace A108272.P3561135424008556796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156983 (A020695 n).toNat

end

end A108272.P3561135424008556796

/-!
# A108273: Consider primes p and q such that p = 2^k + 21 and q = 2^(k+1) + 21 for some k; sequence gives values of q.

The programs for A108273, there is no canonical definition to state claims against.
-/

/-! ## A108273.P1637324521363312609

`A156983(A020695(n)+1)`
-/

namespace A108273.P1637324521363312609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156983 (A020695 n + 1).toNat

end

end A108273.P1637324521363312609

/-!
# A108275: Number of positive integers <= 10^n that are divisible by no prime exceeding 17.

The programs for A108275, there is no canonical definition to state claims against.
-/

/-! ## A108275.P16196387166065367457

`A080685(10^n)`
-/

namespace A108275.P16196387166065367457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080685 (10 ^ n)

end

end A108275.P16196387166065367457

/-!
# A108276: Number of positive integers <= 10^n that are divisible by no prime exceeding 19.

The programs for A108276, there is no canonical definition to state claims against.
-/

/-! ## A108276.P5470097232999657797

`A080686(10^n)`
-/

namespace A108276.P5470097232999657797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080686 (10 ^ n)

end

end A108276.P5470097232999657797

/-!
# A108278: Numbers k such that k^2-1 and k^2+1 are semiprimes.

The programs for A108278, there is no canonical definition to state claims against.
-/

/-! ## A108278.P12657708734002855136

`∩[A014574(n+1), A069062(n+1)]`
-/

namespace A108278.P12657708734002855136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108278.P12657708734002855136

/-! ## A108278.P983660355366235207

`∩[A069062(n+1), A217259(n+1)]`
-/

namespace A108278.P983660355366235207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108278.P983660355366235207

/-! ## A108278.P13230161082280718583

`∩[A014574(n+1), A085722(n+1)]`
-/

namespace A108278.P13230161082280718583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108278.P13230161082280718583

/-! ## A108278.P14235367022096328747

`∩[A014574(n+1), A050798(n+1)]`
-/

namespace A108278.P14235367022096328747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108278.P14235367022096328747

/-! ## A108278.P7953990321835323766

`∩[A050798(n+1), A069062(n+1)]`
-/

namespace A108278.P7953990321835323766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108278.P7953990321835323766

/-!
# A108279: a(n) = number of squares with corners on an n X n grid, distinct up to congruence.

The programs for A108279, there is no canonical definition to state claims against.
-/

/-! ## A108279.P10543452418990356167

`A189978(n+1)-(A190310(n+1)+A190309(n+1))`
-/

namespace A108279.P10543452418990356167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189978 (n + 1) - (A190310 (n + 1) + A190309 (n + 1))

end

end A108279.P10543452418990356167

/-! ## A108279.P1871919813870858452

`A047220(A001972(n)%A187923(2*n+1))`
-/

namespace A108279.P1871919813870858452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (Int.tmod (A001972 n) (A187923 (2 * n + 1))).toNat

end

end A108279.P1871919813870858452

/-! ## A108279.P13153555564359928430

`A047220(A001972(n))%A187923(A187232(n+1))`
-/

namespace A108279.P13153555564359928430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047220 (A001972 n).toNat) (A187923 (A187232 (n + 1)).toNat)

end

end A108279.P13153555564359928430

/-! ## A108279.P14050708360093764139

`A095861(A084628(3*n+2)-A084628(n))`
-/

namespace A108279.P14050708360093764139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A084628 (3 * n + 2) - A084628 n).toNat

end

end A108279.P14050708360093764139

/-! ## A108279.P8254960166621246211

`A000265(2^(n+1))*A047220(A001972(n))`
-/

namespace A108279.P8254960166621246211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ (n + 1)) * A047220 (A001972 n).toNat

end

end A108279.P8254960166621246211

/-!
# A108280: 

The programs for A108280, there is no canonical definition to state claims against.
-/

/-! ## A108280.P9582675031465123743

`A104071(A312456(n)-A085062(n))`
-/

namespace A108280.P9582675031465123743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104071 (A312456 n - A085062 n).toNat

end

end A108280.P9582675031465123743

/-!
# A108281: Numbers that are both triangular and pentagonal of the second kind.

The programs for A108281, the canonical program `A108281.P11720204674026805301` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108281 has offset 1).

The definition of A108281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108281.P11720204674026805301

`194*a(n-1)-a(n-2)+16` with `a(0)=0, a(1)=15`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108281

/-- `194*a(n-1)-a(n-2)+16` -/
def P11720204674026805301.Spec : Prop :=
  ∀ n, P11720204674026805301.a n = A108281 (n + 1)

theorem P11720204674026805301.correct : P11720204674026805301.Spec := by
  intro n
  simp only [A108281, Nat.add_sub_cancel]

end A108281

/-! ## A108281.P7993269054515963826

`A076139(2*n)`
-/

namespace A108281.P7993269054515963826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (2 * n)

end

end A108281.P7993269054515963826

namespace A108281

/-- `A076139(2*n)` -/
def P7993269054515963826.Spec : Prop :=
  ∀ n, P7993269054515963826.a n = A108281 (n + 1)

end A108281

/-! ## A108281.P7957848147070117890

`A217855(2*n)/2`
-/

namespace A108281.P7957848147070117890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217855 (2 * n) : ℚ) / 2

end

end A108281.P7957848147070117890

namespace A108281

/-- `A217855(2*n)/2` -/
def P7957848147070117890.Spec : Prop :=
  ∀ n, P7957848147070117890.a n = (A108281 (n + 1) : ℚ)

end A108281

/-! ## A108281.P14085690186858277931

`record[A076139(n)/(-1)^n]`
-/

namespace A108281.P14085690186858277931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076139 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108281.P14085690186858277931

namespace A108281

/-- `record[A076139(n)/(-1)^n]` -/
def P14085690186858277931.Spec : Prop :=
  ∀ n, P14085690186858277931.a n = (A108281 (n + 1) : ℚ)

end A108281

/-! ## A108281.P4664024139501916751

`1-∑[A122572(2*n+1)]`
-/

namespace A108281.P4664024139501916751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108281.P4664024139501916751

namespace A108281

/-- `1-∑[A122572(2*n+1)]` -/
def P4664024139501916751.Spec : Prop :=
  ∀ n, P4664024139501916751.a n = A108281 (n + 1)

end A108281

/-!
# A108282: a(n) = k*a(n-1) + a(n-2) where k = A003842(a); a(0) = 1.

The programs for A108282, there is no canonical definition to state claims against.
-/

/-! ## A108282.P6246944237110841648

`A071766(∑[2^A001951(n)])`
-/

namespace A108282.P6246944237110841648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001951 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108282.P6246944237110841648

/-!
# A108283: Triangle read by rows, generated from (..., 3, 2, 1).

The programs for A108283, the canonical program `A108283.P10789038000922945299` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108283 has offset 1).

The definition of A108283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108283.P10789038000922945299

`A059045(A140978(n+1)-n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108283

/-- `A059045(A140978(n+1)-n)` -/
def P10789038000922945299.Spec : Prop :=
  ∀ n, P10789038000922945299.a n = A108283 (n + 1)

theorem P10789038000922945299.correct : P10789038000922945299.Spec := by
  intro n
  simp only [A108283, Nat.add_sub_cancel]

end A108283

/-! ## A108283.P11043296493863374624

`A059045(A003057(n+2)²-n)`
-/

namespace A108283.P11043296493863374624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A108283.P11043296493863374624

namespace A108283

/-- `A059045(A003057(n+2)²-n)` -/
def P11043296493863374624.Spec : Prop :=
  ∀ n, P11043296493863374624.a n = A108283 (n + 1)

end A108283

/-! ## A108283.P2072941846805742805

`A269467(n+1)+A219071(A327244(n))-A051128(n+1)`
-/

namespace A108283.P2072941846805742805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (n + 1) + A219071 (A327244 n).toNat - A051128 (n + 1)

end

end A108283.P2072941846805742805

namespace A108283

/-- `A269467(n+1)+A219071(A327244(n))-A051128(n+1)` -/
def P2072941846805742805.Spec : Prop :=
  ∀ n, P2072941846805742805.a n = A108283 (n + 1)

end A108283

/-! ## A108283.P8533693890345015567

`A086369(A336574(n)^A193592(n))`
-/

namespace A108283.P8533693890345015567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (SequenceMachineLib.roundAway ((A336574 n : ℚ) ^ (A193592 n : ℤ))).toNat

end

end A108283.P8533693890345015567

namespace A108283

/-- `A086369(A336574(n)^A193592(n))` -/
def P8533693890345015567.Spec : Prop :=
  ∀ n, P8533693890345015567.a n = A108283 (n + 1)

end A108283

/-!
# A108285: Triangle read by rows, generated from (1, 2, 3, ...).

The programs for A108285, there is no canonical definition to state claims against.
-/

/-! ## A108285.P15106362173634498534

`(row(n)-col(n)+1)*T(n-1,k-1)+col(n)+1` with `a(0)=1`
-/

namespace A108285.P15106362173634498534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A108285.P15106362173634498534

/-! ## A108285.P7651256025571934674

`A126885(comp[∑[n-1]])`
-/

namespace A108285.P7651256025571934674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A108285.P7651256025571934674

/-! ## A108285.P13527869113134954149

`A108286(∑[char[∑[n]]]²-n)`
-/

namespace A108285.P13527869113134954149
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108286 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A108285.P13527869113134954149

/-! ## A108285.P239530244216482596

`A089000((n-comp[∑[n]])²-n)`
-/

namespace A108285.P239530244216482596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A108285.P239530244216482596

/-! ## A108285.P10957090858912340948

`A108286(A038722(n+1))^ceil(sin(n)²)`
-/

namespace A108285.P10957090858912340948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108286 (A038722 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A108285.P10957090858912340948

/-!
# A108286: Triangle read by rows; columns are simple recursive sequences.

The programs for A108286, there is no canonical definition to state claims against.
-/

/-! ## A108286.P1072106067794940288

`(col(n)+1)*T(n-1,k)+row(n)+1-col(n)` with `a(0)=1`
-/

namespace A108286.P1072106067794940288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * SequenceMachineLib.triUp a n + ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A108286.P1072106067794940288

/-! ## A108286.P13576686512440159654

`A126885(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A108286.P13576686512440159654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A108286.P13576686512440159654

/-! ## A108286.P8070114419796403052

`A126885(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A108286.P8070114419796403052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A108286.P8070114419796403052

/-! ## A108286.P3952831647650596618

`A126885(A380649(n+1))`
-/

namespace A108286.P3952831647650596618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (A380649 (n + 1)).toNat

end

end A108286.P3952831647650596618

/-! ## A108286.P4712285534983914651

`A089000(eq[0, A103451(n)])`
-/

namespace A108286.P4712285534983914651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108286.P4712285534983914651

/-!
# A108287: Consider the Diophantine equations x+y=a, x^2+y^2=b, x^3+y^3=c. There are three values of a for each pair b,c with b>0 and c>0. Sequence gives values of b.

The programs for A108287, there is no canonical definition to state claims against.
-/

/-! ## A108287.P13542072246116024373

`lt[A004016(A001107(n+1)), A004016(n)]`
-/

namespace A108287.P13542072246116024373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A001107 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108287.P13542072246116024373

/-! ## A108287.P7223659681828194846

`lt[A229351(A007969(n+1)), A004016(n)]`
-/

namespace A108287.P7223659681828194846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229351 (A007969 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108287.P7223659681828194846

/-! ## A108287.P2508411370211823912

`lt[A004016(A035608(2*n+1)), A004016(n)]`
-/

namespace A108287.P2508411370211823912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A035608 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108287.P2508411370211823912

/-! ## A108287.P6521810985078486472

`eq[A004016(n), A040030(A117139(n))]`
-/

namespace A108287.P6521810985078486472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 (A117139 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108287.P6521810985078486472

/-! ## A108287.P9284721401176669776

`A329963(A389544(n+1))%A152608(3*n+2)`
-/

namespace A108287.P9284721401176669776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329963 (A389544 (n + 1)).toNat) (A152608 (3 * n + 2))

end

end A108287.P9284721401176669776

/-!
# A108289: Antidiagonal sums of table A060543.

The programs for A108289, there is no canonical definition to state claims against.
-/

/-! ## A108289.P15633039086565254596

`A341624(A069271(n))+A049774(n+1)`
-/

namespace A108289.P15633039086565254596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (A069271 n).toNat + A049774 (n + 1)

end

end A108289.P15633039086565254596

/-! ## A108289.P14879799214708734821

`A120503(or(A137540(n+1), A185711(2*(n+1))))`
-/

namespace A108289.P14879799214708734821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120503 (Int.lor (A137540 (n + 1)) (A185711 (2 * (n + 1)))).toNat

end

end A108289.P14879799214708734821

/-!
# A108290: Triangle, read by rows, such that row n equals the inverse binomial transform of row n of table A060543, where A060543(n,k) = C(n+n*k+k, n*k+k).

The programs for A108290, there is no canonical definition to state claims against.
-/

/-! ## A108290.P16722827219921525483

`A259051(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A108290.P16722827219921525483
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (n + 1) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A108290.P16722827219921525483

/-! ## A108290.P13491917612940718786

`A259051(n+1)/A002260(n+1)`
-/

namespace A108290.P13491917612940718786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A108290.P13491917612940718786

/-! ## A108290.P8806823713619802962

`A259051(n+1)/(A002262(n)+1)`
-/

namespace A108290.P8806823713619802962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A108290.P8806823713619802962

/-! ## A108290.P10502298585181597198

`A258371(n+1)/A003506(n+1)`
-/

namespace A108290.P10502298585181597198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258371 (n + 1) : ℚ) / (A003506 (n + 1) : ℚ)

end

end A108290.P10502298585181597198

/-! ## A108290.P6515159283405654999

`A259051(n+1)/A057555(2*n+1)`
-/

namespace A108290.P6515159283405654999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (n + 1) : ℚ) / (A057555 (2 * n + 1) : ℚ)

end

end A108290.P6515159283405654999

/-!
# A108291: Triangle, read by rows, resulting from the matrix product of triangle A108267 with Pascal's triangle (A007318).

The programs for A108291, there is no canonical definition to state claims against.
-/

/-! ## A108291.P9415617650974381662

`A258371(A038722(n+1))/A003506(n+1)`
-/

namespace A108291.P9415617650974381662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258371 (A038722 (n + 1)).toNat : ℚ) / (A003506 (n + 1) : ℚ)

end

end A108291.P9415617650974381662

/-! ## A108291.P8590479498011807244

`A259051(A038722(n+1))/A004736(n+1)`
-/

namespace A108291.P8590479498011807244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (A038722 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A108291.P8590479498011807244

/-! ## A108291.P7286997854300846787

`A259051(A038722(n+1))/(A025581(n)+1)`
-/

namespace A108291.P7286997854300846787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (A038722 (n + 1)).toNat : ℚ) / (A025581 n + 1 : ℚ)

end

end A108291.P7286997854300846787

/-! ## A108291.P17784696221192618328

`A259051(A038722(n+1))/(2-A055137(n)/A007318(n))`
-/

namespace A108291.P17784696221192618328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259051 (A038722 (n + 1)).toNat : ℚ) / (2 - (A055137 n : ℚ) / (A007318 n : ℚ))

end

end A108291.P17784696221192618328

/-! ## A108291.P9802824272798965394

`A108290(∑[2*n]%comp[∑[n]])`
-/

namespace A108291.P9802824272798965394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108290 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108291.P9802824272798965394

/-!
# A108292: Row sums of triangle A108290.

The programs for A108292, there is no canonical definition to state claims against.
-/

/-! ## A108292.P12865920870023335050

`A192592(a(n-1)+1)+2` with `a(0)=1, a(1)=3`
-/

namespace A108292.P12865920870023335050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A192592 (a (n - 1) + 1).toNat + 2

end

end A108292.P12865920870023335050

/-!
# A108293: 

The programs for A108293, there is no canonical definition to state claims against.
-/

/-! ## A108293.P14536530387238881015

`A104071(A001651(n+1)+A000123(n))`
-/

namespace A108293.P14536530387238881015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104071 (A001651 (n + 1) + A000123 n).toNat

end

end A108293.P14536530387238881015

/-!
# A108294: a(n) = the least prime p such that p-6n-3 is a power of 2 and 2p-6n-3 is prime, or -1 if no such prime exists.

The programs for A108294, there is no canonical definition to state claims against.
-/

/-! ## A108294.P3237690192605125879

`p?[a(A064722(n))+n-5]` with `a(0)=6, a(1)=9, a(2)=1`
-/

namespace A108294.P3237690192605125879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 9, 1] fun n f1 =>
  f1 (A064722 n).toNat + ((n : ℤ) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108294.P3237690192605125879

/-! ## A108294.P61101983368559295

`p?[A049716(n+4)+2*n+3]`
-/

namespace A108294.P61101983368559295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 4) + (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108294.P61101983368559295

/-! ## A108294.P6203055343365097143

`p?[A002373(n+4)+floor(2/acot(n))]`
-/

namespace A108294.P6203055343365097143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (n + 4) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108294.P6203055343365097143

/-! ## A108294.P4577897558779236547

`p?[A049613(n+4)+floor(2/acot(n))]`
-/

namespace A108294.P4577897558779236547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049613 (n + 4) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108294.P4577897558779236547

/-! ## A108294.P18155724255807578265

`p?[A002373(n+3)+comp[2*(n+2)]+1]`
-/

namespace A108294.P18155724255807578265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108294.P18155724255807578265

/-!
# A108295: Values of 2p-6n-3 associated with A108294.

The programs for A108295, there is no canonical definition to state claims against.
-/

/-! ## A108295.P9725715815653033841

`p?[A066169(n+2)+(2^n)%9]`
-/

namespace A108295.P9725715815653033841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 2) + ((2 ^ n % 9 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108295.P9725715815653033841

/-! ## A108295.P6056236707391807585

`A004273(A108294(n)-A016777(n))`
-/

namespace A108295.P6056236707391807585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A108294 n - A016777 n).toNat

end

end A108295.P6056236707391807585

/-! ## A108295.P15690751820318412834

`A004273(A108294(n))-A016933(n)`
-/

namespace A108295.P15690751820318412834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A108294 n).toNat - A016933 n

end

end A108295.P15690751820318412834

/-! ## A108295.P8584240519160733873

`A103517(A108294(n))-A016969(n)`
-/

namespace A108295.P8584240519160733873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A108294 n).toNat - A016969 n

end

end A108295.P8584240519160733873

/-! ## A108295.P17352194803845385321

`A059843(A167020(n+1)+A016933(n))`
-/

namespace A108295.P17352194803845385321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A167020 (n + 1) + A016933 n).toNat

end

end A108295.P17352194803845385321

/-!
# A108296: Diagonal sums of the number triangle associated to A086617.

The programs for A108296, there is no canonical definition to state claims against.
-/

/-! ## A108296.P229063882368336492

`∑[A247162(n+3)]`
-/

namespace A108296.P229063882368336492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108296.P229063882368336492

/-! ## A108296.P754982809472428656

`a(n-2)+A050253(n)` with `a(0)=1, a(1)=1`
-/

namespace A108296.P754982809472428656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A050253 n

end

end A108296.P754982809472428656

/-! ## A108296.P4326017293021132409

`A247162(n+3)+a(A140106(2*n))` with `a(0)=1`
-/

namespace A108296.P4326017293021132409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247162 (n + 3) + a (A140106 (2 * n)).toNat

end

end A108296.P4326017293021132409

/-! ## A108296.P11933104794249375504

`A054404(A224959(n)+A218544(n))`
-/

namespace A108296.P11933104794249375504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A224959 n + A218544 n).toNat

end

end A108296.P11933104794249375504

/-! ## A108296.P6875651127434775665

`A185283(A356846(n)+A000108(n))`
-/

namespace A108296.P6875651127434775665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A356846 n + A000108 n).toNat

end

end A108296.P6875651127434775665

/-!
# A108299: Triangle read by rows, 0 <= k <= n: T(n,k) = binomial(n-[(k+1)/2],[k/2])*(-1)^[(k+1)/2].

The programs for A108299, the canonical program `A108299.P2669820168723284648` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108299 has offset 0).

The definition of A108299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108299.P2669820168723284648

`C(row(n)-floor((col(n)+1)/2), floor(col(n)/2))*(-1)^floor((col(n)+1)/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108299

/-- `C(row(n)-floor((col(n)+1)/2), floor(col(n)/2))*(-1)^floor((col(n)+1)/2)` -/
def P2669820168723284648.Spec : Prop :=
  ∀ n, P2669820168723284648.a n = (A108299 n : ℚ)

end A108299

/-! ## A108299.P9290780501709437334

`A065941(n)*A087960(A002262(n))`
-/

namespace A108299.P9290780501709437334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n * A087960 (A002262 n).toNat

end

end A108299.P9290780501709437334

namespace A108299

/-- `A065941(n)*A087960(A002262(n))` -/
def P9290780501709437334.Spec : Prop :=
  ∀ n, P9290780501709437334.a n = A108299 n

end A108299

/-! ## A108299.P14675677480598998117

`A057077(A002260(n+1))*A065941(n)`
-/

namespace A108299.P14675677480598998117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002260 (n + 1)).toNat * A065941 n

end

end A108299.P14675677480598998117

namespace A108299

/-- `A057077(A002260(n+1))*A065941(n)` -/
def P14675677480598998117.Spec : Prop :=
  ∀ n, P14675677480598998117.a n = A108299 n

end A108299

/-! ## A108299.P8064445673908937225

`A039961(n+2)`
-/

namespace A108299.P8064445673908937225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (n + 2)

end

end A108299.P8064445673908937225

namespace A108299

/-- `A039961(n+2)` -/
def P8064445673908937225.Spec : Prop :=
  ∀ n, P8064445673908937225.a n = A108299 n

end A108299

/-! ## A108299.P18186901829311292680

`A130777(A061579(n))`
-/

namespace A108299.P18186901829311292680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A061579 n).toNat

end

end A108299.P18186901829311292680

namespace A108299

/-- `A130777(A061579(n))` -/
def P18186901829311292680.Spec : Prop :=
  ∀ n, P18186901829311292680.a n = A108299 n

end A108299

/-! ## A108299.P13120610403132265280

`A130777(A038722(n+1)-1)`
-/

namespace A108299.P13120610403132265280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A038722 (n + 1) - 1).toNat

end

end A108299.P13120610403132265280

namespace A108299

/-- `A130777(A038722(n+1)-1)` -/
def P13120610403132265280.Spec : Prop :=
  ∀ n, P13120610403132265280.a n = A108299 n

end A108299

/-! ## A108299.P5901969391567470223

`A130777(A014132(n+1)-2*A002260(n+1))`
-/

namespace A108299.P5901969391567470223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A108299.P5901969391567470223

namespace A108299

/-- `A130777(A014132(n+1)-2*A002260(n+1))` -/
def P5901969391567470223.Spec : Prop :=
  ∀ n, P5901969391567470223.a n = A108299 n

end A108299

/-! ## A108299.P8000924456906145396

`A133607(comp[∑[n]])`
-/

namespace A108299.P8000924456906145396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A108299.P8000924456906145396

namespace A108299

/-- `A133607(comp[∑[n]])` -/
def P8000924456906145396.Spec : Prop :=
  ∀ n, P8000924456906145396.a n = A108299 n

end A108299

/-! ## A108299.P15660292555357547324

`A033999(A002262(n))*A259875(A004201(n+1))`
-/

namespace A108299.P15660292555357547324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A259875 (A004201 (n + 1)).toNat

end

end A108299.P15660292555357547324

namespace A108299

/-- `A033999(A002262(n))*A259875(A004201(n+1))` -/
def P15660292555357547324.Spec : Prop :=
  ∀ n, P15660292555357547324.a n = A108299 n

end A108299

/-! ## A108299.P12541393842733883182

`A062157(A002260(n+1))*A259875(A004201(n+1))`
-/

namespace A108299.P12541393842733883182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A259875 (A004201 (n + 1)).toNat

end

end A108299.P12541393842733883182

namespace A108299

/-- `A062157(A002260(n+1))*A259875(A004201(n+1))` -/
def P12541393842733883182.Spec : Prop :=
  ∀ n, P12541393842733883182.a n = A108299 n

end A108299

/-! ## A108299.P16521963528768493585

`A033999(A002262(n))*A267482(A061579(n))`
-/

namespace A108299.P16521963528768493585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A267482 (A061579 n).toNat

end

end A108299.P16521963528768493585

namespace A108299

/-- `A033999(A002262(n))*A267482(A061579(n))` -/
def P16521963528768493585.Spec : Prop :=
  ∀ n, P16521963528768493585.a n = A108299 n

end A108299

/-! ## A108299.P16070526070046114073

`A165591(A059268(n))*A267482(A061579(n))`
-/

namespace A108299.P16070526070046114073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165591 (A059268 n).toNat * A267482 (A061579 n).toNat

end

end A108299.P16070526070046114073

namespace A108299

/-- `A165591(A059268(n))*A267482(A061579(n))` -/
def P16070526070046114073.Spec : Prop :=
  ∀ n, P16070526070046114073.a n = A108299 n

end A108299

